//
//  MainCoordinator.swift
//  Spotting
//
//  Created by micromanc3r on 06/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import MicroLogger
import UIKit

class MainCoordinator: Coordinator {
    let window: UIWindow
    let navigationController = UINavigationController()
    let settingsStorage: SettingsStorage

    init(withWindow window: UIWindow, andStorage storage: SettingsStorage) {
        self.window = window
        settingsStorage = storage
    }

    func start() {
        if settingsStorage.userIsLoggedIn() {
            startMainFlow()
        } else {
            startLoginFlow()
        }
        window.makeKeyAndVisible()
    }

    func startLoginFlow() {
        let loginVC = LoginViewController(withDelegate: self)
        navigationController.pushViewController(loginVC,
                                                animated: false)

        window.rootViewController = navigationController
    }

    func startMainFlow() {
        window.rootViewController = navigationController
    }
}

extension MainCoordinator: LoginViewDelegate {
    func loginSuccessful() {
        MLogger.logVerbose(sender: self,
                           andMessage: "Login successful")
        
        let mainVC = MainTabBarController(withViewControllers: [SpotsListViewController(), SettingsViewController()])
        guard let rootViewController = window.rootViewController else {
            return
        }
        
        mainVC.view.frame = rootViewController.view.frame
        mainVC.view.layoutIfNeeded()
        
        UIView.transition(with: window,
                          duration: 0.3,
                          options: .transitionCrossDissolve,
                          animations: {
                            self.window.rootViewController = mainVC
        },
                          completion: nil)
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

extension MainCoordinator: SignupDelegate {
    
}

extension MainCoordinator: ForgotPasswordDelegate {
    
}
