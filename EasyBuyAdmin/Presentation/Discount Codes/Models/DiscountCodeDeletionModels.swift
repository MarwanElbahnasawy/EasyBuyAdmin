//
//  DiscountCodeDeletionModels.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 14/06/2023.
//

import Foundation

// MARK: - DiscountCodeDeletionRoot (Not the response model returned)
struct DiscountCodeDeletionRoot: Codable {
    let data: DataClassDiscountCodeDeletion?
    let extensions: Extensions?
}

// MARK: - DataClass (The response model returned)
struct DataClassDiscountCodeDeletion: Codable {
    let discountCodeDelete: DiscountCodeDelete?
}

// MARK: - DiscountCodeDelete
struct DiscountCodeDelete: Codable {
    let deletedCodeDiscountID: String?
    let userErrors: [UserError]?

    enum CodingKeys: String, CodingKey {
        case deletedCodeDiscountID
        case userErrors
    }
}

