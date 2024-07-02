//
//  Alert.swift
//  Appetizers
//
//  Created by Makarov_Maxim on 06.06.2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData = AlertItem(title: Text("Server Error"),
                                              message: Text("Data from server was invalid. Please contact support"),
                                              dismissButton: .default(Text ("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                              message: Text("Invalid response from the server. Please try again later."),
                                              dismissButton: .default(Text ("OK")))
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                              message: Text("This was an issue connecting to the server."),
                                              dismissButton: .default(Text ("OK")))
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                              message: Text("Unable to complete your request."),
                                              dismissButton: .default(Text ("OK")))
    
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                              message: Text("Please fill all the forms"),
                                              dismissButton: .default(Text ("OK")))
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                              message: Text("Please email correctly"),
                                              dismissButton: .default(Text ("OK")))
}
