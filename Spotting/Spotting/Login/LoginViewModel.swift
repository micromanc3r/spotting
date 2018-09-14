//
//  LoginViewModel.swift
//  Spotting
//
//  Created by micromanc3r on 06/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Foundation
import MicroLogger

class LoginViewModel {
    unowned var delegate: LoginViewDelegate
    
    init(withDelegate delegate: LoginViewDelegate) {
        self.delegate = delegate
    }
    
    func performLoginWith(_ credentials: LoginCredentials) {
        MLogger.logVerbose(sender: self,
                           andMessage: "Loggin in user: \(credentials.username)")
        delegate.loginSuccessful()
    }
}

struct LoginCredentials {
    var username: String
    var password: String
}
