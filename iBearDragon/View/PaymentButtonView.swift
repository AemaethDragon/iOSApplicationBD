//
//  PaymentButtonView.swift
//  iBearDragon
//
//  Created by MacOS on 28/05/2021.
//

import SwiftUI

struct PaymentButtonView: View {
    
    var PaymentMethodImage : String
    
    var body: some View {
        
        Button(action: {
            
            if(PaymentMethodImage == "HaloCE")
            {
                print("I SAID HALO")
            }
            else if (PaymentMethodImage == "AC2")
            {
                print("ASS in CREED")
            }
            else if(PaymentMethodImage == "Linux")
            {
                print("fuck MacOS")
            }
            
        }){
        
        HStack(spacing: 8) {
            Image(PaymentMethodImage).resizable().scaledToFit().padding(0).frame(width: 100, height: 100, alignment: .center)
                .overlay(RoundedRectangle(cornerRadius: 50)
                .stroke(Color.blue, lineWidth: 6))
            
            }
        }
    }
}


struct PaymentButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentButtonView(PaymentMethodImage: "HaloCE").preferredColorScheme(.dark)
              }
}
