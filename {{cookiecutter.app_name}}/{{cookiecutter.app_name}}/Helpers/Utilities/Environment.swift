//
//  Environment.swift
//  {{cookiecutter.app_name}}
//
//  Copyright © 2020 {{cookiecutter.company_name}}. All rights reserved.
//

import Foundation

public enum Environment {
    
    // MARK: - Keys
    
    private enum PlistKeys: String {
        case serverUrl = "ServerUrl"
        case bundleVersion = "CFBundleVersion"
        case appUrlScheme = "AppUrlScheme"
    }
    
    
    // MARK: - Plist
    
    private static let infoDictionary: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("Plist file not found")
        }
        return dict
    }()
    
    
    // MARK: - Plist values
    
    static let serverUrl: URL = URL(string: getUnwrappedValue(for: .serverUrl))!
    static let appUrlScheme: String = "\(getUnwrappedValue(for: .appUrlScheme))://"
    static let bundleVersion: String = getUnwrappedValue(for: .bundleVersion)
    
    
    // MARK: - Helper methods
    
    /// Get the unwrapped value associated with the key passed in param.
    /// - Parameter key: the plist key
    /// - Returns: the unwrapped value as String
    private static func getUnwrappedValue(for key: PlistKeys) -> String {
        guard let value = Environment.infoDictionary[key.rawValue] as? String else {
            fatalError("🛑 The \(key.rawValue) is not set in plist")
        }
        return value
    }
    
}
