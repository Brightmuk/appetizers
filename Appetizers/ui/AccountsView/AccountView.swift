//
//  AccountView.swift
//  Appetizers
//
//  Created by Bright Mukonesi on 22/07/2025.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountsViewModel()
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Personal Info")){
                    TextField("First name", text: $viewModel.firstName)
                    TextField("Last name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .autocorrectionDisabled(true)
                    DatePicker("Birthday", selection: $viewModel.dob, displayedComponents: .date)
                    Button{
                        viewModel.saveChanges()
                    }label: {
                        Text("Save Changes")
                    }
                    
                    
                }
                Section(header: Text("Requests")){
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                        
                    Toggle("Frequent Refills", isOn: $viewModel.frequentRefills)
                }.toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
                .navigationTitle("😎 Account")
        }.alert(item: $viewModel.alertItem){
            alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
