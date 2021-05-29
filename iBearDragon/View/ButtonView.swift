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
        
        Button(action: {
            
                print("exiting onboarding")
            
           
        }){
        
        HStack(spacing: 8) {
            Text(DisplayText).foregroundColor(.gray)
            Image(systemName: "arrow.right.circle")
                .imageScale(.large).foregroundColor(.gray)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(
            Capsule().strokeBorder(Color.gray,
                                   lineWidth: 5).frame(width: 250, height: 40)
        )
        }
    }
}


struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(DisplayText: "TESTE BUTTON").preferredColorScheme(.dark)
              }
}
