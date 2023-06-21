//
//  AppViewModel.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 21/06/2023.
//

import Foundation

class AppViewModel: ObservableObject {
    @Published var isAuthenticated: Bool = false

    func signIn() {
        isAuthenticated = true
    }
}
