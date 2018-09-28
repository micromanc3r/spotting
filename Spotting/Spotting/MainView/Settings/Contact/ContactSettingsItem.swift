//
//  ContactSettingsItem.swift
//  Spotting
//
//  Created by micromanc3r on 28/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import UIKit

struct ContactSettingsItem: SettingsItem {
    var viewController: UIViewController
    var title: String
    var icon: UIImage?

    init() {
        viewController = ContactViewController()
        title = R.string.localizable.settingsContact()
        icon = R.image.icon()
    }
}
