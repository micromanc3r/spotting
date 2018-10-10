//
//  AppDelegate.swift
//  Spotting
//
//  Created by micromanc3r on 06/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import GoogleMaps
import GooglePlaces
import MicroLogger
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var coordinator: InitialCoordinator?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setUpLogs()
        setUpGoogleMaps()
        startCoordinatorFlow()

        return true
    }

    func startCoordinatorFlow() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        coordinator = InitialCoordinator(withWindow: window,
                                         andStorage: DefaultSettingsStorage())
        coordinator?.start()
    }

    private func setUpLogs() {
        #if DEBUG
            MLogger.logLevel = .verbose
        #else
            MLogger.logLevel = .error
        #endif
    }

    private func setUpGoogleMaps() {
        GMSServices.provideAPIKey(Constants.GoogleAPI.mapsApiKey)
        GMSPlacesClient.provideAPIKey(Constants.GoogleAPI.placesApiKey)
    }
}
