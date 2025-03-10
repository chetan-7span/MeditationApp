//
//  TopicModel.swift
//  MeditationApp
//
//  Created by Chetan Hedamba on 10/03/25.
//

import Foundation
import SwiftUI

// MARK: - Model
struct TopicModel: Identifiable {
    let id = UUID()
    let title: String
    let color: Color
    let isBig: Bool
}

