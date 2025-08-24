//
//  OrderView.swift
//  Appetizers
//
//  Created by Bright Mukonesi on 22/07/2025.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List{
                        ForEach(order.appetizers){
                            appetizer in
                            AppetizerTile(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }.listStyle(PlainListStyle())
                    Button{
                        print("Order")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }.padding(.bottom, 25)
                }
                if(order.appetizers.isEmpty){
                    EmptyStates(message: "No orders")
                }
            }.navigationTitle("👜 Orders")
            
            
        }
    }
    
}

#Preview {
    OrderView()
}
