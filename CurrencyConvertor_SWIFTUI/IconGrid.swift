//
//  IconGrid.swift
//  CurrencyConvertor_SWIFTUI
//
//  Created by Akshay  on 2025-01-27.
//

import SwiftUI

struct IconGrid: View {
    @State var currency: Currency
    
    var body: some View {
        
        VStack {
            // Currency Icons
            LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                ForEach( Currency.allCases ) { currency in
                    if currency == self.currency {
                        CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                            .shadow(color: .black, radius: 10)
                            .overlay {
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(lineWidth: 3)
                                    .opacity(0.5)
                            }
                    } else {
                        CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                            .onTapGesture {
                                self.currency = currency
                            }
                    }
                }
            }
        }
    }
}

#Preview {
    IconGrid(currency: .silverPiece)
}
