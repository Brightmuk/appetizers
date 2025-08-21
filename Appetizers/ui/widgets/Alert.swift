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
    
    //MARK: - Network Alerts
    
    static let invalidData = AlertItem(title: Text("Server Error"), message: Text("Its not you, its us"),  dismissButton: .default(Text("Ok")))
    
    static let inavlidResponse = AlertItem(title: Text("Server Error"), message: Text("There was a problem connecting to the server"), dismissButton: .default(Text("Ok")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"), message: Text("A connection to the server could not be established"), dismissButton: .default(Text("Ok")))

    static let unableComplete = AlertItem(title: Text("Server Error"),  message: Text("Please check your internet connection"), dismissButton: .default(Text("Ok")))
    

    
    //Mark: - Account alerts
    static let invalidForm = AlertItem(title: Text("Fill all fields"), message: Text("Some fields were empty"),  dismissButton: .default(Text("Ok")))
    static let invalidEmail = AlertItem(title: Text("Invalid email"), message: Text("Use a valid email"),  dismissButton: .default(Text("Ok")))
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"), message: Text("Profile data saved"),  dismissButton: .default(Text("Ok")))
    static let userSaveError = AlertItem(title: Text("Profile saving failure"), message: Text("Unable to save user profile!"),  dismissButton: .default(Text("Ok")))
}
