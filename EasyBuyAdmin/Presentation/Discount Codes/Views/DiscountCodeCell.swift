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
    var didDelete: () -> ()
    
    init(discountCode: CodeDiscount, discountCodeID: String, cellWidth: CGFloat, cellHeight: CGFloat, didDelete: @escaping () -> ()) {
        self.discountCode = discountCode
        self.discountCodeID = discountCodeID
        self.cellWidth = cellWidth
        self.cellHeight = cellHeight
        self.didDelete = didDelete
    }
    
    var body: some View {
        DiscountCodeContentView(discountCode: discountCode, discountCodeID: discountCodeID, cellWidth: cellWidth, cellHeight: cellHeight, didDelete: didDelete)
    }
}

struct DiscountCodeContentView: View {
    private let discountCode: CodeDiscount
    private let discountCodeID: String
    private let cellWidth: CGFloat
    private let cellHeight: CGFloat
    private var didDelete: () -> ()
    @StateObject private var discountCodeCellViewModel = DiscountCodeCellViewModel()
    
    init(discountCode: CodeDiscount, discountCodeID: String, cellWidth: CGFloat, cellHeight: CGFloat, didDelete: @escaping () -> ()) {
        self.discountCode = discountCode
        self.discountCodeID = discountCodeID
        self.cellWidth = cellWidth
        self.cellHeight = cellHeight
        self.didDelete = didDelete
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
                    .cornerRadius(16)
                Image(discountCategoryTitle)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                    .frame(width: cellWidth, height: cellHeight)
                Image(systemName: "minus.circle.fill")
                    .offset(x: 0.35 * cellWidth, y: -(0.35 * cellHeight))
                    .onTapGesture {
                        discountCodeCellViewModel.deleteDiscountCode(discountCodeID: discountCodeID) { result in
                            switch result {
                            case .success:
                                didDelete()
                            case .failure(let error):
                                print(error.localizedDescription)
                            }
                        }
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
