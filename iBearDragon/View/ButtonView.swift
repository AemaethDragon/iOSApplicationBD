//
//  ButtonView.swift
//  iBearDragon
//
//  Created by MacOS on 28/05/2021.
//

import SwiftUI

struct ButtonView: View {
    
    var DisplayText : String
    
    var body: some View {
        
        Button(action: {})
        {
            HStack(spacing: 8) {
                Text(DisplayText).foregroundColor(.black)
                Spacer()
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large).foregroundColor(.black)
                }
                .imageScale(.large)
                .font(.system(size: 20, weight: .bold, design: Font.Design.rounded))
                .foregroundColor(.black)
                .frame(width: 240, height: 50, alignment: .center)
                .background(MakeContentArea(_width: 270, _height: 50))
            }
            
        }
    }


struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(DisplayText: "TESTE BUTTON").preferredColorScheme(.dark)
              }
}
