//
//  AccountsViewModel.swift
//  Appetizers
//
//  Created by Bright Mukonesi on 20/08/2025.
//

import Foundation
import SwiftUI
final class AccountsViewModel: ObservableObject{
    
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var dob = Date()
    @Published var extraNapkins = false
    @Published var frequentRefills = false
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool{
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        guard  email.isValidEmail else{
            alertItem = AlertContext.invalidEmail
            return false
        }
        return true
    }
    func saveChanges(){
        guard isValidForm else {return }
        print("Changes saved!")
    }
}
