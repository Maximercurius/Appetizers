//
//  Appetizer.swift
//  Appetizers
//
//  Created by Makarov_Maxim on 02.06.2024.
//

import Foundation

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

struct MockData{
    static let sampleAppetizer = Appetizer(id: 0001, name: "Teast Appetizer", description: "Descriptoion", price: 7.77, imageURL: "", calories: 777, protein: 77, carbs: 77)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 0001, name: "Teast Appetizer One", description: "Descriptoion", price: 7.77, imageURL: "", calories: 777, protein: 77, carbs: 77)
    
    static let orderItemTwo = Appetizer(id: 0002, name: "Teast Appetizer Two", description: "Descriptoion", price: 7.77, imageURL: "", calories: 777, protein: 77, carbs: 77)
    
    static let orderItemThree = Appetizer(id: 0003, name: "Teast Appetizer Three", description: "Descriptoion", price: 7.77, imageURL: "", calories: 777, protein: 77, carbs: 77)
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
    
}
