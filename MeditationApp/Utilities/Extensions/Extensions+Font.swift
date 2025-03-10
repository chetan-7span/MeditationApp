//
//  Extensions+Font.swift
//  BNPL
//
//

import SwiftUI

public extension Font {
    static func preferredFontStyle(_ style: UIFont.TextStyle, _ weight: UIFont.Weight) -> Font {
        let uiFont = UIFont.preferredFont(forTextStyle: style)
        let descriptor = uiFont.fontDescriptor.addingAttributes([
            .traits: [UIFontDescriptor.TraitKey.weight: weight]
        ])
        let customUIFont = UIFont(descriptor: descriptor, size: uiFont.pointSize)
        return Font(customUIFont)
    }
}

extension Font {
    static func cerealFont(_ style: CerealFontStyle, size: CGFloat) -> Font {
        return Font.custom(style.rawValue, size: size)
    }
}

enum CerealFontStyle: String {
    case bold = "AirbnbCerealWBd"
    case book = "AirbnbCerealWBk"
    case medium = "AirbnbCerealWMd"
    case light = "AirbnbCerealWLt"
}
