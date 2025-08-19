//
//  DetailsView.swift
//  Appetizers
//
//  Created by Bright Mukonesi on 12/08/2025.
//

import SwiftUI

struct DetailsView: View {
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack{
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                
                .aspectRatio(contentMode: .fill)
                .frame(width: 350,height: 350, alignment: .center)
                .cornerRadius(8)
            Spacer()
            Text(appetizer.name)
                .font(.title2)
                .fontWeight(.medium)
            Spacer()
            Text(appetizer.description)
                .multilineTextAlignment(.center)
                .font(.body)
                .padding()

                Spacer()
            HStack(spacing: 40){
                   
                InfoView(title: "Calories", value: appetizer.calories)
                InfoView(title: "Carbs", value: appetizer.carbs)
                InfoView(title: "Protein", value: appetizer.protein)
                }
                
            
            Spacer()
            Button{
                print("Tap")
            }label: {
                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to cart")
            }.padding(.bottom, 30)
           
        }.frame(width: 350, height: 560)
            .background(Color(.systemBackground))
            .cornerRadius(12)
            .shadow(radius: 40)
            .overlay(
                Button{
                    isShowingDetail = false
                }label: {
                    XDismissButton()
                }, alignment: .topTrailing
            )
    }
}

#Preview {
    DetailsView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}

struct InfoView: View{
    var title: String
    var value: Int
    var body: some View{
        VStack{
            Text(title)
                .bold()
                .font(.caption)
            Text("\(value, specifier: "%.2f")")
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
