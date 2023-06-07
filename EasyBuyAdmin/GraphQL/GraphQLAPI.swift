// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

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

/// The status of the discount.
public enum DiscountStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// The discount is active.
  case active
  /// The discount is expired.
  case expired
  /// The discount is scheduled.
  case scheduled
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ACTIVE": self = .active
      case "EXPIRED": self = .expired
      case "SCHEDULED": self = .scheduled
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .active: return "ACTIVE"
      case .expired: return "EXPIRED"
      case .scheduled: return "SCHEDULED"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: DiscountStatus, rhs: DiscountStatus) -> Bool {
    switch (lhs, rhs) {
      case (.active, .active): return true
      case (.expired, .expired): return true
      case (.scheduled, .scheduled): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [DiscountStatus] {
    return [
      .active,
      .expired,
      .scheduled,
    ]
  }
}

/// The input fields for an inventory item.
public struct InventoryItemUpdateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - cost: Unit cost associated with the inventory item, the currency is the shop's default currency.
  ///   - tracked: Whether the inventory item is tracked. The value must be true to adjust the item's inventory levels.
  ///   - countryCodeOfOrigin: The ISO 3166-1 alpha-2 country code of where the item originated from.
  ///   - provinceCodeOfOrigin: The ISO 3166-2 alpha-2 province/state code of where the item originated from.
  ///   - harmonizedSystemCode: The harmonized system code of the inventory item. This must be a number between 6 and 13 digits.
  ///   - countryHarmonizedSystemCodes: List of country-specific harmonized system codes.
  public init(cost: Swift.Optional<String?> = nil, tracked: Swift.Optional<Bool?> = nil, countryCodeOfOrigin: Swift.Optional<CountryCode?> = nil, provinceCodeOfOrigin: Swift.Optional<String?> = nil, harmonizedSystemCode: Swift.Optional<String?> = nil, countryHarmonizedSystemCodes: Swift.Optional<[CountryHarmonizedSystemCodeInput]?> = nil) {
    graphQLMap = ["cost": cost, "tracked": tracked, "countryCodeOfOrigin": countryCodeOfOrigin, "provinceCodeOfOrigin": provinceCodeOfOrigin, "harmonizedSystemCode": harmonizedSystemCode, "countryHarmonizedSystemCodes": countryHarmonizedSystemCodes]
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

  /// Whether the inventory item is tracked. The value must be true to adjust the item's inventory levels.
  public var tracked: Swift.Optional<Bool?> {
    get {
      return graphQLMap["tracked"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "tracked")
    }
  }

  /// The ISO 3166-1 alpha-2 country code of where the item originated from.
  public var countryCodeOfOrigin: Swift.Optional<CountryCode?> {
    get {
      return graphQLMap["countryCodeOfOrigin"] as? Swift.Optional<CountryCode?> ?? Swift.Optional<CountryCode?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "countryCodeOfOrigin")
    }
  }

  /// The ISO 3166-2 alpha-2 province/state code of where the item originated from.
  public var provinceCodeOfOrigin: Swift.Optional<String?> {
    get {
      return graphQLMap["provinceCodeOfOrigin"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "provinceCodeOfOrigin")
    }
  }

  /// The harmonized system code of the inventory item. This must be a number between 6 and 13 digits.
  public var harmonizedSystemCode: Swift.Optional<String?> {
    get {
      return graphQLMap["harmonizedSystemCode"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "harmonizedSystemCode")
    }
  }

  /// List of country-specific harmonized system codes.
  public var countryHarmonizedSystemCodes: Swift.Optional<[CountryHarmonizedSystemCodeInput]?> {
    get {
      return graphQLMap["countryHarmonizedSystemCodes"] as? Swift.Optional<[CountryHarmonizedSystemCodeInput]?> ?? Swift.Optional<[CountryHarmonizedSystemCodeInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "countryHarmonizedSystemCodes")
    }
  }
}

