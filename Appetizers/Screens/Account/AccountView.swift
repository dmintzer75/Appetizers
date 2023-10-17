//
//  AccountView.swift
//  Appetizers
//
//  Created by WKS-MAC01 on 11/10/2023.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    var body: some View {
        NavigationStack {
            Form {
                Section("Personal Information") {
                    TextField("First Name", text: $viewModel.user.firstName)

                    TextField("Last Name", text: $viewModel.user.lastName)

                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()

                    DatePicker("Birthday", selection: $viewModel.user.birthdate, displayedComponents: .date)

                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }

                Section("Requests") {
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                        .tint(.brandPrimary)
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                        .tint(.brandPrimary)
                }
            }
            .navigationTitle("👨🏼‍💼 Account ")
        }
        .onAppear {
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
