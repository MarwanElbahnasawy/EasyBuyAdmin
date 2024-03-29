//
//  AddProductViewModel.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 05/06/2023.
//

import Foundation
import Apollo

class ProductFormViewModel: ObservableObject {
    @Published var alertTitle = ""
    @Published var alertMessage = ""
    @Published var title: String = ""
    @Published var vendor: String = ""
    @Published var productTypeIndex: Int = 0
    @Published var description: String = ""
    @Published var price: String = ""
    @Published var productImageURLStrings: [String] = Array.init(repeating: "", count: 4)
    @Published var selectedCollectionTitle = "Home page"
    @Published var tags = Array(repeating: "", count: 4)
    @Published var currentAlert: AddingOrUpdatingAlertType = .disabledAlert
    @Published var isProductBeingUpdated = false
    
    private var productID: String?
    
    let productTypes = ["ACCESSORIES", "SHOES", "Boots", "T-SHIRTS"]
    
    init(product: ProductNode? = nil) {
        if let product = product {
            productID = product.id!
            title = product.title ?? "Unknown"
            vendor = product.vendor ?? "Unknown"
            productTypeIndex = productTypes.firstIndex(of: product.productType?.rawValue ?? "ACCESSORIES") ?? 0
            description = product.description ?? "No description"
            price = product.priceRangeV2?.maxVariantPrice?.amount ?? "0"
            if let productImageEdges = product.images?.edges {
                for (index,edge) in productImageEdges.enumerated() {
                    if index < 4 {
                        self.productImageURLStrings[index] = edge.node?.url ?? "https://t4.ftcdn.net/jpg/03/00/32/13/360_F_300321387_gPEMsHdZPAWO2HfqfwEXUfy5MwPvq8AM.jpg"
                    } else {
                        break
                    }
                }
            }
            if let collectionEdges = product.collections?.edges {
                for (index,edge) in collectionEdges.enumerated() {
                    if let collectionTitle = edge.node?.title, [Constants.MEN, Constants.WOMEN, Constants.KID].contains(collectionTitle) || index == collectionEdges.count - 1 {
                        selectedCollectionTitle = collectionTitle
                        break
                    }
                    
                }
            }
            if let tags = product.tags, !tags.isEmpty {
                var tagsCountMaxFour: Int
                if tags.count > 4 {
                    tagsCountMaxFour = 4
                } else {
                    tagsCountMaxFour = tags.count
                }
                for i in 0...(tagsCountMaxFour-1) {
                    self.tags[i] = tags[i]
                }
            }
            isProductBeingUpdated = true
        }
    }
    
    func addProduct(completion: @escaping () -> Void) {
        
        let imageInputs = productImageURLStrings.filter { isValidImageURL($0) } .map { ImageInput(src: $0) }
        
        let newProductInput = ProductInput(descriptionHtml: description, productType: productTypes[productTypeIndex], tags: tags.filter { !$0.isEmpty }, title: title, vendor: vendor, collectionsToJoin: [Constants.collections[selectedCollectionTitle] ?? "gid://shopify/Collection/447403131187"], images: imageInputs, options: ["Size"], variants: [ProductVariantInput(inventoryQuantities: [InventoryLevelInput(availableQuantity: 10, locationId: "gid://shopify/Location/84786610483")], options: ["S"], price: price), ProductVariantInput(inventoryQuantities: [InventoryLevelInput(availableQuantity: 10, locationId: "gid://shopify/Location/84786610483")], options: ["M"], price: price), ProductVariantInput(inventoryQuantities: [InventoryLevelInput(availableQuantity: 10, locationId: "gid://shopify/Location/84786610483")], options: ["L"], price: price)], status: ProductStatus.active)
        
        
        createProduct(productInput: newProductInput) { result in
            switch result {
            case .success:
                self.alertTitle = "Success"
                self.alertMessage = "Product added successfully"
                completion()
            case .failure(let error):
                self.alertTitle = "Error"
                self.alertMessage = error.localizedDescription
                completion()
            }
        }
    }
    
    private func createProduct(productInput: ProductInput, completion: @escaping (Result<Void, Error>) -> Void) {
        NetworkManager.shared.performGraphQLRequest(mutation: ProductCreateMutation(input: productInput), responseModel: DataClassProductCreation.self) { result in
            switch result {
            case .success(let successResult):
                self.publishProductToStore(productID: (successResult.productCreate?.product?.id)!) { result in
                    NetworkManager.shared.service.store.clearCache()
                    completion(.success(()))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func updateProduct(productID: String, completion: @escaping () -> Void) {
        
        let imageInputs = productImageURLStrings.filter { isValidImageURL($0) } .map { ImageInput(src: $0) }
        let newProductInput = ProductInput(descriptionHtml: description, productType: productTypes[productTypeIndex], tags: tags.filter { !$0.isEmpty }, title: title, vendor: vendor, collectionsToJoin: [Constants.collections[selectedCollectionTitle] ?? "gid://shopify/Collection/447403131187"], id: self.productID!, images: imageInputs, options: ["Size"], variants: [ProductVariantInput(inventoryQuantities: [InventoryLevelInput(availableQuantity: 10, locationId: "gid://shopify/Location/84786610483")], options: ["S"], price: price), ProductVariantInput(inventoryQuantities: [InventoryLevelInput(availableQuantity: 10, locationId: "gid://shopify/Location/84786610483")], options: ["M"], price: price), ProductVariantInput(inventoryQuantities: [InventoryLevelInput(availableQuantity: 10, locationId: "gid://shopify/Location/84786610483")], options: ["L"], price: price)], status: ProductStatus.active)
        
        updateProduct(productInput: newProductInput) { result in
            switch result {
            case .success:
                self.alertTitle = "Success"
                self.alertMessage = "Product updated successfully"
                completion()
            case .failure(let error):
                self.alertTitle = "Error"
                self.alertMessage = error.localizedDescription
                completion()
            }
        }
    }
    
    private func updateProduct(productInput: ProductInput, completion: @escaping (Result<String, Error>) -> Void) {
        
        NetworkManager.shared.performGraphQLRequest(mutation: ProductUpdateMutation(input: productInput), responseModel: DataClassProductUpdate.self) { result in
            switch result {
            case .success(let successResult):
                self.publishProductToStore(productID: (successResult.productUpdate?.product?.id)!) { result in
                    NetworkManager.shared.service.store.clearCache()
                    completion(.success("Product updated successfully"))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    private func publishProductToStore(productID: String, completion: @escaping (Result<Void, Error>) -> Void) {
        NetworkManager.shared.performGraphQLRequest(mutation: PublishablePublishToCurrentChannelMutation(id: productID), responseModel: PublishItemDataClass.self) { result in
            switch result {
            case .success:
                completion(.success(()))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func isValidImageURL(_ urlString: String) -> Bool {
        guard let url = URL(string: urlString) else {
            return false
        }
        let imageTypes: [String] = ["jpg", "jpeg", "png"]
        let ext = url.pathExtension.lowercased()
        if imageTypes.contains(ext) && url.scheme == "https" {
            return true
        }
        return false
    }
    
    func isValidPrice(_ price: String) -> Bool {
        if let priceValue = Double(price), priceValue > 0 && priceValue <= 50_000 {
            return true
        }
        return false
    }
}


