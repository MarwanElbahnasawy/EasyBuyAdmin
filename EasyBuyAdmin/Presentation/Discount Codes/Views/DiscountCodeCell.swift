//
//  DiscountCodeCell.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 13/06/2023.
//

import SwiftUI

struct DiscountCodeCell: View {
    private let discountCode: CodeDiscount
    private let discountCodeID: String
    private let cellWidth: CGFloat
    private let cellHeight: CGFloat
    var onDelete: (String) -> ()
    
    init(discountCode: CodeDiscount, discountCodeID: String, cellWidth: CGFloat, cellHeight: CGFloat, onDelete: @escaping (String) -> ()) {
        self.discountCode = discountCode
        self.discountCodeID = discountCodeID
        self.cellWidth = cellWidth
        self.cellHeight = cellHeight
        self.onDelete = onDelete
    }
    
    var body: some View {
        DiscountCodeContentView(discountCode: discountCode, discountCodeID: discountCodeID, cellWidth: cellWidth, cellHeight: cellHeight, onDelete: onDelete)
    }
}

struct DiscountCodeContentView: View {
    private let discountCode: CodeDiscount
    private let discountCodeID: String
    private let cellWidth: CGFloat
    private let cellHeight: CGFloat
    var onDelete: (String) -> ()
    @StateObject private var discountCodeCellViewModel = DiscountCodeCellViewModel()
    
    init(discountCode: CodeDiscount, discountCodeID: String, cellWidth: CGFloat, cellHeight: CGFloat, onDelete: @escaping (String) -> ()) {
        self.discountCode = discountCode
        self.discountCodeID = discountCodeID
        self.cellWidth = cellWidth
        self.cellHeight = cellHeight
        self.onDelete = onDelete
    }
    
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
                    .frame(width: cellWidth, height: cellHeight)
                    .cornerRadius(cellWidth/10)
                Image(discountCategoryTitle)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                    .frame(width: cellWidth, height: cellHeight)
                Image(systemName: "minus.circle.fill")
                    .offset(x: 0.42 * cellWidth, y: -(0.35 * cellHeight))
                    .onTapGesture {
                        onDelete(discountCodeID)
                    }
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
