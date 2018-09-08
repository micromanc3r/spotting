//
//  LoginViewDelegate.swift
//  Spotting
//
//  Created by micromanc3r on 08/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Foundation

protocol LoginViewDelegate: class {
    func loginSuccessful()
    func newUserSignUp()
    func retrieveForgottenPassword()
}
