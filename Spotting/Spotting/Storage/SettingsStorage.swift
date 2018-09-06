//
//  SettingsStorage.swift
//  Spotting
//
//  Created by micromanc3r on 06/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Foundation

protocol SettingsStorage {
    func store(loggedIn: Bool)
    // returns nil if not yet stored, number of meals otherwise
    func userIsLoggedIn() -> Bool
}
