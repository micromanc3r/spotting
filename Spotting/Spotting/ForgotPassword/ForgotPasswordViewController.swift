//
//  ForgotPasswordViewController.swift
//  Spotting
//
//  Created by micromanc3r on 11/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: NIViewController {
    unowned let delegate: ForgotPasswordDelegate
    
    init(withDelegate delegate: ForgotPasswordDelegate) {
        self.delegate = delegate
        super.init()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareLayout()
    }
    
    func prepareLayout() {
        view.backgroundColor = .white
    }
}
