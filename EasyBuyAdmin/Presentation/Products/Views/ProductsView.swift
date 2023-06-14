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
    @State private var isProductDeleted = false
    
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
                                ProductCell(product: product, imageSide: imageSide) {
                                    productsViewModel.fetchAllProducts()
                                    isProductDeleted = true
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
                .alert(isPresented: $isProductDeleted) {
                    Alert(title: Text("Success"), message: Text("Product deleted successfully"), dismissButton: .default(Text("OK")))
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
