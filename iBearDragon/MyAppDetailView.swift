//
//  MyAppDetailView.swift
//  iBearDragon
//
//  Created by MacOS on 25/05/2021.
//

import SwiftUI

struct MyAppDetailView: View {
    
    
    var MyApp : MyApp
    
    var body: some View {
       
        NavigationView {
            ScrollView(.vertical, showsIndicators: false)
                {
                    VStack(alignment: .center, spacing: 20) {
                        // HEADER
                        MyAppHeaderView(MyApp: MyApp)
                        
                        VStack(alignment: .leading, spacing: 20) {
                            // TITLE
                            Text(MyApp.name)
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                
                            
                            // HEADLINE
                            Text(MyApp.description)
                                .font(.headline)
                                .multilineTextAlignment(.leading)
                            
                            // NUTRIENTS
                            
                            // SUBHEADLINE
                            Text("Learn more about \(MyApp.name)".uppercased())
                                .fontWeight(.bold)
                            
                            // DESCRIPTION
                            Text(MyApp.description)
                                .multilineTextAlignment(.leading)
                            
                            // LINK
                        }
                        .padding(.horizontal, 20)
                        .frame(maxWidth: 640, alignment: .center)
                    }
                    .navigationBarTitle(MyApp.name, displayMode: .inline)
                    .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        //
    }
}


struct MyAppDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MyAppDetailView(MyApp: MyAppData[1])
    }
}
