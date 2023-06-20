//
//  CollectionsView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 15/06/2023.
//

import SwiftUI

struct CollectionsView: View {
    @StateObject private var collectionsViewModel = CollectionsViewModel()
    @State private var isAddCollectionButtonClicked = false
    @State var showDeletionAlert = false
    @State private var selectedCollection: CollectionNode?
    @StateObject private var collectionCellViewModel = CollectionCellViewModel()
    @State private var deletionAlert: DeletionAlertType = .confirmDeleteAlert
    
    var body: some View {
        ZStack {
            if(collectionsViewModel.isLoading){
                LottieCustomView(lottieFile: "loading")
                    .onAppear {
                        collectionsViewModel.fetchAllCollections()
                    }
            }else{
                NavigationView {
                    GeometryReader { geometry in
                        let screenWidth = geometry.size.width
                        let imageSide = screenWidth * 0.44
                        let horizontalPadding = screenWidth * 0.04
                        VStack (spacing: 8) {
                            SearchBar(text: $collectionsViewModel.searchText)
                            ScrollView {
                                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: horizontalPadding) {
                                    ForEach(collectionsViewModel.filteredCollections, id: \.id) { collection in
                                        NavigationLink(destination: CollectionFormView(collection: collection)) {
                                            CollectionCell(collection: collection, imageSide: imageSide) { selectedCollection in
                                                self.deletionAlert = .confirmDeleteAlert
                                                showDeletionAlert = true
                                                self.selectedCollection = selectedCollection
                                            }
                                            
                                        }
                                    }
                                }
                                .padding(.horizontal, horizontalPadding)
                            }
                            .background(Color(hex: "f7f7f7"))
                            .refreshable {
                                collectionsViewModel.fetchAllCollections()
                            }
                            .alert(isPresented: $showDeletionAlert) {
                                switch deletionAlert {
                                case .confirmDeleteAlert:
                                    return Alert(title: Text("Confirm Deletion"),
                                                 message: Text("Are you sure you want to delete this collection?"),
                                                 primaryButton: .destructive(Text("Delete")) {
                                        collectionCellViewModel.deleteCollection(collectionID: selectedCollection?.id ?? "") { result in
                                            switch result {
                                            case .success:
                                                collectionsViewModel.fetchAllCollections()
                                                deletionAlert = .isDeletedAlert
                                                showDeletionAlert = true
                                            case .failure(let error):
                                                print(error.localizedDescription)
                                            }
                                        }
                                    },
                                                 secondaryButton: .cancel())
                                case .isDeletedAlert:
                                    return Alert(title: Text("Success"), message: Text("Collection deleted successfully"), dismissButton: .default(Text("OK")))
                                }
                            }
                        }
                        .background(Color(hex: "f7f7f7"))
                    }
                    .navigationTitle("Collections")
                    .navigationBarItems(trailing: Button(action: {
                        isAddCollectionButtonClicked = true
                    }) {
                        Image(systemName: "plus")
                    }
                    )
                    .background(
                        NavigationLink(destination: CollectionFormView(), isActive: $isAddCollectionButtonClicked) {
                            EmptyView()
                        }
                    )
                }
                .navigationViewStyle(StackNavigationViewStyle())
            }
        }
    }
    
}
