//
//  LoginViewController.swift
//  Spotting
//
//  Created by micromanc3r on 06/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Cartography
import MicroLogger
import UIKit

class LoginViewController: NIViewController {
    unowned var delegate: LoginViewDelegate

    let titleLabel = UILabel()
    let loginView: LoginView
    let loginViewModel: LoginViewModel

    let signUpButton = UIButton()
    let forgotPasswordButton = UIButton()

    init(withDelegate delegate: LoginViewDelegate) {
        self.delegate = delegate

        let newModel = LoginViewModel(withDelegate: delegate)
        loginViewModel = newModel
        loginView = LoginView(loginAction: { credentials in
            newModel.performLoginWith(credentials)
        })
        super.init()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        prepareLayout()
    }
}

extension LoginViewController {
    func prepareLayout() {
        view.backgroundColor = .white

        prepareTitleLabel()
        prepareLoginView()
        prepareSignUpButton()
        prepareForgotPasswordButton()

        constrain(view,
                  titleLabel,
                  loginView,
                  signUpButton,
                  forgotPasswordButton) { superview, okLabel, loginView, signUpButton, forgotPasswordButton in
            okLabel.centerX == superview.centerX
            okLabel.top == superview.safeAreaLayoutGuide.top + 64

            loginView.centerY == superview.centerY
            loginView.left == superview.left + 64
            loginView.right == superview.right - 64

            signUpButton.centerX == superview.centerX
            signUpButton.top == loginView.bottom + 64

            forgotPasswordButton.centerX == superview.centerX
            forgotPasswordButton.top == signUpButton.bottom + 8
        }
    }

    private func prepareTitleLabel() {
        titleLabel.alpha = 1.0
        titleLabel.text = R.string.localizable.login_title()
        titleLabel.font = UIFont.systemFont(ofSize: 36,
                                            weight: .heavy)
        view.addSubview(titleLabel)
    }

    private func prepareLoginView() {
        view.addSubview(loginView)
    }

    private func prepareSignUpButton() {
        signUpButton.setTitleColor(.black, for: .normal)
        signUpButton.setTitle(R.string.localizable.login_signup_button(), for: .normal)
        signUpButton.addTarget(self,
                               action: #selector(signUp),
                               for: .touchUpInside)
        view.addSubview(signUpButton)
    }

    private func prepareForgotPasswordButton() {
        forgotPasswordButton.setTitleColor(.black, for: .normal)
        forgotPasswordButton.setTitle(R.string.localizable.login_forgot_button(), for: .normal)
        forgotPasswordButton.addTarget(self,
                                       action: #selector(forgotPassword),
                                       for: .touchUpInside)
        view.addSubview(forgotPasswordButton)
    }
}

extension LoginViewController {
    @objc private func signUp() {
        delegate.newUserSignUp()
    }

    @objc private func forgotPassword() {
        delegate.retrieveForgottenPassword()
    }
}
