//
//  LoginView.swift
//  Spotting
//
//  Created by micromanc3r on 06/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import MicroLogger
import UIKit
import Cartography

class LoginView: NIView {
    let loginButton = UIButton()
    let usernameField = UITextField()
    let passwordField = UITextField()

    let loginAction: (LoginCredentials) -> Void

    init(loginAction: @escaping (LoginCredentials) -> Void) {
        self.loginAction = loginAction
        super.init()

        prepareLayout()
    }

    private func prepareLayout() {
        loginButton.setTitle(R.string.localizable.login_view_button_title(),
                             for: .normal)
        loginButton.addTarget(self,
                              action: #selector(loginButtonPressed),
                              for: .touchUpInside)
        
        usernameField.placeholder = R.string.localizable.login_view_username_placeholder()
        passwordField.placeholder = R.string.localizable.login_view_password_placeholder()
        
        addSubview(loginButton)
        addSubview(usernameField)
        addSubview(passwordField)
        
        constrain(loginButton, usernameField, passwordField, self) { loginButton, usernameField, passwordField, superview in
            usernameField.top == superview.top + 8
            usernameField.left == superview.left + 8
            usernameField.right == superview.right - 8
            
            passwordField.top == usernameField.bottom + 8
            passwordField.left == superview.left + 8
            passwordField.right == superview.right - 8
            
            loginButton.top == passwordField.bottom + 24
            loginButton.centerX == superview.centerX
            loginButton.left >= superview.left + 8
            loginButton.right <= superview.right - 8
            
        }
    }
}

extension LoginView {
    @objc private func loginButtonPressed() {
        let usernameOk = validateUsername()
        let passwordOk = validatePassword()
        
        guard usernameOk && passwordOk else {
            // show error
            MLogger.logError(sender: self,
                             andMessage: "username or password text nok")
            return
        }
        
        loginAction(LoginCredentials(username: usernameField.text!,
                                     password: passwordField.text!))
    }
    
    private func validateUsername() -> Bool {
        guard let username = usernameField.text else {
            usernameField.showError()
            return false
        }
        
        guard username.count >= 3 else {
            usernameField.showError()
            return false
        }
        
        usernameField.hideError()
        return true
    }
    
    private func validatePassword() -> Bool {
        guard let password = passwordField.text else {
            passwordField.showError()
            return false
        }
        
        guard password.count >= 3 else {
            passwordField.showError()
            return false
        }
        
        passwordField.hideError()
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
