//
//  MainTabBarController.swift
//  Spotting
//
//  Created by micromanc3r on 14/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import UIKit

class MainTabBarController: NITabBarController {
    override init() {
        super.init()
        
        delegate = self
    }
}

extension MainTabBarController: UITabBarControllerDelegate {
}
