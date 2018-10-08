//
//  SpotDetailTableViewCell.swift
//  Spotting
//
//  Created by micromanc3r on 08/10/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Cartography
import UIKit

class SpotDetailTableViewCell: UITableViewCell {
    static let reuseIdentifier = "spotting.spotDetailTableViewCell"

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        prepareLayout()
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SpotDetailTableViewCell {
    private func prepareLayout() {}
}
