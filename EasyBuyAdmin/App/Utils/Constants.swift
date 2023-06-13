//
//  Constants.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 04/06/2023.
//

import Foundation

struct NetworkConstants {
    static let baseUrl = "https://mad-ism-43.myshopify.com/admin/api/2023-04/graphql.json"
    static let keyAccessToken = "X-Shopify-Access-Token"
    static let valueAccessToken = "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"
}

enum DiscountCodeImages: String {
    case men
    case women
    case kid
    case allproducts
}
