//
//  CollectionsViewModel.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 15/06/2023.
//

import Foundation

class CollectionsViewModel: ObservableObject {
    @Published var collections = [CollectionNode]()
    func fetchAllCollections() {
        NetworkManager.shared.queryGraphQLRequest(query: GetAllCollectionsQuery(), responseModel: DataClassGetAllCollections.self) { result in
            switch result {
            case .success(let data):
                if let collectionEdges = data.collections?.edges {
                    let collections = collectionEdges.compactMap { $0.node }
                    DispatchQueue.main.async {
                        self.collections = collections
                    }
                }
            case .failure(let error):
                print("Error fetching collections: \(error)")
            }
        }
    }
}
