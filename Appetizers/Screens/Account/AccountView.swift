//
//  AccountView.swift
//  Appetizers
//
//  Created by WKS-MAC01 on 11/10/2023.
//

import SwiftUI

struct AccountView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthdate = Date()
    @State private var napkins = ""
    @State private var extraNapkins = false
    @State private var frequentRefills = false
    var body: some View {
        NavigationStack {
            Form {
                Section("Personal Information") {
                    TextField("First Name", text: $firstName)

                    TextField("Last Name", text: $lastName)

                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()

                    DatePicker("Birthday", selection: $birthdate, displayedComponents: .date)

                    Button {
                        print("Save")
                    } label: {
                        Text("Save Changes")
                    }
                }

                Section("Requests") {
                    Toggle("Extra Napkins", isOn: $extraNapkins)
                        .tint(.brandPrimary)
                    Toggle("Frequent Refills", isOn: $frequentRefills)
                        .tint(.brandPrimary)
                }
            }
            .navigationTitle("👨🏼‍💼 Account ")
        }
    }
}

#Preview {
    AccountView()
}
