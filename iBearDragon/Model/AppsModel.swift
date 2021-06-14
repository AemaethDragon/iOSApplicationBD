//
//  AppsModel.swift
//  iBearDragon
//
//  Created by MacOS on 25/05/2021.
//

import SwiftUI

struct MyApp: Identifiable {
    var id =              UUID()
    var name:             String
    var description:      String
    var type:             String
    var image:            String
    @State var favorite:  Bool
    var price:            Float
    
    func SetFavorite(boolean: Bool) -> Void {
        favorite = boolean
    }
    
}
