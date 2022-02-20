//
//  ContentView.swift
//  ChangeColorsSwiftUI
//
//  Created by Alex Kulish on 20.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color.brown
                .ignoresSafeArea()
            VStack(spacing: 20) {
                ColorView(red: red, green: green, blue: blue)
                    .padding(.top, 120)
                Spacer()
                ColorSliderView(value: $red, color: .red)
                ColorSliderView(value: $green, color: .green)
                ColorSliderView(value: $blue, color: .blue)
                    .padding(.bottom, 250)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
