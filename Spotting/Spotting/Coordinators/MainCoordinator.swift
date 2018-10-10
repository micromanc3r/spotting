//
//  MainCoordinator.swift
//  Spotting
//
//  Created by micromanc3r on 10/10/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    let window: UIWindow
    let navigationController = UINavigationController()

    init(withWindow window: UIWindow) {
        self.window = window
    }

    func start() {
        let spotsList = SpotsListViewController(withDelegate: self)
        let map = MapViewController()
        let settings = SettingsViewController()

        spotsList.tabBarItem = UITabBarItem(title: spotsList.title,
                                            image: R.image.icon(),
                                            selectedImage: R.image.icon())
        map.tabBarItem = UITabBarItem(title: map.title,
                                      image: R.image.icon(),
                                      selectedImage: R.image.icon())
        settings.tabBarItem = UITabBarItem(title: settings.title,
                                           image: R.image.icon(),
                                           selectedImage: R.image.icon())

        let mainVC = MainTabBarController(withViewControllers: [spotsList,
                                                                map,
                                                                settings])

        navigationController.view.backgroundColor = .white
        navigationController.viewControllers = [mainVC]

        guard let rootViewController = window.rootViewController else {
            window.rootViewController = navigationController
            window.makeKeyAndVisible()
            return
        }

        navigationController.view.frame = rootViewController.view.frame
        navigationController.view.layoutIfNeeded()

        UIView.transition(with: window,
                          duration: 0.3,
                          options: .transitionCrossDissolve,
                          animations: {
                              self.window.rootViewController = self.navigationController
                              self.window.makeKeyAndVisible()
                          },
                          completion: nil)
    }
}

extension MainCoordinator: SpotListDelegate {
    func showDetail(forSpot spot: Spot) {
        let detailVc = SpotDetailViewController(withSpot: spot, andDelegate: self)
        navigationController.pushViewController(detailVc, animated: true)
    }

    func showComments(forSpot spot: Spot) {
        let commentsVC = CommentsViewController(withComments: spot.comments)
        navigationController.pushViewController(commentsVC, animated: true)
    }
}
