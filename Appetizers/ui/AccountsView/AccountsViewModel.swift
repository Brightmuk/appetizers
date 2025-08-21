//
//  AccountsViewModel.swift
//  Appetizers
//
//  Created by Bright Mukonesi on 20/08/2025.
//

import Foundation
import SwiftUI
final class AccountsViewModel: ObservableObject{
    
    @AppStorage("user") private var userData: Data?
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    func saveChanges(){
        guard isValidForm else {return }
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        }catch{
            alertItem = AlertContext.userSaveError
        }
    }
    func retrieveUser(){
        guard let userData = userData else{return}
        do{
            user = try JSONDecoder().decode(User.self, from: userData)
            
        }catch{
            alertItem = AlertContext.invalidData
        }
    }
    
    var isValidForm: Bool{
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        guard  user.email.isValidEmail else{
            alertItem = AlertContext.invalidEmail
            return false
        }
        return true
    }

}
