//
//  DeeplinkHandler.swift
//  {{cookiecutter.app_name}}
//
//  Copyright © {{cookiecutter.company_name}}. All rights reserved.
//

import Foundation

class DeeplinkHandler {

    enum Path: String {
        case resetPassword = "/api/password/reset" // example deeplink path
    }

    // MARK: Methods

    func handleDeeplink(with url: URL) {
        guard let components = URLComponents(url: url, resolvingAgainstBaseURL: true),
            let path = getPath(from: components) else {
                return
        }

        switch path {
        case .resetPassword:
            handleResetPasword(with: components)
        }
    }

    // MARK: Private methods

    private func getPath(from components: URLComponents) -> Path? {
        return Path(rawValue: components.path)
    }

    private func handleResetPasword(with components: URLComponents) {
        // implementation goes here, probably extract token from query items and send to api
    }
}
