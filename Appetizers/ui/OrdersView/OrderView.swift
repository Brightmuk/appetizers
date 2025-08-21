//
//  OrderView.swift
//  Appetizers
//
//  Created by Bright Mukonesi on 22/07/2025.
//

import SwiftUI

struct OrderView: View {
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(orderItems){
                        appetizer in
                        AppetizerTile(appetizer: appetizer)
                    }
                    .onDelete(perform: deleteItems)
                }.listStyle(PlainListStyle())
                Button{
                    print("Order")
                } label: {
                    APButton(title: "$99.9 - Place Order")
                }.padding(.bottom, 25)
            }.navigationTitle("👜 Orders")
            
        }
    }
    func deleteItems(at offsets: IndexSet){
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
