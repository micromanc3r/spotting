//
//  HelpSettingsItem.swift
//  Spotting
//
//  Created by micromanc3r on 28/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import UIKit

struct HelpSettingsItem: SettingsItem {
    var type: SettingsType
    var title: String
    var icon: UIImage?

    init() {
        type = .viewController(HelpViewController())
        title = R.string.localizable.settings_help()
        icon = R.image.icon()
    }
}
