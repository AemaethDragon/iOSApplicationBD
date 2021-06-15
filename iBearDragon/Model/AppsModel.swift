//
//  AppsModel.swift
//  iBearDragon
//
//  Created by MacOS on 25/05/2021.
//

import SwiftUI

struct MyApp: Decodable, Identifiable {
    var id =              UUID()
    var name:             String
    var description:      String
    var type:             String
    var image:            String
    var favorite:         Bool
    var price:            Float
}
