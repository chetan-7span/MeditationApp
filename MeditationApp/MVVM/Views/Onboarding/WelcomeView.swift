//
//  WelcomeView.swift
//  MeditationApp
//
//  Created by Chetan Hedamba on 07/03/25.
//

import SwiftUI

struct WelcomeView: View {
    let coordinator: NavigationCoordinator
    var body: some View {
        ZStack {
            backgroundView
            VStack {
                NavigationBarView().padding(.top,40)
                welcomeTextView
                Spacer()
                getStartedButton.padding(.bottom,80)
            }.padding(.horizontal)
            
        }
    }
    
    //MARK: Background View
    @ViewBuilder
    var backgroundView: some View {
        DesignSystem.Images.welcomeBg
            .resizable()
            .scaledToFill()
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .edgesIgnoringSafeArea(.all)
    }
    
    //MARK: Welcome Text
    @ViewBuilder
    var welcomeTextView: some View {
        Text("Hi Chetan, Welcome")
            .font(.system(size: 30,weight: .bold))
            .tracking(0.1)
            .foregroundStyle(DesignSystem.Colors.creamColor)
            .padding(.top,20)
        Text("to Silent Moon")
            .font(Font.cerealFont(.book, size: 30))
            .tracking(0.1)
            .foregroundStyle(DesignSystem.Colors.creamColor)
        Text("Explore the app, Find some peace of mind to prepare for meditation.")
            .multilineTextAlignment(.center)
            .font(.preferredFontStyle(.callout, .light))
            .foregroundStyle(DesignSystem.Colors.white)
            .padding(.top,5)
    }
    
    //MARK: Get started button
    @ViewBuilder
    var  getStartedButton: some View {
        MainButtonView(title: "GET STARTED", icon: nil, backgroundColor: DesignSystem.Colors.white, foregroundColor: .black, borderColor: .clear, shadowColor: .clear) {
            print("sign up clicked")
        }
    }
}

#Preview {
    WelcomeView(coordinator: NavigationCoordinator())
}
