//
//  AddProductView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 05/06/2023.
//

import SwiftUI

struct AddProductView: View {
    @StateObject private var addProductViewModel = AddProductViewModel()
    @State private var showAlert = false
    @State private var title = ""
    @State private var vendor = ""
    @State private var productTypeIndex = 0
    @State private var description = ""
    @State private var price = ""
    @State private var productImageURL = ""
    @State private var selectedCollectionIndex = 0
    @State private var tags = Array(repeating: "", count: 4)
    @State private var showDisabledAlert = false
    
    
    private var isFormValid: Bool {
        !title.isEmpty &&
        addProductViewModel.isValidPrice(price) &&
        addProductViewModel.isValidImageURL(productImageURL)
    }
    
    var body: some View {
        ScrollView{
            VStack(spacing: 20) {
                TextField("Title*", text: $title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Vendor", text: $vendor)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Description", text: $description)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Price($)*", text: $price)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                TextField("Product Image URL(jpg / jpeg / png)*", text: $productImageURL)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                HStack {
                    Text("Product Type:")
                    Picker("Product Type", selection: $productTypeIndex) {
                        ForEach(0..<addProductViewModel.productTypes.count) { index in
                            Text(addProductViewModel.productTypes[index])
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    Spacer()
                }
                HStack {
                    Text("Collection:")
                    Picker("Collection", selection: $selectedCollectionIndex) {
                        ForEach(0..<addProductViewModel.collections.keys.count) { index in
                            Text(Array(addProductViewModel.collections.keys)[index])
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    Spacer()
                }
                Text("Tags")
                    .font(.system(size: 18))
                VStack() {
                    HStack {
                        ForEach(0..<tags.count/2) { index in
                            TextField("Tag \(index + 1)", text: $tags[index])
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                    }
                    HStack {
                        ForEach(tags.count/2..<tags.count) { index in
                            TextField("Tag \(index + 1)", text: $tags[index])
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                    }
                }
                if isFormValid {
                    Spacer()
                    Button {
                        addProductViewModel.addProduct(title: title,
                                             description: description,
                                             productTypeIndex: productTypeIndex,
                                             vendor: vendor,
                                             tags: tags,
                                             price: price,
                                             selectedCollectionIndex: selectedCollectionIndex,
                                             collections: addProductViewModel.collections,
                                             productImageURLString: productImageURL) {
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
                    Spacer()
                    Text("Add Product")
                        .padding(12)
                        .background(Color.gray)
                        .foregroundColor(Color.white)
                        .cornerRadius(12)
                        .onTapGesture {
                            showDisabledAlert = true
                        }
                }
            }
            .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
            .alert(isPresented: $showAlert) {
                Alert(title: Text(addProductViewModel.alertTitle), message: Text(addProductViewModel.alertMessage), dismissButton: .default(Text("OK")))
            }
            .alert(isPresented: $showDisabledAlert) {
                Alert(title: Text("Error"), message: Text("Please fill in the required fields."), dismissButton: .default(Text("OK")))
            }
        }
    }
}
