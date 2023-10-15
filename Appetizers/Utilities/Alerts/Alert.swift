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
}
