//
//  SignupViewController.swift
//  Spotting
//
//  Created by micromanc3r on 10/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Foundation

class SignupViewController: NIViewController {
    unowned let delegate: SignupDelegate
    
    init(withDelegate delegate: SignupDelegate) {
        self.delegate = delegate
        super.init()
    }
}
