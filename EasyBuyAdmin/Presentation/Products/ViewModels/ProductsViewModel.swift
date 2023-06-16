//
//  ProductsViewModel.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 04/06/2023.
//

import Foundation
import Apollo

class ProductsViewModel: ObservableObject {
    @Published var products = [ProductNode]()
    @Published var searchText = ""
    
    var filteredProducts: [ProductNode] {
        if searchText.isEmpty {
            return products
        } else {
            return products.filter { product in
                guard let title = product.title else { return false }
                let parts = title.split(separator: "|")
                if parts.count > 1 {
                    return parts[1].lowercased().contains(searchText.lowercased())
                } else {
                    return title.lowercased().contains(searchText.lowercased())
                }
            }
        }
    }
    
    func fetchAllProducts() {
        NetworkManager.shared.queryGraphQLRequest(query: GetAllProductsQuery(), responseModel: DataClassGetAllProducts.self) { result in
            switch result {
            case .success(let data):
                if let productEdges = data.products?.edges {
                    let products = productEdges.compactMap { $0.node }
                    DispatchQueue.main.async {
                        self.products = products
                    }
                }
            case .failure(let error):
                print("Error fetching products: \(error)")
            }
        }
    }
}
