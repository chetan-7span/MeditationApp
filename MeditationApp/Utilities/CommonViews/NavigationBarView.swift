//
//  NavigationBarView.swift
//  MeditationApp
//
//  Created by Chetan Hedamba on 07/03/25.
//

import SwiftUI

struct NavigationBarView: View {
    var title: String? = nil
    var appLogo: Image? = nil
    
    var showBackButton: Bool = false
    var backButtonAction: (() -> Void)? = nil
    var showSettingsButton: Bool = false
    var settingsAction: (() -> Void)? = nil
    
    var body: some View {
        HStack {
            if showBackButton {
                Button(action: {
                    backButtonAction?()
                }) {
                    DesignSystem.Images.icnBack.resizable().scaledToFit().frame(width: 24,height: 24)
                }
                .foregroundColor(DesignSystem.Colors.grey50)
                Spacer()
            } else {
                Spacer()
            }
            if let title = title {
                Text(title)
                    .font(.body)
                    .foregroundColor(DesignSystem.Colors.grey50)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
            } else if let logo = appLogo {
                logo
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 30)
            }
            else {
                HStack(alignment: .center, spacing: 10) {
                    Text("Silent")
                        .foregroundColor(DesignSystem.Colors.black)
                        .font(.cerealFont(.bold, size: 16))
                        .tracking(2.4)

                    DesignSystem.Images.headerLogo
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)

                    Text("Moon")
                        .foregroundColor(DesignSystem.Colors.black)
                        .font(.cerealFont(.bold, size: 16))
                        .tracking(2.4)
                }
            }
            if showSettingsButton {
                Button(action: {
                    settingsAction?()
                }) {
                    //DesignSystem.Images.settings
                    Text("Setting").font(.caption)
                }
            } else {
                Spacer()
            }
        }
    }
}

#Preview {
//    NavigationBarView()
    NavigationBarView(showBackButton: true, backButtonAction: {
        print("back button clicked")})
}
