//
//  ContentDisplayView.swift
//  iBearDragon
//
//  Created by MacOS on 25/05/2021.
//
import SwiftUI

struct ContentDisplayView: View{
    
    var MyApp : MyApp
    
    var body: some View{
        HStack()
        {
            Image(MyApp.image).renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .shadow(color: Color(red:0,green:0,blue:0,opacity: 0.3),radius: 3, x: 2, y: 2)
            VStack(alignment: .leading) {
                Text(MyApp.name)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text(MyApp.description)
                    .font(.caption)
                    .foregroundColor(.black)
            }
        }
        .frame(width: 370, height: 80, alignment: .leading)
    }
}

struct ContentDisplayView_Previews:PreviewProvider
{
    static var previews: some View
    {
        ContentDisplayView(MyApp: MyAppData[0]).previewLayout(.sizeThatFits)
    }
}
