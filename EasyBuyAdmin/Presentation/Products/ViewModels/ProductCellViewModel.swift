//
//  ProductCellViewModel.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 07/06/2023.
//

import Foundation

class ProductCellViewModel: ObservableObject {
    func deleteProduct(id: String, completion: @escaping (Result<String, Error>) -> Void) {
        NetworkManager.shared.performGraphQLRequest(mutation: ProductDeleteMutation(input: ProductDeleteInput(id: id)), responseModel: DataClassProductDeletion.self) { result in
            switch result{
            case .success:
                NetworkManager.shared.service.store.clearCache()
                completion(.success("Product deleted successfully"))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
