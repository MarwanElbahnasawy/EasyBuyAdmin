//
//  ProductsModels.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 04/06/2023.
//

import Foundation

// MARK: - ProductsRoot (Not the response model returned)
struct AllProductsRoot: Codable {
    let data: DataClassProducts?
    let extensions: Extensions?
}

// MARK: - DataClass (The response model returned)
struct DataClassProducts: Codable {
    let products: Products?
}

// MARK: - Products
struct Products: Codable {
    let edges: [ProductsEdge]?
}

// MARK: - ProductsEdge
struct ProductsEdge: Codable {
    let node: PurpleNode?
}

// MARK: - PurpleNode
struct PurpleNode: Codable {
    let title, vendor: String?
    let productType: ProductType?
    let description, id: String?
    let priceRangeV2: PriceRangeV2?
    let images: Images?
    let collections: Collections?
    let tags: [String]?
}

// MARK: - Collections
struct Collections: Codable {
    let edges: [CollectionsEdge]?
}

// MARK: - CollectionsEdge
struct CollectionsEdge: Codable {
    let node: FluffyNode?
}

// MARK: - FluffyNode
struct FluffyNode: Codable {
    let title: String?
}

// MARK: - Images
struct Images: Codable {
    let edges: [ImagesEdge]?
}

// MARK: - ImagesEdge
struct ImagesEdge: Codable {
    let node: TentacledNode?
}

// MARK: - TentacledNode
struct TentacledNode: Codable {
    let url: String?
}

// MARK: - PriceRangeV2
struct PriceRangeV2: Codable {
    let minVariantPrice, maxVariantPrice: VariantPrice?
}

// MARK: - VariantPrice
struct VariantPrice: Codable {
    let amount: String?
}

enum ProductType: String, Codable {
    case accessories = "ACCESSORIES"
    case boots = "Boots"
    case productTypeSHOES = "SHOES"
    case shoes = "Shoes"
    case tShirts = "T-SHIRTS"
}

// MARK: - Extensions
struct Extensions: Codable {
    let cost: Cost?
}

// MARK: - Cost
struct Cost: Codable {
    let requestedQueryCost, actualQueryCost: Int?
    let throttleStatus: ThrottleStatus?
}

// MARK: - ThrottleStatus
struct ThrottleStatus: Codable {
    let maximumAvailable, currentlyAvailable, restoreRate: Int?
}

// MARK: - PurpleNode extension in order to create a product
extension PurpleNode {
    init(title: String,
         vendor: String,
         productType: ProductType,
         description: String,
         tags: [String],
         price: String,
         selectedCollectionIndex: Int,
         collections: [String: String]) {
        self.title = title
        self.vendor = vendor
        self.productType = productType
        self.description = description
        self.id = nil
        self.priceRangeV2 = PriceRangeV2(minVariantPrice: VariantPrice(amount: price),
                                         maxVariantPrice: VariantPrice(amount: price))
        self.images = nil
        self.collections = Collections(edges: [CollectionsEdge(node: FluffyNode(title: Array(collections.keys)[selectedCollectionIndex]))])
        self.tags = tags
    }
}
