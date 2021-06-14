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
                VStack(spacing: 20) {
                    // HEADER
                    ZStack{
                        MyAppHeaderView(MyApp: MyApp)
                            .frame(width: 360, height: 360)
                            .background(MakeContentArea(_width: 370, _height: 380))
                            .padding(50)
                        
                        if !MyApp.favorite {
                            Button(action: {
                                MyApp.SetFavorite(boolean: true)
                                print(MyApp.favorite)
                                
                            }) {
                                Image(systemName: "heart")
                                    .imageScale(.large)
                                    .frame(width: 350, height: 350, alignment: .topTrailing)
                                    .foregroundColor(Color(#colorLiteral(red: 0.8585796553, green: 0.3243520481, blue: 0.4353699356, alpha: 1)))
                            }
                        }
                       else {
                           Button(action: {
                                MyApp.SetFavorite(boolean: false)
                                print(MyApp.favorite)
                           }) {
                               Image(systemName: "heart.fill")
                                   .imageScale(.large)
                                   .frame(width: 350, height: 350, alignment: .topTrailing)
                                   .foregroundColor(Color(#colorLiteral(red: 0.8585796553, green: 0.3243520481, blue: 0.4353699356, alpha: 1)))
                           }
                       }
                        
                    }
                    VStack(spacing: 20) {
                        // TITLE
                        Text(MyApp.name)
                            .font(.title)
                            .fontWeight(.heavy)
                            .frame(width: 350, alignment: .leading)
                        
                        
                        // HEADLINE
                        Text(MyApp.description)
                            .font(.headline)
                            .frame(width: 350, alignment: .leading)
                        
                        // NUTRIENTS
                        
                        // SUBHEADLINE
                        Text("Learn more about \(MyApp.name)".uppercased())
                            .fontWeight(.heavy)
                            .frame(width: 350, alignment: .leading)
                        
                        // DESCRIPTION
                        Text(MyApp.description)
                            .frame(width: 350, alignment: .leading)
                        
                        // LINK
                    }
                    .frame(width: 350)
                    .background(MakeContentArea(_width: 370, _height: 200))
                }
                .navigationBarTitle(MyApp.name, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .background(MakeBackground())
            .edgesIgnoringSafeArea(.all)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}


struct MyAppDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MyAppDetailView(MyApp: MyAppData[1])
    }
}
