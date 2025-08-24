//
//  EmptyStates.swift
//  Appetizers
//
//  Created by Bright Mukonesi on 24/08/2025.
//

import SwiftUI

struct EmptyStates: View {
    var message: String
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            VStack{
               Text(message)
            }.offset(y: -30)
        }
    }
}

#Preview {
    EmptyStates(message: "No data")
}
