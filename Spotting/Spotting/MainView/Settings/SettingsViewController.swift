//
//  SettingsViewController.swift
//  Spotting
//
//  Created by micromanc3r on 25/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Foundation

class SettingsViewController: NIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareLayout()
    }
}

extension SettingsViewController {
    private func prepareLayout() {
        title = R.string.localizable.settingsTitle()
        view.backgroundColor = .white
    }
}
