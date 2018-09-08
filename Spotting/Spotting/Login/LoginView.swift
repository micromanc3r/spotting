//
//  LoginView.swift
//  Spotting
//
//  Created by micromanc3r on 06/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import MicroLogger
import UIKit

class LoginView: NIView {
    let loginButton = UIButton()
    let usernameLabel = UITextField()
    let passwordLabel = UITextField()

    let loginAction: (LoginCredentials) -> Void

    init(loginAction: @escaping (LoginCredentials) -> Void) {
        self.loginAction = loginAction
        super.init()

        loginButton.addTarget(self,
                              action: #selector(loginButtonPressed),
                              for: .touchUpInside)
    }

    @objc private func loginButtonPressed() {
        let usernameOk = validateUsername()
        let passwordOk = validatePassword()

        guard usernameOk && passwordOk else {
            // show error
            MLogger.logError(sender: self,
                             andMessage: "username or password text nok")
            return
        }

        loginAction(LoginCredentials(username: usernameLabel.text!,
                                     password: passwordLabel.text!))
    }

    private func validateUsername() -> Bool {
        guard let username = usernameLabel.text else {
            usernameLabel.showError()
            return false
        }

        guard username.count >= 3 else {
            usernameLabel.showError()
            return false
        }

        usernameLabel.hideError()
        return true
    }

    private func validatePassword() -> Bool {
        guard let password = passwordLabel.text else {
            passwordLabel.showError()
            return false
        }

        guard password.count >= 3 else {
            passwordLabel.showError()
            return false
        }

        passwordLabel.hideError()
        return true
    }
}

extension UITextField {
    func showError() {
        UIView.animate(withDuration: 0.2) {
            self.backgroundColor = .red
        }
    }

    func hideError() {
        UIView.animate(withDuration: 0.2) {
            self.backgroundColor = nil
        }
    }
}
