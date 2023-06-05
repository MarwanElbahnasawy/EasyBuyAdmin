//
//  ProductCell.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 04/06/2023.
//

import SwiftUI

struct ProductCell: View {
    let product: PurpleNode
    let imageSide: CGFloat
    
    var body: some View {
        ProductContentView(product: product, imageSide: imageSide)
    }
}

struct ProductContentView: View {
    let product: PurpleNode
    let imageSide: CGFloat
    
    var body: some View {
        VStack {
            if let imageUrl = product.images?.edges?.first?.node?.url,
               let url = URL(string: imageUrl) {
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipped()
                        .frame(width: imageSide, height: imageSide)
                } placeholder: {
                    ProgressView()
                }
                .frame(width: imageSide, height: imageSide)
                
                .background(Color.white)
                .cornerRadius(40)
            }
            
            VStack (spacing: 2) {
                if let title = product.title {
                    let parts = title.split(separator: "|")
                    if parts.count > 1 {
                        Text(parts[1])
                            .font(.system(size: 16))
                            .lineLimit(1)
                    } else {
                        Text(title)
                            .font(.system(size: 16))
                            .lineLimit(1)
                    }
                } else {
                    Text("Unknown")
                        .font(.system(size: 16))
                        .lineLimit(1)
                }
                
                if let productType = product.productType?.rawValue {
                    Text(productType)
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                }
                
                if let productType = product.priceRangeV2?.minVariantPrice?.amount {
                    Text("$" + productType)
                        .font(.system(size: 16))
                }
            }
        }
    }
}
