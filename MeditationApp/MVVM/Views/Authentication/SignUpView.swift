//
//  SignUpView.swift
//  MeditationApp
//
//  Created by Chetan Hedamba on 07/03/25.
//

import SwiftUI

struct SignUpView: View {
    let coordinator: NavigationCoordinator
    @State private var fullName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isChecked = false
    var body: some View {
        ZStack {
            AuthBgView()
            VStack(spacing : 20) {
                navigationBarView
                createAccountText
                socialLoginButtons
                orLoginText
                authenticationInputView
                privacyPolicyCheckMark
                signUpButton
                Spacer()
                
            }.padding()
        }
    }
    
    //MARK: Navigation bar view
    @ViewBuilder
    var navigationBarView: some View {
        NavigationBarView(showBackButton: true, backButtonAction: {
            coordinator.pop()
        }).padding(.top,20)
    }
    
    //MARK: Create Account text
    @ViewBuilder
    var createAccountText: some View {
        Text("Create your account")
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
        TextField("Full Name", text: $fullName)
            .padding(20)
            .background(DesignSystem.Colors.inputFiledBgColor)
        
        TextField("Email Address", text: $email)
            .padding(20)
            .background(DesignSystem.Colors.inputFiledBgColor)
            .cornerRadius(10)
        
        SecureField("Password", text: $password)
            .padding(20)
            .background(DesignSystem.Colors.inputFiledBgColor)
            .cornerRadius(10)
    }
    
    //MARK: Privacy policy check mark
    @ViewBuilder
    var privacyPolicyCheckMark: some View {
        HStack {
            Text("I have read the")
                .multilineTextAlignment(.center)
                .font(.preferredFontStyle(.footnote, .medium))
                .foregroundStyle(DesignSystem.Colors.grey)
            
            Button ("Privacy Policy"){
                
            }
            .font(.preferredFontStyle(.footnote, .medium))
            .foregroundStyle(DesignSystem.Colors.purple)
            Spacer()
            Toggle(isOn: $isChecked) {
            }
            .toggleStyle(CheckboxToggleStyle())
        }
    }
    //MARK: SignUp button
    @ViewBuilder
    var signUpButton: some View {
        MainButtonView(title: "SIGN UP", icon: nil, backgroundColor: DesignSystem.Colors.purple, foregroundColor: .white, borderColor: .clear, shadowColor: .clear) {
            coordinator.push(WelcomeView(coordinator: coordinator))
        }.padding(.top,10)
    }
}

#Preview {
    SignUpView(coordinator: NavigationCoordinator())
}
