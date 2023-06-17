//
//  DiscountCodesViewModel.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 04/06/2023.
//

import Foundation

class DiscountCodesViewModel: ObservableObject {
    @Published var discountCodeNodes = [CodeDiscountNode]()
    @Published var searchText = ""
    @Published var discountPercentage: Double = 0
    
    var filteredDiscountCodeNodes: [CodeDiscountNode] {
            return discountCodeNodes.filter { discountCodeNode in
                guard let title = discountCodeNode.codeDiscount?.title else { return false }
                let trimmedSearchText = searchText.trimmingCharacters(in: .whitespacesAndNewlines)
                let isTitleMatch = trimmedSearchText.isEmpty || title.lowercased().contains(searchText.lowercased())
                if let shortSummary = discountCodeNode.codeDiscount?.shortSummary,
                let discountPercentageString = shortSummary.split(separator: "%").first.map({ String($0) }),
                let percentageValue = Double(discountPercentageString) {
                    return isTitleMatch && discountPercentage <= percentageValue
                } else {
                    return isTitleMatch
                }
            }
    }
    
    func fetchAllDiscountCodes() {
        NetworkManager.shared.queryGraphQLRequest(query: GetAllDiscountCodesQuery(), responseModel: DataClassGetAllDiscountCodes.self) { result in
            switch result {
            case .success(let data):
                if let codeDiscountNodes = data.codeDiscountNodes?.nodes {
                    DispatchQueue.main.async {
                        self.discountCodeNodes = codeDiscountNodes
                    }
                }
            case .failure(let error):
                print("Error fetching discount codes: \(error)")
            }
        }
    }
}
