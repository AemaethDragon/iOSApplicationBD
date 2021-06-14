//
//  GlassMorphismFunctions.swift
//  iBearDragon
//
//  Created by intozoom on 13/06/2021.
//

import SwiftUI


func MakeCircle(size: CGFloat, xOffSet: CGFloat, yOffSet: CGFloat, radius: CGFloat, opacity: Double, color: Color) -> some View {
    return Circle()
                .frame(width: size)
                .offset(x: xOffSet, y: yOffSet)
                .foregroundColor(color.opacity(opacity))
                .blur(radius: radius)
}


func MakeContentArea(_width: CGFloat, _height: CGFloat, _cornerRadius: CGFloat = 30) -> some View {
    return Color.white.opacity(0.5)
                .frame(width: _width, height: _height)
                .clipShape(RoundedRectangle(cornerRadius: _cornerRadius, style: .continuous))
                .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 10)
}

func MakeBackground() -> some View {
    return ZStack{
        LinearGradient(gradient: Gradient(colors: [Color.white, Color.white.opacity(0.0)]), startPoint: .top, endPoint: .bottom)
        
        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)).opacity(0.4), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.6)]), startPoint: .topLeading, endPoint: .bottomTrailing)
        
        ZStack {
            MakeCircle(size: 500, xOffSet: 150, yOffSet: -200, radius: 8, opacity: 0.3, color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
            
            MakeCircle(size: 400, xOffSet: -50, yOffSet: 270, radius: 8, opacity: 0.3, color: Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)))
        }
    }
}

extension HStack {
    func GlassmorphismBtn() -> some View {
        self.imageScale(.large)
            .font(.system(size: 20, weight: .bold, design: Font.Design.rounded))
            .foregroundColor(.black)
            .frame(width: 240, height: 50, alignment: .center)
            .background(MakeContentArea(_width: 270, _height: 50))
    }
}

extension Color {
    func GlassMorphismBG() -> some View {
        return MakeBackground()
    }
}
