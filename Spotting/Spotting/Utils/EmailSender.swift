//
//  EmailSender.swift
//  Spotting
//
//  Created by micromanc3r on 29/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Foundation
import MessageUI

class EmailSender: NSObject, MFMailComposeViewControllerDelegate {
    func sendEmail(to: String, withSubject subject: String) {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients([to])
            mail.setSubject(subject)

            UIApplication.topViewController()?.present(mail, animated: true)
        } else {
            SimpleErrorAlert.presentSimpleAlert(withTitle: R.string.localizable.help_contact_cantsendemail_title(),
                                                message: nil,
                                                buttonTitle: R.string.localizable.help_contact_cantsendemail_Button(),
                                                buttonHandler: nil)
        }
    }

    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error _: Error?) {
        controller.dismiss(animated: true) {
            if result == .sent {
                SimpleErrorAlert.presentSimpleAlert(withTitle: R.string.localizable.help_contact_emailsent_title(),
                                                    message: nil,
                                                    buttonTitle: R.string.localizable.help_contact_emailsent_Button(),
                                                    buttonHandler: nil)
            }
        }
    }
}
