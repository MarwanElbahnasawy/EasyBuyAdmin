//
//  CollectionDeletionModels.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 15/06/2023.
//

import Foundation

// MARK: - CollectionDeletionRoot (Not the response model returned)
struct CollectionDeletionRoot: Codable {
    let data: DataClassCollectionDeletion?
    let extensions: Extensions?
}

// MARK: - DataClassCollectionDeletion (The response model returned)
struct DataClassCollectionDeletion: Codable {
    let collectionDelete: CollectionDelete?
}

// MARK: - CollectionDelete
struct CollectionDelete: Codable {
    let deletedCollectionID: String?
    let userErrors: [UserError]?

    enum CodingKeys: String, CodingKey {
        case deletedCollectionID
        case userErrors
    }
}