/// The code designating a country/region, which generally follows ISO 3166-1 alpha-2 guidelines.
/// If a territory doesn't have a country code value in the `CountryCode` enum, then it might be considered a subdivision
/// of another country. For example, the territories associated with Spain are represented by the country code `ES`,
/// and the territories associated with the United States of America are represented by the country code `US`.
public enum CountryCode: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Afghanistan.
  case af
  /// Åland Islands.
  case ax
  /// Albania.
  case al
  /// Algeria.
  case dz
  /// Andorra.
  case ad
  /// Angola.
  case ao
  /// Anguilla.
  case ai
  /// Antigua & Barbuda.
  case ag
  /// Argentina.
  case ar
  /// Armenia.
  case am
  /// Aruba.
  case aw
  /// Ascension Island.
  case ac
  /// Australia.
  case au
  /// Austria.
  case at
  /// Azerbaijan.
  case az
  /// Bahamas.
  case bs
  /// Bahrain.
  case bh
  /// Bangladesh.
  case bd
  /// Barbados.
  case bb
  /// Belarus.
  case by
  /// Belgium.
  case be
  /// Belize.
  case bz
  /// Benin.
  case bj
  /// Bermuda.
  case bm
  /// Bhutan.
  case bt
  /// Bolivia.
  case bo
  /// Bosnia & Herzegovina.
  case ba
  /// Botswana.
  case bw
  /// Bouvet Island.
  case bv
  /// Brazil.
  case br
  /// British Indian Ocean Territory.
  case io
  /// Brunei.
  case bn
  /// Bulgaria.
  case bg
  /// Burkina Faso.
  case bf
  /// Burundi.
  case bi
  /// Cambodia.
  case kh
  /// Canada.
  case ca
  /// Cape Verde.
  case cv
  /// Caribbean Netherlands.
  case bq
  /// Cayman Islands.
  case ky
  /// Central African Republic.
  case cf
  /// Chad.
  case td
  /// Chile.
  case cl
  /// China.
  case cn
  /// Christmas Island.
  case cx
  /// Cocos (Keeling) Islands.
  case cc
  /// Colombia.
  case co
  /// Comoros.
  case km
  /// Congo - Brazzaville.
  case cg
  /// Congo - Kinshasa.
  case cd
  /// Cook Islands.
  case ck
  /// Costa Rica.
  case cr
  /// Croatia.
  case hr
  /// Cuba.
  case cu
  /// Curaçao.
  case cw
  /// Cyprus.
  case cy
  /// Czechia.
  case cz
  /// Côte d’Ivoire.
  case ci
  /// Denmark.
  case dk
  /// Djibouti.
  case dj
  /// Dominica.
  case dm
  /// Dominican Republic.
  case `do`
  /// Ecuador.
  case ec
  /// Egypt.
  case eg
  /// El Salvador.
  case sv
  /// Equatorial Guinea.
  case gq
  /// Eritrea.
  case er
  /// Estonia.
  case ee
  /// Eswatini.
  case sz
  /// Ethiopia.
  case et
  /// Falkland Islands.
  case fk
  /// Faroe Islands.
  case fo
  /// Fiji.
  case fj
  /// Finland.
  case fi
  /// France.
  case fr
  /// French Guiana.
  case gf
  /// French Polynesia.
  case pf
  /// French Southern Territories.
  case tf
  /// Gabon.
  case ga
  /// Gambia.
  case gm
  /// Georgia.
  case ge
  /// Germany.
  case de
  /// Ghana.
  case gh
  /// Gibraltar.
  case gi
  /// Greece.
  case gr
  /// Greenland.
  case gl
  /// Grenada.
  case gd
  /// Guadeloupe.
  case gp
  /// Guatemala.
  case gt
  /// Guernsey.
  case gg
  /// Guinea.
  case gn
  /// Guinea-Bissau.
  case gw
  /// Guyana.
  case gy
  /// Haiti.
  case ht
  /// Heard & McDonald Islands.
  case hm
  /// Vatican City.
  case va
  /// Honduras.
  case hn
  /// Hong Kong SAR.
  case hk
  /// Hungary.
  case hu
  /// Iceland.
  case `is`
  /// India.
  case `in`
  /// Indonesia.
  case id
  /// Iran.
  case ir
  /// Iraq.
  case iq
  /// Ireland.
  case ie
  /// Isle of Man.
  case im
  /// Israel.
  case il
  /// Italy.
  case it
  /// Jamaica.
  case jm
  /// Japan.
  case jp
  /// Jersey.
  case je
  /// Jordan.
  case jo
  /// Kazakhstan.
  case kz
  /// Kenya.
  case ke
  /// Kiribati.
  case ki
  /// North Korea.
  case kp
  /// Kosovo.
  case xk
  /// Kuwait.
  case kw
  /// Kyrgyzstan.
  case kg
  /// Laos.
  case la
  /// Latvia.
  case lv
  /// Lebanon.
  case lb
  /// Lesotho.
  case ls
  /// Liberia.
  case lr
  /// Libya.
  case ly
  /// Liechtenstein.
  case li
  /// Lithuania.
  case lt
  /// Luxembourg.
  case lu
  /// Macao SAR.
  case mo
  /// Madagascar.
  case mg
  /// Malawi.
  case mw
  /// Malaysia.
  case my
  /// Maldives.
  case mv
  /// Mali.
  case ml
  /// Malta.
  case mt
  /// Martinique.
  case mq
  /// Mauritania.
  case mr
  /// Mauritius.
  case mu
  /// Mayotte.
  case yt
  /// Mexico.
  case mx
  /// Moldova.
  case md
  /// Monaco.
  case mc
  /// Mongolia.
  case mn
  /// Montenegro.
  case me
  /// Montserrat.
  case ms
  /// Morocco.
  case ma
  /// Mozambique.
  case mz
  /// Myanmar (Burma).
  case mm
  /// Namibia.
  case na
  /// Nauru.
  case nr
  /// Nepal.
  case np
  /// Netherlands.
  case nl
  /// Netherlands Antilles.
  case an
  /// New Caledonia.
  case nc
  /// New Zealand.
  case nz
  /// Nicaragua.
  case ni
  /// Niger.
  case ne
  /// Nigeria.
  case ng
  /// Niue.
  case nu
  /// Norfolk Island.
  case nf
  /// North Macedonia.
  case mk
  /// Norway.
  case no
  /// Oman.
  case om
  /// Pakistan.
  case pk
  /// Palestinian Territories.
  case ps
  /// Panama.
  case pa
  /// Papua New Guinea.
  case pg
  /// Paraguay.
  case py
  /// Peru.
  case pe
  /// Philippines.
  case ph
  /// Pitcairn Islands.
  case pn
  /// Poland.
  case pl
  /// Portugal.
  case pt
  /// Qatar.
  case qa
  /// Cameroon.
  case cm
  /// Réunion.
  case re
  /// Romania.
  case ro
  /// Russia.
  case ru
  /// Rwanda.
  case rw
  /// St. Barthélemy.
  case bl
  /// St. Helena.
  case sh
  /// St. Kitts & Nevis.
  case kn
  /// St. Lucia.
  case lc
  /// St. Martin.
  case mf
  /// St. Pierre & Miquelon.
  case pm
  /// Samoa.
  case ws
  /// San Marino.
  case sm
  /// São Tomé & Príncipe.
  case st
  /// Saudi Arabia.
  case sa
  /// Senegal.
  case sn
  /// Serbia.
  case rs
  /// Seychelles.
  case sc
  /// Sierra Leone.
  case sl
  /// Singapore.
  case sg
  /// Sint Maarten.
  case sx
  /// Slovakia.
  case sk
  /// Slovenia.
  case si
  /// Solomon Islands.
  case sb
  /// Somalia.
  case so
  /// South Africa.
  case za
  /// South Georgia & South Sandwich Islands.
  case gs
  /// South Korea.
  case kr
  /// South Sudan.
  case ss
  /// Spain.
  case es
  /// Sri Lanka.
  case lk
  /// St. Vincent & Grenadines.
  case vc
  /// Sudan.
  case sd
  /// Suriname.
  case sr
  /// Svalbard & Jan Mayen.
  case sj
  /// Sweden.
  case se
  /// Switzerland.
  case ch
  /// Syria.
  case sy
  /// Taiwan.
  case tw
  /// Tajikistan.
  case tj
  /// Tanzania.
  case tz
  /// Thailand.
  case th
  /// Timor-Leste.
  case tl
  /// Togo.
  case tg
  /// Tokelau.
  case tk
  /// Tonga.
  case to
  /// Trinidad & Tobago.
  case tt
  /// Tristan da Cunha.
  case ta
  /// Tunisia.
  case tn
  /// Turkey.
  case tr
  /// Turkmenistan.
  case tm
  /// Turks & Caicos Islands.
  case tc
  /// Tuvalu.
  case tv
  /// Uganda.
  case ug
  /// Ukraine.
  case ua
  /// United Arab Emirates.
  case ae
  /// United Kingdom.
  case gb
  /// United States.
  case us
  /// U.S. Outlying Islands.
  case um
  /// Uruguay.
  case uy
  /// Uzbekistan.
  case uz
  /// Vanuatu.
  case vu
  /// Venezuela.
  case ve
  /// Vietnam.
  case vn
  /// British Virgin Islands.
  case vg
  /// Wallis & Futuna.
  case wf
  /// Western Sahara.
  case eh
  /// Yemen.
  case ye
  /// Zambia.
  case zm
  /// Zimbabwe.
  case zw
  /// Unknown Region.
  case zz
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "AF": self = .af
      case "AX": self = .ax
      case "AL": self = .al
      case "DZ": self = .dz
      case "AD": self = .ad
      case "AO": self = .ao
      case "AI": self = .ai
      case "AG": self = .ag
      case "AR": self = .ar
      case "AM": self = .am
      case "AW": self = .aw
      case "AC": self = .ac
      case "AU": self = .au
      case "AT": self = .at
      case "AZ": self = .az
      case "BS": self = .bs
      case "BH": self = .bh
      case "BD": self = .bd
      case "BB": self = .bb
      case "BY": self = .by
      case "BE": self = .be
      case "BZ": self = .bz
      case "BJ": self = .bj
      case "BM": self = .bm
      case "BT": self = .bt
      case "BO": self = .bo
      case "BA": self = .ba
      case "BW": self = .bw
      case "BV": self = .bv
      case "BR": self = .br
      case "IO": self = .io
      case "BN": self = .bn
      case "BG": self = .bg
      case "BF": self = .bf
      case "BI": self = .bi
      case "KH": self = .kh
      case "CA": self = .ca
      case "CV": self = .cv
      case "BQ": self = .bq
      case "KY": self = .ky
      case "CF": self = .cf
      case "TD": self = .td
      case "CL": self = .cl
      case "CN": self = .cn
      case "CX": self = .cx
      case "CC": self = .cc
      case "CO": self = .co
      case "KM": self = .km
      case "CG": self = .cg
      case "CD": self = .cd
      case "CK": self = .ck
      case "CR": self = .cr
      case "HR": self = .hr
      case "CU": self = .cu
      case "CW": self = .cw
      case "CY": self = .cy
      case "CZ": self = .cz
      case "CI": self = .ci
      case "DK": self = .dk
      case "DJ": self = .dj
      case "DM": self = .dm
      case "DO": self = .do
      case "EC": self = .ec
      case "EG": self = .eg
      case "SV": self = .sv
      case "GQ": self = .gq
      case "ER": self = .er
      case "EE": self = .ee
      case "SZ": self = .sz
      case "ET": self = .et
      case "FK": self = .fk
      case "FO": self = .fo
      case "FJ": self = .fj
      case "FI": self = .fi
      case "FR": self = .fr
      case "GF": self = .gf
      case "PF": self = .pf
      case "TF": self = .tf
      case "GA": self = .ga
      case "GM": self = .gm
      case "GE": self = .ge
      case "DE": self = .de
      case "GH": self = .gh
      case "GI": self = .gi
      case "GR": self = .gr
      case "GL": self = .gl
      case "GD": self = .gd
      case "GP": self = .gp
      case "GT": self = .gt
      case "GG": self = .gg
      case "GN": self = .gn
      case "GW": self = .gw
      case "GY": self = .gy
      case "HT": self = .ht
      case "HM": self = .hm
      case "VA": self = .va
      case "HN": self = .hn
      case "HK": self = .hk
      case "HU": self = .hu
      case "IS": self = .is
      case "IN": self = .in
      case "ID": self = .id
      case "IR": self = .ir
      case "IQ": self = .iq
      case "IE": self = .ie
      case "IM": self = .im
      case "IL": self = .il
      case "IT": self = .it
      case "JM": self = .jm
      case "JP": self = .jp
      case "JE": self = .je
      case "JO": self = .jo
      case "KZ": self = .kz
      case "KE": self = .ke
      case "KI": self = .ki
      case "KP": self = .kp
      case "XK": self = .xk
      case "KW": self = .kw
      case "KG": self = .kg
      case "LA": self = .la
      case "LV": self = .lv
      case "LB": self = .lb
      case "LS": self = .ls
      case "LR": self = .lr
      case "LY": self = .ly
      case "LI": self = .li
      case "LT": self = .lt
      case "LU": self = .lu
      case "MO": self = .mo
      case "MG": self = .mg
      case "MW": self = .mw
      case "MY": self = .my
      case "MV": self = .mv
      case "ML": self = .ml
      case "MT": self = .mt
      case "MQ": self = .mq
      case "MR": self = .mr
      case "MU": self = .mu
      case "YT": self = .yt
      case "MX": self = .mx
      case "MD": self = .md
      case "MC": self = .mc
      case "MN": self = .mn
      case "ME": self = .me
      case "MS": self = .ms
      case "MA": self = .ma
      case "MZ": self = .mz
      case "MM": self = .mm
      case "NA": self = .na
      case "NR": self = .nr
      case "NP": self = .np
      case "NL": self = .nl
      case "AN": self = .an
      case "NC": self = .nc
      case "NZ": self = .nz
      case "NI": self = .ni
      case "NE": self = .ne
      case "NG": self = .ng
      case "NU": self = .nu
      case "NF": self = .nf
      case "MK": self = .mk
      case "NO": self = .no
      case "OM": self = .om
      case "PK": self = .pk
      case "PS": self = .ps
      case "PA": self = .pa
      case "PG": self = .pg
      case "PY": self = .py
      case "PE": self = .pe
      case "PH": self = .ph
      case "PN": self = .pn
      case "PL": self = .pl
      case "PT": self = .pt
      case "QA": self = .qa
      case "CM": self = .cm
      case "RE": self = .re
      case "RO": self = .ro
      case "RU": self = .ru
      case "RW": self = .rw
      case "BL": self = .bl
      case "SH": self = .sh
      case "KN": self = .kn
      case "LC": self = .lc
      case "MF": self = .mf
      case "PM": self = .pm
      case "WS": self = .ws
      case "SM": self = .sm
      case "ST": self = .st
      case "SA": self = .sa
      case "SN": self = .sn
      case "RS": self = .rs
      case "SC": self = .sc
      case "SL": self = .sl
      case "SG": self = .sg
      case "SX": self = .sx
      case "SK": self = .sk
      case "SI": self = .si
      case "SB": self = .sb
      case "SO": self = .so
      case "ZA": self = .za
      case "GS": self = .gs
      case "KR": self = .kr
      case "SS": self = .ss
      case "ES": self = .es
      case "LK": self = .lk
      case "VC": self = .vc
      case "SD": self = .sd
      case "SR": self = .sr
      case "SJ": self = .sj
      case "SE": self = .se
      case "CH": self = .ch
      case "SY": self = .sy
      case "TW": self = .tw
      case "TJ": self = .tj
      case "TZ": self = .tz
      case "TH": self = .th
      case "TL": self = .tl
      case "TG": self = .tg
      case "TK": self = .tk
      case "TO": self = .to
      case "TT": self = .tt
      case "TA": self = .ta
      case "TN": self = .tn
      case "TR": self = .tr
      case "TM": self = .tm
      case "TC": self = .tc
      case "TV": self = .tv
      case "UG": self = .ug
      case "UA": self = .ua
      case "AE": self = .ae
      case "GB": self = .gb
      case "US": self = .us
      case "UM": self = .um
      case "UY": self = .uy
      case "UZ": self = .uz
      case "VU": self = .vu
      case "VE": self = .ve
      case "VN": self = .vn
      case "VG": self = .vg
      case "WF": self = .wf
      case "EH": self = .eh
      case "YE": self = .ye
      case "ZM": self = .zm
      case "ZW": self = .zw
      case "ZZ": self = .zz
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .af: return "AF"
      case .ax: return "AX"
      case .al: return "AL"
      case .dz: return "DZ"
      case .ad: return "AD"
      case .ao: return "AO"
      case .ai: return "AI"
      case .ag: return "AG"
      case .ar: return "AR"
      case .am: return "AM"
      case .aw: return "AW"
      case .ac: return "AC"
      case .au: return "AU"
      case .at: return "AT"
      case .az: return "AZ"
      case .bs: return "BS"
      case .bh: return "BH"
      case .bd: return "BD"
      case .bb: return "BB"
      case .by: return "BY"
      case .be: return "BE"
      case .bz: return "BZ"
      case .bj: return "BJ"
      case .bm: return "BM"
      case .bt: return "BT"
      case .bo: return "BO"
      case .ba: return "BA"
      case .bw: return "BW"
      case .bv: return "BV"
      case .br: return "BR"
      case .io: return "IO"
      case .bn: return "BN"
      case .bg: return "BG"
      case .bf: return "BF"
      case .bi: return "BI"
      case .kh: return "KH"
      case .ca: return "CA"
      case .cv: return "CV"
      case .bq: return "BQ"
      case .ky: return "KY"
      case .cf: return "CF"
      case .td: return "TD"
      case .cl: return "CL"
      case .cn: return "CN"
      case .cx: return "CX"
      case .cc: return "CC"
      case .co: return "CO"
      case .km: return "KM"
      case .cg: return "CG"
      case .cd: return "CD"
      case .ck: return "CK"
      case .cr: return "CR"
      case .hr: return "HR"
      case .cu: return "CU"
      case .cw: return "CW"
      case .cy: return "CY"
      case .cz: return "CZ"
      case .ci: return "CI"
      case .dk: return "DK"
      case .dj: return "DJ"
      case .dm: return "DM"
      case .do: return "DO"
      case .ec: return "EC"
      case .eg: return "EG"
      case .sv: return "SV"
      case .gq: return "GQ"
      case .er: return "ER"
      case .ee: return "EE"
      case .sz: return "SZ"
      case .et: return "ET"
      case .fk: return "FK"
      case .fo: return "FO"
      case .fj: return "FJ"
      case .fi: return "FI"
      case .fr: return "FR"
      case .gf: return "GF"
      case .pf: return "PF"
      case .tf: return "TF"
      case .ga: return "GA"
      case .gm: return "GM"
      case .ge: return "GE"
      case .de: return "DE"
      case .gh: return "GH"
      case .gi: return "GI"
      case .gr: return "GR"
      case .gl: return "GL"
      case .gd: return "GD"
      case .gp: return "GP"
      case .gt: return "GT"
      case .gg: return "GG"
      case .gn: return "GN"
      case .gw: return "GW"
      case .gy: return "GY"
      case .ht: return "HT"
      case .hm: return "HM"
      case .va: return "VA"
      case .hn: return "HN"
      case .hk: return "HK"
      case .hu: return "HU"
      case .is: return "IS"
      case .in: return "IN"
      case .id: return "ID"
      case .ir: return "IR"
      case .iq: return "IQ"
      case .ie: return "IE"
      case .im: return "IM"
      case .il: return "IL"
      case .it: return "IT"
      case .jm: return "JM"
      case .jp: return "JP"
      case .je: return "JE"
      case .jo: return "JO"
      case .kz: return "KZ"
      case .ke: return "KE"
      case .ki: return "KI"
      case .kp: return "KP"
      case .xk: return "XK"
      case .kw: return "KW"
      case .kg: return "KG"
      case .la: return "LA"
      case .lv: return "LV"
      case .lb: return "LB"
      case .ls: return "LS"
      case .lr: return "LR"
      case .ly: return "LY"
      case .li: return "LI"
      case .lt: return "LT"
      case .lu: return "LU"
      case .mo: return "MO"
      case .mg: return "MG"
      case .mw: return "MW"
      case .my: return "MY"
      case .mv: return "MV"
      case .ml: return "ML"
      case .mt: return "MT"
      case .mq: return "MQ"
      case .mr: return "MR"
      case .mu: return "MU"
      case .yt: return "YT"
      case .mx: return "MX"
      case .md: return "MD"
      case .mc: return "MC"
      case .mn: return "MN"
      case .me: return "ME"
      case .ms: return "MS"
      case .ma: return "MA"
      case .mz: return "MZ"
      case .mm: return "MM"
      case .na: return "NA"
      case .nr: return "NR"
      case .np: return "NP"
      case .nl: return "NL"
      case .an: return "AN"
      case .nc: return "NC"
      case .nz: return "NZ"
      case .ni: return "NI"
      case .ne: return "NE"
      case .ng: return "NG"
      case .nu: return "NU"
      case .nf: return "NF"
      case .mk: return "MK"
      case .no: return "NO"
      case .om: return "OM"
      case .pk: return "PK"
      case .ps: return "PS"
      case .pa: return "PA"
      case .pg: return "PG"
      case .py: return "PY"
      case .pe: return "PE"
      case .ph: return "PH"
      case .pn: return "PN"
      case .pl: return "PL"
      case .pt: return "PT"
      case .qa: return "QA"
      case .cm: return "CM"
      case .re: return "RE"
      case .ro: return "RO"
      case .ru: return "RU"
      case .rw: return "RW"
      case .bl: return "BL"
      case .sh: return "SH"
      case .kn: return "KN"
      case .lc: return "LC"
      case .mf: return "MF"
      case .pm: return "PM"
      case .ws: return "WS"
      case .sm: return "SM"
      case .st: return "ST"
      case .sa: return "SA"
      case .sn: return "SN"
      case .rs: return "RS"
      case .sc: return "SC"
      case .sl: return "SL"
      case .sg: return "SG"
      case .sx: return "SX"
      case .sk: return "SK"
      case .si: return "SI"
      case .sb: return "SB"
      case .so: return "SO"
      case .za: return "ZA"
      case .gs: return "GS"
      case .kr: return "KR"
      case .ss: return "SS"
      case .es: return "ES"
      case .lk: return "LK"
      case .vc: return "VC"
      case .sd: return "SD"
      case .sr: return "SR"
      case .sj: return "SJ"
      case .se: return "SE"
      case .ch: return "CH"
      case .sy: return "SY"
      case .tw: return "TW"
      case .tj: return "TJ"
      case .tz: return "TZ"
      case .th: return "TH"
      case .tl: return "TL"
      case .tg: return "TG"
      case .tk: return "TK"
      case .to: return "TO"
      case .tt: return "TT"
      case .ta: return "TA"
      case .tn: return "TN"
      case .tr: return "TR"
      case .tm: return "TM"
      case .tc: return "TC"
      case .tv: return "TV"
      case .ug: return "UG"
      case .ua: return "UA"
      case .ae: return "AE"
      case .gb: return "GB"
      case .us: return "US"
      case .um: return "UM"
      case .uy: return "UY"
      case .uz: return "UZ"
      case .vu: return "VU"
      case .ve: return "VE"
      case .vn: return "VN"
      case .vg: return "VG"
      case .wf: return "WF"
      case .eh: return "EH"
      case .ye: return "YE"
      case .zm: return "ZM"
      case .zw: return "ZW"
      case .zz: return "ZZ"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: CountryCode, rhs: CountryCode) -> Bool {
    switch (lhs, rhs) {
      case (.af, .af): return true
      case (.ax, .ax): return true
      case (.al, .al): return true
      case (.dz, .dz): return true
      case (.ad, .ad): return true
      case (.ao, .ao): return true
      case (.ai, .ai): return true
      case (.ag, .ag): return true
      case (.ar, .ar): return true
      case (.am, .am): return true
      case (.aw, .aw): return true
      case (.ac, .ac): return true
      case (.au, .au): return true
      case (.at, .at): return true
      case (.az, .az): return true
      case (.bs, .bs): return true
      case (.bh, .bh): return true
      case (.bd, .bd): return true
      case (.bb, .bb): return true
      case (.by, .by): return true
      case (.be, .be): return true
      case (.bz, .bz): return true
      case (.bj, .bj): return true
      case (.bm, .bm): return true
      case (.bt, .bt): return true
      case (.bo, .bo): return true
      case (.ba, .ba): return true
      case (.bw, .bw): return true
      case (.bv, .bv): return true
      case (.br, .br): return true
      case (.io, .io): return true
      case (.bn, .bn): return true
      case (.bg, .bg): return true
      case (.bf, .bf): return true
      case (.bi, .bi): return true
      case (.kh, .kh): return true
      case (.ca, .ca): return true
      case (.cv, .cv): return true
      case (.bq, .bq): return true
      case (.ky, .ky): return true
      case (.cf, .cf): return true
      case (.td, .td): return true
      case (.cl, .cl): return true
      case (.cn, .cn): return true
      case (.cx, .cx): return true
      case (.cc, .cc): return true
      case (.co, .co): return true
      case (.km, .km): return true
      case (.cg, .cg): return true
      case (.cd, .cd): return true
      case (.ck, .ck): return true
      case (.cr, .cr): return true
      case (.hr, .hr): return true
      case (.cu, .cu): return true
      case (.cw, .cw): return true
      case (.cy, .cy): return true
      case (.cz, .cz): return true
      case (.ci, .ci): return true
      case (.dk, .dk): return true
      case (.dj, .dj): return true
      case (.dm, .dm): return true
      case (.do, .do): return true
      case (.ec, .ec): return true
      case (.eg, .eg): return true
      case (.sv, .sv): return true
      case (.gq, .gq): return true
      case (.er, .er): return true
      case (.ee, .ee): return true
      case (.sz, .sz): return true
      case (.et, .et): return true
      case (.fk, .fk): return true
      case (.fo, .fo): return true
      case (.fj, .fj): return true
      case (.fi, .fi): return true
      case (.fr, .fr): return true
      case (.gf, .gf): return true
      case (.pf, .pf): return true
      case (.tf, .tf): return true
      case (.ga, .ga): return true
      case (.gm, .gm): return true
      case (.ge, .ge): return true
      case (.de, .de): return true
      case (.gh, .gh): return true
      case (.gi, .gi): return true
      case (.gr, .gr): return true
      case (.gl, .gl): return true
      case (.gd, .gd): return true
      case (.gp, .gp): return true
      case (.gt, .gt): return true
      case (.gg, .gg): return true
      case (.gn, .gn): return true
      case (.gw, .gw): return true
      case (.gy, .gy): return true
      case (.ht, .ht): return true
      case (.hm, .hm): return true
      case (.va, .va): return true
      case (.hn, .hn): return true
      case (.hk, .hk): return true
      case (.hu, .hu): return true
      case (.is, .is): return true
      case (.in, .in): return true
      case (.id, .id): return true
      case (.ir, .ir): return true
      case (.iq, .iq): return true
      case (.ie, .ie): return true
      case (.im, .im): return true
      case (.il, .il): return true
      case (.it, .it): return true
      case (.jm, .jm): return true
      case (.jp, .jp): return true
      case (.je, .je): return true
      case (.jo, .jo): return true
      case (.kz, .kz): return true
      case (.ke, .ke): return true
      case (.ki, .ki): return true
      case (.kp, .kp): return true
      case (.xk, .xk): return true
      case (.kw, .kw): return true
      case (.kg, .kg): return true
      case (.la, .la): return true
      case (.lv, .lv): return true
      case (.lb, .lb): return true
      case (.ls, .ls): return true
      case (.lr, .lr): return true
      case (.ly, .ly): return true
      case (.li, .li): return true
      case (.lt, .lt): return true
      case (.lu, .lu): return true
      case (.mo, .mo): return true
      case (.mg, .mg): return true
      case (.mw, .mw): return true
      case (.my, .my): return true
      case (.mv, .mv): return true
      case (.ml, .ml): return true
      case (.mt, .mt): return true
      case (.mq, .mq): return true
      case (.mr, .mr): return true
      case (.mu, .mu): return true
      case (.yt, .yt): return true
      case (.mx, .mx): return true
      case (.md, .md): return true
      case (.mc, .mc): return true
      case (.mn, .mn): return true
      case (.me, .me): return true
      case (.ms, .ms): return true
      case (.ma, .ma): return true
      case (.mz, .mz): return true
      case (.mm, .mm): return true
      case (.na, .na): return true
      case (.nr, .nr): return true
      case (.np, .np): return true
      case (.nl, .nl): return true
      case (.an, .an): return true
      case (.nc, .nc): return true
      case (.nz, .nz): return true
      case (.ni, .ni): return true
      case (.ne, .ne): return true
      case (.ng, .ng): return true
      case (.nu, .nu): return true
      case (.nf, .nf): return true
      case (.mk, .mk): return true
      case (.no, .no): return true
      case (.om, .om): return true
      case (.pk, .pk): return true
      case (.ps, .ps): return true
      case (.pa, .pa): return true
      case (.pg, .pg): return true
      case (.py, .py): return true
      case (.pe, .pe): return true
      case (.ph, .ph): return true
      case (.pn, .pn): return true
      case (.pl, .pl): return true
      case (.pt, .pt): return true
      case (.qa, .qa): return true
      case (.cm, .cm): return true
      case (.re, .re): return true
      case (.ro, .ro): return true
      case (.ru, .ru): return true
      case (.rw, .rw): return true
      case (.bl, .bl): return true
      case (.sh, .sh): return true
      case (.kn, .kn): return true
      case (.lc, .lc): return true
      case (.mf, .mf): return true
      case (.pm, .pm): return true
      case (.ws, .ws): return true
      case (.sm, .sm): return true
      case (.st, .st): return true
      case (.sa, .sa): return true
      case (.sn, .sn): return true
      case (.rs, .rs): return true
      case (.sc, .sc): return true
      case (.sl, .sl): return true
      case (.sg, .sg): return true
      case (.sx, .sx): return true
      case (.sk, .sk): return true
      case (.si, .si): return true
      case (.sb, .sb): return true
      case (.so, .so): return true
      case (.za, .za): return true
      case (.gs, .gs): return true
      case (.kr, .kr): return true
      case (.ss, .ss): return true
      case (.es, .es): return true
      case (.lk, .lk): return true
      case (.vc, .vc): return true
      case (.sd, .sd): return true
      case (.sr, .sr): return true
      case (.sj, .sj): return true
      case (.se, .se): return true
      case (.ch, .ch): return true
      case (.sy, .sy): return true
      case (.tw, .tw): return true
      case (.tj, .tj): return true
      case (.tz, .tz): return true
      case (.th, .th): return true
      case (.tl, .tl): return true
      case (.tg, .tg): return true
      case (.tk, .tk): return true
      case (.to, .to): return true
      case (.tt, .tt): return true
      case (.ta, .ta): return true
      case (.tn, .tn): return true
      case (.tr, .tr): return true
      case (.tm, .tm): return true
      case (.tc, .tc): return true
      case (.tv, .tv): return true
      case (.ug, .ug): return true
      case (.ua, .ua): return true
      case (.ae, .ae): return true
      case (.gb, .gb): return true
      case (.us, .us): return true
      case (.um, .um): return true
      case (.uy, .uy): return true
      case (.uz, .uz): return true
      case (.vu, .vu): return true
      case (.ve, .ve): return true
      case (.vn, .vn): return true
      case (.vg, .vg): return true
      case (.wf, .wf): return true
      case (.eh, .eh): return true
      case (.ye, .ye): return true
      case (.zm, .zm): return true
      case (.zw, .zw): return true
      case (.zz, .zz): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [CountryCode] {
    return [
      .af,
      .ax,
      .al,
      .dz,
      .ad,
      .ao,
      .ai,
      .ag,
      .ar,
      .am,
      .aw,
      .ac,
      .au,
      .at,
      .az,
      .bs,
      .bh,
      .bd,
      .bb,
      .by,
      .be,
      .bz,
      .bj,
      .bm,
      .bt,
      .bo,
      .ba,
      .bw,
      .bv,
      .br,
      .io,
      .bn,
      .bg,
      .bf,
      .bi,
      .kh,
      .ca,
      .cv,
      .bq,
      .ky,
      .cf,
      .td,
      .cl,
      .cn,
      .cx,
      .cc,
      .co,
      .km,
      .cg,
      .cd,
      .ck,
      .cr,
      .hr,
      .cu,
      .cw,
      .cy,
      .cz,
      .ci,
      .dk,
      .dj,
      .dm,
      .do,
      .ec,
      .eg,
      .sv,
      .gq,
      .er,
      .ee,
      .sz,
      .et,
      .fk,
      .fo,
      .fj,
      .fi,
      .fr,
      .gf,
      .pf,
      .tf,
      .ga,
      .gm,
      .ge,
      .de,
      .gh,
      .gi,
      .gr,
      .gl,
      .gd,
      .gp,
      .gt,
      .gg,
      .gn,
      .gw,
      .gy,
      .ht,
      .hm,
      .va,
      .hn,
      .hk,
      .hu,
      .is,
      .in,
      .id,
      .ir,
      .iq,
      .ie,
      .im,
      .il,
      .it,
      .jm,
      .jp,
      .je,
      .jo,
      .kz,
      .ke,
      .ki,
      .kp,
      .xk,
      .kw,
      .kg,
      .la,
      .lv,
      .lb,
      .ls,
      .lr,
      .ly,
      .li,
      .lt,
      .lu,
      .mo,
      .mg,
      .mw,
      .my,
      .mv,
      .ml,
      .mt,
      .mq,
      .mr,
      .mu,
      .yt,
      .mx,
      .md,
      .mc,
      .mn,
      .me,
      .ms,
      .ma,
      .mz,
      .mm,
      .na,
      .nr,
      .np,
      .nl,
      .an,
      .nc,
      .nz,
      .ni,
      .ne,
      .ng,
      .nu,
      .nf,
      .mk,
      .no,
      .om,
      .pk,
      .ps,
      .pa,
      .pg,
      .py,
      .pe,
      .ph,
      .pn,
      .pl,
      .pt,
      .qa,
      .cm,
      .re,
      .ro,
      .ru,
      .rw,
      .bl,
      .sh,
      .kn,
      .lc,
      .mf,
      .pm,
      .ws,
      .sm,
      .st,
      .sa,
      .sn,
      .rs,
      .sc,
      .sl,
      .sg,
      .sx,
      .sk,
      .si,
      .sb,
      .so,
      .za,
      .gs,
      .kr,
      .ss,
      .es,
      .lk,
      .vc,
      .sd,
      .sr,
      .sj,
      .se,
      .ch,
      .sy,
      .tw,
      .tj,
      .tz,
      .th,
      .tl,
      .tg,
      .tk,
      .to,
      .tt,
      .ta,
      .tn,
      .tr,
      .tm,
      .tc,
      .tv,
      .ug,
      .ua,
      .ae,
      .gb,
      .us,
      .um,
      .uy,
      .uz,
      .vu,
      .ve,
      .vn,
      .vg,
      .wf,
      .eh,
      .ye,
      .zm,
      .zw,
      .zz,
    ]
  }
}

/// The input fields required to specify a harmonized system code.
public struct CountryHarmonizedSystemCodeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - harmonizedSystemCode: Country specific harmonized system code.
  ///   - countryCode: The ISO 3166-1 alpha-2 country code for the country that issued the specified harmonized system code.
  public init(harmonizedSystemCode: String, countryCode: CountryCode) {
    graphQLMap = ["harmonizedSystemCode": harmonizedSystemCode, "countryCode": countryCode]
  }

  /// Country specific harmonized system code.
  public var harmonizedSystemCode: String {
    get {
      return graphQLMap["harmonizedSystemCode"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "harmonizedSystemCode")
    }
  }

  /// The ISO 3166-1 alpha-2 country code for the country that issued the specified harmonized system code.
  public var countryCode: CountryCode {
    get {
      return graphQLMap["countryCode"] as! CountryCode
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "countryCode")
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
      codeDiscountNodes(first: 10, reverse: true) {
        __typename
        nodes {
          __typename
          id
          codeDiscount {
            __typename
            ... on DiscountCodeBasic {
              __typename
              title
              summary
              shortSummary
              codeCount
              usageLimit
              status
              startsAt
              endsAt
              usageLimit
              asyncUsageCount
              appliesOncePerCustomer
              customerGets {
                __typename
                items {
                  __typename
                }
                value {
                  __typename
                }
              }
              codes(first: 2) {
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
        GraphQLField("codeDiscountNodes", arguments: ["first": 10, "reverse": true], type: .nonNull(.object(CodeDiscountNode.selections))),
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

          public static func makeDiscountCodeBasic(title: String, summary: String, shortSummary: String, codeCount: Int, usageLimit: Int? = nil, status: DiscountStatus, startsAt: String, endsAt: String? = nil, asyncUsageCount: Int, appliesOncePerCustomer: Bool, customerGets: AsDiscountCodeBasic.CustomerGet, codes: AsDiscountCodeBasic.Code) -> CodeDiscount {
            return CodeDiscount(unsafeResultMap: ["__typename": "DiscountCodeBasic", "title": title, "summary": summary, "shortSummary": shortSummary, "codeCount": codeCount, "usageLimit": usageLimit, "status": status, "startsAt": startsAt, "endsAt": endsAt, "asyncUsageCount": asyncUsageCount, "appliesOncePerCustomer": appliesOncePerCustomer, "customerGets": customerGets.resultMap, "codes": codes.resultMap])
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
                GraphQLField("summary", type: .nonNull(.scalar(String.self))),
                GraphQLField("shortSummary", type: .nonNull(.scalar(String.self))),
                GraphQLField("codeCount", type: .nonNull(.scalar(Int.self))),
                GraphQLField("usageLimit", type: .scalar(Int.self)),
                GraphQLField("status", type: .nonNull(.scalar(DiscountStatus.self))),
                GraphQLField("startsAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("endsAt", type: .scalar(String.self)),
                GraphQLField("usageLimit", type: .scalar(Int.self)),
                GraphQLField("asyncUsageCount", type: .nonNull(.scalar(Int.self))),
                GraphQLField("appliesOncePerCustomer", type: .nonNull(.scalar(Bool.self))),
                GraphQLField("customerGets", type: .nonNull(.object(CustomerGet.selections))),
                GraphQLField("codes", arguments: ["first": 2], type: .nonNull(.object(Code.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(title: String, summary: String, shortSummary: String, codeCount: Int, usageLimit: Int? = nil, status: DiscountStatus, startsAt: String, endsAt: String? = nil, asyncUsageCount: Int, appliesOncePerCustomer: Bool, customerGets: CustomerGet, codes: Code) {
              self.init(unsafeResultMap: ["__typename": "DiscountCodeBasic", "title": title, "summary": summary, "shortSummary": shortSummary, "codeCount": codeCount, "usageLimit": usageLimit, "status": status, "startsAt": startsAt, "endsAt": endsAt, "asyncUsageCount": asyncUsageCount, "appliesOncePerCustomer": appliesOncePerCustomer, "customerGets": customerGets.resultMap, "codes": codes.resultMap])
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

            /// A detailed summary of the discount.
            public var summary: String {
              get {
                return resultMap["summary"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "summary")
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

            /// The number of redeem codes for the discount.
            public var codeCount: Int {
              get {
                return resultMap["codeCount"]! as! Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "codeCount")
              }
            }

            /// The maximum number of times that the discount can be used.
            public var usageLimit: Int? {
              get {
                return resultMap["usageLimit"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "usageLimit")
              }
            }

            /// The status of the discount.
            public var status: DiscountStatus {
              get {
                return resultMap["status"]! as! DiscountStatus
              }
              set {
                resultMap.updateValue(newValue, forKey: "status")
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

            /// The date and time when the discount ends. For open-ended discounts, use `null`.
            public var endsAt: String? {
              get {
                return resultMap["endsAt"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "endsAt")
              }
            }

            /// The number of times that the discount has been used.
            public var asyncUsageCount: Int {
              get {
                return resultMap["asyncUsageCount"]! as! Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "asyncUsageCount")
              }
            }

            /// Whether the discount can be applied only once per customer.
            public var appliesOncePerCustomer: Bool {
              get {
                return resultMap["appliesOncePerCustomer"]! as! Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "appliesOncePerCustomer")
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

public final class InventoryItemUpdateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation inventoryItemUpdate($id: ID!, $input: InventoryItemUpdateInput!) {
      inventoryItemUpdate(id: $id, input: $input) {
        __typename
        inventoryItem {
          __typename
          id
          variant {
            __typename
            title
          }
          unitCost {
            __typename
            amount
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

  public let operationName: String = "inventoryItemUpdate"

  public var id: GraphQLID
  public var input: InventoryItemUpdateInput

  public init(id: GraphQLID, input: InventoryItemUpdateInput) {
    self.id = id
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["id": id, "input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("inventoryItemUpdate", arguments: ["id": GraphQLVariable("id"), "input": GraphQLVariable("input")], type: .object(InventoryItemUpdate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(inventoryItemUpdate: InventoryItemUpdate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "inventoryItemUpdate": inventoryItemUpdate.flatMap { (value: InventoryItemUpdate) -> ResultMap in value.resultMap }])
    }

    /// Updates an inventory item.
    public var inventoryItemUpdate: InventoryItemUpdate? {
      get {
        return (resultMap["inventoryItemUpdate"] as? ResultMap).flatMap { InventoryItemUpdate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "inventoryItemUpdate")
      }
    }

    public struct InventoryItemUpdate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["InventoryItemUpdatePayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("inventoryItem", type: .object(InventoryItem.selections)),
          GraphQLField("userErrors", type: .nonNull(.list(.nonNull(.object(UserError.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(inventoryItem: InventoryItem? = nil, userErrors: [UserError]) {
        self.init(unsafeResultMap: ["__typename": "InventoryItemUpdatePayload", "inventoryItem": inventoryItem.flatMap { (value: InventoryItem) -> ResultMap in value.resultMap }, "userErrors": userErrors.map { (value: UserError) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The inventory item that was updated.
      public var inventoryItem: InventoryItem? {
        get {
          return (resultMap["inventoryItem"] as? ResultMap).flatMap { InventoryItem(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "inventoryItem")
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

      public struct InventoryItem: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["InventoryItem"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("variant", type: .nonNull(.object(Variant.selections))),
            GraphQLField("unitCost", type: .object(UnitCost.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, variant: Variant, unitCost: UnitCost? = nil) {
          self.init(unsafeResultMap: ["__typename": "InventoryItem", "id": id, "variant": variant.resultMap, "unitCost": unitCost.flatMap { (value: UnitCost) -> ResultMap in value.resultMap }])
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

        /// The variant that owns this inventory item.
        public var variant: Variant {
          get {
            return Variant(unsafeResultMap: resultMap["variant"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "variant")
          }
        }

        /// Unit cost associated with the inventory item. Note: the user must have "View product costs" permission granted in order to access this field once product granular permissions are enabled.
        public var unitCost: UnitCost? {
          get {
            return (resultMap["unitCost"] as? ResultMap).flatMap { UnitCost(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "unitCost")
          }
        }

        public struct Variant: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ProductVariant"]

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
            self.init(unsafeResultMap: ["__typename": "ProductVariant", "title": title])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The title of the product variant.
          public var title: String {
            get {
              return resultMap["title"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "title")
            }
          }
        }

        public struct UnitCost: GraphQLSelectionSet {
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

public final class GetAllInventoryItemsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getAllInventoryItems {
      inventoryItems(first: 10, reverse: true) {
        __typename
        edges {
          __typename
          node {
            __typename
            id
            variant {
              __typename
              title
            }
            unitCost {
              __typename
              amount
            }
          }
        }
      }
    }
    """

  public let operationName: String = "getAllInventoryItems"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["QueryRoot"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("inventoryItems", arguments: ["first": 10, "reverse": true], type: .nonNull(.object(InventoryItem.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(inventoryItems: InventoryItem) {
      self.init(unsafeResultMap: ["__typename": "QueryRoot", "inventoryItems": inventoryItems.resultMap])
    }

    /// Returns a list of inventory items.
    public var inventoryItems: InventoryItem {
      get {
        return InventoryItem(unsafeResultMap: resultMap["inventoryItems"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "inventoryItems")
      }
    }

    public struct InventoryItem: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["InventoryItemConnection"]

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
        self.init(unsafeResultMap: ["__typename": "InventoryItemConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
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
        public static let possibleTypes: [String] = ["InventoryItemEdge"]

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
          self.init(unsafeResultMap: ["__typename": "InventoryItemEdge", "node": node.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The item at the end of InventoryItemEdge.
        public var node: Node {
          get {
            return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "node")
          }
        }

        public struct Node: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["InventoryItem"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("variant", type: .nonNull(.object(Variant.selections))),
              GraphQLField("unitCost", type: .object(UnitCost.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, variant: Variant, unitCost: UnitCost? = nil) {
            self.init(unsafeResultMap: ["__typename": "InventoryItem", "id": id, "variant": variant.resultMap, "unitCost": unitCost.flatMap { (value: UnitCost) -> ResultMap in value.resultMap }])
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

          /// The variant that owns this inventory item.
          public var variant: Variant {
            get {
              return Variant(unsafeResultMap: resultMap["variant"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "variant")
            }
          }

          /// Unit cost associated with the inventory item. Note: the user must have "View product costs" permission granted in order to access this field once product granular permissions are enabled.
          public var unitCost: UnitCost? {
            get {
              return (resultMap["unitCost"] as? ResultMap).flatMap { UnitCost(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "unitCost")
            }
          }

          public struct Variant: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ProductVariant"]

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
              self.init(unsafeResultMap: ["__typename": "ProductVariant", "title": title])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The title of the product variant.
            public var title: String {
              get {
                return resultMap["title"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "title")
              }
            }
          }

          public struct UnitCost: GraphQLSelectionSet {
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
    }
  }
}

public final class GetInventoryItemByIdQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getInventoryItemByID($id: ID!) {
      inventoryItem(id: $id) {
        __typename
        id
        variant {
          __typename
          title
        }
        unitCost {
          __typename
          amount
        }
      }
    }
    """

  public let operationName: String = "getInventoryItemByID"

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
        GraphQLField("inventoryItem", arguments: ["id": GraphQLVariable("id")], type: .object(InventoryItem.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(inventoryItem: InventoryItem? = nil) {
      self.init(unsafeResultMap: ["__typename": "QueryRoot", "inventoryItem": inventoryItem.flatMap { (value: InventoryItem) -> ResultMap in value.resultMap }])
    }

    /// Returns an `InventoryItem` object by ID.
    public var inventoryItem: InventoryItem? {
      get {
        return (resultMap["inventoryItem"] as? ResultMap).flatMap { InventoryItem(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "inventoryItem")
      }
    }

    public struct InventoryItem: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["InventoryItem"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("variant", type: .nonNull(.object(Variant.selections))),
          GraphQLField("unitCost", type: .object(UnitCost.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, variant: Variant, unitCost: UnitCost? = nil) {
        self.init(unsafeResultMap: ["__typename": "InventoryItem", "id": id, "variant": variant.resultMap, "unitCost": unitCost.flatMap { (value: UnitCost) -> ResultMap in value.resultMap }])
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

      /// The variant that owns this inventory item.
      public var variant: Variant {
        get {
          return Variant(unsafeResultMap: resultMap["variant"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "variant")
        }
      }

      /// Unit cost associated with the inventory item. Note: the user must have "View product costs" permission granted in order to access this field once product granular permissions are enabled.
      public var unitCost: UnitCost? {
        get {
          return (resultMap["unitCost"] as? ResultMap).flatMap { UnitCost(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "unitCost")
        }
      }

      public struct Variant: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ProductVariant"]

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
          self.init(unsafeResultMap: ["__typename": "ProductVariant", "title": title])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The title of the product variant.
        public var title: String {
          get {
            return resultMap["title"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }
      }

      public struct UnitCost: GraphQLSelectionSet {
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
