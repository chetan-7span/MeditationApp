//
//  MainButtonView.swift
//  MeditationApp
//
//  Created by Chetan Hedamba on 07/03/25.
//

import SwiftUI

struct MainButtonView: View {
    let title: String
    let icon: Image? // Optional icon
    let backgroundColor: Color
    let foregroundColor: Color
    let borderColor : Color
    let shadowColor: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                // Add the icon if provided
                if let icon = icon {
                    icon
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(foregroundColor)
                        .padding(.leading)
                    Spacer()
                }
                Text(title)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(foregroundColor)
                    .padding(.horizontal, icon != nil ? 8 : 0) // Add spacing if icon exists
                if let icon = icon {
                    Spacer()
                }
                
            }
            .padding()
            .frame(maxWidth: .infinity) // Make the button full width
            .background(backgroundColor)
            .clipShape(Capsule())
            .shadow(color: shadowColor.opacity(0.8), radius: 8, x: 0, y: 4) // Add shadow effect
            .overlay(
                Capsule()
                    .stroke(DesignSystem.Colors.grey50, lineWidth: 0.5)
            )
            
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    //    MainButtonView(
    //        title: "Sign up with E-mail",
    //        icon: nil, // No icon
    //        backgroundColor: DesignSystem.Colors.orange,
    //        foregroundColor: .white,
    //        shadowColor: .orange
    //    ) {
    //        print("Sign up with E-mail tapped")
    //    }
    MainButtonView(title: "CONTINUE WITH GOOGLE", icon: DesignSystem.Images.googleLogo, backgroundColor: DesignSystem.Colors.white, foregroundColor: .black, borderColor: DesignSystem.Colors.grey, shadowColor: .clear) {
        print("sign up clicked")
    }
}
