//
//  AddProductViewModel.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 05/06/2023.
//

import Foundation
import Apollo

class AddProductViewModel: ObservableObject {
    @Published var alertTitle = ""
    @Published var alertMessage = ""
    
    let collections: [String: String] = [
        "MEN": "gid://shopify/Collection/447404212531",
        "WOMEN": "gid://shopify/Collection/447404245299",
        "KID": "gid://shopify/Collection/447404278067"
    ]
    
    let productTypes = ["ACCESSORIES", "SHOES", "Boots", "T-SHIRTS"]
    
    func addProduct(title: String,
                    description: String,
                    productTypeIndex: Int,
                    vendor: String,
                    tags: [String],
                    price: String,
                    selectedCollectionIndex: Int,
                    collections: [String: String],
                    productImageURLString: String,
                    completion: @escaping () -> Void) {
        
        let newProductInput = ProductInput(descriptionHtml: description, productType: productTypes[productTypeIndex], tags: tags.filter { !$0.isEmpty }, title: title, vendor: vendor, collectionsToJoin: [collections[Array(collections.keys)[selectedCollectionIndex]]!], images: [ImageInput.init(src: productImageURLString)], variants: [ProductVariantInput(price: price)], status: ProductStatus.active)

        createProduct(productInput: newProductInput, selectedCollectionIndex: selectedCollectionIndex) { result in
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
    
    
    private func createProduct(productInput: ProductInput, selectedCollectionIndex: Int, completion: @escaping (Result<String, Error>) -> Void) {
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
