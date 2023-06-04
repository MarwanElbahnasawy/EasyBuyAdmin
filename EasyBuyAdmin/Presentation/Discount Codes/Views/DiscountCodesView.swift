//
//  DiscountCodesView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 04/06/2023.
//

import SwiftUI

struct DiscountCodesView: View {
    
    @ObservedObject private var discountCodesViewModel = DiscountCodesViewModel()

    var body: some View {
        VStack {
            Text("Discount Codes View")
        }
        .onAppear {
            
        }
    }
}

struct DiscountCodesView_Previews: PreviewProvider {
    static var previews: some View {
        DiscountCodesView()
    }
}
