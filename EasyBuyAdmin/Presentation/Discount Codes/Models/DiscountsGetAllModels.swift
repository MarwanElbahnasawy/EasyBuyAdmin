//
//  DiscountsGetAllModels.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 13/06/2023.
//

import Foundation

// MARK: - AllDiscountCodesRoot
struct AllDiscountCodesRoot: Codable {
    let data: DataClassGetAllDiscountCodes?
    let extensions: Extensions?
}

// MARK: - DataClassGetAllDiscountCodes
struct DataClassGetAllDiscountCodes: Codable {
    let codeDiscountNodes: CodeDiscountNodes?
}

// MARK: - CodeDiscountNodes
struct CodeDiscountNodes: Codable {
    let nodes: [CodeDiscountNodesNode]?
}

// MARK: - CodeDiscountNodesNode
struct CodeDiscountNodesNode: Codable {
    let id: String?
    let codeDiscount: CodeDiscount?
}

// MARK: - CodeDiscount
struct CodeDiscount: Codable {
    let title, summary, shortSummary: String?
    let codeCount: Int?
    let usageLimit: Int?
    let status: String?
    let startsAt: String?
    let endsAt: String?
    let asyncUsageCount: Int?
    let appliesOncePerCustomer: Bool?
    let customerGets: CustomerGets?
    let codes: Codes?
}

// MARK: - Codes
struct Codes: Codable {
    let nodes: [CodesNode]?
}

// MARK: - CodesNode
struct CodesNode: Codable {
    let code, id: String?
}

// MARK: - CustomerGets
struct CustomerGets: Codable {
    let items, value: Items?
}

// MARK: - Items
struct Items: Codable {
    let typename: Typename?

    enum CodingKeys: String, CodingKey {
        case typename
    }
}

enum Typename: String, Codable {
    case allDiscountItems = "AllDiscountItems"
    case discountCollections = "DiscountCollections"
    case discountPercentage = "DiscountPercentage"
}
