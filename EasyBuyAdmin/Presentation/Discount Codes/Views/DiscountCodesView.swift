//
//  DiscountCodesView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 04/06/2023.
//

import SwiftUI

struct DiscountCodesView: View {
    
    @StateObject private var discountsViewModel = DiscountCodesViewModel()
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                let screenWidth = geometry.size.width
                let cellWidth = screenWidth * 0.9
                let horizontalPadding = screenWidth * 0.05
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible())]) {
                        ForEach(discountsViewModel.discountCodes, id: \.codes?.nodes?.first?.id) { discountCode in
                            DiscountCodeCell(discountCode: discountCode, cellWidth: cellWidth)
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
            }) {
                Image(systemName: "plus")
            }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}
