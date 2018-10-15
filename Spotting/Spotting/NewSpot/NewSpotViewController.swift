//
//  NewSpotViewController.swift
//  Spotting
//
//  Created by micromanc3r on 14/10/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Cartography
import UIKit

class NewSpotViewController: NIViewController {
    unowned var delegate: NewSpotDelegate
    let newSpotForm: NewSpotFormView

    init(delegate: NewSpotDelegate) {
        self.delegate = delegate
        newSpotForm = NewSpotFormView(existingSpot: NewSpotViewController.loadSavedSpotIfNeeded())

        super.init()
        prepareLayout()
    }
}

extension NewSpotViewController {
    @objc private func close() {
        delegate.closeNewSpot()
    }

    private static func loadSavedSpotIfNeeded() -> Spot? {
        return nil
    }
}

extension NewSpotViewController {
    private func prepareLayout() {
        view.backgroundColor = .white
        prepareCloseButton()

        view.addSubview(newSpotForm)

        constrain(view.safeAreaLayoutGuide, newSpotForm) { superview, newSpotForm in
            newSpotForm.top == superview.top
            newSpotForm.left == superview.left
            newSpotForm.right == superview.right
            newSpotForm.bottom == superview.bottom
        }
    }

    private func prepareCloseButton() {
        let closeBarButtonItem = UIBarButtonItem(title: R.string.localizable.new_spot_close(),
                                                 style: .done,
                                                 target: self,
                                                 action: #selector(close))
        navigationItem.leftBarButtonItem = closeBarButtonItem
    }
}
