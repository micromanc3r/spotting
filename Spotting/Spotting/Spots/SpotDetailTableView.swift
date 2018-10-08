//
//  SpotDetailTableView.swift
//  Spotting
//
//  Created by micromanc3r on 08/10/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Foundation

class SpotDetailTableView: NITableView {
    override init() {
        super.init()

        register(SpotDetailTableViewCell.self, forCellReuseIdentifier: SpotDetailTableViewCell.reuseIdentifier)
    }
}
