//
//  LoginViewModel.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 21/06/2023.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var isAlertVisible: Bool = false

    private let appViewModel: AppViewModel

    init(appViewModel: AppViewModel) {
        self.appViewModel = appViewModel
    }

    func isValidInput() -> Bool {
        return email == "admin@gmail.com" && password == "PleaseDontDeleteOrModifyOldProductsOrCollectionsOrDiscounts:)"
    }

    func signIn() {
        if isValidInput() {
            appViewModel.signIn()
            isAlertVisible = false
        } else {
            isAlertVisible = true
        }
    }
}
