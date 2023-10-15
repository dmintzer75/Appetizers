//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by WKS-MAC01 on 14/10/2023.
//

import SwiftUI

struct AppetizerDetailView: View {
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)

            VStack(spacing: 10) {
                Text(appetizer.name)
                    .font(.title)
                    .bold()
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()

                HStack(spacing: 50) {
                    NutrientsInfo(title: "Calories", amount: appetizer.calories)
                    NutrientsInfo(title: "Carbs", amount: appetizer.carbs)
                    NutrientsInfo(title: "Protein", amount: appetizer.protein)
                }
                Spacer()
                Button {
                    print("Tapped")
                } label: {
                    APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
                }
                .padding(.bottom, 20)
            }
        }
        .frame(width: 320, height: 530)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .overlay(alignment: .topTrailing) {
            Button {
                isShowingDetail = false
            }
            label: {
                DismissButton()
            }
            .padding(10)
        }
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.appetizers[0], isShowingDetail: .constant(true))
}

struct NutrientsInfo: View {
    let title: String
    let amount: Int
    var body: some View {
        VStack(spacing: 8) {
            Text(title)
                .bold()
                .font(.caption)
            Text("\(amount)")
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
