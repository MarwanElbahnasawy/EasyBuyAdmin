//
//  ProductDeletionModels.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 07/06/2023.
//

import Foundation

// MARK: - ProductDeletionRoot (Not the response model returned)
struct ProductDeletionRoot: Codable {
    let data: DataClassProductDeletion?
    let extensions: Extensions?
}

// MARK: - DataClass (The response model returned)
struct DataClassProductDeletion: Codable {
    let productDelete: ProductDelete?
}

// MARK: - ProductDelete
struct ProductDelete: Codable {
    let deletedProductID: String?
    let userErrors: [UserError]?
}

