//
//  CollectionCreationModels.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 15/06/2023.
//

import Foundation

// MARK: - CollectionCreateRoot (Not the response model returned)
struct CollectionCreateRoot: Codable {
    let data: DataClassCollectionCreate?
    let extensions: Extensions?
}

// MARK: - DataClassCollectionCreate (The response model returned)
struct DataClassCollectionCreate: Codable {
    let collectionCreate: CollectionCreate?
}

// MARK: - CollectionCreate
struct CollectionCreate: Codable {
    let collection: CollectionNode?
    let userErrors: [UserError]?
}
