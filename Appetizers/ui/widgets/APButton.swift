//
//  APButton.swift
//  Appetizers
//
//  Created by Bright Mukonesi on 18/08/2025.
//

import SwiftUI

struct APButton: View {
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 60)
            .foregroundStyle(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "Test Button")
}
