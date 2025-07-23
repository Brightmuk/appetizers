//
//  Alert.swift
//  Appetizers
//
//  Created by Bright Mukonesi on 23/07/2025.
//

import SwiftUI
struct AlertItem: Identifiable{
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext{
    static let invalidData = AlertItem(title: Text("Server Error"), message: Text("Its not you, its us"),  dismissButton: .default(Text("Ok")))
    
    static let inavlidResponse = AlertItem(title: Text("Server Error"), message: Text("There was a problem connecting to the server"), dismissButton: .default(Text("Ok")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"), message: Text("A connection to the server could not be established"), dismissButton: .default(Text("Ok")))

    static let unableComplete = AlertItem(title: Text("Server Error"),  message: Text("Please check your internet connection"), dismissButton: .default(Text("Ok")))
}
