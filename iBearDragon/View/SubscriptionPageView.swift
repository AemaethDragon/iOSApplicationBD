//
//  SubscriptionPageView.swift
//  iBearDragon
//
//  Created by MacOS on 28/05/2021.
//

import SwiftUI

struct SubscriptionPageView: View {
    var body: some View {
      
        VStack(spacing: 60){
        
            Text("Select Payment Method").bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).font(.largeTitle).scaledToFit()
            
            HStack(spacing: 0){
            
            PaymentButtonView(PaymentMethodImage: "HaloCE")
            
            PaymentButtonView(PaymentMethodImage: "AC2")
            
            PaymentButtonView(PaymentMethodImage: "Linux")
       
            }.scaledToFit()
            
            ButtonView(DisplayText: "Return")
        }.scaledToFit()
    }
}

struct SubscriptionPageView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionPageView()
    }
}
