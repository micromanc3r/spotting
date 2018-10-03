//
//  SpotTableViewCell.swift
//  Spotting
//
//  Created by micromanc3r on 03/10/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Cartography
import UIKit

class SpotTableViewCell: UITableViewCell {
    static let reuseIdentifier = "spotting.spotTableViewCell"

    let spotImageView = UIImageView()
    let titleLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        prepareLayout()
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SpotTableViewCell {
    private func prepareLayout() {
        titleLabel.text = "test"
        spotImageView.image = R.image.icon()
        addSubview(spotImageView)
        addSubview(titleLabel)

        constrain(safeAreaLayoutGuide, spotImageView, titleLabel) { superview, spotImageView, titleLabel in
            titleLabel.top == superview.top + 8
            titleLabel.left == superview.left + 8
            titleLabel.right == superview.right - 8

            spotImageView.top == titleLabel.bottom + 8
            spotImageView.left == titleLabel.left
            spotImageView.right == titleLabel.right
            spotImageView.bottom == superview.bottom - 8
            spotImageView.height == spotImageView.width
        }
    }
}
