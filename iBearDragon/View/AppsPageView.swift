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
        NavigationView
        {
            List {
                ForEach(MyApp.shuffled()) { item in
                    NavigationLink(
                        destination: MyAppDetailView(MyApp: item))
                    {
                        ContentDisplayView(MyApp: item)
                            .padding(.vertical, 4)
                    }
                }
            }.navigationTitle("Store")
        }
    }
}
        
struct AppsPageView_Previews: PreviewProvider {
    static var previews: some View {
        AppsPageView()
    }
}
