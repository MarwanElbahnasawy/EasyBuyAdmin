// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// The input fields required to create a collection.
public struct CollectionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - descriptionHtml: The description of the collection, in HTML format.
  ///   - handle: A unique human-friendly string for the collection. Automatically generated from the collection's title.
  ///   - id: Specifies the collection to update or create a new collection if absent. Required for updating a collection.
  ///   - image: The image associated with the collection.
  ///   - products: Initial list of collection products. Only valid with `collectionCreate` and without rules.
  ///   - ruleSet: The rules used to assign products to the collection.
  ///   - templateSuffix: The theme template used when viewing the collection in a store.
  ///   - sortOrder: The order in which the collection's products are sorted.
  ///   - title: The title of the collection. Required for creating a new collection.
  ///   - metafields: The metafields to associate with the collection.
  ///   - seo: SEO information for the collection.
  ///   - redirectNewHandle: Indicates whether a redirect is required after a new handle has been provided.
  /// If true, then the old handle is redirected to the new one automatically.
  public init(descriptionHtml: Swift.Optional<String?> = nil, handle: Swift.Optional<String?> = nil, id: Swift.Optional<GraphQLID?> = nil, image: Swift.Optional<ImageInput?> = nil, products: Swift.Optional<[GraphQLID]?> = nil, ruleSet: Swift.Optional<CollectionRuleSetInput?> = nil, templateSuffix: Swift.Optional<String?> = nil, sortOrder: Swift.Optional<CollectionSortOrder?> = nil, title: Swift.Optional<String?> = nil, metafields: Swift.Optional<[MetafieldInput]?> = nil, seo: Swift.Optional<SEOInput?> = nil, redirectNewHandle: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["descriptionHtml": descriptionHtml, "handle": handle, "id": id, "image": image, "products": products, "ruleSet": ruleSet, "templateSuffix": templateSuffix, "sortOrder": sortOrder, "title": title, "metafields": metafields, "seo": seo, "redirectNewHandle": redirectNewHandle]
  }

  /// The description of the collection, in HTML format.
  public var descriptionHtml: Swift.Optional<String?> {
    get {
      return graphQLMap["descriptionHtml"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "descriptionHtml")
    }
  }

  /// A unique human-friendly string for the collection. Automatically generated from the collection's title.
  public var handle: Swift.Optional<String?> {
    get {
      return graphQLMap["handle"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "handle")
    }
  }

  /// Specifies the collection to update or create a new collection if absent. Required for updating a collection.
  public var id: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  /// The image associated with the collection.
  public var image: Swift.Optional<ImageInput?> {
    get {
      return graphQLMap["image"] as? Swift.Optional<ImageInput?> ?? Swift.Optional<ImageInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "image")
    }
  }

  /// Initial list of collection products. Only valid with `collectionCreate` and without rules.
  public var products: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["products"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "products")
    }
  }

  /// The rules used to assign products to the collection.
  public var ruleSet: Swift.Optional<CollectionRuleSetInput?> {
    get {
      return graphQLMap["ruleSet"] as? Swift.Optional<CollectionRuleSetInput?> ?? Swift.Optional<CollectionRuleSetInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ruleSet")
    }
  }

  /// The theme template used when viewing the collection in a store.
  public var templateSuffix: Swift.Optional<String?> {
    get {
      return graphQLMap["templateSuffix"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "templateSuffix")
    }
  }

  /// The order in which the collection's products are sorted.
  public var sortOrder: Swift.Optional<CollectionSortOrder?> {
    get {
      return graphQLMap["sortOrder"] as? Swift.Optional<CollectionSortOrder?> ?? Swift.Optional<CollectionSortOrder?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sortOrder")
    }
  }

  /// The title of the collection. Required for creating a new collection.
  public var title: Swift.Optional<String?> {
    get {
      return graphQLMap["title"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  /// The metafields to associate with the collection.
  public var metafields: Swift.Optional<[MetafieldInput]?> {
    get {
      return graphQLMap["metafields"] as? Swift.Optional<[MetafieldInput]?> ?? Swift.Optional<[MetafieldInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "metafields")
    }
  }

  /// SEO information for the collection.
  public var seo: Swift.Optional<SEOInput?> {
    get {
      return graphQLMap["seo"] as? Swift.Optional<SEOInput?> ?? Swift.Optional<SEOInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "seo")
    }
  }

  /// Indicates whether a redirect is required after a new handle has been provided.
  /// If true, then the old handle is redirected to the new one automatically.
  public var redirectNewHandle: Swift.Optional<Bool?> {
    get {
      return graphQLMap["redirectNewHandle"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "redirectNewHandle")
    }
  }
}

/// The input fields for an image.
public struct ImageInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id: A globally-unique ID.
  ///   - altText: A word or phrase to share the nature or contents of an image.
  ///   - src: The URL of the image. May be a staged upload URL.
  public init(id: Swift.Optional<GraphQLID?> = nil, altText: Swift.Optional<String?> = nil, src: Swift.Optional<String?> = nil) {
    graphQLMap = ["id": id, "altText": altText, "src": src]
  }

  /// A globally-unique ID.
  public var id: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  /// A word or phrase to share the nature or contents of an image.
  public var altText: Swift.Optional<String?> {
    get {
      return graphQLMap["altText"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "altText")
    }
  }

  /// The URL of the image. May be a staged upload URL.
  public var src: Swift.Optional<String?> {
    get {
      return graphQLMap["src"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "src")
    }
  }
}

/// The input fields for a rule set of the collection.
public struct CollectionRuleSetInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - appliedDisjunctively: Whether products must match any or all of the rules to be included in the collection.
  /// If true, then products must match at least one of the rules to be included in the collection.
  /// If false, then products must match all of the rules to be included in the collection.
  ///   - rules: The rules used to assign products to the collection.
  public init(appliedDisjunctively: Bool, rules: Swift.Optional<[CollectionRuleInput]?> = nil) {
    graphQLMap = ["appliedDisjunctively": appliedDisjunctively, "rules": rules]
  }

  /// Whether products must match any or all of the rules to be included in the collection.
  /// If true, then products must match at least one of the rules to be included in the collection.
  /// If false, then products must match all of the rules to be included in the collection.
  public var appliedDisjunctively: Bool {
    get {
      return graphQLMap["appliedDisjunctively"] as! Bool
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "appliedDisjunctively")
    }
  }

  /// The rules used to assign products to the collection.
  public var rules: Swift.Optional<[CollectionRuleInput]?> {
    get {
      return graphQLMap["rules"] as? Swift.Optional<[CollectionRuleInput]?> ?? Swift.Optional<[CollectionRuleInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rules")
    }
  }
}

/// The input fields for a rule to associate with a collection.
public struct CollectionRuleInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - column: The attribute that the rule focuses on. For example, `title` or `product_type`.
  ///   - relation: The type of operator that the rule is based on. For example, `equals`, `contains`, or `not_equals`.
  ///   - condition: The value that the operator is applied to. For example, `Hats`.
  ///   - conditionObjectId: The object ID that points to additional attributes for the collection rule.
  /// This is only required when using metafield definition rules.
  public init(column: CollectionRuleColumn, relation: CollectionRuleRelation, condition: String, conditionObjectId: Swift.Optional<GraphQLID?> = nil) {
    graphQLMap = ["column": column, "relation": relation, "condition": condition, "conditionObjectId": conditionObjectId]
  }

  /// The attribute that the rule focuses on. For example, `title` or `product_type`.
  public var column: CollectionRuleColumn {
    get {
      return graphQLMap["column"] as! CollectionRuleColumn
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "column")
    }
  }

  /// The type of operator that the rule is based on. For example, `equals`, `contains`, or `not_equals`.
  public var relation: CollectionRuleRelation {
    get {
      return graphQLMap["relation"] as! CollectionRuleRelation
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "relation")
    }
  }

  /// The value that the operator is applied to. For example, `Hats`.
  public var condition: String {
    get {
      return graphQLMap["condition"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "condition")
    }
  }

  /// The object ID that points to additional attributes for the collection rule.
  /// This is only required when using metafield definition rules.
  public var conditionObjectId: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["conditionObjectId"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "conditionObjectId")
    }
  }
}

