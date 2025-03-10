//
//  SignInView.swift
//  MeditationApp
//
//  Created by Chetan Hedamba on 07/03/25.
//

import SwiftUI

struct SignInView: View {
    let coordinator: NavigationCoordinator
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        ZStack {
            AuthBgView()
            VStack(spacing : 20) {
                navigationBarView
                welcomeText
                socialLoginButtons
                orLoginText
                authenticationInputView
                loginButton
                forgotPasswordButton
                Spacer()
                signupButton
            }.padding()
        }
    }
    
    //MARK: Navigation bar view
    @ViewBuilder
    var navigationBarView: some View {
        NavigationBarView(showBackButton: true, backButtonAction: {
            print("back button clicked")
            coordinator.pop()
        }).padding(.top,20)
    }
    
    //MARK: Welcome text
    @ViewBuilder
    var welcomeText: some View {
        Text("Welcome Back!")
            .font(.preferredFontStyle(.title1, .bold))
            .padding(.top,30)
    }
    
    //MARK: Social login buttons
    @ViewBuilder
    var socialLoginButtons: some View {
        MainButtonView(title: "CONTINUE WITH FACEBOOK", icon: DesignSystem.Images.facebookLogo, backgroundColor: DesignSystem.Colors.fbBg, foregroundColor: .white, borderColor: DesignSystem.Colors.grey, shadowColor: .clear) {
            print("sign up clicked")
        }
        
        MainButtonView(title: "CONTINUE WITH GOOGLE", icon: DesignSystem.Images.googleLogo, backgroundColor: DesignSystem.Colors.white, foregroundColor: .black, borderColor: DesignSystem.Colors.grey, shadowColor: .clear) {
            print("sign up clicked")
        }
    }
    
    //MARK: Or login with email
    @ViewBuilder
    var orLoginText: some View {
        Text("OR LOGIN WITH EMAIL")
            .font(.system(size: 14, weight: .bold, design: .default))
            .foregroundStyle(DesignSystem.Colors.grey).padding(.vertical)
    }
    
    //MARK: Authentication input views
    @ViewBuilder
    var authenticationInputView: some View {
        TextField("Email Address", text: $email)
            .padding(20)
            .background(DesignSystem.Colors.inputFiledBgColor)
            .cornerRadius(10)
        
        SecureField("Password", text: $password)
            .padding(20)
            .background(DesignSystem.Colors.inputFiledBgColor)
            .cornerRadius(10)
    }
    
    //MARK: Login button
    @ViewBuilder
    var loginButton: some View {
        MainButtonView(title: "LOGIN", icon: nil, backgroundColor: DesignSystem.Colors.purple, foregroundColor: .white, borderColor: .clear, shadowColor: .clear) {
            
        }
    }
    
    //MARK: Forgot password button
    @ViewBuilder
    var forgotPasswordButton: some View {
        Button ("FORGOT PASSWORD?"){
            
        }
        .font(.system(size: 14, weight: .bold, design: .default))
        .foregroundStyle(DesignSystem.Colors.black)
    }
    
    //MARK: Signup button
    @ViewBuilder
    var signupButton: some View {
        HStack {
            Text("DON'T HAVE AN ACCOUNT?")
                .multilineTextAlignment(.center)
                .font(.preferredFontStyle(.footnote, .medium))
                .foregroundStyle(DesignSystem.Colors.grey)
            
            Button ("SIGN UP"){
                coordinator.push(SignUpView(coordinator: coordinator))
            }
            .font(.preferredFontStyle(.footnote, .medium))
            .foregroundStyle(DesignSystem.Colors.purple)
        }
        .padding(.bottom,40)
    }
}

#Preview {
    SignInView(coordinator: NavigationCoordinator())
}
