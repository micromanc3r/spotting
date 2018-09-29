//
//  UIApplication+Version.swift
//  Spotting
//
//  Created by micromanc3r on 29/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import UIKit

extension UIApplication {
    static func versionString() -> String {
        guard let info = Bundle.main.infoDictionary else {
            return ""
        }

        let version = info["CFBundleShortVersionString"] ?? ""
        let build = info["CFBundleVersion"] ?? ""

        return "\(version)(\(build))"
    }
}