/// Specifies the attribute of a product being used to populate the smart collection.
public enum CollectionRuleColumn: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// The [`tag`](https://shopify.dev/api/admin-graphql/latest/objects/Product#field-product-producttype) attribute.
  case tag
  /// The [`title`](https://shopify.dev/api/admin-graphql/latest/objects/Product#field-product-title) attribute.
  case title
  /// The [`type`](https://shopify.dev/api/admin-graphql/latest/objects/Product#field-product-producttype) attribute.
  case type
  /// The [`product_taxonomy_node_id`](https://shopify.dev/api/admin-graphql/latest/objects/Product#field-product-productcategory) attribute.
  case productTaxonomyNodeId
  /// The [`vendor`](https://shopify.dev/api/admin-graphql/latest/objects/Product#field-product-vendor) attribute.
  case vendor
  /// The [`variant_price`](https://shopify.dev/api/admin-graphql/latest/objects/ProductVariant#field-productvariant-price) attribute.
  case variantPrice
  /// An attribute evaluated based on the `compare_at_price` attribute of the product's variants.
  /// With `is_set` relation, the rule matches products with at least one variant with `compare_at_price` set.
  /// With `is_not_set` relation, the rule matches matches products with at least one variant with `compare_at_price` not set.
  case isPriceReduced
  /// The [`variant_compare_at_price`](https://shopify.dev/api/admin-graphql/latest/objects/ProductVariant#field-productvariant-compareatprice) attribute.
  case variantCompareAtPrice
  /// The [`variant_weight`](https://shopify.dev/api/admin-graphql/latest/objects/ProductVariant#field-productvariant-weight) attribute.
  case variantWeight
  /// The [`variant_inventory`](https://shopify.dev/api/admin-graphql/latest/objects/ProductVariant#field-productvariant-inventoryquantity) attribute.
  case variantInventory
  /// The [`variant_title`](https://shopify.dev/api/admin-graphql/latest/objects/ProductVariant#field-productvariant-title) attribute.
  case variantTitle
  /// This category includes metafield definitions that have the `useAsCollectionCondition` flag set to true.
  case productMetafieldDefinition
  /// This category includes metafield definitions that have the `useAsCollectionCondition` flag set to true.
  case variantMetafieldDefinition
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "TAG": self = .tag
      case "TITLE": self = .title
      case "TYPE": self = .type
      case "PRODUCT_TAXONOMY_NODE_ID": self = .productTaxonomyNodeId
      case "VENDOR": self = .vendor
      case "VARIANT_PRICE": self = .variantPrice
      case "IS_PRICE_REDUCED": self = .isPriceReduced
      case "VARIANT_COMPARE_AT_PRICE": self = .variantCompareAtPrice
      case "VARIANT_WEIGHT": self = .variantWeight
      case "VARIANT_INVENTORY": self = .variantInventory
      case "VARIANT_TITLE": self = .variantTitle
      case "PRODUCT_METAFIELD_DEFINITION": self = .productMetafieldDefinition
      case "VARIANT_METAFIELD_DEFINITION": self = .variantMetafieldDefinition
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .tag: return "TAG"
      case .title: return "TITLE"
      case .type: return "TYPE"
      case .productTaxonomyNodeId: return "PRODUCT_TAXONOMY_NODE_ID"
      case .vendor: return "VENDOR"
      case .variantPrice: return "VARIANT_PRICE"
      case .isPriceReduced: return "IS_PRICE_REDUCED"
      case .variantCompareAtPrice: return "VARIANT_COMPARE_AT_PRICE"
      case .variantWeight: return "VARIANT_WEIGHT"
      case .variantInventory: return "VARIANT_INVENTORY"
      case .variantTitle: return "VARIANT_TITLE"
      case .productMetafieldDefinition: return "PRODUCT_METAFIELD_DEFINITION"
      case .variantMetafieldDefinition: return "VARIANT_METAFIELD_DEFINITION"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: CollectionRuleColumn, rhs: CollectionRuleColumn) -> Bool {
    switch (lhs, rhs) {
      case (.tag, .tag): return true
      case (.title, .title): return true
      case (.type, .type): return true
      case (.productTaxonomyNodeId, .productTaxonomyNodeId): return true
      case (.vendor, .vendor): return true
      case (.variantPrice, .variantPrice): return true
      case (.isPriceReduced, .isPriceReduced): return true
      case (.variantCompareAtPrice, .variantCompareAtPrice): return true
      case (.variantWeight, .variantWeight): return true
      case (.variantInventory, .variantInventory): return true
      case (.variantTitle, .variantTitle): return true
      case (.productMetafieldDefinition, .productMetafieldDefinition): return true
      case (.variantMetafieldDefinition, .variantMetafieldDefinition): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [CollectionRuleColumn] {
    return [
      .tag,
      .title,
      .type,
      .productTaxonomyNodeId,
      .vendor,
      .variantPrice,
      .isPriceReduced,
      .variantCompareAtPrice,
      .variantWeight,
      .variantInventory,
      .variantTitle,
      .productMetafieldDefinition,
      .variantMetafieldDefinition,
    ]
  }
}

/// Specifies the relationship between the `column` and the `condition`.
public enum CollectionRuleRelation: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// The attribute contains the condition.
  case contains
  /// The attribute ends with the condition.
  case endsWith
  /// The attribute is equal to the condition.
  case equals
  /// The attribute is greater than the condition.
  case greaterThan
  /// The attribute is not set (equal to `null`).
  case isNotSet
  /// The attribute is set (not equal to `null`).
  case isSet
  /// The attribute is less than the condition.
  case lessThan
  /// The attribute does not contain the condition.
  case notContains
  /// The attribute does not equal the condition.
  case notEquals
  /// The attribute starts with the condition.
  case startsWith
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "CONTAINS": self = .contains
      case "ENDS_WITH": self = .endsWith
      case "EQUALS": self = .equals
      case "GREATER_THAN": self = .greaterThan
      case "IS_NOT_SET": self = .isNotSet
      case "IS_SET": self = .isSet
      case "LESS_THAN": self = .lessThan
      case "NOT_CONTAINS": self = .notContains
      case "NOT_EQUALS": self = .notEquals
      case "STARTS_WITH": self = .startsWith
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .contains: return "CONTAINS"
      case .endsWith: return "ENDS_WITH"
      case .equals: return "EQUALS"
      case .greaterThan: return "GREATER_THAN"
      case .isNotSet: return "IS_NOT_SET"
      case .isSet: return "IS_SET"
      case .lessThan: return "LESS_THAN"
      case .notContains: return "NOT_CONTAINS"
      case .notEquals: return "NOT_EQUALS"
      case .startsWith: return "STARTS_WITH"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: CollectionRuleRelation, rhs: CollectionRuleRelation) -> Bool {
    switch (lhs, rhs) {
      case (.contains, .contains): return true
      case (.endsWith, .endsWith): return true
      case (.equals, .equals): return true
      case (.greaterThan, .greaterThan): return true
      case (.isNotSet, .isNotSet): return true
      case (.isSet, .isSet): return true
      case (.lessThan, .lessThan): return true
      case (.notContains, .notContains): return true
      case (.notEquals, .notEquals): return true
      case (.startsWith, .startsWith): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [CollectionRuleRelation] {
    return [
      .contains,
      .endsWith,
      .equals,
      .greaterThan,
      .isNotSet,
      .isSet,
      .lessThan,
      .notContains,
      .notEquals,
      .startsWith,
    ]
  }
}

/// Specifies the sort order for the products in the collection.
public enum CollectionSortOrder: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Alphabetically, in ascending order (A - Z).
  case alphaAsc
  /// Alphabetically, in descending order (Z - A).
  case alphaDesc
  /// By best-selling products.
  case bestSelling
  /// By date created, in ascending order (oldest - newest).
  case created
  /// By date created, in descending order (newest - oldest).
  case createdDesc
  /// In the order set manually by the merchant.
  case manual
  /// By price, in ascending order (lowest - highest).
  case priceAsc
  /// By price, in descending order (highest - lowest).
  case priceDesc
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ALPHA_ASC": self = .alphaAsc
      case "ALPHA_DESC": self = .alphaDesc
      case "BEST_SELLING": self = .bestSelling
      case "CREATED": self = .created
      case "CREATED_DESC": self = .createdDesc
      case "MANUAL": self = .manual
      case "PRICE_ASC": self = .priceAsc
      case "PRICE_DESC": self = .priceDesc
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .alphaAsc: return "ALPHA_ASC"
      case .alphaDesc: return "ALPHA_DESC"
      case .bestSelling: return "BEST_SELLING"
      case .created: return "CREATED"
      case .createdDesc: return "CREATED_DESC"
      case .manual: return "MANUAL"
      case .priceAsc: return "PRICE_ASC"
      case .priceDesc: return "PRICE_DESC"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: CollectionSortOrder, rhs: CollectionSortOrder) -> Bool {
    switch (lhs, rhs) {
      case (.alphaAsc, .alphaAsc): return true
      case (.alphaDesc, .alphaDesc): return true
      case (.bestSelling, .bestSelling): return true
      case (.created, .created): return true
      case (.createdDesc, .createdDesc): return true
      case (.manual, .manual): return true
      case (.priceAsc, .priceAsc): return true
      case (.priceDesc, .priceDesc): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [CollectionSortOrder] {
    return [
      .alphaAsc,
      .alphaDesc,
      .bestSelling,
      .created,
      .createdDesc,
      .manual,
      .priceAsc,
      .priceDesc,
    ]
  }
}

/// The input fields to use to create or update a metafield through a mutation on the owning resource.
/// An alternative way to create or update a metafield is by using the
/// [metafieldsSet](https://shopify.dev/api/admin-graphql/latest/mutations/metafieldsSet) mutation.
public struct MetafieldInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id: The unique ID of the metafield.
  /// 
  /// Required when updating a metafield, but should not be included when creating as it's created automatically.
  ///   - namespace: The container for a group of metafields that the metafield is or will be associated with. Used in tandem with
  /// `key` to lookup a metafield on a resource, preventing conflicts with other metafields with the same `key`.
  /// 
  /// Required when creating a metafield, but optional when updating. Used to help identify the metafield when
  /// updating, but cannot be updated itself.
  /// 
  /// Must be 3-255 characters long and can contain alphanumeric, hyphen, and underscore characters.
  ///   - key: The unique identifier for a metafield within its namespace.
  /// 
  /// Required when creating a metafield, but optional when updating. Used to help identify the metafield when
  /// updating, but cannot be updated itself.
  /// 
  /// Must be 3-64 characters long and can contain alphanumeric, hyphen, and underscore characters.
  ///   - value: The data stored in the metafield. Always stored as a string, regardless of the metafield's type.
  ///   - type: The type of data that is stored in the metafield.
  /// Refer to the list of [supported types](https://shopify.dev/apps/metafields/types).
  /// 
  /// Required when creating a metafield, but optional when updating.
  public init(id: Swift.Optional<GraphQLID?> = nil, namespace: Swift.Optional<String?> = nil, key: Swift.Optional<String?> = nil, value: Swift.Optional<String?> = nil, type: Swift.Optional<String?> = nil) {
    graphQLMap = ["id": id, "namespace": namespace, "key": key, "value": value, "type": type]
  }

  /// The unique ID of the metafield.
  /// 
  /// Required when updating a metafield, but should not be included when creating as it's created automatically.
  public var id: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  /// The container for a group of metafields that the metafield is or will be associated with. Used in tandem with
  /// `key` to lookup a metafield on a resource, preventing conflicts with other metafields with the same `key`.
  /// 
  /// Required when creating a metafield, but optional when updating. Used to help identify the metafield when
  /// updating, but cannot be updated itself.
  /// 
  /// Must be 3-255 characters long and can contain alphanumeric, hyphen, and underscore characters.
  public var namespace: Swift.Optional<String?> {
    get {
      return graphQLMap["namespace"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "namespace")
    }
  }

  /// The unique identifier for a metafield within its namespace.
  /// 
  /// Required when creating a metafield, but optional when updating. Used to help identify the metafield when
  /// updating, but cannot be updated itself.
  /// 
  /// Must be 3-64 characters long and can contain alphanumeric, hyphen, and underscore characters.
  public var key: Swift.Optional<String?> {
    get {
      return graphQLMap["key"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "key")
    }
  }

  /// The data stored in the metafield. Always stored as a string, regardless of the metafield's type.
  public var value: Swift.Optional<String?> {
    get {
      return graphQLMap["value"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "value")
    }
  }

  /// The type of data that is stored in the metafield.
  /// Refer to the list of [supported types](https://shopify.dev/apps/metafields/types).
  /// 
  /// Required when creating a metafield, but optional when updating.
  public var type: Swift.Optional<String?> {
    get {
      return graphQLMap["type"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }
}

/// The input fields for SEO information.
public struct SEOInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - title: SEO title of the product.
  ///   - description: SEO description of the product.
  public init(title: Swift.Optional<String?> = nil, description: Swift.Optional<String?> = nil) {
    graphQLMap = ["title": title, "description": description]
  }

  /// SEO title of the product.
  public var title: Swift.Optional<String?> {
    get {
      return graphQLMap["title"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  /// SEO description of the product.
  public var description: Swift.Optional<String?> {
    get {
      return graphQLMap["description"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }
}

/// The input fields for specifying the collection to delete.
public struct CollectionDeleteInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id: The ID of the collection to be deleted.
  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  /// The ID of the collection to be deleted.
  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

/// The input fields to create or update a basic code discount.
public struct DiscountCodeBasicInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - combinesWith: Determines which discount classes the discount can combine with.
  ///   - title: The title of the discount.
  ///   - startsAt: The date and time when the discount starts.
  ///   - endsAt: The date and time when the discount ends. For open-ended discounts, use `null`.
  ///   - usageLimit: The maximum number of times that the discount can be used. For open-ended discounts, use `null`.
  ///   - appliesOncePerCustomer: Whether the discount can be applied only once per customer.
  ///   - minimumRequirement: The minimum subtotal or quantity that's required for the discount to be applied.
  ///   - customerGets: The qualifying items in an order, the quantity of each one, and the total value of the discount.
  ///   - customerSelection: The customers that can use the discount.
  ///   - code: The code to use the discount.
  ///   - recurringCycleLimit: The number of times a discount applies on recurring purchases (subscriptions).
  public init(combinesWith: Swift.Optional<DiscountCombinesWithInput?> = nil, title: Swift.Optional<String?> = nil, startsAt: Swift.Optional<String?> = nil, endsAt: Swift.Optional<String?> = nil, usageLimit: Swift.Optional<Int?> = nil, appliesOncePerCustomer: Swift.Optional<Bool?> = nil, minimumRequirement: Swift.Optional<DiscountMinimumRequirementInput?> = nil, customerGets: Swift.Optional<DiscountCustomerGetsInput?> = nil, customerSelection: Swift.Optional<DiscountCustomerSelectionInput?> = nil, code: Swift.Optional<String?> = nil, recurringCycleLimit: Swift.Optional<Int?> = nil) {
    graphQLMap = ["combinesWith": combinesWith, "title": title, "startsAt": startsAt, "endsAt": endsAt, "usageLimit": usageLimit, "appliesOncePerCustomer": appliesOncePerCustomer, "minimumRequirement": minimumRequirement, "customerGets": customerGets, "customerSelection": customerSelection, "code": code, "recurringCycleLimit": recurringCycleLimit]
  }

  /// Determines which discount classes the discount can combine with.
  public var combinesWith: Swift.Optional<DiscountCombinesWithInput?> {
    get {
      return graphQLMap["combinesWith"] as? Swift.Optional<DiscountCombinesWithInput?> ?? Swift.Optional<DiscountCombinesWithInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "combinesWith")
    }
  }

  /// The title of the discount.
  public var title: Swift.Optional<String?> {
    get {
      return graphQLMap["title"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  /// The date and time when the discount starts.
  public var startsAt: Swift.Optional<String?> {
    get {
      return graphQLMap["startsAt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "startsAt")
    }
  }

  /// The date and time when the discount ends. For open-ended discounts, use `null`.
  public var endsAt: Swift.Optional<String?> {
    get {
      return graphQLMap["endsAt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "endsAt")
    }
  }

  /// The maximum number of times that the discount can be used. For open-ended discounts, use `null`.
  public var usageLimit: Swift.Optional<Int?> {
    get {
      return graphQLMap["usageLimit"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "usageLimit")
    }
  }

  /// Whether the discount can be applied only once per customer.
  public var appliesOncePerCustomer: Swift.Optional<Bool?> {
    get {
      return graphQLMap["appliesOncePerCustomer"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "appliesOncePerCustomer")
    }
  }

  /// The minimum subtotal or quantity that's required for the discount to be applied.
  public var minimumRequirement: Swift.Optional<DiscountMinimumRequirementInput?> {
    get {
      return graphQLMap["minimumRequirement"] as? Swift.Optional<DiscountMinimumRequirementInput?> ?? Swift.Optional<DiscountMinimumRequirementInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "minimumRequirement")
    }
  }

  /// The qualifying items in an order, the quantity of each one, and the total value of the discount.
  public var customerGets: Swift.Optional<DiscountCustomerGetsInput?> {
    get {
      return graphQLMap["customerGets"] as? Swift.Optional<DiscountCustomerGetsInput?> ?? Swift.Optional<DiscountCustomerGetsInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "customerGets")
    }
  }

  /// The customers that can use the discount.
  public var customerSelection: Swift.Optional<DiscountCustomerSelectionInput?> {
    get {
      return graphQLMap["customerSelection"] as? Swift.Optional<DiscountCustomerSelectionInput?> ?? Swift.Optional<DiscountCustomerSelectionInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "customerSelection")
    }
  }

  /// The code to use the discount.
  public var code: Swift.Optional<String?> {
    get {
      return graphQLMap["code"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "code")
    }
  }

  /// The number of times a discount applies on recurring purchases (subscriptions).
  public var recurringCycleLimit: Swift.Optional<Int?> {
    get {
      return graphQLMap["recurringCycleLimit"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "recurringCycleLimit")
    }
  }
}

/// The input fields to determine which discount classes the discount can combine with.
public struct DiscountCombinesWithInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - productDiscounts: Combines with product discounts.
  ///   - orderDiscounts: Combines with order discounts.
  ///   - shippingDiscounts: Combines with shipping discounts.
  public init(productDiscounts: Swift.Optional<Bool?> = nil, orderDiscounts: Swift.Optional<Bool?> = nil, shippingDiscounts: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["productDiscounts": productDiscounts, "orderDiscounts": orderDiscounts, "shippingDiscounts": shippingDiscounts]
  }

  /// Combines with product discounts.
  public var productDiscounts: Swift.Optional<Bool?> {
    get {
      return graphQLMap["productDiscounts"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productDiscounts")
    }
  }

  /// Combines with order discounts.
  public var orderDiscounts: Swift.Optional<Bool?> {
    get {
      return graphQLMap["orderDiscounts"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "orderDiscounts")
    }
  }

  /// Combines with shipping discounts.
  public var shippingDiscounts: Swift.Optional<Bool?> {
    get {
      return graphQLMap["shippingDiscounts"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "shippingDiscounts")
    }
  }
}

/// The input fields for the minimum quantity or subtotal required for a discount.
public struct DiscountMinimumRequirementInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - quantity: The minimum required quantity.
  ///   - subtotal: The minimum required subtotal.
  public init(quantity: Swift.Optional<DiscountMinimumQuantityInput?> = nil, subtotal: Swift.Optional<DiscountMinimumSubtotalInput?> = nil) {
    graphQLMap = ["quantity": quantity, "subtotal": subtotal]
  }

  /// The minimum required quantity.
  public var quantity: Swift.Optional<DiscountMinimumQuantityInput?> {
    get {
      return graphQLMap["quantity"] as? Swift.Optional<DiscountMinimumQuantityInput?> ?? Swift.Optional<DiscountMinimumQuantityInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "quantity")
    }
  }

  /// The minimum required subtotal.
  public var subtotal: Swift.Optional<DiscountMinimumSubtotalInput?> {
    get {
      return graphQLMap["subtotal"] as? Swift.Optional<DiscountMinimumSubtotalInput?> ?? Swift.Optional<DiscountMinimumSubtotalInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "subtotal")
    }
  }
}

/// The input fields for the minimum quantity required for the discount.
public struct DiscountMinimumQuantityInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - greaterThanOrEqualToQuantity: The minimum quantity of items that's required for the discount to be applied.
  public init(greaterThanOrEqualToQuantity: Swift.Optional<String?> = nil) {
    graphQLMap = ["greaterThanOrEqualToQuantity": greaterThanOrEqualToQuantity]
  }

  /// The minimum quantity of items that's required for the discount to be applied.
  public var greaterThanOrEqualToQuantity: Swift.Optional<String?> {
    get {
      return graphQLMap["greaterThanOrEqualToQuantity"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "greaterThanOrEqualToQuantity")
    }
  }
}

/// The input fields for the minimum subtotal required for a discount.
public struct DiscountMinimumSubtotalInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - greaterThanOrEqualToSubtotal: The minimum subtotal that's required for the discount to be applied.
  public init(greaterThanOrEqualToSubtotal: Swift.Optional<String?> = nil) {
    graphQLMap = ["greaterThanOrEqualToSubtotal": greaterThanOrEqualToSubtotal]
  }

  /// The minimum subtotal that's required for the discount to be applied.
  public var greaterThanOrEqualToSubtotal: Swift.Optional<String?> {
    get {
      return graphQLMap["greaterThanOrEqualToSubtotal"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "greaterThanOrEqualToSubtotal")
    }
  }
}

/// Specifies the items that will be discounted, the quantity of items that will be discounted, and the value of discount.
public struct DiscountCustomerGetsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - value: The quantity of items discounted and the discount value.
  ///   - items: The IDs of the items that the customer gets. The items can be either collections or products.
  ///   - appliesOnOneTimePurchase: Whether the discount applies on regular one-time-purchase items.
  ///   - appliesOnSubscription: Whether the discount applies on subscription items.
  public init(value: Swift.Optional<DiscountCustomerGetsValueInput?> = nil, items: Swift.Optional<DiscountItemsInput?> = nil, appliesOnOneTimePurchase: Swift.Optional<Bool?> = nil, appliesOnSubscription: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["value": value, "items": items, "appliesOnOneTimePurchase": appliesOnOneTimePurchase, "appliesOnSubscription": appliesOnSubscription]
  }

  /// The quantity of items discounted and the discount value.
  public var value: Swift.Optional<DiscountCustomerGetsValueInput?> {
    get {
      return graphQLMap["value"] as? Swift.Optional<DiscountCustomerGetsValueInput?> ?? Swift.Optional<DiscountCustomerGetsValueInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "value")
    }
  }

  /// The IDs of the items that the customer gets. The items can be either collections or products.
  public var items: Swift.Optional<DiscountItemsInput?> {
    get {
      return graphQLMap["items"] as? Swift.Optional<DiscountItemsInput?> ?? Swift.Optional<DiscountItemsInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "items")
    }
  }

  /// Whether the discount applies on regular one-time-purchase items.
  public var appliesOnOneTimePurchase: Swift.Optional<Bool?> {
    get {
      return graphQLMap["appliesOnOneTimePurchase"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "appliesOnOneTimePurchase")
    }
  }

  /// Whether the discount applies on subscription items.
  public var appliesOnSubscription: Swift.Optional<Bool?> {
    get {
      return graphQLMap["appliesOnSubscription"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "appliesOnSubscription")
    }
  }
}

