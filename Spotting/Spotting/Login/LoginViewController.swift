//
//  LoginViewController.swift
//  Spotting
//
//  Created by micromanc3r on 06/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Cartography
import UIKit

class LoginViewController: NIViewController {
    let titleLabel = UILabel()
    let loginView: LoginView
    let loginViewModel: LoginViewModel

    override init() {
        let newModel = LoginViewModel()
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

        constrain(view, titleLabel, loginView) { superview, okLabel, loginView in
            okLabel.centerX == superview.centerX
            okLabel.top == superview.safeAreaLayoutGuide.top + 64
            
            loginView.centerY == superview.centerY
            loginView.left == superview.left + 64
            loginView.right == superview.right - 64
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
}
