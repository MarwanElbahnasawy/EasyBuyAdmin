//
//  DiscountCodeCell.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 13/06/2023.
//

import SwiftUI

struct DiscountCodeCell: View {
    let discountCode: CodeDiscount
    let cellWidth: CGFloat
    
    var body: some View {
        DiscountCodeContentView(discountCode: discountCode, cellWidth: cellWidth)
    }
}

struct DiscountCodeContentView: View {
    let discountCode: CodeDiscount
    let cellWidth: CGFloat
    private var discountCategoryTitle: String {
        if let shortSummary = discountCode.shortSummary {
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
    
    var body: some View {
        VStack (spacing: 2) {
            ZStack {
                Rectangle()
                    .fill(Color.white)
                    .frame(width: cellWidth, height: cellWidth * 0.4)
                    .cornerRadius(16)
                Image(discountCategoryTitle)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                    .frame(width: cellWidth, height: cellWidth * 0.4)
            }
            Text(discountCode.title ?? "No Title available")
                .font(.system(size: 20))
                .lineLimit(1)
            Text(discountCode.shortSummary ?? "No info available")
                .font(.system(size: 16))
                .foregroundColor(.gray)
        }
    }
    
}
