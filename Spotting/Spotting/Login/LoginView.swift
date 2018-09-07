//
//  LoginView.swift
//  Spotting
//
//  Created by micromanc3r on 06/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import UIKit

class LoginView: NIView {
    let loginAction: (LoginCredentials) -> Void

    init(loginAction: @escaping (LoginCredentials) -> Void) {
        self.loginAction = loginAction
        super.init()
    }
}
