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
    private var imageName: String {
        if let shortSummary = discountCode.shortSummary {
            let shortSummaryLowerCased = shortSummary.lowercased()
            if shortSummaryLowerCased.contains(DiscountCodeImages.women.rawValue) {
                return DiscountCodeImages.women.rawValue
            } else if shortSummaryLowerCased.contains(DiscountCodeImages.men.rawValue) {
                return DiscountCodeImages.men.rawValue
            } else if shortSummaryLowerCased.contains(DiscountCodeImages.kid.rawValue) {
                return DiscountCodeImages.kid.rawValue
            }
        }
        return DiscountCodeImages.allproducts.rawValue
    }
    
    var body: some View {
        VStack (spacing: 2) {
            ZStack {
                Rectangle()
                    .fill(Color.white)
                    .frame(width: cellWidth, height: cellWidth * 0.4)
                    .cornerRadius(16)
                Image(imageName)
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