/// The input fields for the quantity of items discounted and the discount value.
public struct DiscountCustomerGetsValueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - discountOnQuantity: The quantity of the items that are discounted and the discount value.
  ///   - percentage: The percentage value of the discount. Value must be between 0.00 - 1.00.
  ///   - discountAmount: The value of the discount.
  public init(discountOnQuantity: Swift.Optional<DiscountOnQuantityInput?> = nil, percentage: Swift.Optional<Double?> = nil, discountAmount: Swift.Optional<DiscountAmountInput?> = nil) {
    graphQLMap = ["discountOnQuantity": discountOnQuantity, "percentage": percentage, "discountAmount": discountAmount]
  }

  /// The quantity of the items that are discounted and the discount value.
  public var discountOnQuantity: Swift.Optional<DiscountOnQuantityInput?> {
    get {
      return graphQLMap["discountOnQuantity"] as? Swift.Optional<DiscountOnQuantityInput?> ?? Swift.Optional<DiscountOnQuantityInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "discountOnQuantity")
    }
  }

  /// The percentage value of the discount. Value must be between 0.00 - 1.00.
  public var percentage: Swift.Optional<Double?> {
    get {
      return graphQLMap["percentage"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "percentage")
    }
  }

  /// The value of the discount.
  public var discountAmount: Swift.Optional<DiscountAmountInput?> {
    get {
      return graphQLMap["discountAmount"] as? Swift.Optional<DiscountAmountInput?> ?? Swift.Optional<DiscountAmountInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "discountAmount")
    }
  }
}

/// The input fields for the quantity of items discounted and the discount value.
public struct DiscountOnQuantityInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - quantity: The quantity of items that are discounted.
  ///   - effect: The percentage value of the discount.
  public init(quantity: Swift.Optional<String?> = nil, effect: Swift.Optional<DiscountEffectInput?> = nil) {
    graphQLMap = ["quantity": quantity, "effect": effect]
  }

  /// The quantity of items that are discounted.
  public var quantity: Swift.Optional<String?> {
    get {
      return graphQLMap["quantity"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "quantity")
    }
  }

  /// The percentage value of the discount.
  public var effect: Swift.Optional<DiscountEffectInput?> {
    get {
      return graphQLMap["effect"] as? Swift.Optional<DiscountEffectInput?> ?? Swift.Optional<DiscountEffectInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "effect")
    }
  }
}

/// The input fields for how the discount will be applied. Currently, only percentage off is supported.
public struct DiscountEffectInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - percentage: The percentage value of the discount. Value must be between 0.00 - 1.00.
  public init(percentage: Swift.Optional<Double?> = nil) {
    graphQLMap = ["percentage": percentage]
  }

  /// The percentage value of the discount. Value must be between 0.00 - 1.00.
  public var percentage: Swift.Optional<Double?> {
    get {
      return graphQLMap["percentage"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "percentage")
    }
  }
}

/// The input fields for the value of the discount and how it is applied.
public struct DiscountAmountInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - amount: The value of the discount.
  ///   - appliesOnEachItem: If true, then the discount is applied to each of the entitled items. If false, then the amount is split across all of the entitled items.
  public init(amount: Swift.Optional<String?> = nil, appliesOnEachItem: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["amount": amount, "appliesOnEachItem": appliesOnEachItem]
  }

  /// The value of the discount.
  public var amount: Swift.Optional<String?> {
    get {
      return graphQLMap["amount"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "amount")
    }
  }

  /// If true, then the discount is applied to each of the entitled items. If false, then the amount is split across all of the entitled items.
  public var appliesOnEachItem: Swift.Optional<Bool?> {
    get {
      return graphQLMap["appliesOnEachItem"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "appliesOnEachItem")
    }
  }
}

/// The input fields for the items attached to a discount. You can specify the discount items by product ID or collection ID.
public struct DiscountItemsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - products: The products and product variants that are attached to a discount.
  ///   - collections: The collections that are attached to a discount.
  ///   - all: Whether all items should be selected.
  public init(products: Swift.Optional<DiscountProductsInput?> = nil, collections: Swift.Optional<DiscountCollectionsInput?> = nil, all: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["products": products, "collections": collections, "all": all]
  }

  /// The products and product variants that are attached to a discount.
  public var products: Swift.Optional<DiscountProductsInput?> {
    get {
      return graphQLMap["products"] as? Swift.Optional<DiscountProductsInput?> ?? Swift.Optional<DiscountProductsInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "products")
    }
  }

  /// The collections that are attached to a discount.
  public var collections: Swift.Optional<DiscountCollectionsInput?> {
    get {
      return graphQLMap["collections"] as? Swift.Optional<DiscountCollectionsInput?> ?? Swift.Optional<DiscountCollectionsInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "collections")
    }
  }

  /// Whether all items should be selected.
  public var all: Swift.Optional<Bool?> {
    get {
      return graphQLMap["all"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "all")
    }
  }
}

/// The input fields for the products and product variants attached to a discount.
public struct DiscountProductsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - productsToAdd: Specifies list of product ids to add.
  ///   - productsToRemove: Specifies list of product ids to remove.
  ///   - productVariantsToAdd: Specifies list of product variant ids to add.
  ///   - productVariantsToRemove: Specifies list of product variant ids to remove.
  public init(productsToAdd: Swift.Optional<[GraphQLID]?> = nil, productsToRemove: Swift.Optional<[GraphQLID]?> = nil, productVariantsToAdd: Swift.Optional<[GraphQLID]?> = nil, productVariantsToRemove: Swift.Optional<[GraphQLID]?> = nil) {
    graphQLMap = ["productsToAdd": productsToAdd, "productsToRemove": productsToRemove, "productVariantsToAdd": productVariantsToAdd, "productVariantsToRemove": productVariantsToRemove]
  }

  /// Specifies list of product ids to add.
  public var productsToAdd: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["productsToAdd"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productsToAdd")
    }
  }

  /// Specifies list of product ids to remove.
  public var productsToRemove: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["productsToRemove"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productsToRemove")
    }
  }

  /// Specifies list of product variant ids to add.
  public var productVariantsToAdd: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["productVariantsToAdd"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productVariantsToAdd")
    }
  }

  /// Specifies list of product variant ids to remove.
  public var productVariantsToRemove: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["productVariantsToRemove"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productVariantsToRemove")
    }
  }
}

/// The input fields for collections attached to a discount.
public struct DiscountCollectionsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - add: Specifies list of collection ids to add.
  ///   - remove: Specifies list of collection ids to remove.
  public init(add: Swift.Optional<[GraphQLID]?> = nil, remove: Swift.Optional<[GraphQLID]?> = nil) {
    graphQLMap = ["add": add, "remove": remove]
  }

  /// Specifies list of collection ids to add.
  public var add: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["add"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "add")
    }
  }

  /// Specifies list of collection ids to remove.
  public var remove: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["remove"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "remove")
    }
  }
}

/// The input fields for the customers who can use this discount.
public struct DiscountCustomerSelectionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - all: Whether all customers can use this discount.
  ///   - customers: The list of customer IDs to add or remove from the list of customers.
  ///   - customerSegments: The list of customer segment IDs to add or remove from the list of customer segments.
  public init(all: Swift.Optional<Bool?> = nil, customers: Swift.Optional<DiscountCustomersInput?> = nil, customerSegments: Swift.Optional<DiscountCustomerSegmentsInput?> = nil) {
    graphQLMap = ["all": all, "customers": customers, "customerSegments": customerSegments]
  }

  /// Whether all customers can use this discount.
  public var all: Swift.Optional<Bool?> {
    get {
      return graphQLMap["all"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "all")
    }
  }

  /// The list of customer IDs to add or remove from the list of customers.
  public var customers: Swift.Optional<DiscountCustomersInput?> {
    get {
      return graphQLMap["customers"] as? Swift.Optional<DiscountCustomersInput?> ?? Swift.Optional<DiscountCustomersInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "customers")
    }
  }

  /// The list of customer segment IDs to add or remove from the list of customer segments.
  public var customerSegments: Swift.Optional<DiscountCustomerSegmentsInput?> {
    get {
      return graphQLMap["customerSegments"] as? Swift.Optional<DiscountCustomerSegmentsInput?> ?? Swift.Optional<DiscountCustomerSegmentsInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "customerSegments")
    }
  }
}

/// The input fields for which customers to add to or remove from the discount.
public struct DiscountCustomersInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - add: A list of customers to add to the current list of customers who can use the discount.
  ///   - remove: A list of customers to remove from the current list of customers who can use the discount.
  public init(add: Swift.Optional<[GraphQLID]?> = nil, remove: Swift.Optional<[GraphQLID]?> = nil) {
    graphQLMap = ["add": add, "remove": remove]
  }

  /// A list of customers to add to the current list of customers who can use the discount.
  public var add: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["add"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "add")
    }
  }

  /// A list of customers to remove from the current list of customers who can use the discount.
  public var remove: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["remove"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "remove")
    }
  }
}

/// The input fields for which customer segments to add to or remove from the discount.
public struct DiscountCustomerSegmentsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - add: A list of customer segments to add to the current list of customer segments.
  ///   - remove: A list of customer segments to remove from the current list of customer segments.
  public init(add: Swift.Optional<[GraphQLID]?> = nil, remove: Swift.Optional<[GraphQLID]?> = nil) {
    graphQLMap = ["add": add, "remove": remove]
  }

  /// A list of customer segments to add to the current list of customer segments.
  public var add: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["add"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "add")
    }
  }

  /// A list of customer segments to remove from the current list of customer segments.
  public var remove: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["remove"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "remove")
    }
  }
}

/// The input fields required to create a product.
public struct ProductInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - descriptionHtml: The description of the product, complete with HTML formatting.
  ///   - handle: A unique, human-friendly string for the product.
  /// Automatically generated from the product's title unless otherwise specified.
  ///   - redirectNewHandle: Whether a redirect is required after a new handle has been provided.
  /// If true, then the old handle is redirected to the new one automatically.
  ///   - seo: The SEO information associated with the product.
  ///   - productType: The product type specified by the merchant.
  ///   - standardizedProductType: The standardized product type in the Shopify product taxonomy.
  ///   - productCategory: The product category in the Shopify product taxonomy.
  ///   - customProductType: The custom product type specified by the merchant.
  ///   - tags: A comma separated list of tags that have been added to the product.
  ///   - templateSuffix: The theme template used when viewing the product in a store.
  ///   - giftCard: Whether the product is a gift card.
  ///   - giftCardTemplateSuffix: The theme template used when viewing the gift card in a store.
  ///   - title: The title of the product.
  ///   - vendor: The name of the product's vendor.
  ///   - collectionsToJoin: The IDs of the collections that this product will be added to.
  ///   - collectionsToLeave: The IDs of collections that will no longer include the existing product.
  ///   - id: Specifies the product to update in productUpdate or creates a new product if absent in productCreate.
  ///   - images: The images to associate with the product.
  ///   - metafields: The metafields to associate with this product.
  ///   - options: List of custom product options (maximum of 3 per product).
  ///   - variants: A list of variants associated with the product.
  ///   - status: The status of the product.
  ///   - requiresSellingPlan: Whether the product can only be purchased with a selling plan (subscription). Products that are sold exclusively on subscription can only be created on online stores. If set to `true` on an already existing product, then the product will be marked unavailable on channels that don't support subscriptions.
  public init(descriptionHtml: Swift.Optional<String?> = nil, handle: Swift.Optional<String?> = nil, redirectNewHandle: Swift.Optional<Bool?> = nil, seo: Swift.Optional<SEOInput?> = nil, productType: Swift.Optional<String?> = nil, standardizedProductType: Swift.Optional<StandardizedProductTypeInput?> = nil, productCategory: Swift.Optional<ProductCategoryInput?> = nil, customProductType: Swift.Optional<String?> = nil, tags: Swift.Optional<[String]?> = nil, templateSuffix: Swift.Optional<String?> = nil, giftCard: Swift.Optional<Bool?> = nil, giftCardTemplateSuffix: Swift.Optional<String?> = nil, title: Swift.Optional<String?> = nil, vendor: Swift.Optional<String?> = nil, collectionsToJoin: Swift.Optional<[GraphQLID]?> = nil, collectionsToLeave: Swift.Optional<[GraphQLID]?> = nil, id: Swift.Optional<GraphQLID?> = nil, images: Swift.Optional<[ImageInput]?> = nil, metafields: Swift.Optional<[MetafieldInput]?> = nil, options: Swift.Optional<[String]?> = nil, variants: Swift.Optional<[ProductVariantInput]?> = nil, status: Swift.Optional<ProductStatus?> = nil, requiresSellingPlan: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["descriptionHtml": descriptionHtml, "handle": handle, "redirectNewHandle": redirectNewHandle, "seo": seo, "productType": productType, "standardizedProductType": standardizedProductType, "productCategory": productCategory, "customProductType": customProductType, "tags": tags, "templateSuffix": templateSuffix, "giftCard": giftCard, "giftCardTemplateSuffix": giftCardTemplateSuffix, "title": title, "vendor": vendor, "collectionsToJoin": collectionsToJoin, "collectionsToLeave": collectionsToLeave, "id": id, "images": images, "metafields": metafields, "options": options, "variants": variants, "status": status, "requiresSellingPlan": requiresSellingPlan]
  }

  /// The description of the product, complete with HTML formatting.
  public var descriptionHtml: Swift.Optional<String?> {
    get {
      return graphQLMap["descriptionHtml"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "descriptionHtml")
    }
  }

  /// A unique, human-friendly string for the product.
  /// Automatically generated from the product's title unless otherwise specified.
  public var handle: Swift.Optional<String?> {
    get {
      return graphQLMap["handle"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "handle")
    }
  }

  /// Whether a redirect is required after a new handle has been provided.
  /// If true, then the old handle is redirected to the new one automatically.
  public var redirectNewHandle: Swift.Optional<Bool?> {
    get {
      return graphQLMap["redirectNewHandle"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "redirectNewHandle")
    }
  }

  /// The SEO information associated with the product.
  public var seo: Swift.Optional<SEOInput?> {
    get {
      return graphQLMap["seo"] as? Swift.Optional<SEOInput?> ?? Swift.Optional<SEOInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "seo")
    }
  }

  /// The product type specified by the merchant.
  public var productType: Swift.Optional<String?> {
    get {
      return graphQLMap["productType"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productType")
    }
  }

  /// The standardized product type in the Shopify product taxonomy.
  public var standardizedProductType: Swift.Optional<StandardizedProductTypeInput?> {
    get {
      return graphQLMap["standardizedProductType"] as? Swift.Optional<StandardizedProductTypeInput?> ?? Swift.Optional<StandardizedProductTypeInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "standardizedProductType")
    }
  }

  /// The product category in the Shopify product taxonomy.
  public var productCategory: Swift.Optional<ProductCategoryInput?> {
    get {
      return graphQLMap["productCategory"] as? Swift.Optional<ProductCategoryInput?> ?? Swift.Optional<ProductCategoryInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productCategory")
    }
  }

  /// The custom product type specified by the merchant.
  public var customProductType: Swift.Optional<String?> {
    get {
      return graphQLMap["customProductType"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "customProductType")
    }
  }

  /// A comma separated list of tags that have been added to the product.
  public var tags: Swift.Optional<[String]?> {
    get {
      return graphQLMap["tags"] as? Swift.Optional<[String]?> ?? Swift.Optional<[String]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "tags")
    }
  }

  /// The theme template used when viewing the product in a store.
  public var templateSuffix: Swift.Optional<String?> {
    get {
      return graphQLMap["templateSuffix"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "templateSuffix")
    }
  }

  /// Whether the product is a gift card.
  public var giftCard: Swift.Optional<Bool?> {
    get {
      return graphQLMap["giftCard"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "giftCard")
    }
  }

  /// The theme template used when viewing the gift card in a store.
  public var giftCardTemplateSuffix: Swift.Optional<String?> {
    get {
      return graphQLMap["giftCardTemplateSuffix"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "giftCardTemplateSuffix")
    }
  }

  /// The title of the product.
  public var title: Swift.Optional<String?> {
    get {
      return graphQLMap["title"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  /// The name of the product's vendor.
  public var vendor: Swift.Optional<String?> {
    get {
      return graphQLMap["vendor"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "vendor")
    }
  }

  /// The IDs of the collections that this product will be added to.
  public var collectionsToJoin: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["collectionsToJoin"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "collectionsToJoin")
    }
  }

  /// The IDs of collections that will no longer include the existing product.
  public var collectionsToLeave: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["collectionsToLeave"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "collectionsToLeave")
    }
  }

  /// Specifies the product to update in productUpdate or creates a new product if absent in productCreate.
  public var id: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  /// The images to associate with the product.
  public var images: Swift.Optional<[ImageInput]?> {
    get {
      return graphQLMap["images"] as? Swift.Optional<[ImageInput]?> ?? Swift.Optional<[ImageInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "images")
    }
  }

  /// The metafields to associate with this product.
  public var metafields: Swift.Optional<[MetafieldInput]?> {
    get {
      return graphQLMap["metafields"] as? Swift.Optional<[MetafieldInput]?> ?? Swift.Optional<[MetafieldInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "metafields")
    }
  }

  /// List of custom product options (maximum of 3 per product).
  public var options: Swift.Optional<[String]?> {
    get {
      return graphQLMap["options"] as? Swift.Optional<[String]?> ?? Swift.Optional<[String]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "options")
    }
  }

  /// A list of variants associated with the product.
  public var variants: Swift.Optional<[ProductVariantInput]?> {
    get {
      return graphQLMap["variants"] as? Swift.Optional<[ProductVariantInput]?> ?? Swift.Optional<[ProductVariantInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "variants")
    }
  }

  /// The status of the product.
  public var status: Swift.Optional<ProductStatus?> {
    get {
      return graphQLMap["status"] as? Swift.Optional<ProductStatus?> ?? Swift.Optional<ProductStatus?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "status")
    }
  }

  /// Whether the product can only be purchased with a selling plan (subscription). Products that are sold exclusively on subscription can only be created on online stores. If set to `true` on an already existing product, then the product will be marked unavailable on channels that don't support subscriptions.
  public var requiresSellingPlan: Swift.Optional<Bool?> {
    get {
      return graphQLMap["requiresSellingPlan"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "requiresSellingPlan")
    }
  }
}

