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
    @Published var productImageURLString: String = ""
    @Published var selectedCollectionTitle = "Home page"
    @Published var tags = Array(repeating: "", count: 4)
    @Published var currentAlert: AlertType = .disabledAlert
    
    @Published var isProductBeingUpdated = false
    
    private var productID: String?
    
    let collections: [String: String] = [
        "Home page": "gid://shopify/Collection/447403131187",
        "VANS": "gid://shopify/Collection/447403819315",
        "ADIDAS": "gid://shopify/Collection/447403852083",
        "NIKE": "gid://shopify/Collection/447403884851",
        "CONVERSE": "gid://shopify/Collection/447403917619",
        "ASICS TIGER": "gid://shopify/Collection/447403950387",
        "PALLADUIM": "gid://shopify/Collection/447403983155",
        "PUMA": "gid://shopify/Collection/447404015923",
        "SUPRA": "gid://shopify/Collection/447404048691",
        "TIMBERLAND": "gid://shopify/Collection/447404081459",
        "DR MARTENS": "gid://shopify/Collection/447404114227",
        "HERSCHEL": "gid://shopify/Collection/447404146995",
        "FLEX FIT": "gid://shopify/Collection/447404179763",
        "MEN": "gid://shopify/Collection/447404212531",
        "WOMEN": "gid://shopify/Collection/447404245299",
        "KID": "gid://shopify/Collection/447404278067",
        "SALE": "gid://shopify/Collection/447404310835"
    ]
    
    let productTypes = ["ACCESSORIES", "SHOES", "Boots", "T-SHIRTS"]
    
    init(product: PurpleNode? = nil) {
        if let product = product {
            productID = product.id!
            title = product.title ?? "Unknown"
            vendor = product.vendor ?? "Unknown"
            productTypeIndex = productTypes.firstIndex(of: product.productType?.rawValue ?? "ACCESSORIES") ?? 0
            description = product.description ?? "No description"
            price = product.priceRangeV2?.maxVariantPrice?.amount ?? "0"
            productImageURLString = product.images?.edges?[0].node?.url ?? "https://t4.ftcdn.net/jpg/03/00/32/13/360_F_300321387_gPEMsHdZPAWO2HfqfwEXUfy5MwPvq8AM.jpg"
            if let collectionEdges = product.collections?.edges {
                for (index,edge) in collectionEdges.enumerated() {
                    if let collectionTitle = edge.node?.title, ["MEN", "WOMEN", "KID"].contains(collectionTitle) || index == collectionEdges.count - 1 {
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
        
        let newProductInput = ProductInput(descriptionHtml: description, productType: productTypes[productTypeIndex], tags: tags.filter { !$0.isEmpty }, title: title, vendor: vendor, collectionsToJoin: [collections[selectedCollectionTitle] ?? "gid://shopify/Collection/447403131187"], images: [ImageInput.init(src: productImageURLString)], variants: [ProductVariantInput(price: price)], status: ProductStatus.active)
        
        createProduct(productInput: newProductInput) { result in
            switch result {
            case .success:
                self.alertTitle = "Success"
                self.alertMessage = "Product added successfully"
                completion()
            case .failure(let error):
                self.alertTitle = "Error"
                self.alertMessage = error.localizedDescription
            }
        }
    }
    
    private func createProduct(productInput: ProductInput, completion: @escaping (Result<String, Error>) -> Void) {
        NetworkManager.shared.performGraphQLRequest(mutation: ProductCreateMutation(input: productInput), responseModel: DataClassProductCreation.self) { result in
            switch result {
            case .success:
                NetworkManager.shared.service.store.clearCache()
                completion(.success("Product created successfully"))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func updateProduct(id: String, completion: @escaping () -> Void) {
        
        let newProductInput = ProductInput(descriptionHtml: description, productType: productTypes[productTypeIndex], tags: tags.filter { !$0.isEmpty }, title: title, vendor: vendor, collectionsToJoin: [collections[selectedCollectionTitle] ?? "gid://shopify/Collection/447403131187"], id: productID!,  images: [ImageInput.init(src: productImageURLString)], variants: [ProductVariantInput(price: price)], status: ProductStatus.active)
        
        updateProduct(productInput: newProductInput) { result in
            switch result {
            case .success:
                self.alertTitle = "Success"
                self.alertMessage = "Product updated successfully"
                completion()
            case .failure(let error):
                self.alertTitle = "Error"
                self.alertMessage = error.localizedDescription
            }
        }
    }
    
    private func updateProduct(productInput: ProductInput, completion: @escaping (Result<String, Error>) -> Void) {
        
        NetworkManager.shared.performGraphQLRequest(mutation: ProductUpdateMutation(input: productInput), responseModel: DataClassProductUpdate.self) { result in
            switch result {
            case .success:
                NetworkManager.shared.service.store.clearCache()
                completion(.success("Product updated successfully"))
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
        if let priceValue = Double(price), priceValue > 0 && priceValue <= 1_000_000 {
            return true
        }
        return false
        
    }
}

enum AlertType {
    case disabledAlert, addingOrUpdatingProductAlert
}
