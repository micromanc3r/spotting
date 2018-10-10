//
//  SpotsListDelegate.swift
//  Spotting
//
//  Created by micromanc3r on 10/10/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Foundation

protocol SpotListDelegate: class {
    func showComments(forSpot spot: Spot)
    func showDetail(forSpot spot: Spot)
}
