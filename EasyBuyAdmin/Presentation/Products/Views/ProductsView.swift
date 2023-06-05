//
//  ProductsView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 04/06/2023.
//

import SwiftUI

struct ProductsView: View {
    @ObservedObject private var productsViewModel = ProductsViewModel()
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                let screenWidth = geometry.size.width
                let imageSide = screenWidth * 0.4
                let horizontalPadding = screenWidth * 0.04
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: horizontalPadding) {
                        ForEach(productsViewModel.products, id: \.id) { product in
                            ProductCell(product: product, imageSide: imageSide)
                        }
                    }
                    .padding(.horizontal, horizontalPadding)
                }
                .background(Color(hex: "f7f7f7"))
            }
            .navigationTitle("Products View")
            .onAppear {
                productsViewModel.fetchAllProducts()
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}