/// Provides the fields and values to use when adding a standard product type to a product. The [Shopify product taxonomy](https://help.shopify.com/txt/product_taxonomy/en.txt) contains the full list of available values.
public struct StandardizedProductTypeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - productTaxonomyNodeId: The ID of the node in the Shopify taxonomy that represents the product type.
  public init(productTaxonomyNodeId: GraphQLID) {
    graphQLMap = ["productTaxonomyNodeId": productTaxonomyNodeId]
  }

  /// The ID of the node in the Shopify taxonomy that represents the product type.
  public var productTaxonomyNodeId: GraphQLID {
    get {
      return graphQLMap["productTaxonomyNodeId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productTaxonomyNodeId")
    }
  }
}

/// The input fields to use when adding a product category to a product. The [Shopify product taxonomy](https://help.shopify.com/txt/product_taxonomy/en.txt) contains the full list of available values.
public struct ProductCategoryInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - productTaxonomyNodeId: The ID of the node in the Shopify taxonomy that represents the product category.
  public init(productTaxonomyNodeId: GraphQLID) {
    graphQLMap = ["productTaxonomyNodeId": productTaxonomyNodeId]
  }

  /// The ID of the node in the Shopify taxonomy that represents the product category.
  public var productTaxonomyNodeId: GraphQLID {
    get {
      return graphQLMap["productTaxonomyNodeId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productTaxonomyNodeId")
    }
  }
}

