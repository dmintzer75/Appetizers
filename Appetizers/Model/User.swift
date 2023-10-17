//
//  User.swift
//  Appetizers
//
//  Created by WKS-MAC01 on 16/10/2023.
//

import SwiftUI

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var napkins = ""
    var extraNapkins = false
    var frequentRefills = false
}
