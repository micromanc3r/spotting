//
//  SignupViewController.swift
//  Spotting
//
//  Created by micromanc3r on 10/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Cartography
import UIKit

class SignupViewController: NIViewController {
    unowned let delegate: SignupDelegate

    let usernameField = UITextField()
    let emailField = UITextField()
    let passwordField = UITextField()
    let confirmPasswordField = UITextField()

    let signupButton = UIButton()

    init(withDelegate delegate: SignupDelegate) {
        self.delegate = delegate
        super.init()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        prepareLayout()
    }
}

extension SignupViewController {
    func prepareLayout() {
        view.backgroundColor = .white

        prepareUsername()
        prepareEmail()
        preparePassword()
        prepareConfirmPassword()
        prepareSignUp()

        constrain(view,
                  usernameField,
                  emailField,
                  passwordField,
                  confirmPasswordField,
                  signupButton) { superview, usernameField, emailField, passwordField, confirmPasswordField, signupButton in
            usernameField.top == superview.safeAreaLayoutGuide.top + 32
            usernameField.centerX == superview.centerX

            emailField.top == usernameField.bottom + 32
            emailField.centerX == superview.centerX

            passwordField.top == emailField.bottom + 32
            passwordField.centerX == superview.centerX

            confirmPasswordField.top == passwordField.bottom + 32
            confirmPasswordField.centerX == superview.centerX

            signupButton.top == confirmPasswordField.bottom + 32
            signupButton.centerX == superview.centerX
        }
    }

    private func prepareUsername() {
        usernameField.placeholder = R.string.localizable.signup_username()
        view.addSubview(usernameField)
    }

    private func prepareEmail() {
        emailField.placeholder = R.string.localizable.signup_email()
        view.addSubview(emailField)
    }

    private func preparePassword() {
        passwordField.placeholder = R.string.localizable.signup_password()
        view.addSubview(passwordField)
    }

    private func prepareConfirmPassword() {
        confirmPasswordField.placeholder = R.string.localizable.signup_confirm_password()
        view.addSubview(confirmPasswordField)
    }

    private func prepareSignUp() {
        signupButton.setTitle(R.string.localizable.signup_signup_button(),
                              for: .normal)
        signupButton.setTitleColor(.black,
                                   for: .normal)
        view.addSubview(signupButton)
    }
}
