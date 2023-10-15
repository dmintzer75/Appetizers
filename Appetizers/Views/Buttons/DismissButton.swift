//
//  DismissButton.swift
//  Appetizers
//
//  Created by WKS-MAC01 on 14/10/2023.
//

import SwiftUI

struct DismissButton: View {
    var body: some View {
        Image(systemName: "xmark")
            .imageScale(.medium)
            .foregroundStyle(.black)
            .fontWeight(.semibold)
            .frame(width: 35, height: 35)
            .background(.white)
            .opacity(0.7)
            .clipShape(Circle())
            .shadow(radius: 10)
    }
}

#Preview {
    DismissButton()
}
