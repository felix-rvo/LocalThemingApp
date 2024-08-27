//
//  FontStyles.swift
//  LocalThemingApp
//
//  Created by Jonathan Fuentes on 27/8/24.
//

import Foundation
import UIKit

extension UIFont {
    static let h1SemiboldFont = UIFont.systemFont(ofSize: 28, weight: .semibold)
    static let h2SemiboldFont = UIFont.systemFont(ofSize: 24, weight: .semibold)
    static let h3BoldFont = UIFont.systemFont(ofSize: 20, weight: .bold)
    static let bodyBoldFont = UIFont.systemFont(ofSize: 16, weight: .bold)
    static let bodyRegularFont = UIFont.systemFont(ofSize: 16, weight: .regular)
    static let smallBoldFont = UIFont.systemFont(ofSize: 14, weight: .bold)
    static let microBoldFont = UIFont.systemFont(ofSize: 12, weight: .bold)
}

extension UIColor {
    static let facebookBlue = UIColor(red: 59/255, green: 89/255, blue: 152/255, alpha: 1)
    static let instagramGradientStart = UIColor(red: 225/255, green: 48/255, blue: 108/255, alpha: 1)
    static let instagramGradientEnd = UIColor(red: 253/255, green: 29/255, blue: 29/255, alpha: 1)
    static let slackPurple = UIColor(red: 74/255, green: 20/255, blue: 140/255, alpha: 1)
    static let uberBlack = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    static let charcoalDark = UIColor(red: 54/255, green: 69/255, blue: 79/255, alpha: 1)
    static let charcoalLight = UIColor(red: 102/255, green: 112/255, blue: 122/255, alpha: 1)
    static let neutral = UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1)
}
extension TextStyle {
    // H1
    static let h1SemiboldCharcoalDark = TextStyle(
        font: .h1SemiboldFont,
        textStyle: .title1,
        color: .charcoalDark,
        lineHeight: 32
    )
    static let h1SemiboldCharcoalLight = TextStyle(
        font: .h1SemiboldFont,
        textStyle: .title1,
        color: .charcoalLight,
        lineHeight: 32
    )
    static let h1SemiboldNeutral = TextStyle(
        font: .h1SemiboldFont,
        textStyle: .title1,
        color: .neutral,
        lineHeight: 32
    )
    // Otros estilos...
}
