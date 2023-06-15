//
//  DiscountCodesViewModel.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 04/06/2023.
//

import Foundation

class DiscountCodesViewModel: ObservableObject {
    @Published var discountCodeNodes = [CodeDiscountNode]()
    
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
