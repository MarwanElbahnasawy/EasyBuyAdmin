//
//  InputView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 21/06/2023.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String
    let title: String
    let placeholder: String
    let isSecuredField: Bool
    
    @State private var isPasswordVisible: Bool = false

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .foregroundColor(Color(.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)
            
            if isSecuredField {
                ZStack(alignment: .trailing) {
                    if isPasswordVisible {
                        TextField(placeholder, text: $text)
                    } else {
                        SecureField(placeholder, text: $text)
                    }
                    Button(action: {
                        isPasswordVisible.toggle()
                    }) {
                        Image(systemName: isPasswordVisible ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(.gray)
                    }
                    .padding(.trailing)
                }
            } else {
                TextField(placeholder, text: $text)
            }
        }
    }
}
