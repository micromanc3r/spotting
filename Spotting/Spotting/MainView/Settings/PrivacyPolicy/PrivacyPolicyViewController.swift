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

class PrivacyPolicyViewController: NIViewController {
    let privacyTextView = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareLayout()
    }
}

extension PrivacyPolicyViewController {
    private func prepareLayout() {
        view.backgroundColor = .white
        title = R.string.localizable.settings_privacy_policy()

        preparePrivacyTextView()

        constrain(view.safeAreaLayoutGuide,
                  privacyTextView) { superview, privacyTextView in
            privacyTextView.top == superview.top
            privacyTextView.left == superview.left
            privacyTextView.right == superview.right
            privacyTextView.bottom == superview.bottom
        }
    }

    private func preparePrivacyTextView() {
        privacyTextView.text = "Privacy Text"

        view.addSubview(privacyTextView)
    }
}
