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
    let appetizers: Array<Appetizer>
    
}

struct MockData {
   static let sampleAppetizer1 = Appetizer(
        id: "01",
        name: "Test Appetizer",
        description: "Sample Appetizer description that wraps from a single line",
        price: 9.99,
        imageURL: "https://i.ibb.co/zHVxCNjk/4.png",
        protein: 99,
        carbs: 99,
        calories: 99
        
    )
    static let sampleAppetizer2 = Appetizer(
         id: "02",
         name: "Test Appetizer",
         description: "Sample Appetizer description that wraps from a single line",
         price: 9.99,
         imageURL: "https://i.ibb.co/zHVxCNjk/4.png",
         protein: 99,
         carbs: 99,
         calories: 99
         
     )
    static let sampleAppetizer3 = Appetizer(
         id: "03",
         name: "Test Appetizer",
         description: "Sample Appetizer description that wraps from a single line",
         price: 9.99,
         imageURL: "https://i.ibb.co/zHVxCNjk/4.png",
         protein: 99,
         carbs: 99,
         calories: 99
         
     )
    static let appetizers = [sampleAppetizer1, sampleAppetizer2, sampleAppetizer3];
    static let orderItems = [sampleAppetizer3, sampleAppetizer1, sampleAppetizer2];
}
