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
        ZStack{
            NavigationView{
                List(viewModel.appetizers, id: \.id){
                    appetizer in
                    AppetizerTile(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.isShowingDetail = true
                            viewModel.selectedAppetizer = appetizer
                        }
                }.navigationTitle("🍔 Appetizers")
                    .disabled(viewModel.isShowingDetail)
            }.onAppear(){
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if viewModel.isShowingDetail{
                DetailsView(appetizer: viewModel.selectedAppetizer!, isShowingDetail: $viewModel.isShowingDetail)
            }
            
            if viewModel.isLoading{
                LoadingView()
            }
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

