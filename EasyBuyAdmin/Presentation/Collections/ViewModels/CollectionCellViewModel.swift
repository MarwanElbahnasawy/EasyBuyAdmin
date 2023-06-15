//
//  CollectionCellViewModel.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 16/06/2023.
//

import Foundation

class CollectionCellViewModel: ObservableObject {
    func deleteCollection(collectionID: String, completion: @escaping (Result<String, Error>) -> Void) {
        NetworkManager.shared.performGraphQLRequest(mutation: CollectionDeleteMutation(input: CollectionDeleteInput(id: collectionID)), responseModel: DataClassCollectionDeletion.self) { result in
            switch result{
            case .success:
                NetworkManager.shared.service.store.clearCache()
                completion(.success("Collection deleted successfully"))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
