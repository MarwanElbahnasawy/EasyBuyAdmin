//
//  TextFieldWithPlusAndMinusButtons.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 16/06/2023.
//

import SwiftUI

struct TextFieldWithPlusAndMinusButtons: View {
    let index: Int
    @Binding var textFieldText: String
    let addTextField: () -> Void
    let removeTextField: () -> Void
    let isLastTextField: Bool
    
    var body: some View {
        HStack {
            TextField("Product Image URL(jpg / jpeg / png) \(index + 1)*", text: $textFieldText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            if index < 3 && isLastTextField {
                Button(action: addTextField) {
                    Image(systemName: "plus")
                        .frame(width: 44, height: 44)
                        .foregroundColor(Color(.label))
                }
            }
            if index > 0 {
                Button(action: removeTextField) {
                    Image(systemName: "minus")
                        .frame(width: 44, height: 44)
                        .foregroundColor(Color(.label))
                }
            }
        }
    }
}
