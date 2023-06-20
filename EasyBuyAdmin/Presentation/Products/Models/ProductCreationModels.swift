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
    let product: ProductNode?
    let shop: Shop?
    let userErrors: [UserError]?
}

// MARK: - PublishItemRoot
struct PublishItemRoot: Codable {
    let data: PublishItemDataClass?
    let extensions: Extensions?
}

// MARK: - PublishItemDataClass
struct PublishItemDataClass: Codable {
    let publishablePublishToCurrentChannel: PublishablePublishToCurrentChannel?
}

// MARK: - PublishablePublishToCurrentChannel
struct PublishablePublishToCurrentChannel: Codable {
    let publishable: Publishable?
    let shop: Shop?
    let userErrors: [UserError]?
}

// MARK: - Publishable
struct Publishable: Codable {
    let availablePublicationCount, publicationCount: Int?
}

// MARK: - UnpublishItemRoot
struct UnpublishItemRoot: Codable {
    let data: UnpublishItemDataClass?
    let extensions: Extensions?
}

// MARK: - UnpublishItemDataClass
struct UnpublishItemDataClass: Codable {
    let publishableUnpublishToCurrentChannel: PublishableUnpublishToCurrentChannel?
}

// MARK: - PublishableUnpublishToCurrentChannel
struct PublishableUnpublishToCurrentChannel: Codable {
    let publishable: Publishable?
    let shop: Shop?
    let userErrors: [UserError]?
}

