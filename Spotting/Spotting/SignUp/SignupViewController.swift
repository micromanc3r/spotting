//
//  SignupViewController.swift
//  Spotting
//
//  Created by micromanc3r on 10/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import UIKit
import Cartography

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
        
        usernameField.placeholder = R.string.localizable.signup_username()
        emailField.placeholder = R.string.localizable.signup_email()
        passwordField.placeholder = R.string.localizable.signup_password()
        confirmPasswordField.placeholder = R.string.localizable.signup_confirm_password()
        
        signupButton.setTitle(R.string.localizable.signup_signup_button(),
                              for: .normal)
        signupButton.setTitleColor(.black,
                                   for: .normal)
        
        view.addSubview(usernameField)
        view.addSubview(emailField)
        view.addSubview(passwordField)
        view.addSubview(confirmPasswordField)
        view.addSubview(signupButton)
        
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
}
