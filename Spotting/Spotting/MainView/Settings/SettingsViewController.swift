//
//  SettingsViewController.swift
//  Spotting
//
//  Created by micromanc3r on 25/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Cartography
import Foundation
import UIKit

class SettingsViewController: NIViewController {
    let tableView = UITableView()
    let viewModel = SettingsViewModel(withItems: [ChangePasswordSettingsItem(),
                                                  HelpSettingsItem(),
                                                  ContactSettingsItem(),
                                                  LogoutSettingsItem(),
                                                  PrivacyPolicySettingsItem(),
                                                  AboutAppSettingsItem()])

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareLayout()
    }

    override func viewWillAppear(_: Bool) {
        if let selected = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: selected,
                                  animated: true)
        }
    }
}

extension SettingsViewController {
    private func prepareLayout() {
        title = R.string.localizable.settingsTitle()
        view.backgroundColor = .white

        prepareScrollView()
    }

    private func prepareScrollView() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "test")
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)

        constrain(view, tableView) { superview, scrollView in
            scrollView.top == superview.top
            scrollView.left == superview.left
            scrollView.right == superview.right
            scrollView.bottom == superview.bottom
        }
    }
}

extension SettingsViewController: UITableViewDataSource {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return viewModel.settingsItems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "test", for: indexPath)
        cell.textLabel?.text = viewModel.settingsItems[indexPath.row].title
        return cell
    }
}

extension SettingsViewController: UITableViewDelegate {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        let targetVC = viewModel.settingsItems[indexPath.row].viewController
        navigationController?.pushViewController(targetVC,
                                                 animated: true)
    }
}
