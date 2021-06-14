//
//  LoginPageView.swift
//  iBearDragon
//
//  Created by MacOS on 28/05/2021.
//

import SwiftUI


struct LoginPageView: View {
    
    var LoginData: [LoginInfo]
    var CanRun: Bool = false
    @State var InsertedUser = ""
    @State var InsertedPassword = ""
    @State private var ShowAlert = false
    
    
    func CheckLogin(_LoginData: [LoginInfo], InsUser: String, InsPass: String) -> Bool {
        for item in _LoginData {
            
            if item.id == InsUser && item.pass == InsPass {
                return true
            }
        }
        return false
    }
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20.0){
                
                Image("SampleProfile").resizable().scaledToFit().clipShape(Circle()).frame(width: 200, height: 200, alignment:  .center).background(MakeContentArea(_width: 220, _height: 220, _cornerRadius: 110))
                TextField("USERNAME", text: $InsertedUser).frame(width: 250, height: 50, alignment:     .center).background(MakeContentArea(_width: 270, _height: 50))
                TextField("PASSWORD", text: $InsertedPassword).frame(width: 250, height: 50, alignment:     .center).background(MakeContentArea(_width: 270, _height: 50))
                
                if CheckLogin(_LoginData: LoginData, InsUser: InsertedUser, InsPass: InsertedPassword) {
                    NavigationLink(destination: LandingPageView(UserName: InsertedUser)){
                        HStack(alignment: .center, spacing: nil){
                            Text("Login")
                            Spacer()
                            Image(systemName: "arrow.right.circle")
                            
                        }
                        .GlassmorphismBtn()
                    }
                    .padding()
                }
                
            }
            .frame(height: 1000)
            .background(MakeBackground())
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView(LoginData: LoginInfoData)
    }
}
