//
//  DiscountCodeCellViewModel.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 13/06/2023.
//

import Foundation

class DiscountCodeCellViewModel: ObservableObject {
    func deleteDiscountCode(discountCodeID: String, completion: @escaping (Result<String, Error>) -> Void) {
        NetworkManager.shared.performGraphQLRequest(mutation: DiscountCodeDeleteMutation(id: discountCodeID), responseModel: DataClassDiscountCodeDeletion.self) { result in
            switch result{
            case .success:
                NetworkManager.shared.service.store.clearCache()
                completion(.success("DiscountCode deleted successfully"))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
