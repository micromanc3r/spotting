//
//  AppDelegate.swift
//  Spotting
//
//  Created by micromanc3r on 06/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import MicroLogger
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var coordinator: MainCoordinator?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        setUpLogs()

        startCoordinatorFlow()

        return true
    }

    func startCoordinatorFlow() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        coordinator = MainCoordinator(withWindow: window,
                                      andStorage: DefaultSettingsStorage())
        coordinator?.start()
    }

    func setUpLogs() {
        #if DEBUG
            MLogger.logLevel = .verbose
        #else
            MLogger.logLevel = .error
        #endif
    }
}
