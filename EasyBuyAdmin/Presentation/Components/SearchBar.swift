//
//  SearchBar.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 16/06/2023.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .padding(8)
                .padding(.horizontal, 25)
                .background(Color(.white))
                .cornerRadius(8)
            Button(action: {
                self.text = ""
            }) {
                Image(systemName: "xmark.circle.fill")
                    .opacity(text == "" ? 0 : 1)
            }
        }
        .padding(.horizontal)
    }
}
