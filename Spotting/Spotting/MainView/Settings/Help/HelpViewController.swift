//
//  HelpViewController.swift
//  Spotting
//
//  Created by micromanc3r on 26/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Cartography
import Foundation
import MicroLogger
import UIKit

class HelpViewController: NIViewController {
    let helpTable = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareLayout()
    }

    override func viewWillAppear(_: Bool) {
        if let selected = helpTable.indexPathForSelectedRow {
            helpTable.deselectRow(at: selected, animated: true)
        }
    }
}

extension HelpViewController {
    private func prepareLayout() {
        view.backgroundColor = .white
        title = R.string.localizable.settingsHelp()

        prepareHelpTable()

        constrain(view.safeAreaLayoutGuide,
                  helpTable) { superview, helpTable in
            helpTable.top == superview.top
            helpTable.left == superview.left
            helpTable.right == superview.right
            helpTable.bottom == superview.bottom
        }
    }

    private func prepareHelpTable() {
        helpTable.dataSource = self
        helpTable.delegate = self
        helpTable.register(UITableViewCell.self, forCellReuseIdentifier: "test")

        view.addSubview(helpTable)
    }
}

extension HelpViewController: UITableViewDataSource {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "test", for: indexPath)
    }
}

extension HelpViewController: UITableViewDelegate {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {
        MLogger.logVerbose(sender: self,
                           andMessage: "Help item selected")
    }
}
