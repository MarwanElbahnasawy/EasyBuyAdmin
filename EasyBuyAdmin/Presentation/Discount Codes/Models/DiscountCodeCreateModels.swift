//
//  DiscountCodeCreateModels.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 13/06/2023.
//

import Foundation

// MARK: - DiscountCodeCreateRoot (Not the response model returned)
struct DiscountCodeCreateRoot: Codable {
    let data: DataClassDiscountCodeCreate?
    let extensions: Extensions?
}

// MARK: - DataClassDiscountCodeCreate (The response model returned)
struct DataClassDiscountCodeCreate: Codable {
    let discountCodeBasicCreate: DiscountCodeBasicCreate?
}

// MARK: - DiscountCodeBasicCreate
struct DiscountCodeBasicCreate: Codable {
    let codeDiscountNode: CodeDiscountNode?
    let userErrors: [UserError]?
}
