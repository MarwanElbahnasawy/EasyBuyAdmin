//
//  ProductUpdateModels.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 12/06/2023.
//

import Foundation

// MARK: - ProductUpdateRoot (Not the response model returned)
struct ProductUpdateRoot: Codable {
    let data: DataClassProductUpdate?
    let extensions: Extensions?
}

// MARK: - DataClass (The response model returned)
struct DataClassProductUpdate: Codable {
    let productUpdate: ProductUpdate?
}

// MARK: - ProductCreate
struct ProductUpdate: Codable {
    let product: PurpleNode?
    let shop: Shop?
    let userErrors: [UserError]?
}
