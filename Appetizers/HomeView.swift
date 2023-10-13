//
//  AppetizersTabView.swift
//  Appetizers
//
//  Created by WKS-MAC01 on 11/10/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            ListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .tint(Color("brandPrimary"))
    }
}

#Preview {
    HomeView()
}
