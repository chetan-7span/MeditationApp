//
//  ChooseTopicView.swift
//  MeditationApp
//
//  Created by Chetan Hedamba on 07/03/25.
//

import SwiftUI


struct ChooseTopicView: View {
    let cardData: [(String, Color, Bool)] = [
        ("Reduce Stress", .blue, true),
        ("Improve Performance", .red, false),
        ("Increase Happiness", .orange, false),
        ("Reduce Anxiety", .yellow, true),
        ("Boost Focus", .green, true),
        ("Enhance Creativity", .purple, false),
        ("Improve Sleep", .teal, false),
        ("Increase Productivity", .pink, true),
        ("Strengthen Memory", .gray, true), // Only 9 items
        ("Boost Energy", .brown, false)
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                // Loop through pairs of items
                ForEach(0..<(cardData.count / 2), id: \.self) { index in
                    HStack(alignment: .top, spacing: 16) {
                        CardView(
                            title: cardData[index * 2].0,
                            color: cardData[index * 2].1,
                            isBig: cardData[index * 2].2
                        )
                        CardView(
                            title: cardData[index * 2 + 1].0,
                            color: cardData[index * 2 + 1].1,
                            isBig: cardData[index * 2 + 1].2
                        )
                        .padding(.top, cardData[index * 2].2 ? 0 : -45)
                    }
                }
                
                // Handle the last unpaired item if the count is odd
                if cardData.count % 2 != 0 {
                    HStack {
                        CardView(
                            title: cardData.last!.0,
                            color: cardData.last!.1,
                            isBig: cardData.last!.2
                        )
                        Spacer() // To align it nicely
                    }
                }
            }
            .padding()
        }
    }
}



struct CardView: View {
    var title: String
    var color: Color
    var isBig: Bool

    var body: some View {
        ZStack {
            color
                .cornerRadius(16)
                .shadow(radius: 5)

            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
        }
        .frame(
            width: UIScreen.main.bounds.width * 0.45,
            height: isBig ? 200 : 150
        )
    }
}


#Preview {
    ChooseTopicView()
}
