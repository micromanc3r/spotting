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
    var title: String = ""
    var userName: String = ""
    var type: SpotType = .unknown
    var spotSurface: SpotSurface = .unknown
    var location: Location = Location(lattitude: 0, longitude: 0)
    var image: UIImage?
    var skate: Bool = false
    var bike: Bool = false
    var roller: Bool = false
    var comments: [Comment] = []

    var detailFields: [String] {
        return ["location", userName, type.rawValue, spotSurface.rawValue]
    }
}

enum SpotType: String {
    case unknown
    case ledge
}

enum SpotSurface: String {
    case unknown
    case concrete
}

struct Location {
    var lattitude: CLLocationDegrees
    var longitude: CLLocationDegrees
}
