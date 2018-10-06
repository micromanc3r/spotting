//
//  SpotDetailViewController.swift
//  Spotting
//
//  Created by micromanc3r on 06/10/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Cartography
import UIKit

class SpotDetailViewController: NIViewController {
    let spot: Spot

    let spotImageView = UIImageView()
    let titleLabel = UILabel()

    init(withSpot spot: Spot) {
        self.spot = spot
        super.init()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        prepareLayout()
    }
}

extension SpotDetailViewController {
    private func prepareLayout() {
        view.backgroundColor = .white

        prepareSpotImage()
        prepareSpotTitle()

        constrain(view, spotImageView, titleLabel) { superview, spotImageView, titleLabel in
            spotImageView.top == superview.top
            spotImageView.left == superview.left
            spotImageView.right == superview.right
            spotImageView.height == spotImageView.width

            titleLabel.bottom == spotImageView.bottom - 16
            titleLabel.left == spotImageView.left + 16
            titleLabel.right == spotImageView.right - 16
        }
    }

    private func prepareSpotImage() {
        spotImageView.image = spot.image
        view.addSubview(spotImageView)
    }

    private func prepareSpotTitle() {
        titleLabel.text = spot.title
        view.addSubview(titleLabel)
    }
}
