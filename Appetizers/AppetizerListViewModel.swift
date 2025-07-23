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
    
    func getAppetizers(){
        NetworkManager.shared.getAppetizers{result in
            DispatchQueue.main.sync {
                switch result{
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
           
        }
    }
}
