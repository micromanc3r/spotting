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
        let loginVC = LoginViewController()
        navigationController.pushViewController(loginVC,
                                                animated: false)

        window.rootViewController = navigationController
    }

    func startMainFlow() {
        window.rootViewController = navigationController
    }
}
