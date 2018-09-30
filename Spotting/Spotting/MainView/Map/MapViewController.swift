//
//  MapViewController.swift
//  Spotting
//
//  Created by micromanc3r on 29/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Foundation
import GoogleMaps

class MapViewController: NIViewController {
    override init() {
        super.init()
        title = R.string.localizable.map_title()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareLayout()
    }

    override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView

        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
    }
}

extension MapViewController {
    private func prepareLayout() {
        view.backgroundColor = .white
    }
}
