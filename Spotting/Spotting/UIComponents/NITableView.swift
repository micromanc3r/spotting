//
//  NITableView.swift
//  Spotting
//
//  Created by micromanc3r on 30/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import UIKit

class NITableView: UITableView {
    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("Unavailable")
    }
    
    init() {
        super.init(frame: .zero, style: .plain)
    }
}
