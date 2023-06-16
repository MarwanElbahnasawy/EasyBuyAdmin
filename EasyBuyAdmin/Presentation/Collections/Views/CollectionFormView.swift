//
//  CollectionFormView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 16/06/2023.
//

import SwiftUI

struct CollectionFormView: View {
    @StateObject private var collectionFormViewModel = CollectionFormViewModel()
    @State private var showAlert = false
    
    private let collection: CollectionNode?
    private let width70percent = UIScreen.main.bounds.width * 0.7
    
    init(collection: CollectionNode? = nil) {
        self.collection = collection
        _collectionFormViewModel = StateObject(wrappedValue: CollectionFormViewModel(collection: collection))
    }
    
    private var isFormValid: Bool {
        !collectionFormViewModel.title.isEmpty &&
        collectionFormViewModel.isValidImageURL(collectionFormViewModel.collectionImageURLString)
    }
    
    var body: some View {
        ScrollView{
            VStack(spacing: 20) {
                VStack(spacing: 20) {
                    TextField("Title*", text: $collectionFormViewModel.title)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Description", text: $collectionFormViewModel.description)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Collection Image URL(jpg / jpeg / png)*", text: $collectionFormViewModel.collectionImageURLString)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    if let url = URL(string: collectionFormViewModel.collectionImageURLString), collectionFormViewModel.isValidImageURL(collectionFormViewModel.collectionImageURLString) {
                        AsyncImage(url: url) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipped()
                                .frame(width: width70percent, height: width70percent)
                                .background(Color.white)
                                .cornerRadius(width70percent/6)
                        } placeholder: {
                            ProgressView()
                        }
                    }
                }
                if isFormValid {
                    Spacer()
                    if !collectionFormViewModel.isCollectionBeingUpdated {
                        Button {
                            collectionFormViewModel.addCollection() {
                                collectionFormViewModel.currentAlert = .addingOrUpdatingAlert
                                showAlert = true
                            }
                        } label: {
                            Text("Add Collection")
                                .padding(12)
                                .background(Color.black)
                                .foregroundColor(Color.white)
                                .cornerRadius(12)
                        }
                        .disabled(!isFormValid)
                    } else {
                        Button {
                            collectionFormViewModel.updateCollection(colelctionID: collection!.id!) {
                                collectionFormViewModel.currentAlert = .addingOrUpdatingAlert
                                showAlert = true
                            }
                        } label: {
                            Text("Update Collection")
                                .padding(12)
                                .background(Color.black)
                                .foregroundColor(Color.white)
                                .cornerRadius(12)
                        }
                        .disabled(!isFormValid)
                    }

                } else {
                    Spacer()
                    if !collectionFormViewModel.isCollectionBeingUpdated {
                        Text("Add Collection")
                            .padding(12)
                            .background(Color.gray)
                            .foregroundColor(Color.white)
                            .cornerRadius(12)
                            .onTapGesture {
                                collectionFormViewModel.currentAlert = .disabledAlert
                                showAlert = true
                            }
                    } else {
                        Text("Update Collection")
                            .padding(12)
                            .background(Color.gray)
                            .foregroundColor(Color.white)
                            .cornerRadius(12)
                            .onTapGesture {
                                collectionFormViewModel.currentAlert = .disabledAlert
                                showAlert = true
                            }
                    }

                }
            }
            .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
            .alert(isPresented: $showAlert) {
                switch collectionFormViewModel.currentAlert {
                case .disabledAlert:
                    return Alert(title: Text("Error"), message: Text("Please fill in the required fields correctly."), dismissButton: .default(Text("OK")))
                case .addingOrUpdatingAlert:
                    return Alert(title: Text(collectionFormViewModel.alertTitle), message: Text(collectionFormViewModel.alertMessage), dismissButton: .default(Text("OK")))
                }
            }
        }
        .background(Color(hex: "f7f7f7"))
    }
}

