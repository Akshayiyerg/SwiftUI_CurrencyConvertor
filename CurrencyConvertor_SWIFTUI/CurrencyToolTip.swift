//
//  CurrencyToolTip.swift
//  CurrencyConvertor_SWIFTUI
//
//  Created by Akshay  on 2025-01-28.
//

import TipKit

struct CurrencyToolTip: Tip {
    var title = Text("Change Currency")
    
    var message: Text? = Text("You can tap the left or right currency to bring up the Select Currency screen.")
    
    var image: Image? = Image(systemName: "hand.tap.fill")
}
