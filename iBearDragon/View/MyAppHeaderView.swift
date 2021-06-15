//
//  MyAppHeaderView.swift
//  iBearDragon
//
//  Created by MacOS on 25/05/2021.
//

import SwiftUI

struct MyAppHeaderView: View {
    
    var MyApp : MyApp
    
    var body: some View {
        
        ZStack {
            Image(MyApp.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 15, x: 8, y: 8)
                .padding(.vertical, 20)
        }
        .frame(height: 440)
        .onAppear()
}

struct MyAppHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MyAppHeaderView(MyApp: AllAppsLoadedData.MyAppLoadedData[0]).previewLayout(.sizeThatFits)
    }
  }
}
