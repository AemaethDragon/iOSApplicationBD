//
//  AppsPageView.swift
//  iBearDragon
//
//  Created by MacOS on 25/05/2021.
//


import SwiftUI

struct AppsPageView: View {
    
    var MyApp : [MyApp] = MyAppData
    
    var body: some View {
        HStack{
            List {
                ForEach(MyApp.shuffled()) { item in
                    NavigationLink(
                        destination: MyAppDetailView(MyApp: item))
                    {
                        ContentDisplayView(MyApp: item)
                    }
                }
                .background(MakeContentArea(_width: 370, _height: 80))
            }
            .frame(height: 800)
            
        }
        .frame(height: 850, alignment: .bottom)
        .background(MakeBackground())
    }
}
struct AppsPageView_Previews: PreviewProvider {
    static var previews: some View {
        AppsPageView()
    }
}

