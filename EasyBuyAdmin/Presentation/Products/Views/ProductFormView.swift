//
//  AddProductView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 05/06/2023.
//

import SwiftUI
import Kingfisher

struct ProductFormView: View {
    @StateObject private var productFormViewModel = ProductFormViewModel()
    @State private var showAlert = false
    @State private var numberOfVisibleTextFields: Int = 1
    
    private let product: ProductNode?
    private let width70percent = UIScreen.main.bounds.width * 0.7
    
    init(product: ProductNode? = nil) {
        self.product = product
        _productFormViewModel = StateObject(wrappedValue: ProductFormViewModel(product: product))
    }
    
    private var isFormValid: Bool {
        !productFormViewModel.title.isEmpty &&
        productFormViewModel.isValidPrice(productFormViewModel.price) &&
        productFormViewModel.productImageURLStrings.prefix(numberOfVisibleTextFields).allSatisfy { urlString in
            productFormViewModel.isValidImageURL(urlString)
        }
    }
    
    var body: some View {
        ScrollView{
            VStack(spacing: 20) {
                if productFormViewModel.isProductBeingUpdated {
                    if let imageUrlString = product?.images?.edges?.first?.node?.url,
                       let url = URL(string: imageUrlString) {
                        KFImage(url)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipped()
                            .frame(width: width70percent, height: width70percent)
                            .background(Color.white)
                            .cornerRadius(width70percent/8)
                    }
                }
                VStack(spacing: 20) {
                    TextField("Title*", text: $productFormViewModel.title)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Vendor", text: $productFormViewModel.vendor)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Price in $ (maximum: $50k)*", text: $productFormViewModel.price)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.decimalPad)
                    Text("Description")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextEditor(text: $productFormViewModel.description)
                        .frame(minHeight: 32)
                        .background(Color.white)
                        .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.gray.opacity(0.2), lineWidth: 1))
                }
                
                HStack {
                    Text("Product Type:")
                    Picker("Product Type", selection: $productFormViewModel.productTypeIndex) {
                        ForEach(0..<productFormViewModel.productTypes.count, id: \.self) { index in
                            Text(productFormViewModel.productTypes[index])
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    Spacer()
                }
                HStack {
                    Text("Collection:")
                    Picker("Collection", selection: $productFormViewModel.selectedCollectionTitle) {
                        ForEach(0..<Constants.collections.keys.count, id: \.self) { index in
                            Text(Array(Constants.collections.keys)[index])
                                .tag(Array(Constants.collections.keys)[index])
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    Spacer()
                }
                Text("Tags")
                    .font(.system(size: 18))
                VStack() {
                    HStack {
                        ForEach(0..<productFormViewModel.tags.count/2, id: \.self) { index in
                            TextField("Tag \(index + 1)", text: $productFormViewModel.tags[index])
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                    }
                    HStack {
                        ForEach(productFormViewModel.tags.count/2..<productFormViewModel.tags.count, id: \.self) { index in
                            TextField("Tag \(index + 1)", text: $productFormViewModel.tags[index])
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                    }
                }
                ForEach(0..<numberOfVisibleTextFields, id: \.self) { index in
                    TextFieldWithPlusAndMinusButtons(
                        index: index,
                        textFieldText: $productFormViewModel.productImageURLStrings[index],
                        addTextField: {
                            productFormViewModel.productImageURLStrings.append("")
                            numberOfVisibleTextFields += 1
                        },
                        removeTextField: {
                            numberOfVisibleTextFields -= 1
                            productFormViewModel.productImageURLStrings.remove(at: index)
                        },
                        isLastTextField: index == numberOfVisibleTextFields - 1
                    )
                }
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                    ForEach(0..<numberOfVisibleTextFields, id: \.self) { index in
                        if let url = URL(string: productFormViewModel.productImageURLStrings[index]), productFormViewModel.isValidImageURL(productFormViewModel.productImageURLStrings[index]) {
                            KFImage(url)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipped()
                                .frame(width: width70percent*0.6, height: width70percent*0.6)
                                .background(Color.white)
                                .cornerRadius(width70percent/10)
                        }
                    }
                }
                
                if isFormValid {
                    Spacer()
                    if !productFormViewModel.isProductBeingUpdated {
                        Button {
                            productFormViewModel.addProduct() {
                                productFormViewModel.currentAlert = .addingOrUpdatingAlert
                                showAlert = true
                            }
                        } label: {
                            Text("Add Product")
                                .padding(12)
                                .background(Color.black)
                                .foregroundColor(Color.white)
                                .cornerRadius(12)
                        }
                        .disabled(!isFormValid)
                    } else {
                        Button {
                            productFormViewModel.updateProduct(productID: product!.id!) {
                                productFormViewModel.currentAlert = .addingOrUpdatingAlert
                                showAlert = true
                            }
                        } label: {
                            Text("Update Product")
                                .padding(12)
                                .background(Color.black)
                                .foregroundColor(Color.white)
                                .cornerRadius(12)
                        }
                        .disabled(!isFormValid)
                    }
                    
                } else {
                    Spacer()
                    if !productFormViewModel.isProductBeingUpdated {
                        Text("Add Product")
                            .padding(12)
                            .background(Color.gray)
                            .foregroundColor(Color.white)
                            .cornerRadius(12)
                            .onTapGesture {
                                productFormViewModel.currentAlert = .disabledAlert
                                showAlert = true
                            }
                    } else {
                        Text("Update Product")
                            .padding(12)
                            .background(Color.gray)
                            .foregroundColor(Color.white)
                            .cornerRadius(12)
                            .onTapGesture {
                                productFormViewModel.currentAlert = .disabledAlert
                                showAlert = true
                            }
                    }
                    
                }
            }
            .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
            .alert(isPresented: $showAlert) {
                switch productFormViewModel.currentAlert {
                case .disabledAlert:
                    return Alert(title: Text("Error"), message: Text("Please fill in the required fields correctly."), dismissButton: .default(Text("OK")))
                case .addingOrUpdatingAlert:
                    return Alert(title: Text(productFormViewModel.alertTitle), message: Text(productFormViewModel.alertMessage), dismissButton: .default(Text("OK")))
                }
            }
        }
        .onAppear {
            if let product = product, let edges = product.images?.edges {
                numberOfVisibleTextFields = max(edges.count, 1)
            }
        }
        .refreshable(action: {
            
        })
        .background(Color(hex: "f7f7f7"))
    }
}

