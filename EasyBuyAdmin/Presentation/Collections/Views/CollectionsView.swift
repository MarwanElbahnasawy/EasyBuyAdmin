//
//  CollectionsView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 15/06/2023.
//

import SwiftUI

struct CollectionsView: View {
    @StateObject private var collectionsViewModel = CollectionsViewModel()
    @State private var isAddProductButtonClicked = false
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                let screenWidth = geometry.size.width
                let imageSide = screenWidth * 0.44
                let horizontalPadding = screenWidth * 0.04
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: horizontalPadding) {
                        ForEach(collectionsViewModel.collections, id: \.id) { collection in
                            CollectionCell(collection: collection, imageSide: imageSide)
                        }
                    }
                    .padding(.horizontal, horizontalPadding)
                }
                .background(Color(hex: "f7f7f7"))
                .refreshable {
                    collectionsViewModel.fetchAllCollections()
                }
            }
            .navigationTitle("Categories View")
            .onAppear {
                collectionsViewModel.fetchAllCollections()
            }
            .navigationBarItems(trailing: Button(action: {
                isAddProductButtonClicked = true
            }) {
                Image(systemName: "plus")
            }
            )
            .background(
                NavigationLink(destination: CollectionFormView(), isActive: $isAddProductButtonClicked) {
                    EmptyView()
                }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }

    
}
