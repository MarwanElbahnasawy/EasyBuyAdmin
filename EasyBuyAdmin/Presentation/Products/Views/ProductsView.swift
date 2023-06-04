//
//  ProductsView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 04/06/2023.
//

import SwiftUI

struct ProductsView: View {
    
    @ObservedObject private var productsViewModel = ProductsViewModel()

    var body: some View {
        VStack {
            Text("Products View")
        }
        .onAppear {
            
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}
