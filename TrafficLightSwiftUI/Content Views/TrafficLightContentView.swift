//
//  TrafficLightContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Dmitry Shcherbakov on 10.12.2020.
//

import SwiftUI

struct TrafficLightContentView: View {
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    @State private var redLightOpacity = 0.3
    @State private var yellowLightOpacity = 0.3
    @State private var greenLightOpacity = 0.3
    
    @State private var buttomName = "START"
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorCircle(color: .red, opacity: redLightOpacity)
                    .padding()
                ColorCircle(color: .yellow, opacity: yellowLightOpacity)
                    .padding()
                ColorCircle(color: .green, opacity: greenLightOpacity)
                    .padding()
                Spacer()
                SwitchButton(buttomName: buttomName) {
                    buttonTapped()
                }
            }.padding()
        }
    }
    
    private func buttonTapped() {
        if buttomName == "START" {
            buttomName = "NEXT"
        }
        
        let lightIsOnExists = [
            redLightOpacity,
            yellowLightOpacity,
            greenLightOpacity
        ].contains() { opacity in opacity == lightIsOn }
        
        if !lightIsOnExists {
            redLightOpacity = lightIsOn
        } else if redLightOpacity == lightIsOn {
            redLightOpacity = lightIsOff
            yellowLightOpacity = lightIsOn
        } else if yellowLightOpacity == lightIsOn {
            yellowLightOpacity = lightIsOff
            greenLightOpacity = lightIsOn
        } else if greenLightOpacity == lightIsOn {
            greenLightOpacity = lightIsOff
            redLightOpacity = lightIsOn
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightContentView()
    }
}
