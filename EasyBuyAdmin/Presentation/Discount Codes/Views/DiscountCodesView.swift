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
    @State var showDeletionAlert = false
    @State private var selectedDiscountCodeID: String?
    @StateObject private var discountCodeCellViewModel = DiscountCodeCellViewModel()
    @State private var deletionAlert: DeletionAlertType = .confirmDeleteAlert
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                let screenWidth = geometry.size.width
                let cellWidth = screenWidth * 0.9
                let cellHeight = cellWidth * 0.4
                let horizontalPadding = screenWidth * 0.05
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible())]) {
                        ForEach(discountsViewModel.discountCodeNodes, id: \.id) { discountCodeNode in
                            NavigationLink(destination: DiscountCodeFormView(discountCode: discountCodeNode.codeDiscount, discountCodeID: discountCodeNode.id)) {
                                DiscountCodeCell(discountCode: discountCodeNode.codeDiscount!, discountCodeID: discountCodeNode.id!, cellWidth: cellWidth, cellHeight: cellHeight) { selectedDiscountCodeID in
                                    self.deletionAlert = .confirmDeleteAlert
                                    showDeletionAlert = true
                                    self.selectedDiscountCodeID = selectedDiscountCodeID
                                }
                            }
                        }
                    }
                    .padding(.horizontal, horizontalPadding)
                }
                .background(Color(hex: "f7f7f7"))
                .refreshable {
                    discountsViewModel.fetchAllDiscountCodes()
                }
                .alert(isPresented: $showDeletionAlert) {
                    switch deletionAlert {
                    case .confirmDeleteAlert:
                        return Alert(title: Text("Confirm Deletion"),
                              message: Text("Are you sure you want to delete this discount code?"),
                              primaryButton: .destructive(Text("Delete")) {
                            discountCodeCellViewModel.deleteDiscountCode(discountCodeID: selectedDiscountCodeID ?? "") { result in
                                switch result {
                                case .success:
                                    discountsViewModel.fetchAllDiscountCodes()
                                    deletionAlert = .isDeletedAlert
                                    showDeletionAlert = true
                                case .failure(let error):
                                    print(error.localizedDescription)
                                }
                            }
                        },
                              secondaryButton: .cancel())
                    case .isDeletedAlert:
                    return Alert(title: Text("Success"), message: Text("Discount code deleted successfully"), dismissButton: .default(Text("OK")))
                    }
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
