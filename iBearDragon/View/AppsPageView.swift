//
//  AppsPageView.swift
//  iBearDragon
//
//  Created by MacOS on 25/05/2021.
//


import SwiftUI

struct AppsPageView: View {
    
    init() {
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().backgroundColor = .none
        UITableView.appearance().backgroundColor = .none
    }
    
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
                    .padding(2)
                    .frame(width: 330)
                }
                .listRowBackground(MakeContentArea(_width: 340, _height: 60))
            }
            .frame(height: 700, alignment: .top)
            .background(MakeContentArea(_width: 380, _height: 720))
        }
        .frame(height: 1000)
        .background(MakeBackground())
    }
}
struct AppsPageView_Previews: PreviewProvider {
    static var previews: some View {
        AppsPageView()
    }
}

