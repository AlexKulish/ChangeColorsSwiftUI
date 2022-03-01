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
    
    @FocusState private var isFocused: Bool
    
    var body: some View {
        ZStack {
            Color.brown
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                ColorView(red: red, green: green, blue: blue)
                    .padding(.top, 100)
                
                VStack() {
                    ColorSliderView(value: $red, color: .red)
                    ColorSliderView(value: $green, color: .green)
                    ColorSliderView(value: $blue, color: .blue)
                }
                .focused($isFocused)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            isFocused = false
                        }
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            ContentView()
        }
    }
}
