//
//  CheckmarkView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 16/06/2023.
//

import SwiftUI

struct CheckmarkView: View {
    let label: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        HStack {
            Image(systemName: isSelected ? "checkmark.square" : "square")
                .onTapGesture(perform: action)
            Text(label)
                .font(.body)
            Spacer()
        }
    }
}
