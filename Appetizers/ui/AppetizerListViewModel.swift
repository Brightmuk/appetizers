//
//  AppetizersViewModel.swift
//  Appetizers
//
//  Created by Bright Mukonesi on 23/07/2025.
//

import Foundation
import SwiftUI

final class AppetizerListViewModel: ObservableObject{
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    
    func getAppetizers(){
        isLoading = true;
        NetworkManager.shared.getAppetizers{[self] result in
            DispatchQueue.main.sync {
                isLoading = false
                switch result{
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    print(error.localizedDescription)
                    switch error{
                    case .invalidResponse:
                        alertItem = AlertContext.inavlidResponse
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableComplete
                    }
                }
            }
           
        }
    }
}
