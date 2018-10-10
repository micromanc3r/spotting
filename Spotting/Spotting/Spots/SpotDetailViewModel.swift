//
//  SpotDetailViewModel.swift
//  Spotting
//
//  Created by micromanc3r on 10/10/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Foundation

struct SpotDetailViewModel {
    let spot: Spot

    func detailRows() -> Int {
        return spot.detailFields.count
    }

    func detailValue(forRow row: Int) -> String {
        return spot.detailFields[row]
    }
}
