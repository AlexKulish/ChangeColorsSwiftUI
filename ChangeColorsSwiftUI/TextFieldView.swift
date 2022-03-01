//
//  TextFieldView.swift
//  ChangeColorsSwiftUI
//
//  Created by Alex Kulish on 20.02.2022.
//

import SwiftUI

struct TextFieldView: View {
    
    @Binding var text: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $text) { _ in
            withAnimation {
                valueCheck()
            }
        }
            .frame(width: 55, alignment: .trailing)
            .multilineTextAlignment(.trailing)
            .textFieldStyle(.roundedBorder)
            .keyboardType(.decimalPad)
            .alert("Wrong format", isPresented: $showAlert, actions: {}) {
                Text("Enter value from 0 to 255")
            }
    }
}

extension TextFieldView {
    private func valueCheck() {
        
        if let enterValue = Int(text), (0...255).contains(enterValue) {
            self.value = Double(enterValue)
            return
        }
        showAlert.toggle()
        value = Double.random(in: 0...255)
        text = ""
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(text: .constant("150"), value: .constant(150))
    }
}
