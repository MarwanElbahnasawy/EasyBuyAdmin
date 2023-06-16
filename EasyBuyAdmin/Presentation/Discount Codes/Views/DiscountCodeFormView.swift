//
//  DiscountCodeFormView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 13/06/2023.
//

import SwiftUI

struct DiscountCodeFormView: View {
    @StateObject private var discountCodeFormViewModel = DiscountCodeFormViewModel()
    @State private var showAlert = false
    @State private var selectedDiscountCategory = DiscountCodeCategories.ALL_PRODUCTS.rawValue {
        didSet {
            discountCodeFormViewModel.selectedDiscountCategory = selectedDiscountCategory
        }
    }
    
    private let discountCode: CodeDiscount?
    private let discountCodeID: String?
    private let width90percent = UIScreen.main.bounds.width * 0.9
    
    private var discountCategoryTitle: String {
        if let shortSummary = discountCode?.shortSummary {
            let shortSummaryUpperCased = shortSummary.uppercased()
            if shortSummaryUpperCased.contains(DiscountCodeCategories.WOMEN.rawValue) {
                return DiscountCodeCategories.WOMEN.rawValue
            } else if shortSummaryUpperCased.contains(DiscountCodeCategories.MEN.rawValue) {
                return DiscountCodeCategories.MEN.rawValue
            } else if shortSummaryUpperCased.contains(DiscountCodeCategories.KID.rawValue) {
                return DiscountCodeCategories.KID.rawValue
            }
        }
        return DiscountCodeCategories.ALL_PRODUCTS.rawValue
    }
    
    init(discountCode: CodeDiscount? = nil, discountCodeID: String? = nil) {
        self.discountCode = discountCode
        self.discountCodeID = discountCodeID
        _discountCodeFormViewModel = StateObject(wrappedValue: DiscountCodeFormViewModel(discountCode: discountCode, discountCodeID: discountCodeID))
        
    }
    
    private var isFormValid: Bool {
        !discountCodeFormViewModel.title.isEmpty &&
        !discountCodeFormViewModel.code.isEmpty &&
        discountCodeFormViewModel.isValidDiscountPercentage(percentage: discountCodeFormViewModel.discountPercentage)
    }
    
    var body: some View {
        ScrollView{
            VStack(spacing: 20) {
                if discountCodeFormViewModel.isDiscountCodeBeingUpdated {
                    ZStack {
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: width90percent, height: width90percent * 0.4)
                            .cornerRadius(16)
                        Image(selectedDiscountCategory)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipped()
                            .frame(width: width90percent, height: width90percent * 0.4)
                    }
                }
                VStack(spacing: 20) {
                    TextField("Title*", text: $discountCodeFormViewModel.title)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Code*", text: $discountCodeFormViewModel.code)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Discount Percentage*", text: $discountCodeFormViewModel.discountPercentage)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    VStack {
                        HStack {
                            CheckmarkView(label: "All Products", isSelected: selectedDiscountCategory == DiscountCodeCategories.ALL_PRODUCTS.rawValue) {
                                selectedDiscountCategory = DiscountCodeCategories.ALL_PRODUCTS.rawValue
                            }
                            CheckmarkView(label: "Kids", isSelected: selectedDiscountCategory == DiscountCodeCategories.KID.rawValue) {
                                selectedDiscountCategory = DiscountCodeCategories.KID.rawValue
                            }
                        }
                        HStack {
                            CheckmarkView(label: Constants.MEN, isSelected: selectedDiscountCategory == DiscountCodeCategories.MEN.rawValue) {
                                selectedDiscountCategory =  DiscountCodeCategories.MEN.rawValue
                            }
                            CheckmarkView(label: Constants.WOMEN, isSelected: selectedDiscountCategory == DiscountCodeCategories.WOMEN.rawValue) {
                                selectedDiscountCategory = DiscountCodeCategories.WOMEN.rawValue
                            }
                        }
                    }
                    if isFormValid {
                        Spacer()
                        if !discountCodeFormViewModel.isDiscountCodeBeingUpdated {
                            Button {
                                discountCodeFormViewModel.addDiscountCode {
                                    discountCodeFormViewModel.currentAlert = .addingOrUpdatingAlert
                                    showAlert = true
                                }
                            } label: {
                                Text("Add Discount Code")
                                    .padding(12)
                                    .background(Color.black)
                                    .foregroundColor(Color.white)
                                    .cornerRadius(12)
                            }
                            .disabled(!isFormValid)
                        } else {
                            Button {
                                discountCodeFormViewModel.updateDiscountCode(id: discountCodeFormViewModel.discountCodeID!) {
                                    discountCodeFormViewModel.currentAlert = .addingOrUpdatingAlert
                                    showAlert = true
                                }
                            } label: {
                                Text("Update Discount Code")
                                    .padding(12)
                                    .background(Color.black)
                                    .foregroundColor(Color.white)
                                    .cornerRadius(12)
                            }
                            .disabled(!isFormValid)
                        }
                        
                    } else {
                        Spacer()
                        if !discountCodeFormViewModel.isDiscountCodeBeingUpdated {
                            Text("Add Discount Code")
                                .padding(12)
                                .background(Color.gray)
                                .foregroundColor(Color.white)
                                .cornerRadius(12)
                                .onTapGesture {
                                    discountCodeFormViewModel.currentAlert = .disabledAlert
                                    showAlert = true
                                }
                        } else {
                            Text("Update Discount Code")
                                .padding(12)
                                .background(Color.gray)
                                .foregroundColor(Color.white)
                                .cornerRadius(12)
                                .onTapGesture {
                                    discountCodeFormViewModel.currentAlert = .disabledAlert
                                    showAlert = true
                                }
                        }
                    }
                }
                
                
                
            }
            .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                        .alert(isPresented: $showAlert) {
                            switch discountCodeFormViewModel.currentAlert {
                            case .disabledAlert:
                                return Alert(title: Text("Error"), message: Text("Please fill in the required fields correctly."), dismissButton: .default(Text("OK")))
                            case .addingOrUpdatingAlert:
                                return Alert(title: Text(discountCodeFormViewModel.alertTitle), message: Text(discountCodeFormViewModel.alertMessage), dismissButton: .default(Text("OK")))
                            }
                        }
        }
        .onAppear {
            if discountCode != nil {
                selectedDiscountCategory = discountCategoryTitle
            }
        }
        .background(Color(hex: "f7f7f7"))
    }
}
