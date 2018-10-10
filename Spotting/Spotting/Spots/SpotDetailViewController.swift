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
    let spotDetailTableView = SpotDetailTableView()

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
        prepareSpotDetailTableView()

        constrain(view.safeAreaLayoutGuide, spotImageView, titleLabel) { superview, spotImageView, titleLabel in
            spotImageView.top == superview.top
            spotImageView.left == superview.left
            spotImageView.right == superview.right
            spotImageView.height == spotImageView.width

            titleLabel.bottom == spotImageView.bottom - 16
            titleLabel.left == spotImageView.left + 16
            titleLabel.right == spotImageView.right - 16
        }

        constrain(view, spotImageView, spotDetailTableView) { superview, spotImageView, spotDetailTableView in
            spotDetailTableView.top == spotImageView.bottom
            spotDetailTableView.left == superview.left
            spotDetailTableView.right == superview.right
            spotDetailTableView.bottom == superview.bottom
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

    private func prepareSpotDetailTableView() {
        spotDetailTableView.dataSource = self
        view.addSubview(spotDetailTableView)
    }
}

extension SpotDetailViewController: UITableViewDataSource {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: SpotDetailTableViewCell.reuseIdentifier, for: indexPath)
    }
}
