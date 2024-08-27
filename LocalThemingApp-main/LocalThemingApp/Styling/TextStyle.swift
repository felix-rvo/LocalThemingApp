//
//  TextStyle.swift
//  LocalThemingApp
//
//  Created by Jonathan Fuentes on 27/8/24.
//

import Foundation
import UIKit

enum FontFeature {
    case normal
    case allCaps
    case capitalized
    case allSmall
}

struct TextStyle: Equatable {
    let font: UIFont
    let textStyle: UIFont.TextStyle
    let color: UIColor
    let lineHeight: CGFloat?
    let characterSpacing: CGFloat?
    let feature: FontFeature

    init(font newFont: UIFont,
         textStyle newTextStyle: UIFont.TextStyle,
         color newColor: UIColor,
         lineHeight newLineHeight: CGFloat? = nil,
         characterSpacing newCharacterSpacing: CGFloat? = nil,
         feature newFeature: FontFeature = .normal) {

        font = newFont
        textStyle = newTextStyle
        color = newColor
        lineHeight = newLineHeight
        characterSpacing = newCharacterSpacing
        feature = newFeature
    }

    var scaledFont: UIFont {
        return font
    }

    var scaledLineHeight: CGFloat? {
        guard let height = lineHeight else {
            return nil
        }
        return height
    }

    var scaledCharacterSpacing: CGFloat? {
        guard let spacing = characterSpacing else {
            return nil
        }
        return spacing
    }

    func with(color newColor: UIColor) -> TextStyle {
        return TextStyle(font: font,
                         textStyle: textStyle,
                         color: newColor,
                         lineHeight: lineHeight,
                         characterSpacing: characterSpacing,
                         feature: feature)
    }

    func with(lineHeight newLineHeight: CGFloat?) -> TextStyle {
        return TextStyle(font: font,
                         textStyle: textStyle,
                         color: color,
                         lineHeight: newLineHeight,
                         characterSpacing: characterSpacing,
                         feature: feature)
    }

    func with(font newFont: UIFont) -> TextStyle {
        return TextStyle(font: newFont,
                         textStyle: textStyle,
                         color: color,
                         lineHeight: lineHeight,
                         characterSpacing: characterSpacing,
                         feature: feature)
    }

    func with(feature newFeature: FontFeature) -> TextStyle {
        return TextStyle(font: font,
                         textStyle: textStyle,
                         color: color,
                         lineHeight: lineHeight,
                         characterSpacing: characterSpacing,
                         feature: newFeature)
    }
}

extension String {
    func styled(with style: TextStyle, alignment: NSTextAlignment = .left, scaled: Bool = true) -> NSAttributedString {
        var attributes: [NSAttributedString.Key: Any] = [
            .font: scaled ? style.scaledFont : style.font,
            .foregroundColor: style.color
        ]

        if let paragraph = NSParagraphStyle.default.mutableCopy() as? NSMutableParagraphStyle {
            if let lineHeight = (scaled ? style.scaledLineHeight : style.lineHeight) {
                paragraph.minimumLineHeight = lineHeight
                paragraph.maximumLineHeight = lineHeight
            }
            paragraph.alignment = alignment
            attributes[.paragraphStyle] = paragraph
        }

        if let characterSpacing = (scaled ? style.scaledCharacterSpacing : style.characterSpacing) {
            attributes[.kern] = characterSpacing
        }

        let string: String
        switch style.feature {
        case .allCaps:
            string = self.uppercased()
        case .normal:
            string = self
        case .capitalized:
            string = self.capitalized
        case .allSmall:
            string = self.lowercased()
        }

        return NSAttributedString(string: string, attributes: attributes)
    }
}
