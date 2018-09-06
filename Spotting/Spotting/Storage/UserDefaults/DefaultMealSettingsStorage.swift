//
//  DefaultSettingsStorage.swift
//  Spotting
//
//  Created by micromanc3r on 06/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Foundation
import MicroLogger

class DefaultSettingsStorage: SettingsStorage {
    let defaults = UserDefaults.standard

    func store(loggedIn: Bool) {
        MLogger.logVerbose(sender: self,
                           andMessage: "Storing: user is logged in - \(loggedIn)")
        defaults.set(loggedIn,
                     forKey: Key.loggedIn)
    }

    func userIsLoggedIn() -> Bool {
        let loggedIn = defaults.bool(forKey: Key.loggedIn)
        MLogger.logVerbose(sender: self,
                           andMessage: "Loading: user is logged in - \(loggedIn)")
        return loggedIn
    }
}

struct Key {
    static let loggedIn = "spotting.loggedIn"

    private init() {}
}
