//
//  Spot.swift
//  Spotting
//
//  Created by micromanc3r on 02/10/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import CoreLocation
import UIKit

struct Spot {
    var title: String
    var userName: String
    var type: SpotType
    var spotSurface: SpotSurface
    var location: Location
    var image: UIImage?
    var skate: Bool
    var bike: Bool
    var roller: Bool
    var comments: [Comment]

    var detailFields: [String] {
        return ["location", userName, type.rawValue, spotSurface.rawValue]
    }
}

enum SpotType: String {
    case ledge
}

enum SpotSurface: String {
    case concrete
}

struct Location {
    var lattitude: CLLocationDegrees
    var longitude: CLLocationDegrees
}
