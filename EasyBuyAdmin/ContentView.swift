//
//  ContentView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 03/06/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var networkChecker = NetworkChecker()
    @StateObject var appViewModel = AppViewModel()

    var body: some View {
            ZStack {
                if appViewModel.isAuthenticated {
                    TabBarView()
                } else {
                    LoginView(loginViewModel: LoginViewModel(appViewModel: appViewModel))
                }

                if !networkChecker.reachable {
                    Color.white.edgesIgnoringSafeArea(.all)
                    Image("nointernet")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
    }
}

struct TabBarView: View {
    var body: some View {
        TabView {
            ProductsView()
                .tabItem {
                    Image(uiImage: UIImage(named: "products")!)
                    Text("Products")
                        
                }
                .foregroundColor(Color.black)
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
