//
//  MainCoordinator.swift
//  Spotting
//
//  Created by micromanc3r on 06/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import MicroLogger
import UIKit

class InitialCoordinator: Coordinator {
    let window: UIWindow
    let navigationController = UINavigationController()
    let settingsStorage: SettingsStorage

    init(withWindow window: UIWindow, andStorage storage: SettingsStorage) {
        self.window = window
        settingsStorage = storage
    }

    func start() {
        if settingsStorage.userIsLoggedIn() {
            #if DEBUG
                settingsStorage.store(loggedIn: false)
            #endif
            startMainFlow()
        } else {
            startLoginFlow()
        }
    }

    func startLoginFlow() {
        let loginVC = LoginViewController(withDelegate: self)
        navigationController.pushViewController(loginVC,
                                                animated: false)

        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }

    func startMainFlow() {
        let mainCoordinator = MainCoordinator(withWindow: window)
        mainCoordinator.start()
    }
}

extension InitialCoordinator: LoginViewDelegate {
    func loginSuccessful() {
        MLogger.logVerbose(sender: self,
                           andMessage: "Login successful")
        settingsStorage.store(loggedIn: true)
        startMainFlow()
    }

    func newUserSignUp() {
        MLogger.logVerbose(sender: self,
                           andMessage: "Go to sign up")
        let signupVC = SignupViewController(withDelegate: self)
        navigationController.pushViewController(signupVC,
                                                animated: true)
    }

    func retrieveForgottenPassword() {
        MLogger.logVerbose(sender: self,
                           andMessage: "Retrieve password")
        let forgotPasswordVC = ForgotPasswordViewController(withDelegate: self)
        navigationController.pushViewController(forgotPasswordVC,
                                                animated: true)
    }
}

extension InitialCoordinator: SignupDelegate {}

extension InitialCoordinator: ForgotPasswordDelegate {}
