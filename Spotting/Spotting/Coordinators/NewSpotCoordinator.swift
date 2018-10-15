//
//  NewSpotCoordinator.swift
//  Spotting
//
//  Created by micromanc3r on 15/10/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import MicroLogger
import UIKit

class NewSpotCoordinator: Coordinator {
    let navigationController = UINavigationController()
    let presentingViewController: UIViewController

    weak var delegate: CoordinatorDelegate?

    init(presentingController: UIViewController) {
        presentingViewController = presentingController
    }

    func start() {
        navigationController.viewControllers = [NewSpotViewController(delegate: self)]
        presentingViewController.present(navigationController, animated: true)
    }

    deinit {
        MLogger.logVerbose(sender: self, andMessage: "deinit")
    }
}

extension NewSpotCoordinator: NewSpotDelegate {
    func closeNewSpot() {
        presentingViewController.dismiss(animated: true) { [weak self] in
            guard let self = self else { return }
            self.delegate?.didFinishCoordinating()
        }
    }
}
