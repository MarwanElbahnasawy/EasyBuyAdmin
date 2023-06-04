//
//  InventoryView.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 04/06/2023.
//

import SwiftUI

struct InventoryView: View {
    
    @ObservedObject private var inventoryViewModel = InventoryViewModel()

    var body: some View {
        VStack {
            Text("Inventory View")
        }
        .onAppear {
            
        }
    }
}

struct InventoryView_Previews: PreviewProvider {
    static var previews: some View {
        InventoryView()
    }
}
