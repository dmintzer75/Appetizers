//
//  APButton.swift
//  Appetizers
//
//  Created by WKS-MAC01 on 14/10/2023.
//

import SwiftUI
struct APButton: View {
    let title: LocalizedStringKey

    var body: some View {
        Text(title)
            .font(.title3)
            .bold()
            .padding()
            .frame(width: 250, height: 50)
            .background(.brandPrimary)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    APButton(title: "as")
}
