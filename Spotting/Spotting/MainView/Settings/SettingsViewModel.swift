//
//  SettingsViewModel.swift
//  Spotting
//
//  Created by micromanc3r on 26/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Foundation

class SettingsViewModel {
    let settingsItems: [SettingsItem]
    
    init(withItems settingsItems: [SettingsItem]) {
        self.settingsItems = settingsItems
    }
}
