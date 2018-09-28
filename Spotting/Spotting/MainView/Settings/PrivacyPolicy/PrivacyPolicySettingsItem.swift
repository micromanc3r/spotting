//
//  PrivacyPolicySettingsItem.swift
//  Spotting
//
//  Created by micromanc3r on 28/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import UIKit

struct PrivacyPolicySettingsItem: SettingsItem {
    var viewController: UIViewController
    var title: String
    var icon: UIImage?

    init() {
        viewController = PrivacyPolicyViewController()
        title = R.string.localizable.settings_privacy_policy()
        icon = R.image.icon()
    }
}
