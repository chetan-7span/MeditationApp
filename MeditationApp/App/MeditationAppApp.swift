//
//  MeditationAppApp.swift
//  MeditationApp
//
//  Created by Chetan Hedamba on 07/03/25.
//

import SwiftUI

@main
struct MeditationAppApp: App {
    @StateObject private var coordinator = NavigationCoordinator()
    var body: some Scene {
        WindowGroup {
            NavigationWrapperView()
                .environmentObject(coordinator).ignoresSafeArea()
        }
    }
}
