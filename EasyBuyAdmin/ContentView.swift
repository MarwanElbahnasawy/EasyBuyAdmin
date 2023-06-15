//
//  ContentView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 03/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ProductsView()
                .tabItem {
                    Image(uiImage: UIImage(named: "products")!)
                    Text("Products")
                }
            CollectionsView()
                .tabItem {
                    Image(uiImage: UIImage(named: "collections")!)
                    Text("Categories")
                }
            DiscountCodesView()
                .tabItem {
                    Image(uiImage: UIImage(named: "discount_codes")!)
                    Text("Discount Codes")
                }
        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
