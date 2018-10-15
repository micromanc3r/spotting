//
//  Coordinator.swift
//  Spotting
//
//  Created by micromanc3r on 06/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Foundation
import MicroLogger

protocol Coordinator: class {
    func start()
}

protocol CoordinatorDelegate: class {
    func didFinishCoordinating()
}
