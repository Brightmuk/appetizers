//
//  AppetizerTile.swift
//  Appetizers
//
//  Created by Bright Mukonesi on 22/07/2025.
//

import SwiftUI

struct AppetizerTile: View {
    let appetizer: Appetizer
    var body: some View {
        HStack{
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                
                .aspectRatio(contentMode: .fit)
                .frame(width: 100,height: 100, alignment: .center)
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5){
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerTile(appetizer: MockData.sampleAppetizer1)
}
