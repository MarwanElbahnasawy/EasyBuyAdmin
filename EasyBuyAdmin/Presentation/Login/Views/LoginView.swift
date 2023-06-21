//
//  LoginView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 21/06/2023.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var loginViewModel: LoginViewModel

    var body: some View {
        VStack {
            Image("Shopify-Symbol")
                .resizable()
                .scaledToFit()
                .padding(.vertical, 32)

            VStack(spacing: 24) {
                InputView(text: $loginViewModel.email, title: "Email Address", placeholder: "name@example.com", isSecuredField: false)
                    .textInputAutocapitalization(.none)
                Divider()
                InputView(text: $loginViewModel.password, title: "Password", placeholder: "Enter your password", isSecuredField: true)
                Divider()
            }
            .padding(.horizontal)
            .padding(.top, 12)
            Button(action: {
                    loginViewModel.signIn()
            }) {
                HStack {
                    Text("SIGN IN")
                        .fontWeight(.semibold)
                    Image(systemName: "arrow.right")
                }
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width - 32, height: 48)
            }
            .background(Color.black)
            .cornerRadius(10)
            .padding(.top, 24)
            
            Spacer()
        }
        .alert(isPresented: $loginViewModel.isAlertVisible) {
            Alert(
                title: Text("Login Error"),
                message: Text("Incorrect email or password. Please try again."),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}
