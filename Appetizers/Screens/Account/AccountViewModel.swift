//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by WKS-MAC01 on 16/10/2023.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    @AppStorage("user") private var userData: Data?
    @Published var user = User()
    @Published var alertItem: AlertItem?

    func saveChanges() {
        guard isValidForm else { return }

        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSavedSuccess
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }

    func retrieveUser() {
        guard let userData = userData else { return }

        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }

    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            /// alert
            alertItem = AlertContext.invalidForm
            return false
        }

        guard user.email.isValidEmail else {
            // alert
            alertItem = AlertContext.invalidEmail
            return false
        }

        return true
    }
}
