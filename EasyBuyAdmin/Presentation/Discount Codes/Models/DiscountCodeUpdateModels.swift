//
//  DiscountsUpdateModels.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 13/06/2023.
//

import Foundation

// MARK: - DiscountCodeUpdateRoot (Not the response model returned)
struct DiscountCodeUpdateRoot: Codable {
    let data: DataClassDiscountCodeUpdate?
    let extensions: Extensions?
}

// MARK: - DataClassDiscountCodeUpdate (The response model returned)
struct DataClassDiscountCodeUpdate: Codable {
    let discountCodeBasicUpdate: DiscountCodeBasicUpdate?
}

// MARK: - DiscountCodeBasicUpdate
struct DiscountCodeBasicUpdate: Codable {
    let codeDiscountNode: CodeDiscountNode?
    let userErrors: [UserError]?
}
