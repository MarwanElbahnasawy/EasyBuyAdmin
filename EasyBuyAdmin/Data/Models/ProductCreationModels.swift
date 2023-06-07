//
//  ProductCreationModels.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 06/06/2023.
//

import Foundation

// MARK: - ProductCreationRoot (Not the response model returned)
struct ProductCreationRoot: Codable {
    let data: DataClassProductCreation?
    let extensions: Extensions?
}

// MARK: - DataClass (The response model returned)
struct DataClassProductCreation: Codable {
    let productCreate: ProductCreate?
}

// MARK: - ProductCreate
struct ProductCreate: Codable {
    let product: PurpleNode?
    let shop: Shop?
    let userErrors: [UserError]?
}

// MARK: - Error
struct UserError: Codable {
    let message: String?
    let locations: [Location]?
    let extensions: Extensions?
}

// MARK: - Location
struct Location: Codable {
    let line, column: Int?
}

// MARK: - Shop
struct Shop: Codable {
    let name: String?
}


