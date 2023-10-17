//
//  Alert.swift
//  Appetizers
//
//  Created by WKS-MAC01 on 13/10/2023.
//

import SwiftUI
struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

enum AlertContext {
    // MARK: - Network Alerts

    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received was invalid. Please contact support."),
                                       dismissButton: .default(Text("OK")))
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid response from the server."),
                                           dismissButton: .default(Text("OK")))
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                      message: Text("The data received was invalid. Please contact support."),
                                      dismissButton: .default(Text("OK")))
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("The data received was invalid. Please contact support."),
                                            dismissButton: .default(Text("OK")))

    // MARK: - Account alerts

    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                       message: Text("Please make sure that all fields in the form have been filled out."),
                                       dismissButton: .default(Text("OK")))

    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                        message: Text("Please ensure your email is correct."),
                                        dismissButton: .default(Text("OK")))

    static let userSavedSuccess = AlertItem(title: Text("Profile Saved"),
                                            message: Text("Your profile info was succesfully saved."),
                                            dismissButton: .default(Text("OK")))

    static let invalidUserData = AlertItem(title: Text("Profile error"),
                                           message: Text("There was an error saving or retrieving your profile."),
                                           dismissButton: .default(Text("OK")))
}
