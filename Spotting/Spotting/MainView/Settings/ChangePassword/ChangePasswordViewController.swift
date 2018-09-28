//
//  ChangePasswordViewController.swift
//  Spotting
//
//  Created by micromanc3r on 26/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Cartography
import Foundation
import UIKit

class ChangePasswordViewController: NIViewController {
    let oldPasswordTextField = UITextField()
    let newPasswordTextField = UITextField()
    let confirmPasswordTextField = UITextField()
    let changePasswordButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareLayout()
    }
}

extension ChangePasswordViewController {
    private func prepareLayout() {
        navigationItem.title = R.string.localizable.settings_change_password()
        view.backgroundColor = .white

        prepareOldPasswordTextField()
        prepareNewPasswordTextField()
        prepareConfirmPasswordTextField()
        prepareChangePasswordButton()

        constrain(view.safeAreaLayoutGuide,
                  oldPasswordTextField,
                  newPasswordTextField,
                  confirmPasswordTextField,
                  changePasswordButton) { superview, oldPasswordTextField, newPasswordTextField, confirmPasswordTextField, changePasswordButton in
            oldPasswordTextField.top == superview.top + 32
            oldPasswordTextField.left == superview.left + 32
            oldPasswordTextField.right == superview.right - 32

            newPasswordTextField.top == oldPasswordTextField.bottom + 8
            newPasswordTextField.left == superview.left + 32
            newPasswordTextField.right == superview.right - 32

            confirmPasswordTextField.top == newPasswordTextField.bottom + 8
            confirmPasswordTextField.left == superview.left + 32
            confirmPasswordTextField.right == superview.right - 32

            changePasswordButton.top == confirmPasswordTextField.bottom + 16
            changePasswordButton.left == superview.left + 32
            changePasswordButton.right == superview.right - 32
        }
    }

    private func prepareOldPasswordTextField() {
        oldPasswordTextField.placeholder = R.string.localizable.changepwd_old_password_placeholder()

        view.addSubview(oldPasswordTextField)
    }

    private func prepareNewPasswordTextField() {
        newPasswordTextField.placeholder = R.string.localizable.changepwd_new_password_placeholder()

        view.addSubview(newPasswordTextField)
    }

    private func prepareConfirmPasswordTextField() {
        confirmPasswordTextField.placeholder = R.string.localizable.changepwd_confirm_password_placeholder()

        view.addSubview(confirmPasswordTextField)
    }

    private func prepareChangePasswordButton() {
        changePasswordButton.setTitle(R.string.localizable.changepwd_change_password_button(),
                                      for: .normal)
        changePasswordButton.setTitleColor(.black,
                                           for: .normal)
        changePasswordButton.contentHorizontalAlignment = .center

        view.addSubview(changePasswordButton)
    }
}
