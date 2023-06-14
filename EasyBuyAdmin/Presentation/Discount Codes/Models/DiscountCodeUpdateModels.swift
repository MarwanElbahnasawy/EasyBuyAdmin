//
//  DiscountsUpdateModels.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 13/06/2023.
//

import Foundation

// MARK: - DiscountCodeUpdateRoot
struct DiscountCodeUpdateRoot: Codable {
    let data: DataClassDiscountCodeUpdate?
    let extensions: Extensions?
}

// MARK: - DataClassDiscountCodeUpdate
struct DataClassDiscountCodeUpdate: Codable {
    let discountCodeBasicUpdate: DiscountCodeBasicUpdate?
}

// MARK: - DiscountCodeBasicUpdate
struct DiscountCodeBasicUpdate: Codable {
    let codeDiscountNode: CodeDiscountNode?
    let userErrors: [UserError]?
}

// MARK: - CodeDiscountNode
struct CodeDiscountNode: Codable {
    let id: String?
}
