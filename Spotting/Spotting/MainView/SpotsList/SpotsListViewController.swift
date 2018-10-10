//
//  SpotsListViewController.swift
//  Spotting
//
//  Created by micromanc3r on 25/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Cartography
import UIKit

class SpotsListViewController: NIViewController {
    unowned var delegate: SpotListDelegate

    let spotsTableView = SpotsTableView()

    init(withDelegate delegate: SpotListDelegate) {
        self.delegate = delegate
        super.init()
        title = R.string.localizable.list_title()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareLayout()
    }
}

extension SpotsListViewController {
    private func prepareLayout() {
        view.backgroundColor = .white

        prepareSpotsTableView()

        constrain(view.safeAreaLayoutGuide,
                  spotsTableView) { superview, spotsTableView in
            spotsTableView.top == superview.top
            spotsTableView.left == superview.left
            spotsTableView.right == superview.right
            spotsTableView.bottom == superview.bottom
        }
    }

    private func prepareSpotsTableView() {
        spotsTableView.dataSource = self
        spotsTableView.delegate = self
        spotsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "test")
        view.addSubview(spotsTableView)
    }
}

extension SpotsListViewController: UITableViewDataSource {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: SpotTableViewCell.reuseIdentifier, for: indexPath)
    }
}

extension SpotsListViewController: UITableViewDelegate {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {
        let spot = Spot(title: "TEST",
                        userName: "User",
                        type: .ledge,
                        spotSurface: .concrete,
                        location: Location(lattitude: 0.2, longitude: 0.2),
                        image: R.image.icon(),
                        skate: true,
                        bike: true,
                        roller: true,
                        comments: [Comment(userName: "User2", text: "blabla")])
        delegate.showDetail(forSpot: spot)
    }
}
