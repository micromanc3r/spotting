//
//  SettingsItem.swift
//  Spotting
//
//  Created by micromanc3r on 28/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import UIKit

protocol SettingsItem {
    var type: SettingsType { get }
    var title: String { get }
    var icon: UIImage? { get }
}

enum SettingsType {
    case viewController(UIViewController)
    case action(() -> Void)
}
