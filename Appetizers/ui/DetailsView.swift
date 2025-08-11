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

                Spacer()
            HStack(spacing: 40){
                    VStack{
                        Text("Calories")
                            .bold()
                            .font(.caption)
                            
                        Text("\(appetizer.calories, specifier: "%.2f")")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()

                    }
                    VStack{
                        Text("Carbs")
                            .bold()
                            .font(.caption)
                        Text("\(appetizer.carbs, specifier: "%.2f")")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    VStack{
                        Text("Protein")
                            .bold()
                            .font(.caption)
                        Text("\(appetizer.protein, specifier: "%.2f")")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                }
                
            
            Spacer()
            Button{
                print("Tap")
            }label: {
                Text("$\(appetizer.price, specifier: "%.2f") - Add to cart")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 60)
                    .foregroundStyle(.white)
                    .background(Color.brandPrimary)
                    .cornerRadius(10)
            }.padding(.bottom, 30)
           
        }.frame(width: 350, height: 560)
            .background(Color(.systemBackground))
            .cornerRadius(12)
            .shadow(radius: 40)
            .overlay(
                Button{
                    isShowingDetail = false
                }label: {
                    ZStack{
                        Circle()
                            .frame(width: 40,height: 40)
                            .foregroundColor(.white)
                            .opacity(0.8)
                        Image(systemName: "xmark")
                       
                            .frame(width: 44,height: 44)
                            .foregroundColor(.black)
                    }
                }, alignment: .topTrailing
            )
    }
}

#Preview {
    DetailsView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}

