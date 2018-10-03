//
//  SpotsTableView.swift
//  Spotting
//
//  Created by micromanc3r on 30/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import UIKit

class SpotsTableView: NITableView {
    override init() {
        super.init()

        register(SpotTableViewCell.self, forCellReuseIdentifier: SpotTableViewCell.reuseIdentifier)
    }
}
