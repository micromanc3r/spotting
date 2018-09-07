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
    func performLoginWith(_ credentials: LoginCredentials) {
        MLogger.logVerbose(sender: self,
                           andMessage: "Loggin in user: \(credentials.username)")
    }
}

struct LoginCredentials {
    var username: String
    var password: String
}
