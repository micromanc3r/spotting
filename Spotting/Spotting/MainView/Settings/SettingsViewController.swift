//
//  SettingsViewController.swift
//  Spotting
//
//  Created by micromanc3r on 25/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Foundation
import UIKit
import Cartography

class SettingsViewController: NIViewController {
    let tableView = UITableView()
    
    let viewModel = SettingsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareLayout()
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

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "test", for: indexPath)
    }
}