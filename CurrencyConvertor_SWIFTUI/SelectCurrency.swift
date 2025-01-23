//
//  SelectCurrency.swift
//  CurrencyConvertor_SWIFTUI
//
//  Created by Akshay  on 2025-01-20.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // Background parchment Image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // Text
                Text("Selct the currency you are starting with:")
                    .fontWeight(.bold)
                // Currency Icons
                
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
                // Done Button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency()
}
