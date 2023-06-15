//
//  DiscountCodeFormViewModel.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 13/06/2023.
//

import Foundation
import Apollo

class DiscountCodeFormViewModel: ObservableObject {
    @Published var alertTitle = ""
    @Published var alertMessage = ""
    @Published var title: String = ""
    @Published var code: String = ""
    @Published var discountPercentage: String = ""
    @Published var selectedDiscountCategory: String = DiscountCodeCategories.ALL_PRODUCTS.rawValue
    @Published var currentAlert: AddingOrUpdatingAlertType = .disabledAlert
    @Published var isDiscountCodeBeingUpdated = false
    var shortSummary: String = "Summary automatically generated after discount code creation"
    let discountCodeID: String?
    
    init(discountCode: CodeDiscount? = nil, discountCodeID: String? = nil) {
        if let discountCode = discountCode {
            self.discountCodeID = discountCodeID
            title = discountCode.title ?? "Unknown"
            code = (discountCode.codes?.nodes?.first?.code)!
            shortSummary = discountCode.shortSummary ?? "No info available on this discount code"
            discountPercentage = discountCode.shortSummary?.split(separator: "%").first.map{ String($0) } ?? ""
            
            isDiscountCodeBeingUpdated = true
        } else {
            self.discountCodeID = nil
        }
    }
    
    func addDiscountCode(completion: @escaping () -> Void) {
        var newBasicCodeDiscount: DiscountCodeBasicInput
        
        if selectedDiscountCategory == DiscountCodeCategories.ALL_PRODUCTS.rawValue {
            newBasicCodeDiscount = DiscountCodeBasicInput(title: title, startsAt: "2023-06-01T00:00:00Z", customerGets: DiscountCustomerGetsInput(value: DiscountCustomerGetsValueInput(percentage: Double(discountPercentage)!/100), items: DiscountItemsInput(all: true)), customerSelection: DiscountCustomerSelectionInput(all: true),code: code)
        } else {
            newBasicCodeDiscount = DiscountCodeBasicInput(title: title, startsAt: "2023-06-01T00:00:00Z", customerGets: DiscountCustomerGetsInput(value: DiscountCustomerGetsValueInput(percentage: Double(discountPercentage)!/100), items: DiscountItemsInput(collections: DiscountCollectionsInput(add: [Constants.collections[selectedDiscountCategory]!]), all: false)), customerSelection: DiscountCustomerSelectionInput(all: true),code: code)
        }
        
        createDiscountCode(discountCodeInput: newBasicCodeDiscount) { result in
            switch result {
            case .success:
                self.alertTitle = "Success"
                self.alertMessage = "Discount Code added successfully"
                completion()
            case .failure(let error):
                self.alertTitle = "Error"
                self.alertMessage = error.localizedDescription
                completion()
            }
        }
    }
    
    private func createDiscountCode(discountCodeInput: DiscountCodeBasicInput, completion: @escaping (Result<String, Error>) -> Void) {
        NetworkManager.shared.performGraphQLRequest(mutation: DiscountCodeBasicCreateMutation(basicCodeDiscount: discountCodeInput), responseModel: DataClassDiscountCodeCreate.self) { result in
            switch result {
            case .success:
                NetworkManager.shared.service.store.clearCache()
                completion(.success("Discount Code created successfully"))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func updateDiscountCode(id: String, completion: @escaping () -> Void) {
        var newBasicCodeDiscount: DiscountCodeBasicInput
        
        if selectedDiscountCategory == DiscountCodeCategories.ALL_PRODUCTS.rawValue {
            newBasicCodeDiscount = DiscountCodeBasicInput(title: title, customerGets: DiscountCustomerGetsInput(value: DiscountCustomerGetsValueInput(percentage: Double(discountPercentage)!/100), items: DiscountItemsInput(all: true)), customerSelection: DiscountCustomerSelectionInput(all: true),code: code)
        } else {
            let collectionsToRemove = [Constants.collections[Constants.MEN]!, Constants.collections[Constants.KID]!, Constants.collections[Constants.WOMEN]!].filter{![Constants.collections[selectedDiscountCategory]!].contains($0)}
            newBasicCodeDiscount = DiscountCodeBasicInput(title: title, customerGets: DiscountCustomerGetsInput(value: DiscountCustomerGetsValueInput(percentage: Double(discountPercentage)!/100), items: DiscountItemsInput(collections: DiscountCollectionsInput(add: [Constants.collections[selectedDiscountCategory]!], remove: collectionsToRemove), all: false)), customerSelection: DiscountCustomerSelectionInput(all: true),code: code)
        }
        
        updateDiscountCode(discountCodeInput: newBasicCodeDiscount) { result in
            switch result {
            case .success:
                self.alertTitle = "Success"
                self.alertMessage = "Discount Code updated successfully"
                completion()
            case .failure(let error):
                self.alertTitle = "Error"
                self.alertMessage = error.localizedDescription
                completion()
            }
        }
    }
    
    private func updateDiscountCode(discountCodeInput: DiscountCodeBasicInput, completion: @escaping (Result<String, Error>) -> Void) {
        NetworkManager.shared.performGraphQLRequest(mutation: DiscountCodeBasicUpdateMutation(basicCodeDiscount: discountCodeInput, id: discountCodeID!), responseModel: DataClassDiscountCodeUpdate.self) { result in
            switch result {
            case .success:
                NetworkManager.shared.service.store.clearCache()
                completion(.success("Discount Code updated successfully"))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func isValidDiscountPercentage(percentage: String) -> Bool {
           if let intValue = Int(percentage) {
               return intValue >= 1 && intValue <= 100
           }
           return false
       }
       
}
