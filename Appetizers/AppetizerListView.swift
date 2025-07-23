//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Bright Mukonesi on 22/07/2025.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationView{
            List(viewModel.appetizers, id: \.id){
                appetizer in
                AppetizerTile(appetizer: appetizer)
            }.navigationTitle("🍔 Appetizers")
        }.onAppear(){
            viewModel.getAppetizers()
        }
        .alert(item: $viewModel.alertItem){
            alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButton)
        }
    }

}

#Preview {
    AppetizerListView()
}

