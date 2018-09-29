//
//  SimpleErrorAlert.swift
//  Spotting
//
//  Created by micromanc3r on 29/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import UIKit

struct SimpleErrorAlert {
    static func presentSimpleAlert(withTitle title: String?,
                                   message: String?,
                                   buttonTitle: String?,
                                   buttonHandler handler: ((UIAlertAction) -> Void)?) {
        let errorAlert = UIAlertController(title: title,
                                           message: message,
                                           preferredStyle: .alert)
        errorAlert.addAction(UIAlertAction(title: buttonTitle,
                                           style: .default,
                                           handler: handler))

        UIApplication.topViewController()?.present(errorAlert,
                                                   animated: true,
                                                   completion: nil)
    }
}
