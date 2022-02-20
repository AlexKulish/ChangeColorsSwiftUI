//
//  ColorView.swift
//  ChangeColorsSwiftUI
//
//  Created by Alex Kulish on 20.02.2022.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .cornerRadius(15)
            .frame(height: 150)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.white, lineWidth: 5)
            )
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 150, green: 150, blue: 150)
    }
}