/// The input fields for specifying a product variant to create or update.
public struct ProductVariantInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - barcode: The value of the barcode associated with the product.
  ///   - compareAtPrice: The compare-at price of the variant.
  ///   - harmonizedSystemCode: The Harmonized System code (or HS Tariff code) for the variant.
  ///   - id: Specifies the product variant to update or create a new variant if absent.
  ///   - imageId: The ID of the image that's associated with the variant.
  ///   - imageSrc: The URL of an image to associate with the variant.  This field can only be used through mutations that create product images and must match one of the URLs being created on the product.
  ///   - mediaSrc: The URL of the media to associate with the variant. This field can only be used in mutations that create media images and must match one of the URLs being created on the product. This field only accepts one value.
  ///   - inventoryPolicy: Whether customers are allowed to place an order for the product variant when it's out of stock.
  ///   - inventoryQuantities: The inventory quantities at each location where the variant is stocked. Used as input only to the `productVariantCreate` mutation.
  ///   - inventoryItem: The inventory item associated with the variant. Used for unit cost.
  ///   - metafields: Additional customizable information about the product variant.
  ///   - options: The custom properties that a shop owner uses to define product variants.
  ///   - position: The order of the product variant in the list of product variants. The first position in the list is 1.
  ///   - price: The price of the variant.
  ///   - productId: The product to create the variant for. Used as input only to the `productVariantCreate` mutation.
  ///   - requiresShipping: Whether the variant requires shipping.
  ///   - sku: The SKU for the variant.
  ///   - taxable: Whether the variant is taxable.
  ///   - taxCode: The tax code associated with the variant.
  ///   - weight: The weight of the variant.
  ///   - weightUnit: The unit of weight that's used to measure the variant.
  public init(barcode: Swift.Optional<String?> = nil, compareAtPrice: Swift.Optional<String?> = nil, harmonizedSystemCode: Swift.Optional<String?> = nil, id: Swift.Optional<GraphQLID?> = nil, imageId: Swift.Optional<GraphQLID?> = nil, imageSrc: Swift.Optional<String?> = nil, mediaSrc: Swift.Optional<[String]?> = nil, inventoryPolicy: Swift.Optional<ProductVariantInventoryPolicy?> = nil, inventoryQuantities: Swift.Optional<[InventoryLevelInput]?> = nil, inventoryItem: Swift.Optional<InventoryItemInput?> = nil, metafields: Swift.Optional<[MetafieldInput]?> = nil, options: Swift.Optional<[String]?> = nil, position: Swift.Optional<Int?> = nil, price: Swift.Optional<String?> = nil, productId: Swift.Optional<GraphQLID?> = nil, requiresShipping: Swift.Optional<Bool?> = nil, sku: Swift.Optional<String?> = nil, taxable: Swift.Optional<Bool?> = nil, taxCode: Swift.Optional<String?> = nil, weight: Swift.Optional<Double?> = nil, weightUnit: Swift.Optional<WeightUnit?> = nil) {
    graphQLMap = ["barcode": barcode, "compareAtPrice": compareAtPrice, "harmonizedSystemCode": harmonizedSystemCode, "id": id, "imageId": imageId, "imageSrc": imageSrc, "mediaSrc": mediaSrc, "inventoryPolicy": inventoryPolicy, "inventoryQuantities": inventoryQuantities, "inventoryItem": inventoryItem, "metafields": metafields, "options": options, "position": position, "price": price, "productId": productId, "requiresShipping": requiresShipping, "sku": sku, "taxable": taxable, "taxCode": taxCode, "weight": weight, "weightUnit": weightUnit]
  }

  /// The value of the barcode associated with the product.
  public var barcode: Swift.Optional<String?> {
    get {
      return graphQLMap["barcode"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "barcode")
    }
  }

  /// The compare-at price of the variant.
  public var compareAtPrice: Swift.Optional<String?> {
    get {
      return graphQLMap["compareAtPrice"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "compareAtPrice")
    }
  }

  /// The Harmonized System code (or HS Tariff code) for the variant.
  public var harmonizedSystemCode: Swift.Optional<String?> {
    get {
      return graphQLMap["harmonizedSystemCode"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "harmonizedSystemCode")
    }
  }

  /// Specifies the product variant to update or create a new variant if absent.
  public var id: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  /// The ID of the image that's associated with the variant.
  public var imageId: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["imageId"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageId")
    }
  }

  /// The URL of an image to associate with the variant.  This field can only be used through mutations that create product images and must match one of the URLs being created on the product.
  public var imageSrc: Swift.Optional<String?> {
    get {
      return graphQLMap["imageSrc"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageSrc")
    }
  }

  /// The URL of the media to associate with the variant. This field can only be used in mutations that create media images and must match one of the URLs being created on the product. This field only accepts one value.
  public var mediaSrc: Swift.Optional<[String]?> {
    get {
      return graphQLMap["mediaSrc"] as? Swift.Optional<[String]?> ?? Swift.Optional<[String]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mediaSrc")
    }
  }

  /// Whether customers are allowed to place an order for the product variant when it's out of stock.
  public var inventoryPolicy: Swift.Optional<ProductVariantInventoryPolicy?> {
    get {
      return graphQLMap["inventoryPolicy"] as? Swift.Optional<ProductVariantInventoryPolicy?> ?? Swift.Optional<ProductVariantInventoryPolicy?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "inventoryPolicy")
    }
  }

  /// The inventory quantities at each location where the variant is stocked. Used as input only to the `productVariantCreate` mutation.
  public var inventoryQuantities: Swift.Optional<[InventoryLevelInput]?> {
    get {
      return graphQLMap["inventoryQuantities"] as? Swift.Optional<[InventoryLevelInput]?> ?? Swift.Optional<[InventoryLevelInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "inventoryQuantities")
    }
  }

  /// The inventory item associated with the variant. Used for unit cost.
  public var inventoryItem: Swift.Optional<InventoryItemInput?> {
    get {
      return graphQLMap["inventoryItem"] as? Swift.Optional<InventoryItemInput?> ?? Swift.Optional<InventoryItemInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "inventoryItem")
    }
  }

  /// Additional customizable information about the product variant.
  public var metafields: Swift.Optional<[MetafieldInput]?> {
    get {
      return graphQLMap["metafields"] as? Swift.Optional<[MetafieldInput]?> ?? Swift.Optional<[MetafieldInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "metafields")
    }
  }

  /// The custom properties that a shop owner uses to define product variants.
  public var options: Swift.Optional<[String]?> {
    get {
      return graphQLMap["options"] as? Swift.Optional<[String]?> ?? Swift.Optional<[String]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "options")
    }
  }

  /// The order of the product variant in the list of product variants. The first position in the list is 1.
  public var position: Swift.Optional<Int?> {
    get {
      return graphQLMap["position"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "position")
    }
  }

  /// The price of the variant.
  public var price: Swift.Optional<String?> {
    get {
      return graphQLMap["price"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "price")
    }
  }

  /// The product to create the variant for. Used as input only to the `productVariantCreate` mutation.
  public var productId: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["productId"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productId")
    }
  }

  /// Whether the variant requires shipping.
  public var requiresShipping: Swift.Optional<Bool?> {
    get {
      return graphQLMap["requiresShipping"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "requiresShipping")
    }
  }

  /// The SKU for the variant.
  public var sku: Swift.Optional<String?> {
    get {
      return graphQLMap["sku"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sku")
    }
  }

  /// Whether the variant is taxable.
  public var taxable: Swift.Optional<Bool?> {
    get {
      return graphQLMap["taxable"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taxable")
    }
  }

  /// The tax code associated with the variant.
  public var taxCode: Swift.Optional<String?> {
    get {
      return graphQLMap["taxCode"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taxCode")
    }
  }

  /// The weight of the variant.
  public var weight: Swift.Optional<Double?> {
    get {
      return graphQLMap["weight"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }

  /// The unit of weight that's used to measure the variant.
  public var weightUnit: Swift.Optional<WeightUnit?> {
    get {
      return graphQLMap["weightUnit"] as? Swift.Optional<WeightUnit?> ?? Swift.Optional<WeightUnit?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weightUnit")
    }
  }
}

/// The valid values for the inventory policy of a product variant once it is out of stock.
public enum ProductVariantInventoryPolicy: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Customers can't buy this product variant after it's out of stock.
  case deny
  /// Customers can buy this product variant after it's out of stock.
  case `continue`
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "DENY": self = .deny
      case "CONTINUE": self = .continue
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .deny: return "DENY"
      case .continue: return "CONTINUE"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ProductVariantInventoryPolicy, rhs: ProductVariantInventoryPolicy) -> Bool {
    switch (lhs, rhs) {
      case (.deny, .deny): return true
      case (.continue, .continue): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ProductVariantInventoryPolicy] {
    return [
      .deny,
      .continue,
    ]
  }
}

/// The input fields for an inventory level.
public struct InventoryLevelInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - availableQuantity: The available quantity of an inventory item at a location.
  ///   - locationId: The ID of a location.
  public init(availableQuantity: Int, locationId: GraphQLID) {
    graphQLMap = ["availableQuantity": availableQuantity, "locationId": locationId]
  }

  /// The available quantity of an inventory item at a location.
  public var availableQuantity: Int {
    get {
      return graphQLMap["availableQuantity"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "availableQuantity")
    }
  }

  /// The ID of a location.
  public var locationId: GraphQLID {
    get {
      return graphQLMap["locationId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locationId")
    }
  }
}

/// The input fields for an inventory item.
public struct InventoryItemInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - cost: Unit cost associated with the inventory item, the currency is the shop's default currency.
  ///   - tracked: Whether the inventory item is tracked.
  public init(cost: Swift.Optional<String?> = nil, tracked: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["cost": cost, "tracked": tracked]
  }

  /// Unit cost associated with the inventory item, the currency is the shop's default currency.
  public var cost: Swift.Optional<String?> {
    get {
      return graphQLMap["cost"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cost")
    }
  }

  /// Whether the inventory item is tracked.
  public var tracked: Swift.Optional<Bool?> {
    get {
      return graphQLMap["tracked"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "tracked")
    }
  }
}

/// Units of measurement for weight.
public enum WeightUnit: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// 1 kilogram equals 1000 grams.
  case kilograms
  /// Metric system unit of mass.
  case grams
  /// 1 pound equals 16 ounces.
  case pounds
  /// Imperial system unit of mass.
  case ounces
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "KILOGRAMS": self = .kilograms
      case "GRAMS": self = .grams
      case "POUNDS": self = .pounds
      case "OUNCES": self = .ounces
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .kilograms: return "KILOGRAMS"
      case .grams: return "GRAMS"
      case .pounds: return "POUNDS"
      case .ounces: return "OUNCES"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: WeightUnit, rhs: WeightUnit) -> Bool {
    switch (lhs, rhs) {
      case (.kilograms, .kilograms): return true
      case (.grams, .grams): return true
      case (.pounds, .pounds): return true
      case (.ounces, .ounces): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [WeightUnit] {
    return [
      .kilograms,
      .grams,
      .pounds,
      .ounces,
    ]
  }
}

/// The possible product statuses.
public enum ProductStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// The product is ready to sell and can be published to sales channels and apps. Products with an active status aren't automatically published to sales channels, such as the online store, or apps. By default, existing products are set to active.
  case active
  /// The product is no longer being sold and isn't available to customers on sales channels and apps.
  case archived
  /// The product isn't ready to sell and is unavailable to customers on sales channels and apps. By default, duplicated and unarchived products are set to draft.
  case draft
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ACTIVE": self = .active
      case "ARCHIVED": self = .archived
      case "DRAFT": self = .draft
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .active: return "ACTIVE"
      case .archived: return "ARCHIVED"
      case .draft: return "DRAFT"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ProductStatus, rhs: ProductStatus) -> Bool {
    switch (lhs, rhs) {
      case (.active, .active): return true
      case (.archived, .archived): return true
      case (.draft, .draft): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ProductStatus] {
    return [
      .active,
      .archived,
      .draft,
    ]
  }
}

/// The input fields for specifying the product to delete.
public struct ProductDeleteInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id: The ID of the product.
  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  /// The ID of the product.
  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public final class CollectionCreateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation collectionCreate($input: CollectionInput!) {
      collectionCreate(input: $input) {
        __typename
        collection {
          __typename
          id
          title
          handle
          description
          image {
            __typename
            url
          }
        }
        userErrors {
          __typename
          field
          message
        }
      }
    }
    """

  public let operationName: String = "collectionCreate"

  public var input: CollectionInput

  public init(input: CollectionInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("collectionCreate", arguments: ["input": GraphQLVariable("input")], type: .object(CollectionCreate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(collectionCreate: CollectionCreate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "collectionCreate": collectionCreate.flatMap { (value: CollectionCreate) -> ResultMap in value.resultMap }])
    }

    /// Creates a collection.
    public var collectionCreate: CollectionCreate? {
      get {
        return (resultMap["collectionCreate"] as? ResultMap).flatMap { CollectionCreate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "collectionCreate")
      }
    }

    public struct CollectionCreate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CollectionCreatePayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("collection", type: .object(Collection.selections)),
          GraphQLField("userErrors", type: .nonNull(.list(.nonNull(.object(UserError.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(collection: Collection? = nil, userErrors: [UserError]) {
        self.init(unsafeResultMap: ["__typename": "CollectionCreatePayload", "collection": collection.flatMap { (value: Collection) -> ResultMap in value.resultMap }, "userErrors": userErrors.map { (value: UserError) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The collection that has been created.
      public var collection: Collection? {
        get {
          return (resultMap["collection"] as? ResultMap).flatMap { Collection(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "collection")
        }
      }

      /// The list of errors that occurred from executing the mutation.
      public var userErrors: [UserError] {
        get {
          return (resultMap["userErrors"] as! [ResultMap]).map { (value: ResultMap) -> UserError in UserError(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: UserError) -> ResultMap in value.resultMap }, forKey: "userErrors")
        }
      }

      public struct Collection: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Collection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("handle", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .nonNull(.scalar(String.self))),
            GraphQLField("image", type: .object(Image.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, title: String, handle: String, description: String, image: Image? = nil) {
          self.init(unsafeResultMap: ["__typename": "Collection", "id": id, "title": title, "handle": handle, "description": description, "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// A globally-unique ID.
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The name of the collection. It's displayed in the Shopify admin and is typically displayed in sales channels, such as an online store.
        public var title: String {
          get {
            return resultMap["title"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        /// A unique string that identifies the collection. If a handle isn't specified when a collection is created, it's automatically generated from the collection's original title, and typically includes words from the title separated by hyphens. For example, a collection that was created with the title `Summer Catalog 2022` might have the handle `summer-catalog-2022`.
        /// 
        /// If the title is changed, the handle doesn't automatically change.
        /// 
        /// The handle can be used in themes by the Liquid templating language to refer to the collection, but using the ID is preferred because it never changes.
        public var handle: String {
          get {
            return resultMap["handle"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "handle")
          }
        }

        /// A single-line, text-only description of the collection, stripped of any HTML tags and formatting that were included in the description.
        public var description: String {
          get {
            return resultMap["description"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        /// The image associated with the collection.
        public var image: Image? {
          get {
            return (resultMap["image"] as? ResultMap).flatMap { Image(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "image")
          }
        }

        public struct Image: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Image"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("url", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(url: String) {
            self.init(unsafeResultMap: ["__typename": "Image", "url": url])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The location of the image as a URL.
          /// 
          /// If no transform options are specified, then the original image will be preserved including any pre-applied transforms.
          /// 
          /// All transformation options are considered "best-effort". Any transformation that the original image type doesn't support will be ignored.
          /// 
          /// If you need multiple variations of the same image, then you can use [GraphQL aliases](https://graphql.org/learn/queries/#aliases).
          public var url: String {
            get {
              return resultMap["url"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "url")
            }
          }
        }
      }

      public struct UserError: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserError"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("field", type: .list(.nonNull(.scalar(String.self)))),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(field: [String]? = nil, message: String) {
          self.init(unsafeResultMap: ["__typename": "UserError", "field": field, "message": message])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The path to the input field that caused the error.
        public var field: [String]? {
          get {
            return resultMap["field"] as? [String]
          }
          set {
            resultMap.updateValue(newValue, forKey: "field")
          }
        }

        /// The error message.
        public var message: String {
          get {
            return resultMap["message"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }
      }
    }
  }
}

public final class CollectionUpdateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation collectionUpdate($input: CollectionInput!) {
      collectionUpdate(input: $input) {
        __typename
        collection {
          __typename
          id
          title
          handle
          description
          image {
            __typename
            url
          }
        }
        userErrors {
          __typename
          field
          message
        }
      }
    }
    """

  public let operationName: String = "collectionUpdate"

  public var input: CollectionInput

  public init(input: CollectionInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("collectionUpdate", arguments: ["input": GraphQLVariable("input")], type: .object(CollectionUpdate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(collectionUpdate: CollectionUpdate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "collectionUpdate": collectionUpdate.flatMap { (value: CollectionUpdate) -> ResultMap in value.resultMap }])
    }

    /// Updates a collection.
    public var collectionUpdate: CollectionUpdate? {
      get {
        return (resultMap["collectionUpdate"] as? ResultMap).flatMap { CollectionUpdate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "collectionUpdate")
      }
    }

    public struct CollectionUpdate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CollectionUpdatePayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("collection", type: .object(Collection.selections)),
          GraphQLField("userErrors", type: .nonNull(.list(.nonNull(.object(UserError.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(collection: Collection? = nil, userErrors: [UserError]) {
        self.init(unsafeResultMap: ["__typename": "CollectionUpdatePayload", "collection": collection.flatMap { (value: Collection) -> ResultMap in value.resultMap }, "userErrors": userErrors.map { (value: UserError) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The updated collection.
      public var collection: Collection? {
        get {
          return (resultMap["collection"] as? ResultMap).flatMap { Collection(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "collection")
        }
      }

      /// The list of errors that occurred from executing the mutation.
      public var userErrors: [UserError] {
        get {
          return (resultMap["userErrors"] as! [ResultMap]).map { (value: ResultMap) -> UserError in UserError(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: UserError) -> ResultMap in value.resultMap }, forKey: "userErrors")
        }
      }

      public struct Collection: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Collection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("handle", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .nonNull(.scalar(String.self))),
            GraphQLField("image", type: .object(Image.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, title: String, handle: String, description: String, image: Image? = nil) {
          self.init(unsafeResultMap: ["__typename": "Collection", "id": id, "title": title, "handle": handle, "description": description, "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// A globally-unique ID.
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The name of the collection. It's displayed in the Shopify admin and is typically displayed in sales channels, such as an online store.
        public var title: String {
          get {
            return resultMap["title"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        /// A unique string that identifies the collection. If a handle isn't specified when a collection is created, it's automatically generated from the collection's original title, and typically includes words from the title separated by hyphens. For example, a collection that was created with the title `Summer Catalog 2022` might have the handle `summer-catalog-2022`.
        /// 
        /// If the title is changed, the handle doesn't automatically change.
        /// 
        /// The handle can be used in themes by the Liquid templating language to refer to the collection, but using the ID is preferred because it never changes.
        public var handle: String {
          get {
            return resultMap["handle"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "handle")
          }
        }

        /// A single-line, text-only description of the collection, stripped of any HTML tags and formatting that were included in the description.
        public var description: String {
          get {
            return resultMap["description"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        /// The image associated with the collection.
        public var image: Image? {
          get {
            return (resultMap["image"] as? ResultMap).flatMap { Image(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "image")
          }
        }

        public struct Image: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Image"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("url", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(url: String) {
            self.init(unsafeResultMap: ["__typename": "Image", "url": url])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The location of the image as a URL.
          /// 
          /// If no transform options are specified, then the original image will be preserved including any pre-applied transforms.
          /// 
          /// All transformation options are considered "best-effort". Any transformation that the original image type doesn't support will be ignored.
          /// 
          /// If you need multiple variations of the same image, then you can use [GraphQL aliases](https://graphql.org/learn/queries/#aliases).
          public var url: String {
            get {
              return resultMap["url"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "url")
            }
          }
        }
      }

      public struct UserError: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserError"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("field", type: .list(.nonNull(.scalar(String.self)))),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(field: [String]? = nil, message: String) {
          self.init(unsafeResultMap: ["__typename": "UserError", "field": field, "message": message])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The path to the input field that caused the error.
        public var field: [String]? {
          get {
            return resultMap["field"] as? [String]
          }
          set {
            resultMap.updateValue(newValue, forKey: "field")
          }
        }

        /// The error message.
        public var message: String {
          get {
            return resultMap["message"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }
      }
    }
  }
}

public final class CollectionDeleteMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation collectionDelete($input: CollectionDeleteInput!) {
      collectionDelete(input: $input) {
        __typename
        deletedCollectionId
        userErrors {
          __typename
          field
          message
        }
      }
    }
    """

  public let operationName: String = "collectionDelete"

  public var input: CollectionDeleteInput

  public init(input: CollectionDeleteInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("collectionDelete", arguments: ["input": GraphQLVariable("input")], type: .object(CollectionDelete.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(collectionDelete: CollectionDelete? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "collectionDelete": collectionDelete.flatMap { (value: CollectionDelete) -> ResultMap in value.resultMap }])
    }

    /// Deletes a collection.
    public var collectionDelete: CollectionDelete? {
      get {
        return (resultMap["collectionDelete"] as? ResultMap).flatMap { CollectionDelete(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "collectionDelete")
      }
    }

    public struct CollectionDelete: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CollectionDeletePayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("deletedCollectionId", type: .scalar(GraphQLID.self)),
          GraphQLField("userErrors", type: .nonNull(.list(.nonNull(.object(UserError.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(deletedCollectionId: GraphQLID? = nil, userErrors: [UserError]) {
        self.init(unsafeResultMap: ["__typename": "CollectionDeletePayload", "deletedCollectionId": deletedCollectionId, "userErrors": userErrors.map { (value: UserError) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The ID of the collection that was deleted. Returns `null` if the collection doesn't exist.
      public var deletedCollectionId: GraphQLID? {
        get {
          return resultMap["deletedCollectionId"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "deletedCollectionId")
        }
      }

      /// The list of errors that occurred from executing the mutation.
      public var userErrors: [UserError] {
        get {
          return (resultMap["userErrors"] as! [ResultMap]).map { (value: ResultMap) -> UserError in UserError(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: UserError) -> ResultMap in value.resultMap }, forKey: "userErrors")
        }
      }

      public struct UserError: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserError"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("field", type: .list(.nonNull(.scalar(String.self)))),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(field: [String]? = nil, message: String) {
          self.init(unsafeResultMap: ["__typename": "UserError", "field": field, "message": message])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The path to the input field that caused the error.
        public var field: [String]? {
          get {
            return resultMap["field"] as? [String]
          }
          set {
            resultMap.updateValue(newValue, forKey: "field")
          }
        }

        /// The error message.
        public var message: String {
          get {
            return resultMap["message"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }
      }
    }
  }
}

public final class GetAllCollectionsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getAllCollections {
      collections(first: 50, reverse: true) {
        __typename
        edges {
          __typename
          node {
            __typename
            id
            title
            description
            image {
              __typename
              url
            }
          }
        }
      }
    }
    """

  public let operationName: String = "getAllCollections"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["QueryRoot"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("collections", arguments: ["first": 50, "reverse": true], type: .nonNull(.object(Collection.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(collections: Collection) {
      self.init(unsafeResultMap: ["__typename": "QueryRoot", "collections": collections.resultMap])
    }

    /// Returns a list of collections.
    public var collections: Collection {
      get {
        return Collection(unsafeResultMap: resultMap["collections"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "collections")
      }
    }

    public struct Collection: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CollectionConnection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(edges: [Edge]) {
        self.init(unsafeResultMap: ["__typename": "CollectionConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// A list of edges.
      public var edges: [Edge] {
        get {
          return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
        }
      }

      public struct Edge: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["CollectionEdge"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("node", type: .nonNull(.object(Node.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(node: Node) {
          self.init(unsafeResultMap: ["__typename": "CollectionEdge", "node": node.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The item at the end of CollectionEdge.
        public var node: Node {
          get {
            return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "node")
          }
        }

        public struct Node: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Collection"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("title", type: .nonNull(.scalar(String.self))),
              GraphQLField("description", type: .nonNull(.scalar(String.self))),
              GraphQLField("image", type: .object(Image.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, title: String, description: String, image: Image? = nil) {
            self.init(unsafeResultMap: ["__typename": "Collection", "id": id, "title": title, "description": description, "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// A globally-unique ID.
          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          /// The name of the collection. It's displayed in the Shopify admin and is typically displayed in sales channels, such as an online store.
          public var title: String {
            get {
              return resultMap["title"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "title")
            }
          }

          /// A single-line, text-only description of the collection, stripped of any HTML tags and formatting that were included in the description.
          public var description: String {
            get {
              return resultMap["description"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "description")
            }
          }

          /// The image associated with the collection.
          public var image: Image? {
            get {
              return (resultMap["image"] as? ResultMap).flatMap { Image(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "image")
            }
          }

          public struct Image: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Image"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("url", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(url: String) {
              self.init(unsafeResultMap: ["__typename": "Image", "url": url])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The location of the image as a URL.
            /// 
            /// If no transform options are specified, then the original image will be preserved including any pre-applied transforms.
            /// 
            /// All transformation options are considered "best-effort". Any transformation that the original image type doesn't support will be ignored.
            /// 
            /// If you need multiple variations of the same image, then you can use [GraphQL aliases](https://graphql.org/learn/queries/#aliases).
            public var url: String {
              get {
                return resultMap["url"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "url")
              }
            }
          }
        }
      }
    }
  }
}

public final class GetCollectionIdFromHandleQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getCollectionIdFromHandle($handle: String!) {
      collectionByHandle(handle: $handle) {
        __typename
        id
        title
        handle
        description
        image {
          __typename
          url
        }
      }
    }
    """

  public let operationName: String = "getCollectionIdFromHandle"

  public var handle: String

  public init(handle: String) {
    self.handle = handle
  }

  public var variables: GraphQLMap? {
    return ["handle": handle]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["QueryRoot"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("collectionByHandle", arguments: ["handle": GraphQLVariable("handle")], type: .object(CollectionByHandle.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(collectionByHandle: CollectionByHandle? = nil) {
      self.init(unsafeResultMap: ["__typename": "QueryRoot", "collectionByHandle": collectionByHandle.flatMap { (value: CollectionByHandle) -> ResultMap in value.resultMap }])
    }

    /// Return a collection by its handle.
    public var collectionByHandle: CollectionByHandle? {
      get {
        return (resultMap["collectionByHandle"] as? ResultMap).flatMap { CollectionByHandle(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "collectionByHandle")
      }
    }

    public struct CollectionByHandle: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Collection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("handle", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("image", type: .object(Image.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, title: String, handle: String, description: String, image: Image? = nil) {
        self.init(unsafeResultMap: ["__typename": "Collection", "id": id, "title": title, "handle": handle, "description": description, "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// A globally-unique ID.
      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// The name of the collection. It's displayed in the Shopify admin and is typically displayed in sales channels, such as an online store.
      public var title: String {
        get {
          return resultMap["title"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }

      /// A unique string that identifies the collection. If a handle isn't specified when a collection is created, it's automatically generated from the collection's original title, and typically includes words from the title separated by hyphens. For example, a collection that was created with the title `Summer Catalog 2022` might have the handle `summer-catalog-2022`.
      /// 
      /// If the title is changed, the handle doesn't automatically change.
      /// 
      /// The handle can be used in themes by the Liquid templating language to refer to the collection, but using the ID is preferred because it never changes.
      public var handle: String {
        get {
          return resultMap["handle"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "handle")
        }
      }

      /// A single-line, text-only description of the collection, stripped of any HTML tags and formatting that were included in the description.
      public var description: String {
        get {
          return resultMap["description"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "description")
        }
      }

      /// The image associated with the collection.
      public var image: Image? {
        get {
          return (resultMap["image"] as? ResultMap).flatMap { Image(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "image")
        }
      }

      public struct Image: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Image"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("url", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(url: String) {
          self.init(unsafeResultMap: ["__typename": "Image", "url": url])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The location of the image as a URL.
        /// 
        /// If no transform options are specified, then the original image will be preserved including any pre-applied transforms.
        /// 
        /// All transformation options are considered "best-effort". Any transformation that the original image type doesn't support will be ignored.
        /// 
        /// If you need multiple variations of the same image, then you can use [GraphQL aliases](https://graphql.org/learn/queries/#aliases).
        public var url: String {
          get {
            return resultMap["url"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "url")
          }
        }
      }
    }
  }
}

public final class DiscountCodeBasicCreateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation discountCodeBasicCreate($basicCodeDiscount: DiscountCodeBasicInput!) {
      discountCodeBasicCreate(basicCodeDiscount: $basicCodeDiscount) {
        __typename
        codeDiscountNode {
          __typename
          id
        }
        userErrors {
          __typename
          field
          message
        }
      }
    }
    """

  public let operationName: String = "discountCodeBasicCreate"

  public var basicCodeDiscount: DiscountCodeBasicInput

  public init(basicCodeDiscount: DiscountCodeBasicInput) {
    self.basicCodeDiscount = basicCodeDiscount
  }

  public var variables: GraphQLMap? {
    return ["basicCodeDiscount": basicCodeDiscount]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("discountCodeBasicCreate", arguments: ["basicCodeDiscount": GraphQLVariable("basicCodeDiscount")], type: .object(DiscountCodeBasicCreate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(discountCodeBasicCreate: DiscountCodeBasicCreate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "discountCodeBasicCreate": discountCodeBasicCreate.flatMap { (value: DiscountCodeBasicCreate) -> ResultMap in value.resultMap }])
    }

    /// Creates a basic code discount.
    public var discountCodeBasicCreate: DiscountCodeBasicCreate? {
      get {
        return (resultMap["discountCodeBasicCreate"] as? ResultMap).flatMap { DiscountCodeBasicCreate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "discountCodeBasicCreate")
      }
    }

    public struct DiscountCodeBasicCreate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["DiscountCodeBasicCreatePayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("codeDiscountNode", type: .object(CodeDiscountNode.selections)),
          GraphQLField("userErrors", type: .nonNull(.list(.nonNull(.object(UserError.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(codeDiscountNode: CodeDiscountNode? = nil, userErrors: [UserError]) {
        self.init(unsafeResultMap: ["__typename": "DiscountCodeBasicCreatePayload", "codeDiscountNode": codeDiscountNode.flatMap { (value: CodeDiscountNode) -> ResultMap in value.resultMap }, "userErrors": userErrors.map { (value: UserError) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The created code discount.
      public var codeDiscountNode: CodeDiscountNode? {
        get {
          return (resultMap["codeDiscountNode"] as? ResultMap).flatMap { CodeDiscountNode(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "codeDiscountNode")
        }
      }

      /// The list of errors that occurred from executing the mutation.
      public var userErrors: [UserError] {
        get {
          return (resultMap["userErrors"] as! [ResultMap]).map { (value: ResultMap) -> UserError in UserError(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: UserError) -> ResultMap in value.resultMap }, forKey: "userErrors")
        }
      }

      public struct CodeDiscountNode: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["DiscountCodeNode"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID) {
          self.init(unsafeResultMap: ["__typename": "DiscountCodeNode", "id": id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// A globally-unique ID.
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }
      }

      public struct UserError: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["DiscountUserError"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("field", type: .list(.nonNull(.scalar(String.self)))),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(field: [String]? = nil, message: String) {
          self.init(unsafeResultMap: ["__typename": "DiscountUserError", "field": field, "message": message])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The path to the input field that caused the error.
        public var field: [String]? {
          get {
            return resultMap["field"] as? [String]
          }
          set {
            resultMap.updateValue(newValue, forKey: "field")
          }
        }

        /// The error message.
        public var message: String {
          get {
            return resultMap["message"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }
      }
    }
  }
}

public final class DiscountCodeBasicUpdateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation discountCodeBasicUpdate($basicCodeDiscount: DiscountCodeBasicInput!, $id: ID!) {
      discountCodeBasicUpdate(basicCodeDiscount: $basicCodeDiscount, id: $id) {
        __typename
        codeDiscountNode {
          __typename
          id
        }
        userErrors {
          __typename
          field
          message
        }
      }
    }
    """

  public let operationName: String = "discountCodeBasicUpdate"

  public var basicCodeDiscount: DiscountCodeBasicInput
  public var id: GraphQLID

  public init(basicCodeDiscount: DiscountCodeBasicInput, id: GraphQLID) {
    self.basicCodeDiscount = basicCodeDiscount
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["basicCodeDiscount": basicCodeDiscount, "id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("discountCodeBasicUpdate", arguments: ["basicCodeDiscount": GraphQLVariable("basicCodeDiscount"), "id": GraphQLVariable("id")], type: .object(DiscountCodeBasicUpdate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(discountCodeBasicUpdate: DiscountCodeBasicUpdate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "discountCodeBasicUpdate": discountCodeBasicUpdate.flatMap { (value: DiscountCodeBasicUpdate) -> ResultMap in value.resultMap }])
    }

    /// Updates a basic code discount.
    public var discountCodeBasicUpdate: DiscountCodeBasicUpdate? {
      get {
        return (resultMap["discountCodeBasicUpdate"] as? ResultMap).flatMap { DiscountCodeBasicUpdate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "discountCodeBasicUpdate")
      }
    }

    public struct DiscountCodeBasicUpdate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["DiscountCodeBasicUpdatePayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("codeDiscountNode", type: .object(CodeDiscountNode.selections)),
          GraphQLField("userErrors", type: .nonNull(.list(.nonNull(.object(UserError.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(codeDiscountNode: CodeDiscountNode? = nil, userErrors: [UserError]) {
        self.init(unsafeResultMap: ["__typename": "DiscountCodeBasicUpdatePayload", "codeDiscountNode": codeDiscountNode.flatMap { (value: CodeDiscountNode) -> ResultMap in value.resultMap }, "userErrors": userErrors.map { (value: UserError) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The updated code discount.
      public var codeDiscountNode: CodeDiscountNode? {
        get {
          return (resultMap["codeDiscountNode"] as? ResultMap).flatMap { CodeDiscountNode(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "codeDiscountNode")
        }
      }

      /// The list of errors that occurred from executing the mutation.
      public var userErrors: [UserError] {
        get {
          return (resultMap["userErrors"] as! [ResultMap]).map { (value: ResultMap) -> UserError in UserError(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: UserError) -> ResultMap in value.resultMap }, forKey: "userErrors")
        }
      }

      public struct CodeDiscountNode: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["DiscountCodeNode"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID) {
          self.init(unsafeResultMap: ["__typename": "DiscountCodeNode", "id": id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// A globally-unique ID.
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }
      }

      public struct UserError: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["DiscountUserError"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("field", type: .list(.nonNull(.scalar(String.self)))),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(field: [String]? = nil, message: String) {
          self.init(unsafeResultMap: ["__typename": "DiscountUserError", "field": field, "message": message])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The path to the input field that caused the error.
        public var field: [String]? {
          get {
            return resultMap["field"] as? [String]
          }
          set {
            resultMap.updateValue(newValue, forKey: "field")
          }
        }

        /// The error message.
        public var message: String {
          get {
            return resultMap["message"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }
      }
    }
  }
}

public final class DiscountCodeDeleteMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation discountCodeDelete($id: ID!) {
      discountCodeDelete(id: $id) {
        __typename
        deletedCodeDiscountId
        userErrors {
          __typename
          field
          message
        }
      }
    }
    """

  public let operationName: String = "discountCodeDelete"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("discountCodeDelete", arguments: ["id": GraphQLVariable("id")], type: .object(DiscountCodeDelete.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(discountCodeDelete: DiscountCodeDelete? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "discountCodeDelete": discountCodeDelete.flatMap { (value: DiscountCodeDelete) -> ResultMap in value.resultMap }])
    }

    /// Deletes a code discount.
    public var discountCodeDelete: DiscountCodeDelete? {
      get {
        return (resultMap["discountCodeDelete"] as? ResultMap).flatMap { DiscountCodeDelete(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "discountCodeDelete")
      }
    }

    public struct DiscountCodeDelete: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["DiscountCodeDeletePayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("deletedCodeDiscountId", type: .scalar(GraphQLID.self)),
          GraphQLField("userErrors", type: .nonNull(.list(.nonNull(.object(UserError.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(deletedCodeDiscountId: GraphQLID? = nil, userErrors: [UserError]) {
        self.init(unsafeResultMap: ["__typename": "DiscountCodeDeletePayload", "deletedCodeDiscountId": deletedCodeDiscountId, "userErrors": userErrors.map { (value: UserError) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The deleted code discount ID.
      public var deletedCodeDiscountId: GraphQLID? {
        get {
          return resultMap["deletedCodeDiscountId"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "deletedCodeDiscountId")
        }
      }

      /// The list of errors that occurred from executing the mutation.
      public var userErrors: [UserError] {
        get {
          return (resultMap["userErrors"] as! [ResultMap]).map { (value: ResultMap) -> UserError in UserError(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: UserError) -> ResultMap in value.resultMap }, forKey: "userErrors")
        }
      }

      public struct UserError: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["DiscountUserError"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("field", type: .list(.nonNull(.scalar(String.self)))),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(field: [String]? = nil, message: String) {
          self.init(unsafeResultMap: ["__typename": "DiscountUserError", "field": field, "message": message])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The path to the input field that caused the error.
        public var field: [String]? {
          get {
            return resultMap["field"] as? [String]
          }
          set {
            resultMap.updateValue(newValue, forKey: "field")
          }
        }

        /// The error message.
        public var message: String {
          get {
            return resultMap["message"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }
      }
    }
  }
}

public final class GetAllDiscountCodesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getAllDiscountCodes {
      codeDiscountNodes(first: 40, reverse: true) {
        __typename
        nodes {
          __typename
          id
          codeDiscount {
            __typename
            ... on DiscountCodeBasic {
              __typename
              title
              shortSummary
              startsAt
              customerGets {
                __typename
                items {
                  __typename
                }
                value {
                  __typename
                }
              }
              codes(first: 1) {
                __typename
                nodes {
                  __typename
                  code
                  id
                }
              }
            }
          }
        }
      }
    }
    """

  public let operationName: String = "getAllDiscountCodes"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["QueryRoot"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("codeDiscountNodes", arguments: ["first": 40, "reverse": true], type: .nonNull(.object(CodeDiscountNode.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(codeDiscountNodes: CodeDiscountNode) {
      self.init(unsafeResultMap: ["__typename": "QueryRoot", "codeDiscountNodes": codeDiscountNodes.resultMap])
    }

    /// List of code discounts. Special fields for query params:
    /// * status: active, expired, scheduled
    /// * discount_type: bogo, fixed_amount, free_shipping, percentage.
    public var codeDiscountNodes: CodeDiscountNode {
      get {
        return CodeDiscountNode(unsafeResultMap: resultMap["codeDiscountNodes"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "codeDiscountNodes")
      }
    }

    public struct CodeDiscountNode: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["DiscountCodeNodeConnection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("nodes", type: .nonNull(.list(.nonNull(.object(Node.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(nodes: [Node]) {
        self.init(unsafeResultMap: ["__typename": "DiscountCodeNodeConnection", "nodes": nodes.map { (value: Node) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// A list of the nodes contained in DiscountCodeNodeEdge.
      public var nodes: [Node] {
        get {
          return (resultMap["nodes"] as! [ResultMap]).map { (value: ResultMap) -> Node in Node(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Node) -> ResultMap in value.resultMap }, forKey: "nodes")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["DiscountCodeNode"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("codeDiscount", type: .nonNull(.object(CodeDiscount.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, codeDiscount: CodeDiscount) {
          self.init(unsafeResultMap: ["__typename": "DiscountCodeNode", "id": id, "codeDiscount": codeDiscount.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// A globally-unique ID.
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The underlying code discount object.
        public var codeDiscount: CodeDiscount {
          get {
            return CodeDiscount(unsafeResultMap: resultMap["codeDiscount"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "codeDiscount")
          }
        }

        public struct CodeDiscount: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["DiscountCodeApp", "DiscountCodeBasic", "DiscountCodeBxgy", "DiscountCodeFreeShipping"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLTypeCase(
                variants: ["DiscountCodeBasic": AsDiscountCodeBasic.selections],
                default: [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                ]
              )
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public static func makeDiscountCodeApp() -> CodeDiscount {
            return CodeDiscount(unsafeResultMap: ["__typename": "DiscountCodeApp"])
          }

          public static func makeDiscountCodeBxgy() -> CodeDiscount {
            return CodeDiscount(unsafeResultMap: ["__typename": "DiscountCodeBxgy"])
          }

          public static func makeDiscountCodeFreeShipping() -> CodeDiscount {
            return CodeDiscount(unsafeResultMap: ["__typename": "DiscountCodeFreeShipping"])
          }

          public static func makeDiscountCodeBasic(title: String, shortSummary: String, startsAt: String, customerGets: AsDiscountCodeBasic.CustomerGet, codes: AsDiscountCodeBasic.Code) -> CodeDiscount {
            return CodeDiscount(unsafeResultMap: ["__typename": "DiscountCodeBasic", "title": title, "shortSummary": shortSummary, "startsAt": startsAt, "customerGets": customerGets.resultMap, "codes": codes.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var asDiscountCodeBasic: AsDiscountCodeBasic? {
            get {
              if !AsDiscountCodeBasic.possibleTypes.contains(__typename) { return nil }
              return AsDiscountCodeBasic(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap = newValue.resultMap
            }
          }

          public struct AsDiscountCodeBasic: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["DiscountCodeBasic"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("title", type: .nonNull(.scalar(String.self))),
                GraphQLField("shortSummary", type: .nonNull(.scalar(String.self))),
                GraphQLField("startsAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("customerGets", type: .nonNull(.object(CustomerGet.selections))),
                GraphQLField("codes", arguments: ["first": 1], type: .nonNull(.object(Code.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(title: String, shortSummary: String, startsAt: String, customerGets: CustomerGet, codes: Code) {
              self.init(unsafeResultMap: ["__typename": "DiscountCodeBasic", "title": title, "shortSummary": shortSummary, "startsAt": startsAt, "customerGets": customerGets.resultMap, "codes": codes.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The title of the discount.
            public var title: String {
              get {
                return resultMap["title"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "title")
              }
            }

            /// A short summary of the discount.
            public var shortSummary: String {
              get {
                return resultMap["shortSummary"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "shortSummary")
              }
            }

            /// The date and time when the discount starts.
            public var startsAt: String {
              get {
                return resultMap["startsAt"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "startsAt")
              }
            }

            /// The qualifying items in an order, the quantity of each one, and the total value of the discount.
            public var customerGets: CustomerGet {
              get {
                return CustomerGet(unsafeResultMap: resultMap["customerGets"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "customerGets")
              }
            }

            /// A list of redeem codes for the discount.
            public var codes: Code {
              get {
                return Code(unsafeResultMap: resultMap["codes"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "codes")
              }
            }

            public struct CustomerGet: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["DiscountCustomerGets"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("items", type: .nonNull(.object(Item.selections))),
                  GraphQLField("value", type: .nonNull(.object(Value.selections))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(items: Item, value: Value) {
                self.init(unsafeResultMap: ["__typename": "DiscountCustomerGets", "items": items.resultMap, "value": value.resultMap])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The items to which the discount applies.
              public var items: Item {
                get {
                  return Item(unsafeResultMap: resultMap["items"]! as! ResultMap)
                }
                set {
                  resultMap.updateValue(newValue.resultMap, forKey: "items")
                }
              }

              /// Entitled quantity and the discount value.
              public var value: Value {
                get {
                  return Value(unsafeResultMap: resultMap["value"]! as! ResultMap)
                }
                set {
                  resultMap.updateValue(newValue.resultMap, forKey: "value")
                }
              }

              public struct Item: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["AllDiscountItems", "DiscountCollections", "DiscountProducts"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public static func makeAllDiscountItems() -> Item {
                  return Item(unsafeResultMap: ["__typename": "AllDiscountItems"])
                }

                public static func makeDiscountCollections() -> Item {
                  return Item(unsafeResultMap: ["__typename": "DiscountCollections"])
                }

                public static func makeDiscountProducts() -> Item {
                  return Item(unsafeResultMap: ["__typename": "DiscountProducts"])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }
              }

              public struct Value: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["DiscountAmount", "DiscountOnQuantity", "DiscountPercentage"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public static func makeDiscountAmount() -> Value {
                  return Value(unsafeResultMap: ["__typename": "DiscountAmount"])
                }

                public static func makeDiscountOnQuantity() -> Value {
                  return Value(unsafeResultMap: ["__typename": "DiscountOnQuantity"])
                }

                public static func makeDiscountPercentage() -> Value {
                  return Value(unsafeResultMap: ["__typename": "DiscountPercentage"])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }
              }
            }

            public struct Code: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["DiscountRedeemCodeConnection"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("nodes", type: .nonNull(.list(.nonNull(.object(Node.selections))))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(nodes: [Node]) {
                self.init(unsafeResultMap: ["__typename": "DiscountRedeemCodeConnection", "nodes": nodes.map { (value: Node) -> ResultMap in value.resultMap }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// A list of the nodes contained in DiscountRedeemCodeEdge.
              public var nodes: [Node] {
                get {
                  return (resultMap["nodes"] as! [ResultMap]).map { (value: ResultMap) -> Node in Node(unsafeResultMap: value) }
                }
                set {
                  resultMap.updateValue(newValue.map { (value: Node) -> ResultMap in value.resultMap }, forKey: "nodes")
                }
              }

              public struct Node: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["DiscountRedeemCode"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("code", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(code: String, id: GraphQLID) {
                  self.init(unsafeResultMap: ["__typename": "DiscountRedeemCode", "code": code, "id": id])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// The code that a customer can use at checkout to receive a discount.
                public var code: String {
                  get {
                    return resultMap["code"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "code")
                  }
                }

                /// A globally-unique ID of the discount redeem code.
                public var id: GraphQLID {
                  get {
                    return resultMap["id"]! as! GraphQLID
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

public final class ProductCreateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation productCreate($input: ProductInput!) {
      productCreate(input: $input) {
        __typename
        product {
          __typename
          handle
          id
          priceRangeV2 {
            __typename
            minVariantPrice {
              __typename
              amount
            }
            maxVariantPrice {
              __typename
              amount
            }
          }
        }
        shop {
          __typename
          name
        }
        userErrors {
          __typename
          field
          message
        }
      }
    }
    """

  public let operationName: String = "productCreate"

  public var input: ProductInput

  public init(input: ProductInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("productCreate", arguments: ["input": GraphQLVariable("input")], type: .object(ProductCreate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(productCreate: ProductCreate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "productCreate": productCreate.flatMap { (value: ProductCreate) -> ResultMap in value.resultMap }])
    }

    /// Creates a product.
    /// 
    /// If you need to create a product with many
    /// [variants](https://shopify.dev/api/admin-graphql/latest/input-objects/ProductVariantInput)
    /// that are active at several
    /// [locations](https://shopify.dev/api/admin-graphql/latest/input-objects/InventoryLevelInput),
    /// especially with a lot of
    /// [collections](https://shopify.dev/api/admin-graphql/latest/mutations/productCreate#field-productinput-collectionstojoin)
    /// and
    /// [tags](https://shopify.dev/api/admin-graphql/latest/mutations/productCreate#field-productinput-tags),
    /// then you should first create the product with just the variants.
    /// 
    /// After the product is created, you can activate the variants at locations
    /// and add the other related objects to the product. This reduces the size of each mutation and increases the likelihood that it will
    /// complete before the operation times out.
    /// 
    /// The following example shows how you might break up product creation and object association into multiple steps:
    /// 
    /// 1. Create the product with variants. Don't specify any tags or collections on the product, and don't specify
    /// [inventory quantities](https://shopify.dev/api/admin-graphql/latest/input-objects/ProductVariantInput#field-productvariantinput-inventoryquantities)
    /// for each variant.
    /// 
    /// 2. After the product is created, add tags to the product using the
    /// [tagsAdd](https://shopify.dev/api/admin-graphql/latest/mutations/tagsAdd) mutation, and add collections using the
    /// [collectionsAddProducts](https://shopify.dev/api/admin-graphql/latest/mutations/collectionAddProducts) mutation.
    /// 
    /// 3. Use the [inventoryBulkToggleActivation](https://shopify.dev/api/admin-graphql/latest/mutations/inventoryBulkToggleActivation) mutation
    /// on each [inventory item](https://shopify.dev/api/admin-graphql/latest/objects/InventoryItem) to activate it at the appropriate locations.
    /// 
    /// 4. After activating the variants at the locations, adjust inventory quantities at each location using the
    /// [inventoryBulkAdjustQuantityAtLocation](https://shopify.dev/api/admin-graphql/latest/mutations/inventoryBulkAdjustQuantityAtLocation) mutation.
    public var productCreate: ProductCreate? {
      get {
        return (resultMap["productCreate"] as? ResultMap).flatMap { ProductCreate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "productCreate")
      }
    }

    public struct ProductCreate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ProductCreatePayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("product", type: .object(Product.selections)),
          GraphQLField("shop", type: .nonNull(.object(Shop.selections))),
          GraphQLField("userErrors", type: .nonNull(.list(.nonNull(.object(UserError.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(product: Product? = nil, shop: Shop, userErrors: [UserError]) {
        self.init(unsafeResultMap: ["__typename": "ProductCreatePayload", "product": product.flatMap { (value: Product) -> ResultMap in value.resultMap }, "shop": shop.resultMap, "userErrors": userErrors.map { (value: UserError) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The product object.
      public var product: Product? {
        get {
          return (resultMap["product"] as? ResultMap).flatMap { Product(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "product")
        }
      }

      /// The shop associated with the product.
      public var shop: Shop {
        get {
          return Shop(unsafeResultMap: resultMap["shop"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "shop")
        }
      }

      /// The list of errors that occurred from executing the mutation.
      public var userErrors: [UserError] {
        get {
          return (resultMap["userErrors"] as! [ResultMap]).map { (value: ResultMap) -> UserError in UserError(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: UserError) -> ResultMap in value.resultMap }, forKey: "userErrors")
        }
      }

      public struct Product: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Product"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("handle", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("priceRangeV2", type: .nonNull(.object(PriceRangeV2.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(handle: String, id: GraphQLID, priceRangeV2: PriceRangeV2) {
          self.init(unsafeResultMap: ["__typename": "Product", "handle": handle, "id": id, "priceRangeV2": priceRangeV2.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// A unique human-friendly string of the product's title.
        public var handle: String {
          get {
            return resultMap["handle"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "handle")
          }
        }

        /// A globally-unique ID.
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The price range of the product with prices formatted as decimals.
        public var priceRangeV2: PriceRangeV2 {
          get {
            return PriceRangeV2(unsafeResultMap: resultMap["priceRangeV2"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "priceRangeV2")
          }
        }

        public struct PriceRangeV2: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ProductPriceRangeV2"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("minVariantPrice", type: .nonNull(.object(MinVariantPrice.selections))),
              GraphQLField("maxVariantPrice", type: .nonNull(.object(MaxVariantPrice.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(minVariantPrice: MinVariantPrice, maxVariantPrice: MaxVariantPrice) {
            self.init(unsafeResultMap: ["__typename": "ProductPriceRangeV2", "minVariantPrice": minVariantPrice.resultMap, "maxVariantPrice": maxVariantPrice.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The lowest variant's price.
          public var minVariantPrice: MinVariantPrice {
            get {
              return MinVariantPrice(unsafeResultMap: resultMap["minVariantPrice"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "minVariantPrice")
            }
          }

          /// The highest variant's price.
          public var maxVariantPrice: MaxVariantPrice {
            get {
              return MaxVariantPrice(unsafeResultMap: resultMap["maxVariantPrice"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "maxVariantPrice")
            }
          }

          public struct MinVariantPrice: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["MoneyV2"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("amount", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(amount: String) {
              self.init(unsafeResultMap: ["__typename": "MoneyV2", "amount": amount])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// Decimal money amount.
            public var amount: String {
              get {
                return resultMap["amount"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "amount")
              }
            }
          }

          public struct MaxVariantPrice: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["MoneyV2"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("amount", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(amount: String) {
              self.init(unsafeResultMap: ["__typename": "MoneyV2", "amount": amount])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// Decimal money amount.
            public var amount: String {
              get {
                return resultMap["amount"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "amount")
              }
            }
          }
        }
      }

      public struct Shop: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Shop"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String) {
          self.init(unsafeResultMap: ["__typename": "Shop", "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The shop's name.
        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }

      public struct UserError: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserError"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("field", type: .list(.nonNull(.scalar(String.self)))),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(field: [String]? = nil, message: String) {
          self.init(unsafeResultMap: ["__typename": "UserError", "field": field, "message": message])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The path to the input field that caused the error.
        public var field: [String]? {
          get {
            return resultMap["field"] as? [String]
          }
          set {
            resultMap.updateValue(newValue, forKey: "field")
          }
        }

        /// The error message.
        public var message: String {
          get {
            return resultMap["message"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }
      }
    }
  }
}

public final class ProductUpdateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation productUpdate($input: ProductInput!) {
      productUpdate(input: $input) {
        __typename
        product {
          __typename
          id
          title
          productType
          vendor
          descriptionHtml
          images(first: 1) {
            __typename
            edges {
              __typename
              node {
                __typename
                url
              }
            }
          }
        }
        userErrors {
          __typename
          field
          message
        }
      }
    }
    """

  public let operationName: String = "productUpdate"

  public var input: ProductInput

  public init(input: ProductInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("productUpdate", arguments: ["input": GraphQLVariable("input")], type: .object(ProductUpdate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(productUpdate: ProductUpdate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "productUpdate": productUpdate.flatMap { (value: ProductUpdate) -> ResultMap in value.resultMap }])
    }

    /// Updates a product. If you update a product and only include some variants in the update,
    /// then any variants not included will be deleted. To safely manage variants without the risk of
    /// deleting excluded variants, use
    /// [productVariantsBulkUpdate](https://shopify.dev/api/admin-graphql/latest/mutations/productvariantsbulkupdate).
    /// If you want to update a single variant, then use
    /// [productVariantUpdate](https://shopify.dev/api/admin-graphql/latest/mutations/productvariantupdate).
    public var productUpdate: ProductUpdate? {
      get {
        return (resultMap["productUpdate"] as? ResultMap).flatMap { ProductUpdate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "productUpdate")
      }
    }

    public struct ProductUpdate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ProductUpdatePayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("product", type: .object(Product.selections)),
          GraphQLField("userErrors", type: .nonNull(.list(.nonNull(.object(UserError.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(product: Product? = nil, userErrors: [UserError]) {
        self.init(unsafeResultMap: ["__typename": "ProductUpdatePayload", "product": product.flatMap { (value: Product) -> ResultMap in value.resultMap }, "userErrors": userErrors.map { (value: UserError) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The updated product object.
      public var product: Product? {
        get {
          return (resultMap["product"] as? ResultMap).flatMap { Product(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "product")
        }
      }

      /// The list of errors that occurred from executing the mutation.
      public var userErrors: [UserError] {
        get {
          return (resultMap["userErrors"] as! [ResultMap]).map { (value: ResultMap) -> UserError in UserError(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: UserError) -> ResultMap in value.resultMap }, forKey: "userErrors")
        }
      }

      public struct Product: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Product"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("productType", type: .nonNull(.scalar(String.self))),
            GraphQLField("vendor", type: .nonNull(.scalar(String.self))),
            GraphQLField("descriptionHtml", type: .nonNull(.scalar(String.self))),
            GraphQLField("images", arguments: ["first": 1], type: .nonNull(.object(Image.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, title: String, productType: String, vendor: String, descriptionHtml: String, images: Image) {
          self.init(unsafeResultMap: ["__typename": "Product", "id": id, "title": title, "productType": productType, "vendor": vendor, "descriptionHtml": descriptionHtml, "images": images.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// A globally-unique ID.
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The title of the product.
        public var title: String {
          get {
            return resultMap["title"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        /// The product type specified by the merchant.
        public var productType: String {
          get {
            return resultMap["productType"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "productType")
          }
        }

        /// The name of the product's vendor.
        public var vendor: String {
          get {
            return resultMap["vendor"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "vendor")
          }
        }

        /// The description of the product, complete with HTML formatting.
        public var descriptionHtml: String {
          get {
            return resultMap["descriptionHtml"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "descriptionHtml")
          }
        }

        /// The images associated with the product.
        public var images: Image {
          get {
            return Image(unsafeResultMap: resultMap["images"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "images")
          }
        }

        public struct Image: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ImageConnection"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(edges: [Edge]) {
            self.init(unsafeResultMap: ["__typename": "ImageConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// A list of edges.
          public var edges: [Edge] {
            get {
              return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
            }
            set {
              resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
            }
          }

          public struct Edge: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ImageEdge"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("node", type: .nonNull(.object(Node.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(node: Node) {
              self.init(unsafeResultMap: ["__typename": "ImageEdge", "node": node.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The item at the end of ImageEdge.
            public var node: Node {
              get {
                return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "node")
              }
            }

            public struct Node: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["Image"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("url", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(url: String) {
                self.init(unsafeResultMap: ["__typename": "Image", "url": url])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The location of the image as a URL.
              /// 
              /// If no transform options are specified, then the original image will be preserved including any pre-applied transforms.
              /// 
              /// All transformation options are considered "best-effort". Any transformation that the original image type doesn't support will be ignored.
              /// 
              /// If you need multiple variations of the same image, then you can use [GraphQL aliases](https://graphql.org/learn/queries/#aliases).
              public var url: String {
                get {
                  return resultMap["url"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "url")
                }
              }
            }
          }
        }
      }

      public struct UserError: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserError"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("field", type: .list(.nonNull(.scalar(String.self)))),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(field: [String]? = nil, message: String) {
          self.init(unsafeResultMap: ["__typename": "UserError", "field": field, "message": message])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The path to the input field that caused the error.
        public var field: [String]? {
          get {
            return resultMap["field"] as? [String]
          }
          set {
            resultMap.updateValue(newValue, forKey: "field")
          }
        }

        /// The error message.
        public var message: String {
          get {
            return resultMap["message"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }
      }
    }
  }
}

public final class ProductDeleteMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation productDelete($input: ProductDeleteInput!) {
      productDelete(input: $input) {
        __typename
        deletedProductId
        userErrors {
          __typename
          field
          message
        }
      }
    }
    """

  public let operationName: String = "productDelete"

  public var input: ProductDeleteInput

  public init(input: ProductDeleteInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("productDelete", arguments: ["input": GraphQLVariable("input")], type: .object(ProductDelete.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(productDelete: ProductDelete? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "productDelete": productDelete.flatMap { (value: ProductDelete) -> ResultMap in value.resultMap }])
    }

    /// Deletes a product, including all associated variants and media.
    /// 
    /// As of API version `2023-01`, if you need to delete a large product, such as one that has many
    /// [variants](https://shopify.dev/api/admin-graphql/latest/input-objects/ProductVariantInput)
    /// that are active at several
    /// [locations](https://shopify.dev/api/admin-graphql/latest/input-objects/InventoryLevelInput),
    /// you may encounter timeout errors. To avoid these timeout errors, you can instead use the asynchronous
    /// [ProductDeleteAsync](https://shopify.dev/api/admin-graphql/latest/mutations/productDeleteAsync)
    /// mutation.
    public var productDelete: ProductDelete? {
      get {
        return (resultMap["productDelete"] as? ResultMap).flatMap { ProductDelete(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "productDelete")
      }
    }

    public struct ProductDelete: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ProductDeletePayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("deletedProductId", type: .scalar(GraphQLID.self)),
          GraphQLField("userErrors", type: .nonNull(.list(.nonNull(.object(UserError.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(deletedProductId: GraphQLID? = nil, userErrors: [UserError]) {
        self.init(unsafeResultMap: ["__typename": "ProductDeletePayload", "deletedProductId": deletedProductId, "userErrors": userErrors.map { (value: UserError) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The ID of the deleted product.
      public var deletedProductId: GraphQLID? {
        get {
          return resultMap["deletedProductId"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "deletedProductId")
        }
      }

      /// The list of errors that occurred from executing the mutation.
      public var userErrors: [UserError] {
        get {
          return (resultMap["userErrors"] as! [ResultMap]).map { (value: ResultMap) -> UserError in UserError(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: UserError) -> ResultMap in value.resultMap }, forKey: "userErrors")
        }
      }

      public struct UserError: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserError"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("field", type: .list(.nonNull(.scalar(String.self)))),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(field: [String]? = nil, message: String) {
          self.init(unsafeResultMap: ["__typename": "UserError", "field": field, "message": message])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The path to the input field that caused the error.
        public var field: [String]? {
          get {
            return resultMap["field"] as? [String]
          }
          set {
            resultMap.updateValue(newValue, forKey: "field")
          }
        }

        /// The error message.
        public var message: String {
          get {
            return resultMap["message"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }
      }
    }
  }
}

public final class GetAllProductsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getAllProducts {
      products(first: 60, reverse: true) {
        __typename
        edges {
          __typename
          node {
            __typename
            title
            vendor
            productType
            description
            id
            priceRangeV2 {
              __typename
              minVariantPrice {
                __typename
                amount
              }
              maxVariantPrice {
                __typename
                amount
              }
            }
            images(first: 1) {
              __typename
              edges {
                __typename
                node {
                  __typename
                  url
                }
              }
            }
            collections(first: 5) {
              __typename
              edges {
                __typename
                node {
                  __typename
                  title
                }
              }
            }
            tags
          }
        }
      }
    }
    """

  public let operationName: String = "getAllProducts"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["QueryRoot"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("products", arguments: ["first": 60, "reverse": true], type: .nonNull(.object(Product.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(products: Product) {
      self.init(unsafeResultMap: ["__typename": "QueryRoot", "products": products.resultMap])
    }

    /// List of products.
    public var products: Product {
      get {
        return Product(unsafeResultMap: resultMap["products"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "products")
      }
    }

    public struct Product: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ProductConnection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(edges: [Edge]) {
        self.init(unsafeResultMap: ["__typename": "ProductConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// A list of edges.
      public var edges: [Edge] {
        get {
          return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
        }
      }

      public struct Edge: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ProductEdge"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("node", type: .nonNull(.object(Node.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(node: Node) {
          self.init(unsafeResultMap: ["__typename": "ProductEdge", "node": node.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The item at the end of ProductEdge.
        public var node: Node {
          get {
            return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "node")
          }
        }

        public struct Node: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Product"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("title", type: .nonNull(.scalar(String.self))),
              GraphQLField("vendor", type: .nonNull(.scalar(String.self))),
              GraphQLField("productType", type: .nonNull(.scalar(String.self))),
              GraphQLField("description", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("priceRangeV2", type: .nonNull(.object(PriceRangeV2.selections))),
              GraphQLField("images", arguments: ["first": 1], type: .nonNull(.object(Image.selections))),
              GraphQLField("collections", arguments: ["first": 5], type: .nonNull(.object(Collection.selections))),
              GraphQLField("tags", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(title: String, vendor: String, productType: String, description: String, id: GraphQLID, priceRangeV2: PriceRangeV2, images: Image, collections: Collection, tags: [String]) {
            self.init(unsafeResultMap: ["__typename": "Product", "title": title, "vendor": vendor, "productType": productType, "description": description, "id": id, "priceRangeV2": priceRangeV2.resultMap, "images": images.resultMap, "collections": collections.resultMap, "tags": tags])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The title of the product.
          public var title: String {
            get {
              return resultMap["title"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "title")
            }
          }

          /// The name of the product's vendor.
          public var vendor: String {
            get {
              return resultMap["vendor"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "vendor")
            }
          }

          /// The product type specified by the merchant.
          public var productType: String {
            get {
              return resultMap["productType"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "productType")
            }
          }

          /// A stripped description of the product, single line with HTML tags removed.
          public var description: String {
            get {
              return resultMap["description"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "description")
            }
          }

          /// A globally-unique ID.
          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          /// The price range of the product with prices formatted as decimals.
          public var priceRangeV2: PriceRangeV2 {
            get {
              return PriceRangeV2(unsafeResultMap: resultMap["priceRangeV2"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "priceRangeV2")
            }
          }

          /// The images associated with the product.
          public var images: Image {
            get {
              return Image(unsafeResultMap: resultMap["images"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "images")
            }
          }

          /// A list of the collections that include the product.
          public var collections: Collection {
            get {
              return Collection(unsafeResultMap: resultMap["collections"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "collections")
            }
          }

          /// A comma separated list of tags associated with the product. Updating `tags` overwrites
          /// any existing tags that were previously added to the product. To add new tags without overwriting
          /// existing tags, use the [tagsAdd](https://shopify.dev/api/admin-graphql/latest/mutations/tagsadd)
          /// mutation.
          public var tags: [String] {
            get {
              return resultMap["tags"]! as! [String]
            }
            set {
              resultMap.updateValue(newValue, forKey: "tags")
            }
          }

          public struct PriceRangeV2: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ProductPriceRangeV2"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("minVariantPrice", type: .nonNull(.object(MinVariantPrice.selections))),
                GraphQLField("maxVariantPrice", type: .nonNull(.object(MaxVariantPrice.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(minVariantPrice: MinVariantPrice, maxVariantPrice: MaxVariantPrice) {
              self.init(unsafeResultMap: ["__typename": "ProductPriceRangeV2", "minVariantPrice": minVariantPrice.resultMap, "maxVariantPrice": maxVariantPrice.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The lowest variant's price.
            public var minVariantPrice: MinVariantPrice {
              get {
                return MinVariantPrice(unsafeResultMap: resultMap["minVariantPrice"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "minVariantPrice")
              }
            }

            /// The highest variant's price.
            public var maxVariantPrice: MaxVariantPrice {
              get {
                return MaxVariantPrice(unsafeResultMap: resultMap["maxVariantPrice"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "maxVariantPrice")
              }
            }

            public struct MinVariantPrice: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["MoneyV2"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("amount", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(amount: String) {
                self.init(unsafeResultMap: ["__typename": "MoneyV2", "amount": amount])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// Decimal money amount.
              public var amount: String {
                get {
                  return resultMap["amount"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "amount")
                }
              }
            }

            public struct MaxVariantPrice: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["MoneyV2"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("amount", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(amount: String) {
                self.init(unsafeResultMap: ["__typename": "MoneyV2", "amount": amount])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// Decimal money amount.
              public var amount: String {
                get {
                  return resultMap["amount"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "amount")
                }
              }
            }
          }

          public struct Image: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ImageConnection"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(edges: [Edge]) {
              self.init(unsafeResultMap: ["__typename": "ImageConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// A list of edges.
            public var edges: [Edge] {
              get {
                return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
              }
              set {
                resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
              }
            }

            public struct Edge: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ImageEdge"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("node", type: .nonNull(.object(Node.selections))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(node: Node) {
                self.init(unsafeResultMap: ["__typename": "ImageEdge", "node": node.resultMap])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The item at the end of ImageEdge.
              public var node: Node {
                get {
                  return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
                }
                set {
                  resultMap.updateValue(newValue.resultMap, forKey: "node")
                }
              }

              public struct Node: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["Image"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("url", type: .nonNull(.scalar(String.self))),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(url: String) {
                  self.init(unsafeResultMap: ["__typename": "Image", "url": url])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// The location of the image as a URL.
                /// 
                /// If no transform options are specified, then the original image will be preserved including any pre-applied transforms.
                /// 
                /// All transformation options are considered "best-effort". Any transformation that the original image type doesn't support will be ignored.
                /// 
                /// If you need multiple variations of the same image, then you can use [GraphQL aliases](https://graphql.org/learn/queries/#aliases).
                public var url: String {
                  get {
                    return resultMap["url"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "url")
                  }
                }
              }
            }
          }

          public struct Collection: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["CollectionConnection"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(edges: [Edge]) {
              self.init(unsafeResultMap: ["__typename": "CollectionConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// A list of edges.
            public var edges: [Edge] {
              get {
                return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
              }
              set {
                resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
              }
            }

            public struct Edge: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["CollectionEdge"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("node", type: .nonNull(.object(Node.selections))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(node: Node) {
                self.init(unsafeResultMap: ["__typename": "CollectionEdge", "node": node.resultMap])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The item at the end of CollectionEdge.
              public var node: Node {
                get {
                  return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
                }
                set {
                  resultMap.updateValue(newValue.resultMap, forKey: "node")
                }
              }

              public struct Node: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["Collection"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("title", type: .nonNull(.scalar(String.self))),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(title: String) {
                  self.init(unsafeResultMap: ["__typename": "Collection", "title": title])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// The name of the collection. It's displayed in the Shopify admin and is typically displayed in sales channels, such as an online store.
                public var title: String {
                  get {
                    return resultMap["title"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "title")
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

public final class GetProductByIdQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getProductById($id: ID!) {
      product(id: $id) {
        __typename
        title
        handle
        description
        descriptionHtml
        productType
        id
        vendor
        status
        images(first: 1) {
          __typename
          edges {
            __typename
            node {
              __typename
              url
            }
          }
        }
      }
    }
    """

  public let operationName: String = "getProductById"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["QueryRoot"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("product", arguments: ["id": GraphQLVariable("id")], type: .object(Product.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(product: Product? = nil) {
      self.init(unsafeResultMap: ["__typename": "QueryRoot", "product": product.flatMap { (value: Product) -> ResultMap in value.resultMap }])
    }

    /// Returns a Product resource by ID.
    public var product: Product? {
      get {
        return (resultMap["product"] as? ResultMap).flatMap { Product(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "product")
      }
    }

    public struct Product: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Product"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("handle", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("descriptionHtml", type: .nonNull(.scalar(String.self))),
          GraphQLField("productType", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("vendor", type: .nonNull(.scalar(String.self))),
          GraphQLField("status", type: .nonNull(.scalar(ProductStatus.self))),
          GraphQLField("images", arguments: ["first": 1], type: .nonNull(.object(Image.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(title: String, handle: String, description: String, descriptionHtml: String, productType: String, id: GraphQLID, vendor: String, status: ProductStatus, images: Image) {
        self.init(unsafeResultMap: ["__typename": "Product", "title": title, "handle": handle, "description": description, "descriptionHtml": descriptionHtml, "productType": productType, "id": id, "vendor": vendor, "status": status, "images": images.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The title of the product.
      public var title: String {
        get {
          return resultMap["title"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }

      /// A unique human-friendly string of the product's title.
      public var handle: String {
        get {
          return resultMap["handle"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "handle")
        }
      }

      /// A stripped description of the product, single line with HTML tags removed.
      public var description: String {
        get {
          return resultMap["description"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "description")
        }
      }

      /// The description of the product, complete with HTML formatting.
      public var descriptionHtml: String {
        get {
          return resultMap["descriptionHtml"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "descriptionHtml")
        }
      }

      /// The product type specified by the merchant.
      public var productType: String {
        get {
          return resultMap["productType"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "productType")
        }
      }

      /// A globally-unique ID.
      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// The name of the product's vendor.
      public var vendor: String {
        get {
          return resultMap["vendor"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "vendor")
        }
      }

      /// The product status. This controls visibility across all channels.
      public var status: ProductStatus {
        get {
          return resultMap["status"]! as! ProductStatus
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }

      /// The images associated with the product.
      public var images: Image {
        get {
          return Image(unsafeResultMap: resultMap["images"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "images")
        }
      }

      public struct Image: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ImageConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(edges: [Edge]) {
          self.init(unsafeResultMap: ["__typename": "ImageConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// A list of edges.
        public var edges: [Edge] {
          get {
            return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
          }
          set {
            resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
          }
        }

        public struct Edge: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ImageEdge"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("node", type: .nonNull(.object(Node.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(node: Node) {
            self.init(unsafeResultMap: ["__typename": "ImageEdge", "node": node.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The item at the end of ImageEdge.
          public var node: Node {
            get {
              return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "node")
            }
          }

          public struct Node: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Image"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("url", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(url: String) {
              self.init(unsafeResultMap: ["__typename": "Image", "url": url])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The location of the image as a URL.
            /// 
            /// If no transform options are specified, then the original image will be preserved including any pre-applied transforms.
            /// 
            /// All transformation options are considered "best-effort". Any transformation that the original image type doesn't support will be ignored.
            /// 
            /// If you need multiple variations of the same image, then you can use [GraphQL aliases](https://graphql.org/learn/queries/#aliases).
            public var url: String {
              get {
                return resultMap["url"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "url")
              }
            }
          }
        }
      }
    }
  }
}
