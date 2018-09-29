//
//  AboutAppViewController.swift
//  Spotting
//
//  Created by micromanc3r on 26/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Cartography
import Foundation
import UIKit

class AboutAppViewController: NIViewController {
    let spottingLabel = UILabel()
    let authorLabel = UILabel()
    let versionLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareLayout()
    }
}

extension AboutAppViewController {
    private func prepareLayout() {
        view.backgroundColor = .white

        spottingLabel.text = R.string.localizable.aboutapp_title()
        authorLabel.text = R.string.localizable.aboutapp_author()
        versionLabel.text = "\(R.string.localizable.aboutapp_version())  \(UIApplication.versionString())"

        view.addSubview(spottingLabel)
        view.addSubview(authorLabel)
        view.addSubview(versionLabel)

        constrain(view.safeAreaLayoutGuide,
                  spottingLabel,
                  authorLabel,
                  versionLabel) { superview, spottingLabel, authorLabel, versionLabel in
            spottingLabel.top == superview.top + 32
            spottingLabel.centerX == superview.centerX

            authorLabel.bottom == versionLabel.bottom - 24
            authorLabel.centerX == versionLabel.centerX

            versionLabel.bottom == superview.bottom - 32
            versionLabel.centerX == superview.centerX
        }
    }
}
