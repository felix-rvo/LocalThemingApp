//
//  ViewController.swift
//  LocalThemingApp
//
//  Created by Jonathan Fuentes on 26/8/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Aplicar tema actual
        applyCurrentTheme()

        // Configurar un botón para cambiar de tema
        let changeThemeButton = UIButton(type: .system)
        changeThemeButton.setTitle("Cambiar Tema", for: .normal)
        changeThemeButton.addTarget(self, action: #selector(changeThemeTapped), for: .touchUpInside)
        changeThemeButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(changeThemeButton)

        NSLayoutConstraint.activate([
            changeThemeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            changeThemeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    private func applyCurrentTheme() {
        view.backgroundColor = ThemeManager.shared.currentTheme.primaryColor

        let h1Style = ThemeManager.shared.currentTheme.textStyles["h1"]!
        let bodyStyle = ThemeManager.shared.currentTheme.textStyles["body"]!

        let titleLabel = UILabel()
        titleLabel.attributedText = "Título".styled(with: h1Style)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)

        let bodyLabel = UILabel()
        bodyLabel.attributedText = "Texto de cuerpo con el tema actual.".styled(with: bodyStyle)
        bodyLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bodyLabel)

        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),

            bodyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bodyLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20)
        ])
    }

    @objc private func changeThemeTapped() {
        // Cambiar tema de Facebook a Instagram
        if ThemeManager.shared.currentTheme == .facebook {
            ThemeManager.shared.applyTheme(theme: .instagram)
        } else {
            ThemeManager.shared.applyTheme(theme: .facebook)
        }

        applyCurrentTheme()
    }
}

