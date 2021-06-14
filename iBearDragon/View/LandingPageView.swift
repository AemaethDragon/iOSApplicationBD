//
//  LandingPageView.swift
//  iBearDragon
//
//  Created by MacOS on 28/05/2021.
//

import SwiftUI

struct LandingPageView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var UserName: String = ""
    
    var body: some View {
        VStack(spacing: 20)
        {
            VStack{
                Image("SampleProfile").resizable().scaledToFit().clipShape(Circle()).frame(width: 200, height: 200, alignment: .center)
                Text(UserName).baselineOffset(10.0).bold().foregroundColor(.black).font(.system(size: 30))
            }
            .background(MakeContentArea(_width: 270, _height: 270))
            
            NavigationLink(destination: AppsPageView()){
                HStack(alignment: .center, spacing: nil){
                    Text("Store")
                    Spacer()
                    Image(systemName: "arrow.right.circle")
                    
                }
                .GlassmorphismBtn()
            }
            .padding()
            
            NavigationLink(destination: SubscriptionPageView()){
                HStack(alignment: .center, spacing: nil){
                    Text("Subscription")
                    Spacer()
                    Image(systemName: "arrow.right.circle")
                    
                }
                .GlassmorphismBtn()
            }
            .padding()
            
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }){
                HStack(alignment: .center, spacing: nil){
                Text("Logout")
                Spacer()
                Image(systemName: "arrow.left.circle")
                
            }
            .GlassmorphismBtn()}
            
            
        }
        .frame(height: 1000)
        .background(MakeBackground())
        .navigationBarHidden(true)
    }
}

struct LandingPageView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPageView(UserName: "Aemaeth")
        
    }
}
