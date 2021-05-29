//
//  LandingPageView.swift
//  iBearDragon
//
//  Created by MacOS on 28/05/2021.
//

import SwiftUI

struct LandingPageView: View {
    
    var UserName: String
    
    var body: some View {
        VStack
        {
            
            Image("SampleProfile").resizable().scaledToFit().clipShape(Circle()).frame(width: 200, height: 200, alignment: .center)
            Text(UserName).baselineOffset(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/).bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            ButtonView(DisplayText: "Store")
            
            ButtonView(DisplayText: "Subscription")
            
            ButtonView(DisplayText: "Settings")
            
            ButtonView(DisplayText: "Logout")
            
        
        }
    }
}

struct LandingPageView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPageView(UserName: "Aemaeth")
            
    }
}
