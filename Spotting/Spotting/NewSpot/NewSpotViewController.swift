//
//  NewSpotViewController.swift
//  Spotting
//
//  Created by micromanc3r on 14/10/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import UIKit

class NewSpotViewController: NIViewController {
    unowned var delegate: NewSpotDelegate

    init(delegate: NewSpotDelegate) {
        self.delegate = delegate
        super.init()
        prepareLayout()
    }
}

extension NewSpotViewController {
    @objc private func close() {
        delegate.closeNewSpot()
    }
}

extension NewSpotViewController {
    private func prepareLayout() {
        view.backgroundColor = .white
        prepareCloseButton()
    }

    private func prepareCloseButton() {
        let closeBarButtonItem = UIBarButtonItem(title: R.string.localizable.new_spot_close(),
                                                 style: .done,
                                                 target: self,
                                                 action: #selector(close))
        navigationItem.leftBarButtonItem = closeBarButtonItem
    }
}
