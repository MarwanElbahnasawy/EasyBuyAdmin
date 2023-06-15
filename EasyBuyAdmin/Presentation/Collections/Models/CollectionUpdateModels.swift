//
//  CollectionUpdateModels.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 15/06/2023.
//

import Foundation

// MARK: - CollectionUpdateRoot (Not the response model returned)
struct CollectionUpdateRoot: Codable {
    let data: DataClassCollectionUpdate?
    let extensions: Extensions?
}

// MARK: - DataClassCollectionUpdate (The response model returned)
struct DataClassCollectionUpdate: Codable {
    let collectionUpdate: CollectionUpdate?
}

// MARK: - CollectionUpdate
struct CollectionUpdate: Codable {
    let collection: CollectionNode?
    let userErrors: [UserError]?
}
