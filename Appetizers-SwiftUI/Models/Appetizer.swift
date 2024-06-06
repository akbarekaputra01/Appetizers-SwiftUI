//
//  Appetizer.swift
//  Appetizers-SwiftUI
//
//  Created by Akbar Eka Putra on 29/05/24.
//

import Foundation

struct Appetizer: Codable, Identifiable {
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

struct MockData {
  static let sampleAppetizer = Appetizer(
    id: 1,
    name: "Name of appetizer",
    description: "This is description of appetizer. yummy!",
    price: 99.9,
    imageURL: "",
    calories: 87,
    protein: 90,
    carbs: 57
  )

  static let appetizers = [
    sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer,
  ]
}
