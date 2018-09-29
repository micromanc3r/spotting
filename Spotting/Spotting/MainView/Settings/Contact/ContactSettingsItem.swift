//
//  ContactSettingsItem.swift
//  Spotting
//
//  Created by micromanc3r on 28/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import MicroLogger
import UIKit

struct ContactSettingsItem: SettingsItem {
    var type: SettingsType
    var title: String
    var icon: UIImage?

    private let emailSender: EmailSender

    init() {
        let sender = EmailSender()
        type = .action({
            sender.sendEmail(to: Constants.Email.toEmail,
                             withSubject: Constants.Email.subject)
        })
        title = R.string.localizable.settings_contact()
        icon = R.image.icon()
        emailSender = sender
    }
}
