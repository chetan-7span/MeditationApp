//
//  SelectSignInSignUpView.swift
//  MeditationApp
//
//  Created by Chetan Hedamba on 07/03/25.
//

import SwiftUI

struct SelectSignInSignUpView: View {
    let coordinator: NavigationCoordinator
    var body: some View {
        ZStack {
            backgroundView
            VStack(spacing : 20) {
                NavigationBarView()
                DesignSystem.Images.selectSignUpImg
                    .resizable()
                    .scaledToFit()
                    .padding()
                Spacer()
                titleAndDescriptionView
                Spacer()
                signupButton
                loginButton
            }.padding(.horizontal)
            
        }
    }
    
    //MARK: Background View
    @ViewBuilder
    var backgroundView: some View {
        DesignSystem.Images.frame
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .edgesIgnoringSafeArea(.all)
    }
    
    //MARK: Title and description
    @ViewBuilder
    var titleAndDescriptionView: some View {
        Text("We are what we do")
            .font(.preferredFontStyle(.title1, .bold))
        Text("Thousand of people are usign silent moon for smalls meditation")
            .multilineTextAlignment(.center)
            .font(.preferredFontStyle(.callout, .light))
            .foregroundStyle(DesignSystem.Colors.grey)
    }
    
    //MARK: Signup button
    @ViewBuilder
    var signupButton: some View {
        MainButtonView(title: "SIGN UP", icon: nil, backgroundColor: DesignSystem.Colors.purple, foregroundColor: .white, borderColor: .clear, shadowColor: .clear) {
            print("sign up clicked")
            coordinator.push(SignUpView(coordinator: coordinator))
        }
    }
    
    //MARK: Login Button
    @ViewBuilder
    var loginButton: some View {
        HStack {
            Text("ALREADY HAVE AN ACCOUNT?")
                .multilineTextAlignment(.center)
                .font(.preferredFontStyle(.footnote, .medium))
                .foregroundStyle(DesignSystem.Colors.grey)
            
            Button ("LOG IN"){
                coordinator.push(SignInView(coordinator: coordinator))
            }
            .font(.preferredFontStyle(.footnote, .medium))
            .foregroundStyle(DesignSystem.Colors.purple)
        }
        .padding(.bottom,40)
    }
}

#Preview {
    SelectSignInSignUpView(coordinator: NavigationCoordinator())
}
