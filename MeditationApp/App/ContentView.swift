//
//  ContentView.swift
//  MeditationApp
//
//  Created by Chetan Hedamba on 07/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            for family in UIFont.familyNames {
                print("Font Family: \(family)")
                for fontName in UIFont.fontNames(forFamilyName: family) {
                    print("    \(fontName)")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
