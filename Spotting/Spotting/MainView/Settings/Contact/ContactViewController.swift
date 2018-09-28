//
//  ContactViewController.swift
//  Spotting
//
//  Created by micromanc3r on 26/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Foundation
import UIKit

class ContactViewController: NIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareLayout()
    }
}

extension ContactViewController {
    private func prepareLayout() {
        view.backgroundColor = .gray
    }
}