//
//  LoginPageView.swift
//  iBearDragon
//
//  Created by MacOS on 28/05/2021.
//

import SwiftUI

struct LoginPageView: View {
    
   @State var InsertedUser = ""
    @State var InsertedPassword = ""
    
    var body: some View {
        
        VStack{
            
            Image("SampleProfile").resizable().scaledToFit().clipShape(Circle()).frame(width: 200, height: 200, alignment: .center);
            TextField("USERNAME", text: $InsertedUser).frame(width: 250, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            TextField("PASSWORD", text: $InsertedPassword).frame(width: 250, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            ButtonView(DisplayText: "Login")
        
        }
    }
}

struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
    }
}
