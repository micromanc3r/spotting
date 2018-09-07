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
        loginView = LoginView(loginAction: { (credentials) in
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

        constrain(titleLabel) { okLabel in
            okLabel.centerX == okLabel.superview!.centerX
            okLabel.top == okLabel.superview!.safeAreaLayoutGuide.top + 64
        }
    }

    private func prepareTitleLabel() {
        titleLabel.alpha = 1.0
        titleLabel.text = R.string.localizable.login_title()
        titleLabel.font = UIFont.systemFont(ofSize: 36,
                                            weight: .heavy)
        view.addSubview(titleLabel)
    }
}
