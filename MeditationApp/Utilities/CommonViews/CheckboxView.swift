//
//  CheckboxView.swift
//  MeditationApp
//
//  Created by Chetan Hedamba on 10/03/25.
//

import SwiftUI

struct CheckboxView: View {
    @Binding var isChecked: Bool

    var label: String

    var body: some View {
        Toggle(isOn: $isChecked) {
            Text(label)
        }
        .toggleStyle(CheckboxToggleStyle())
    }
}

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(configuration.isOn ? .blue : .gray)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            configuration.label
        }
    }
}


#Preview {
    CheckboxView(isChecked: .constant(true), label: "")
}
