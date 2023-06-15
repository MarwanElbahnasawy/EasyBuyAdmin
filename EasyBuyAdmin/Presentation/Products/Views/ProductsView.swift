//
//  ProductsView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 04/06/2023.
//

import SwiftUI

struct ProductsView: View {
    @StateObject private var productsViewModel = ProductsViewModel()
    @State private var isAddProductButtonClicked = false
    @State var showDeletionAlert = false
    @State private var selectedProduct: ProductNode?
    @StateObject private var productCellViewModel = ProductCellViewModel()
    @State private var deletionAlert: DeletionAlertType = .confirmDeleteAlert
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                let screenWidth = geometry.size.width
                let imageSide = screenWidth * 0.44
                let horizontalPadding = screenWidth * 0.04
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: horizontalPadding) {
                        ForEach(productsViewModel.products, id: \.id) { product in
                            NavigationLink(destination: ProductFormView(product: product)) {
                                ProductCell(product: product, imageSide: imageSide) { selectedProduct in
                                    self.deletionAlert = .confirmDeleteAlert
                                    showDeletionAlert = true
                                    self.selectedProduct = selectedProduct
                                }
                            }
                        }
                    }
                    .padding(.horizontal, horizontalPadding)
                }
                .background(Color(hex: "f7f7f7"))
                .refreshable {
                    productsViewModel.fetchAllProducts()
                }
                .alert(isPresented: $showDeletionAlert) {
                    switch deletionAlert {
                    case .confirmDeleteAlert:
                        return Alert(title: Text("Confirm Deletion"),
                              message: Text("Are you sure you want to delete this product?"),
                              primaryButton: .destructive(Text("Delete")) {
                            productCellViewModel.deleteProduct(productID: selectedProduct?.id ?? "") { result in
                                switch result {
                                case .success:
                                    productsViewModel.fetchAllProducts()
                                    deletionAlert = .isDeletedAlert
                                    showDeletionAlert = true
                                case .failure(let error):
                                    print(error.localizedDescription)
                                }
                            }
                        },
                              secondaryButton: .cancel())
                    case .isDeletedAlert:
                    return Alert(title: Text("Success"), message: Text("Product deleted successfully"), dismissButton: .default(Text("OK")))
                    }
                }
            }
            .navigationTitle("Products View")
            .onAppear {
                productsViewModel.fetchAllProducts()
            }
            .navigationBarItems(trailing: Button(action: {
                isAddProductButtonClicked = true
            }) {
                Image(systemName: "plus")
            }
            )
            .background(
                NavigationLink(destination: ProductFormView(), isActive: $isAddProductButtonClicked) {
                    EmptyView()
                }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
