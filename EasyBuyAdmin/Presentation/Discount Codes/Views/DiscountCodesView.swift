//
//  DiscountCodesView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 04/06/2023.
//

import SwiftUI

struct DiscountCodesView: View {
    
    @StateObject private var discountsViewModel = DiscountCodesViewModel()
    @State private var isAddDiscountCodeButtonClicked = false
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                let screenWidth = geometry.size.width
                let cellWidth = screenWidth * 0.9
                let horizontalPadding = screenWidth * 0.05
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible())]) {
                        ForEach(discountsViewModel.discountCodeNodes, id: \.id) { discountCodeNode in
                            NavigationLink(destination: DiscountCodeFormView(discountCode: discountCodeNode.codeDiscount, discountCodeID: discountCodeNode.id)) {
                                DiscountCodeCell(discountCode: discountCodeNode.codeDiscount!, cellWidth: cellWidth)
                            }
                        }
                    }
                    .padding(.horizontal, horizontalPadding)
                }
                .background(Color(hex: "f7f7f7"))
                .refreshable {
                    discountsViewModel.fetchAllDiscountCodes()
                }
            }
            .navigationTitle("Discount Codes View")
            .onAppear {
                discountsViewModel.fetchAllDiscountCodes()
            }
            .navigationBarItems(trailing: Button(action: {
                isAddDiscountCodeButtonClicked = true
            }) {
                Image(systemName: "plus")
            }
            )
            .background(
                NavigationLink(destination: DiscountCodeFormView(), isActive: $isAddDiscountCodeButtonClicked) {
                    EmptyView()
                }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}
