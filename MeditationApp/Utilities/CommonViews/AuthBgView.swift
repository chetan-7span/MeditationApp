//
//  AuthBgView.swift
//  MeditationApp
//
//  Created by Chetan Hedamba on 07/03/25.
//

import SwiftUI

struct AuthBgView: View {
    var body: some View {
        backgroundView
    }
    
    //MARK: - Background view
    @ViewBuilder
    var backgroundView : some View {
        DesignSystem.Images.authBgImg
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    AuthBgView()
}
