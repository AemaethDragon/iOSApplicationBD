//
//  PaymentButtonView.swift
//  iBearDragon
//
//  Created by MacOS on 28/05/2021.
//

import SwiftUI

struct PaymentButtonView: View {
    @Environment(\.openURL) var openURL
    var PaymentMethodImage : String
    
    var body: some View {
        
        Button(action: {
            
            if(PaymentMethodImage == "Paypal")
            {
                openURL(URL(string: "https://www.paypal.com")!)
            }
            else if (PaymentMethodImage == "Google")
            {
                openURL(URL(string: "https://play.google.com/store")!)
            }
            else if(PaymentMethodImage == "Revolut")
            {
                openURL(URL(string: "https://www.revolut.com/pt-PT")!)
            }
            
        }){
        
        HStack(spacing: 8) {
            Image(PaymentMethodImage).resizable().scaledToFit().padding(0).frame(width: 60, height: 60, alignment: .center)
            }
        }
    }
}


struct PaymentButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentButtonView(PaymentMethodImage: "HaloCE").preferredColorScheme(.dark)
              }
}
