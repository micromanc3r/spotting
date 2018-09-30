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
    let spotsTableView = SpotsTableView()

    override init() {
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
        spotsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "test")
        view.addSubview(spotsTableView)
    }
}

extension SpotsListViewController: UITableViewDataSource {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "test", for: indexPath)
    }
}
