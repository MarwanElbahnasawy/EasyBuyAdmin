//
//  CollectionsGetAllModels.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 15/06/2023.
//

import Foundation

// MARK: - AllCollectionsRoot (Not the response model returned)
struct AllCollectionsRoot: Codable {
    let data: DataClassGetAllCollections?
    let extensions: Extensions?
}

// MARK: - DataClassGetAllCollections (The response model returned)
struct DataClassGetAllCollections: Codable {
    let collections: Collections?
}


