//
//  Order.swift
//  Appetizers
//
//  Created by Bright Mukonesi on 24/08/2025.
//

import SwiftUI

final class Order: ObservableObject{
    @Published var appetizers: [Appetizer] = []
    
    var totalPrice: Double{
        appetizers.reduce(0, {$0 + $1.price})
    }
    
    func add(_ appetizer: Appetizer){
        appetizers.append(appetizer)
    }
    func deleteItems(at offsets: IndexSet){
        appetizers.remove(atOffsets: offsets)
    }
}

