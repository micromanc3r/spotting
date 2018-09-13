//
//  ForgotPasswordViewController.swift
//  Spotting
//
//  Created by micromanc3r on 11/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import UIKit
import Cartography

class ForgotPasswordViewController: NIViewController {
    unowned let delegate: ForgotPasswordDelegate
    
    let usernameTextField = UITextField()
    let emailTextField = UITextField()
    let sendEmailButton = UIButton()
    
    init(withDelegate delegate: ForgotPasswordDelegate) {
        self.delegate = delegate
        super.init()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareLayout()
    }
}

extension ForgotPasswordViewController {
    func prepareLayout() {
        view.backgroundColor = .white
        
        prepareUsername()
        prepareEmail()
        prepareSendEmail()
        
        constrain(view,
                  usernameTextField,
                  emailTextField,
                  sendEmailButton) { (superview, usernameTextField, emailTextField, sendEmailButton) in
                    usernameTextField.top == superview.safeAreaLayoutGuide.top + 32
                    usernameTextField.centerX == superview.centerX
                    
                    emailTextField.top == usernameTextField.bottom + 32
                    emailTextField.centerX == usernameTextField.centerX
                    
                    sendEmailButton.top == emailTextField.bottom + 32
                    sendEmailButton.centerX == emailTextField.centerX
        }
    }
    
    private func prepareUsername() {
        usernameTextField.placeholder = R.string.localizable.forgotpswd_username()
        view.addSubview(usernameTextField)
    }
    
    private func prepareEmail() {
        emailTextField.placeholder = R.string.localizable.forgotpswd_email()
        view.addSubview(emailTextField)
    }
    
    private func prepareSendEmail() {
        sendEmailButton.setTitle(R.string.localizable.forgotpswd_send_email(),
                                 for: .normal)
        sendEmailButton.setTitleColor(.black,
                                      for: .normal)
        view.addSubview(sendEmailButton)
    }
}
