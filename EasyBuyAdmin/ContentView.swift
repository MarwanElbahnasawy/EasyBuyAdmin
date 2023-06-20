//
//  ContentView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 03/06/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var networkChecker = NetworkChecker()
    
    var body: some View {
        ZStack {
            TabView {
                ProductsView()
                    .tabItem {
                        Image(uiImage: UIImage(named: "products")!)
                        Text("Products")
                    }
                CollectionsView()
                    .tabItem {
                        Image(uiImage: UIImage(named: "collections")!)
                        Text("Collections")
                    }
                DiscountCodesView()
                    .tabItem {
                        Image(uiImage: UIImage(named: "discount_codes")!)
                        Text("Discount Codes")
                    }
            }
            .accentColor(.black)
            if !networkChecker.reachable {
                Color.white.edgesIgnoringSafeArea(.all)
                Image("nointernet")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
