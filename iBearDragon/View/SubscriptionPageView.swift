//
//  SubscriptionPageView.swift
//  iBearDragon
//
//  Created by MacOS on 28/05/2021.
//

import SwiftUI

struct SubscriptionPageView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        Group{
            VStack(spacing: 60){
                
                Text("Select Payment Method").bold().font(.largeTitle)
                
                HStack(spacing: 70){
                    
                    PaymentButtonView(PaymentMethodImage: "Paypal").background(MakeContentArea(_width: 120, _height: 120, _cornerRadius: 60))
                    
                    PaymentButtonView(PaymentMethodImage: "Google").background(MakeContentArea(_width: 120, _height: 120, _cornerRadius: 60))
                    
                    PaymentButtonView(PaymentMethodImage: "Revolut").background(MakeContentArea(_width: 120, _height: 120, _cornerRadius: 60))
                    
                }
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }){
                    HStack(alignment: .center, spacing: nil){
                    Text("Return")
                    Spacer()
                    Image(systemName: "arrow.left.circle")
                    
                }
                .GlassmorphismBtn()}
                
            }
            .frame(height: 1000)
            .background(MakeContentArea(_width: 386, _height: 400))
        }
        .background(MakeBackground())
        .navigationBarHidden(true)
    }
}

struct SubscriptionPageView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionPageView()
    }
}
