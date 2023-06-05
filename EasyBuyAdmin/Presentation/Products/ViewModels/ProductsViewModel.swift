//
//  ProductsViewModel.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 04/06/2023.
//

import Foundation
import Apollo

class ProductsViewModel: ObservableObject {
    @Published var products = [PurpleNode]()
    
    func fetchAllProducts() {
        NetworkManager.shared.queryGraphQLRequest(query: GetAllProductsQuery(), responseModel: DataClassProducts.self) { result in
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
