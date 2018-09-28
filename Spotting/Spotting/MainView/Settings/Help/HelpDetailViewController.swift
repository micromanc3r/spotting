//
//  HelpDetailViewController.swift
//  Spotting
//
//  Created by micromanc3r on 28/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Cartography
import UIKit

class HelpDetailViewController: NIViewController {
    let helpDetail: HelpDetail
    let helpText = UILabel()

    init(withDetail helpDetail: HelpDetail) {
        self.helpDetail = helpDetail
        super.init()

        prepareLayout()
    }
}

extension HelpDetailViewController {
    private func prepareLayout() {
        view.backgroundColor = .white
        title = helpDetail.title

        helpText.text = helpDetail.helpText

        view.addSubview(helpText)

        constrain(view.safeAreaLayoutGuide,
                  helpText) { superview, helpText in
            helpText.top == superview.top + 32
            helpText.right == superview.right + 32
            helpText.left == superview.left + 32
        }
    }
}
