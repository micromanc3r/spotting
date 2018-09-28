//
//  AboutAppSettingsItem.swift
//  Spotting
//
//  Created by micromanc3r on 28/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import UIKit

struct AboutAppSettingsItem: SettingsItem {
    var viewController: UIViewController
    var title: String
    var icon: UIImage?

    init() {
        viewController = AboutAppViewController()
        title = R.string.localizable.settings_about_app()
        icon = R.image.icon()
    }
}
