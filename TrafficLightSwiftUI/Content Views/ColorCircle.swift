//
//  ColorCircle.swift
//  TrafficLightSwiftUI
//
//  Created by Dmitry Shcherbakov on 10.12.2020.
//

import SwiftUI

struct ColorCircle: View {
    
    let color: UIColor
    let opacity: Double
    
    var body: some View {
        Color(color)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(
                /*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/
                    .stroke(Color.white, lineWidth: 4)
            )
            .opacity(opacity)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 0.3)
    }
}
