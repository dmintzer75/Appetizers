//
//  Appetizer.swift
//  Appetizers
//
//  Created by WKS-MAC01 on 12/10/2023.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let appetizer = try? JSONDecoder().decode(Appetizer.self, from: jsonData)

import Foundation

// MARK: - Appetizer

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

// MARK: - Mock Data

enum MockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "This is the description for my appetizer. It's yummy.",
                                           price: 9.99,
                                           imageURL: "asian-flank-steak",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)

    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]

    static let orderItemOne = Appetizer(id: 0001,
                                        name: "Test Appetizer One",
                                        description: "This is the description for my appetizer. It's yummy.",
                                        price: 9.99,
                                        imageURL: "asian-flank-steak",
                                        calories: 99,
                                        protein: 99,
                                        carbs: 99)

    static let orderItemTwo = Appetizer(id: 0002,
                                        name: "Test Appetizer Two",
                                        description: "This is the description for my appetizer. It's yummy.",
                                        price: 9.99,
                                        imageURL: "asian-flank-steak",
                                        calories: 99,
                                        protein: 99,
                                        carbs: 99)

    static let orderItemThree = Appetizer(id: 0003,
                                          name: "Test Appetizer Three",
                                          description: "This is the description for my appetizer. It's yummy.",
                                          price: 9.99,
                                          imageURL: "asian-flank-steak",
                                          calories: 99,
                                          protein: 99,
                                          carbs: 99)

    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
