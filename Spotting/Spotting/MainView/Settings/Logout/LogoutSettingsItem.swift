//
//  LogoutSettingsItem.swift
//  Spotting
//
//  Created by micromanc3r on 28/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import MicroLogger
import UIKit

struct LogoutSettingsItem: SettingsItem {
    var type: SettingsType
    var title: String
    var icon: UIImage?

    init() {
        type = .action({
            MLogger.logVerbose(sender: LogoutSettingsItem.self, andMessage: "Logout")
        })
        title = R.string.localizable.settings_logout()
        icon = R.image.icon()
    }
}
