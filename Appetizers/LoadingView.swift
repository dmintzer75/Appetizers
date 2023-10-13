//
//  LoadingView.swift
//  Appetizers
//
//  Created by WKS-MAC01 on 13/10/2023.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .scaleEffect(2)
            .tint(Color("brandPrimary"))
            .frame(width: .infinity, height: .infinity)
    }
}

#Preview {
    LoadingView()
}
