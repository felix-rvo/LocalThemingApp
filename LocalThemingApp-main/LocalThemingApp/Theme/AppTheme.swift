//
//  AppTheme.swift
//  LocalThemingApp
//
//  Created by Jonathan Fuentes on 27/8/24.
//

import Foundation
import UIKit

enum AppTheme {
    case facebook
    case instagram
    case slack
    case uber

    var primaryColor: UIColor {
        switch self {
        case .facebook:
            return .facebookBlue
        case .instagram:
            return .instagramGradientStart
        case .slack:
            return .slackPurple
        case .uber:
            return .uberBlack
        }
    }

    var secondaryColor: UIColor {
        switch self {
        case .facebook:
            return .charcoalDark
        case .instagram:
            return .instagramGradientEnd
        case .slack:
            return .charcoalLight
        case .uber:
            return .neutral
        }
    }

    var fontFeature: FontFeature {
        switch self {
        case .facebook:
            return .normal
        case .instagram:
            return .allCaps
        case .slack:
            return .capitalized
        case .uber:
            return .allSmall
        }
    }

    var textStyles: [String: TextStyle] {
        switch self {
        case .facebook:
            return [
                "h1": TextStyle(font: .h1SemiboldFont, textStyle: .headline, color: .facebookBlue, lineHeight: 32),
                "body": TextStyle(font: .bodyRegularFont, textStyle: .body, color: .charcoalDark)
            ]
        case .instagram:
            return [
                "h1": TextStyle(font: .h1SemiboldFont, textStyle: .headline, color: .instagramGradientStart, lineHeight: 32),
                "body": TextStyle(font: .bodyRegularFont, textStyle: .body, color: .instagramGradientEnd)
            ]
        case .slack:
            return [
                "h1": TextStyle(font: .h1SemiboldFont, textStyle: .headline, color: .slackPurple, lineHeight: 32),
                "body": TextStyle(font: .bodyRegularFont, textStyle: .body, color: .charcoalLight)
            ]
        case .uber:
            return [
                "h1": TextStyle(font: .h1SemiboldFont, textStyle: .headline, color: .uberBlack, lineHeight: 32),
                "body": TextStyle(font: .bodyRegularFont, textStyle: .body, color: .neutral)
            ]
        }
    }
}
