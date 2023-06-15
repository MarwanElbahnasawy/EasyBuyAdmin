//
//  CollectionsCell.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 15/06/2023.
//

import SwiftUI

struct CollectionCell: View {
    let collection: CollectionNode
    let imageSide: CGFloat
    var onDelete: (CollectionNode) -> ()
    
    var body: some View {
        CellContentView(collection: collection, imageSide: imageSide, onDelete: onDelete)
    }
}

struct CellContentView: View {
    @StateObject private var collectionCellViewModel = CollectionCellViewModel()
    let collection: CollectionNode
    let imageSide: CGFloat
    var onDelete: (CollectionNode) -> ()
    
    var body: some View {
        VStack {
            ZStack {
                if let imageUrlString = collection.image?.url,
                   let url = URL(string: imageUrlString) {
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
                    .cornerRadius(30)
                }
                Image(systemName: "minus.circle.fill")
                    .offset(x: 0.4 * imageSide, y: -(0.4 * imageSide))
                    .onTapGesture {
                        onDelete(collection)
                    }
            }
            
            VStack (spacing: 2) {
                if let title = collection.title {
                    Text(title)
                        .font(.system(size: 16))
                        .lineLimit(1)
                } else {
                    Text("Unknown")
                        .font(.system(size: 16))
                        .lineLimit(1)
                }
            }
            
        }
    }
}
