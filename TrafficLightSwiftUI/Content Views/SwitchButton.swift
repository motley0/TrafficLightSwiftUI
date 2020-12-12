//
//  SwitchButton.swift
//  TrafficLightSwiftUI
//
//  Created by Dmitry Shcherbakov on 10.12.2020.
//

import SwiftUI

struct SwitchButton: View {
    
    let buttomName: String
    let complition: () -> Void
    
    var body: some View {
        Button(buttomName) {
            complition()
        }
        .frame(width: 150, height: 50)
        .font(.title3)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
        )
    }
}

struct SwitchButton__Previews: PreviewProvider {
    static var previews: some View {
        SwitchButton(buttomName: "START") {
            print("OK")
        }
    }
}
