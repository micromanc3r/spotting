//
//  ChangePasswordSettingsItem.swift
//  Spotting
//
//  Created by micromanc3r on 28/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import UIKit

struct ChangePasswordSettingsItem: SettingsItem {
    var viewController: UIViewController
    var title: String
    var icon: UIImage?

    init() {
        self.viewController = ChangePasswordViewController()
        self.title = R.string.localizable.settingsChange_password()
        self.icon = R.image.icon()
    }
}
