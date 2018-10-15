//
//  NewSpotFormView.swift
//  Spotting
//
//  Created by micromanc3r on 15/10/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Cartography
import UIKit

class NewSpotFormView: NIView {
    let spot: Spot

    let nameLabel = UILabel()
    let nameField = UITextField()

    init(existingSpot: Spot? = nil) {
        spot = existingSpot ?? Spot()
        super.init()

        prepareLayout()
    }
}

extension NewSpotFormView {
    private func prepareLayout() {
        prepareSpotName()
    }

    private func prepareSpotName() {
        nameLabel.text = R.string.localizable.new_spot_form_name()
        nameField.placeholder = R.string.localizable.new_spot_form_name()

        addSubview(nameLabel)
        addSubview(nameField)

        constrain(safeAreaLayoutGuide, nameLabel, nameField) { superview, nameLabel, nameField in
            nameLabel.top == superview.top + 16
            nameLabel.left == superview.left + 16
            nameLabel.right == superview.right - 16

            nameField.top == nameLabel.bottom + 8
            nameField.left == nameLabel.left
            nameField.right == nameLabel.right

            nameField.bottom == superview.bottom - 16 // TODO: remove
        }
    }
}
