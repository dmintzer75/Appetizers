//
//  HomeView.swift
//  Appetizers
//
//  Created by WKS-MAC01 on 11/10/2023.
//

import SwiftUI

struct ListView: View {
    @StateObject var viewModel = AppetizerListViewModel()

    var body: some View {
        ZStack {
            NavigationStack {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListTile(appetizer: appetizer)
                }
                .scrollIndicators(.hidden)
                .navigationTitle("🌱 Plant Based Meals")
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            if viewModel.isLoading {
                ProgressView()
                    .frame(width: .infinity, height: .infinity)
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    ListView()
}

struct AppetizerListTile: View {
    let appetizer: Appetizer
    var body: some View {
        HStack {
            Image(appetizer.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 10))

            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)

                Text("$\(appetizer.price, specifier: "%.2f")")
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}
