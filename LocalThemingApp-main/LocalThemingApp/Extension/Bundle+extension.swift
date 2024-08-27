//
//  Bundle+extension.swift
//  LocalThemingApp
//
//  Created by Jonathan Fuentes on 27/8/24.
//

import Foundation

private class BundleFinder { }

extension Bundle {
    public static let app = Bundle(for: BundleFinder.self)
    public static let `internal`: Bundle? = {
        guard let bundlePath = Bundle.app.path(forResource: "Internal", ofType: "bundle") else {
            return nil
        }

        return Bundle(path: bundlePath)
    }()
}

