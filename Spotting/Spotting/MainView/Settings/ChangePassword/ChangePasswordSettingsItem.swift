//
//  ChangePasswordSettingsItem.swift
//  Spotting
//
//  Created by micromanc3r on 28/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import UIKit

struct ChangePasswordSettingsItem: SettingsItem {
    var type: SettingsType
    var title: String
    var icon: UIImage?

    init() {
        type = .viewController(ChangePasswordViewController())
        title = R.string.localizable.settings_change_password()
        icon = R.image.icon()
    }
}
