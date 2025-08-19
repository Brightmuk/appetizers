//
//  XDismissButton.swift
//  Appetizers
//
//  Created by Bright Mukonesi on 18/08/2025.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 40,height: 40)
                .foregroundColor(.white)
                .opacity(0.8)
            Image(systemName: "xmark")
           
                .frame(width: 44,height: 44)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    XDismissButton()
}
