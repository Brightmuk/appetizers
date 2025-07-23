//
//  Appetizer.swift
//  Appetizers
//
//  Created by Bright Mukonesi on 22/07/2025.
//

import Foundation

struct Appetizer: Decodable, Identifiable{
    let id: String
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let protein: Int
    let carbs: Int
    let calories: Int
}
struct AppetizerResponse: Decodable{
    let request: Array<Appetizer>
    
}

struct MockData {
   static let sampleAppetizer = Appetizer(
        id: "0001",
        name: "Test Appetizer",
        description: "Sample Appetizer",
        price: 9.99,
        imageURL: "",
        protein: 99,
        carbs: 99,
        calories: 99
        
    )
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer];
}
