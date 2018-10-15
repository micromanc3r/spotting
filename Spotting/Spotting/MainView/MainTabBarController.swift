//
//  MainTabBarController.swift
//  Spotting
//
//  Created by micromanc3r on 14/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import MicroLogger
import UIKit

class MainTabBarController: NITabBarController {
    unowned var tabBarDelegate: MainTabBarDelegate

    init(withViewControllers controllers: [UIViewController], tabBarDelegate: MainTabBarDelegate) {
        self.tabBarDelegate = tabBarDelegate
        super.init()

        delegate = self
        viewControllers = controllers
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareLayout()
    }
}

extension MainTabBarController {
    @objc private func createNewSpot() {
        MLogger.logVerbose(sender: self, andMessage: "Create new spot")
        tabBarDelegate.showNewSpotCreation()
    }
}

extension MainTabBarController {
    private func prepareLayout() {
        let newSpotButtonItem = UIBarButtonItem(title: R.string.localizable.new_spot(),
                                                style: .plain,
                                                target: self,
                                                action: #selector(createNewSpot))
        navigationItem.rightBarButtonItem = newSpotButtonItem
    }
}

extension MainTabBarController: UITabBarControllerDelegate {}
