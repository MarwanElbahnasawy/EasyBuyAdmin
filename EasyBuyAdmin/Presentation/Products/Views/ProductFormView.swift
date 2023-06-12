//
//  AddProductView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 05/06/2023.
//

import SwiftUI

struct ProductFormView: View {
    @Environment(\.presentationMode) var presentationMode
    @StateObject private var productFormViewModel = ProductFormViewModel()
    @State private var showAlert = false
    
    private let product: PurpleNode?
    private let width70percent = UIScreen.main.bounds.width * 0.7
    
    init(product: PurpleNode? = nil) {
        self.product = product
        _productFormViewModel = StateObject(wrappedValue: ProductFormViewModel(product: product))
    }
    
    private var isFormValid: Bool {
        !productFormViewModel.title.isEmpty &&
        productFormViewModel.isValidPrice(productFormViewModel.price) &&
        productFormViewModel.isValidImageURL(productFormViewModel.productImageURLString)
    }
    
    var body: some View {
        ScrollView{
            VStack(spacing: 20) {
                if productFormViewModel.isProductBeingUpdated {
                    if let imageUrlString = product?.images?.edges?.first?.node?.url,
                       let url = URL(string: imageUrlString) {
                        AsyncImage(url: url) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipped()
                                .frame(width: width70percent, height: width70percent)
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: width70percent, height: width70percent)
                        .background(Color.white)
                        .cornerRadius(40)
                    }
                }
                VStack(spacing: 20) {
                    TextField("Title*", text: $productFormViewModel.title)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Vendor", text: $productFormViewModel.vendor)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Description", text: $productFormViewModel.description)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Price($)*", text: $productFormViewModel.price)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.decimalPad)
                    TextField("Product Image URL(jpg / jpeg / png)*", text: $productFormViewModel.productImageURLString)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                HStack {
                    Text("Product Type:")
                    Picker("Product Type", selection: $productFormViewModel.productTypeIndex) {
                        ForEach(0..<productFormViewModel.productTypes.count) { index in
                            Text(productFormViewModel.productTypes[index])
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    Spacer()
                }
                HStack {
                    Text("Collection:")
                    Picker("Collection", selection: $productFormViewModel.selectedCollectionTitle) {
                        ForEach(0..<productFormViewModel.collections.keys.count) { index in
                            Text(Array(productFormViewModel.collections.keys)[index])
                                .tag(Array(productFormViewModel.collections.keys)[index])
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    Spacer()
                }
                Text("Tags")
                    .font(.system(size: 18))
                VStack() {
                    HStack {
                        ForEach(0..<productFormViewModel.tags.count/2) { index in
                            TextField("Tag \(index + 1)", text: $productFormViewModel.tags[index])
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                    }
                    HStack {
                        ForEach(productFormViewModel.tags.count/2..<productFormViewModel.tags.count) { index in
                            TextField("Tag \(index + 1)", text: $productFormViewModel.tags[index])
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                    }
                }
                if isFormValid {
                    Spacer()
                    if !productFormViewModel.isProductBeingUpdated {
                        Button {
                            productFormViewModel.addProduct() {
                                productFormViewModel.currentAlert = .addingOrUpdatingProductAlert
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
                            productFormViewModel.updateProduct(id: product!.id!) {
                                productFormViewModel.currentAlert = .addingOrUpdatingProductAlert
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
                case .addingOrUpdatingProductAlert:
                    return Alert(title: Text(productFormViewModel.alertTitle), message: Text(productFormViewModel.alertMessage), dismissButton: .default(Text("OK")))
                }
            }
        }
        .background(Color(hex: "f7f7f7"))
    }
}
