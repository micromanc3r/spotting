//
//  HelpViewModel.swift
//  Spotting
//
//  Created by micromanc3r on 28/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Foundation

struct HelpViewModel {
    let items = [HelpDetail(title: R.string.localizable.help_spot_create_title(),
                            helpText: R.string.localizable.help_spot_create_message()),
                 HelpDetail(title: R.string.localizable.help_forgot_password_title(),
                            helpText: R.string.localizable.help_forgot_password_message()),
                 HelpDetail(title: R.string.localizable.help_map_pins_title(),
                            helpText: R.string.localizable.help_map_pins_message())]
}
