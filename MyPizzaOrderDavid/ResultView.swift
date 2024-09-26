//
//  ResultView.swift
//  Mobile_Assignment1
//
//  Created by David C on 2024-09-26.
//

import SwiftUI

struct ResultView: View {
    @Binding var pizza : Pizza
    @Binding var listPizza : [Pizza]
    
    var body: some View {
        
        List{
            ForEach($listPizza, id: \.self) { $singlePizza in
                LazyVStack{
                    //Text(pizza.crust.wrappedValue.rawValue)
                    VStack{
                        Text("Amount: \(Int(singlePizza.amount))").padding()
                        Text("Pizza Size: \(singlePizza.pizzaSize.rawValue)").padding()
                        Text("Amount: \(singlePizza.pizzaTopping.rawValue)").padding()
                        Text("Crust: \(singlePizza.crust.rawValue)").padding()
                    }
                }
            }
            
        }
    }
}

