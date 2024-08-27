//
//  ThemeManager.swift
//  LocalThemingApp
//
//  Created by Jonathan Fuentes on 27/8/24.
//

import Foundation

class ThemeManager {
    static let shared = ThemeManager()

    private init() {}

    var currentTheme: AppTheme = .facebook

    func applyTheme(theme: AppTheme) {
        currentTheme = theme
        // Aquí podrías agregar la lógica para aplicar el tema a todos los componentes de la UI
    }
}
