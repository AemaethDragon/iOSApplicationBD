//
//  MyAppData.swift
//  iBearDragon
//
//  Created by MacOS on 25/05/2021.
//

import SwiftUI

//let MyAppData: [MyApp] = [
//    MyApp (
//        name: "Halo Combat Evolved" , description: "This is a recomended classic shooter", type: "FPS", image: "HaloCE", favorite: false, price: 9.99
//    ),
//    MyApp(
//        name: "Valorant" , description: "2", type: "FPS", image: "Valorant", favorite: false, price: 0
//    ),
//    MyApp(
//        name: "Assassins Creed 2" , description: "3", type: "RPG", image: "AC2", favorite: false, price: 19.99
//    ),
//    MyApp(
//        name: "Rocket League" , description: "4", type: "Sport", image: "RKTL", favorite: false, price: 12.99
//    ),
//    MyApp(
//        name: "Neighboors from Hell" , description: "5", type: "Comedy", image: "NBRSFH", favorite: false, price: 5.00
//    ),
//    MyApp(
//        name: "Left 4 Dead 2" , description: "6", type: "FPS", image: "L4D2", favorite: false, price: 9.99
//    ),
//    MyApp(
//        name: "Blender" , description: "7", type: "3DModeling", image: "Blender", favorite: false, price: 0
//    ),
//    MyApp(
//        name: "Krita" , description: "8", type: "Drawing", image: "Krita", favorite: false, price: 0
//    ),
//    MyApp(
//        name: "Linux" , description: "9", type: "OS", image: "Linux", favorite: false, price: 0
//    ),
//    MyApp(
//        name: "Unity" , description: "10", type: "GameEngine", image: "Unity", favorite: false, price: 0
//    )
//]

struct AllAppsData : Decodable {
    let MyAppData: [MyApp]
}

struct AllAppsLoadedData{
    
    @State static var MyAppLoadedData : [MyApp] = Bundle().decode("appInfo")
    
}

extension Bundle {
    func decode(_ file: String) -> [MyApp] {
        // 1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: "json") else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a property for the decoded data
        guard let loaded = try? decoder.decode([MyApp].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        // 5. return the ready to use data
        return loaded
    }
}





