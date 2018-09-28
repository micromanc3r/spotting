//
//  SpotsListViewController.swift
//  Spotting
//
//  Created by micromanc3r on 25/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Foundation

class SpotsListViewController: NIViewController {
    
    override init() {
        super.init()
        title = R.string.localizable.listTitle()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareLayout()
    }
}

extension SpotsListViewController {
    private func prepareLayout() {
        view.backgroundColor = .white
    }
}
