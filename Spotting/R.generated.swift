//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
    fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
    fileprivate static let hostingBundle = Bundle(for: R.Class.self)

    static func validate() throws {
        try intern.validate()
    }

    /// This `R.color` struct is generated, and contains static references to 0 colors.
    struct color {
        fileprivate init() {}
    }

    /// This `R.file` struct is generated, and contains static references to 1 files.
    struct file {
        /// Resource file `GoogleMaps.bundle`.
        static let googleMapsBundle = Rswift.FileResource(bundle: R.hostingBundle, name: "GoogleMaps", pathExtension: "bundle")

        /// `bundle.url(forResource: "GoogleMaps", withExtension: "bundle")`
        static func googleMapsBundle(_: Void = ()) -> Foundation.URL? {
            let fileResource = R.file.googleMapsBundle
            return fileResource.bundle.url(forResource: fileResource)
        }

        fileprivate init() {}
    }

    /// This `R.font` struct is generated, and contains static references to 0 fonts.
    struct font {
        fileprivate init() {}
    }

    /// This `R.image` struct is generated, and contains static references to 1 images.
    struct image {
        /// Image `icon`.
        static let icon = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon")

        /// `UIImage(named: "icon", bundle: ..., traitCollection: ...)`
        static func icon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
            return UIKit.UIImage(resource: R.image.icon, compatibleWith: traitCollection)
        }

        fileprivate init() {}
    }

    /// This `R.nib` struct is generated, and contains static references to 0 nibs.
    struct nib {
        fileprivate init() {}
    }

    /// This `R.reuseIdentifier` struct is generated, and contains static references to 0 reuse identifiers.
    struct reuseIdentifier {
        fileprivate init() {}
    }

    /// This `R.segue` struct is generated, and contains static references to 0 view controllers.
    struct segue {
        fileprivate init() {}
    }

    /// This `R.storyboard` struct is generated, and contains static references to 1 storyboards.
    struct storyboard {
        /// Storyboard `LaunchScreen`.
        static let launchScreen = _R.storyboard.launchScreen()

        /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
        static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
            return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
        }

        fileprivate init() {}
    }

    /// This `R.string` struct is generated, and contains static references to 1 localization tables.
    struct string {
        /// This `R.string.localizable` struct is generated, and contains static references to 40 localization keys.
        struct localizable {
            /// Value: About app
            static let settings_about_app = Rswift.StringResource(key: "settings_about_app", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Author: Milan Jiříček & Miroslav Sliacky
            static let aboutapp_author = Rswift.StringResource(key: "aboutapp_author", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Change password
            static let changepwd_change_password_button = Rswift.StringResource(key: "changepwd_change_password_button", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Change password
            static let settings_change_password = Rswift.StringResource(key: "settings_change_password", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Confirm new password
            static let changepwd_confirm_password_placeholder = Rswift.StringResource(key: "changepwd_confirm_password_placeholder", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Confirm password
            static let signup_confirm_password = Rswift.StringResource(key: "signup_confirm_password", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Contact
            static let settings_contact = Rswift.StringResource(key: "settings_contact", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Current password
            static let changepwd_old_password_placeholder = Rswift.StringResource(key: "changepwd_old_password_placeholder", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: E-mail
            static let forgotpswd_email = Rswift.StringResource(key: "forgotpswd_email", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: E-mail
            static let signup_email = Rswift.StringResource(key: "signup_email", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: E-mail cannot be sent.
            static let help_contact_cantsendemail_title = Rswift.StringResource(key: "help_contact_cantsendemail_title", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: E-mail sent successfuly.
            static let help_contact_emailsent_title = Rswift.StringResource(key: "help_contact_emailsent_title", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Forgot password?
            static let login_forgot_button = Rswift.StringResource(key: "login_forgot_button", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Help
            static let settings_help = Rswift.StringResource(key: "settings_help", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: How to create spot?
            static let help_spot_create_title = Rswift.StringResource(key: "help_spot_create_title", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: I have forgotten my password.
            static let help_forgot_password_title = Rswift.StringResource(key: "help_forgot_password_title", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Just do it
            static let help_spot_create_message = Rswift.StringResource(key: "help_spot_create_message", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Login
            static let login_view_button_title = Rswift.StringResource(key: "login_view_button_title", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Logout
            static let settings_logout = Rswift.StringResource(key: "settings_logout", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Map
            static let map_title = Rswift.StringResource(key: "map_title", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: New password
            static let changepwd_new_password_placeholder = Rswift.StringResource(key: "changepwd_new_password_placeholder", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: OK
            static let help_contact_cantsendemail_Button = Rswift.StringResource(key: "help_contact_cantsendemail_Button", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: OK
            static let help_contact_emailsent_Button = Rswift.StringResource(key: "help_contact_emailsent_Button", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Password
            static let login_view_password_placeholder = Rswift.StringResource(key: "login_view_password_placeholder", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Password
            static let signup_password = Rswift.StringResource(key: "signup_password", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Privacy policy
            static let settings_privacy_policy = Rswift.StringResource(key: "settings_privacy_policy", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Send email
            static let forgotpswd_send_email = Rswift.StringResource(key: "forgotpswd_send_email", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Settings
            static let settings_title = Rswift.StringResource(key: "settings_title", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Sign up
            static let login_signup_button = Rswift.StringResource(key: "login_signup_button", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Sign up
            static let signup_signup_button = Rswift.StringResource(key: "signup_signup_button", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Spots
            static let list_title = Rswift.StringResource(key: "list_title", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Spots...
            static let help_map_pins_message = Rswift.StringResource(key: "help_map_pins_message", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Spotting
            static let aboutapp_title = Rswift.StringResource(key: "aboutapp_title", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Spotting
            static let login_title = Rswift.StringResource(key: "login_title", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Too bad...
            static let help_forgot_password_message = Rswift.StringResource(key: "help_forgot_password_message", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Username
            static let forgotpswd_username = Rswift.StringResource(key: "forgotpswd_username", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Username
            static let login_view_username_placeholder = Rswift.StringResource(key: "login_view_username_placeholder", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Username
            static let signup_username = Rswift.StringResource(key: "signup_username", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: Version
            static let aboutapp_version = Rswift.StringResource(key: "aboutapp_version", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)
            /// Value: What do the map pins mean?
            static let help_map_pins_title = Rswift.StringResource(key: "help_map_pins_title", tableName: "Localizable", bundle: R.hostingBundle, locales: [], comment: nil)

            /// Value: About app
            static func settings_about_app(_: Void = ()) -> String {
                return NSLocalizedString("settings_about_app", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Author: Milan Jiříček & Miroslav Sliacky
            static func aboutapp_author(_: Void = ()) -> String {
                return NSLocalizedString("aboutapp_author", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Change password
            static func changepwd_change_password_button(_: Void = ()) -> String {
                return NSLocalizedString("changepwd_change_password_button", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Change password
            static func settings_change_password(_: Void = ()) -> String {
                return NSLocalizedString("settings_change_password", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Confirm new password
            static func changepwd_confirm_password_placeholder(_: Void = ()) -> String {
                return NSLocalizedString("changepwd_confirm_password_placeholder", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Confirm password
            static func signup_confirm_password(_: Void = ()) -> String {
                return NSLocalizedString("signup_confirm_password", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Contact
            static func settings_contact(_: Void = ()) -> String {
                return NSLocalizedString("settings_contact", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Current password
            static func changepwd_old_password_placeholder(_: Void = ()) -> String {
                return NSLocalizedString("changepwd_old_password_placeholder", bundle: R.hostingBundle, comment: "")
            }

            /// Value: E-mail
            static func forgotpswd_email(_: Void = ()) -> String {
                return NSLocalizedString("forgotpswd_email", bundle: R.hostingBundle, comment: "")
            }

            /// Value: E-mail
            static func signup_email(_: Void = ()) -> String {
                return NSLocalizedString("signup_email", bundle: R.hostingBundle, comment: "")
            }

            /// Value: E-mail cannot be sent.
            static func help_contact_cantsendemail_title(_: Void = ()) -> String {
                return NSLocalizedString("help_contact_cantsendemail_title", bundle: R.hostingBundle, comment: "")
            }

            /// Value: E-mail sent successfuly.
            static func help_contact_emailsent_title(_: Void = ()) -> String {
                return NSLocalizedString("help_contact_emailsent_title", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Forgot password?
            static func login_forgot_button(_: Void = ()) -> String {
                return NSLocalizedString("login_forgot_button", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Help
            static func settings_help(_: Void = ()) -> String {
                return NSLocalizedString("settings_help", bundle: R.hostingBundle, comment: "")
            }

            /// Value: How to create spot?
            static func help_spot_create_title(_: Void = ()) -> String {
                return NSLocalizedString("help_spot_create_title", bundle: R.hostingBundle, comment: "")
            }

            /// Value: I have forgotten my password.
            static func help_forgot_password_title(_: Void = ()) -> String {
                return NSLocalizedString("help_forgot_password_title", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Just do it
            static func help_spot_create_message(_: Void = ()) -> String {
                return NSLocalizedString("help_spot_create_message", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Login
            static func login_view_button_title(_: Void = ()) -> String {
                return NSLocalizedString("login_view_button_title", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Logout
            static func settings_logout(_: Void = ()) -> String {
                return NSLocalizedString("settings_logout", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Map
            static func map_title(_: Void = ()) -> String {
                return NSLocalizedString("map_title", bundle: R.hostingBundle, comment: "")
            }

            /// Value: New password
            static func changepwd_new_password_placeholder(_: Void = ()) -> String {
                return NSLocalizedString("changepwd_new_password_placeholder", bundle: R.hostingBundle, comment: "")
            }

            /// Value: OK
            static func help_contact_cantsendemail_Button(_: Void = ()) -> String {
                return NSLocalizedString("help_contact_cantsendemail_Button", bundle: R.hostingBundle, comment: "")
            }

            /// Value: OK
            static func help_contact_emailsent_Button(_: Void = ()) -> String {
                return NSLocalizedString("help_contact_emailsent_Button", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Password
            static func login_view_password_placeholder(_: Void = ()) -> String {
                return NSLocalizedString("login_view_password_placeholder", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Password
            static func signup_password(_: Void = ()) -> String {
                return NSLocalizedString("signup_password", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Privacy policy
            static func settings_privacy_policy(_: Void = ()) -> String {
                return NSLocalizedString("settings_privacy_policy", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Send email
            static func forgotpswd_send_email(_: Void = ()) -> String {
                return NSLocalizedString("forgotpswd_send_email", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Settings
            static func settings_title(_: Void = ()) -> String {
                return NSLocalizedString("settings_title", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Sign up
            static func login_signup_button(_: Void = ()) -> String {
                return NSLocalizedString("login_signup_button", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Sign up
            static func signup_signup_button(_: Void = ()) -> String {
                return NSLocalizedString("signup_signup_button", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Spots
            static func list_title(_: Void = ()) -> String {
                return NSLocalizedString("list_title", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Spots...
            static func help_map_pins_message(_: Void = ()) -> String {
                return NSLocalizedString("help_map_pins_message", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Spotting
            static func aboutapp_title(_: Void = ()) -> String {
                return NSLocalizedString("aboutapp_title", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Spotting
            static func login_title(_: Void = ()) -> String {
                return NSLocalizedString("login_title", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Too bad...
            static func help_forgot_password_message(_: Void = ()) -> String {
                return NSLocalizedString("help_forgot_password_message", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Username
            static func forgotpswd_username(_: Void = ()) -> String {
                return NSLocalizedString("forgotpswd_username", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Username
            static func login_view_username_placeholder(_: Void = ()) -> String {
                return NSLocalizedString("login_view_username_placeholder", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Username
            static func signup_username(_: Void = ()) -> String {
                return NSLocalizedString("signup_username", bundle: R.hostingBundle, comment: "")
            }

            /// Value: Version
            static func aboutapp_version(_: Void = ()) -> String {
                return NSLocalizedString("aboutapp_version", bundle: R.hostingBundle, comment: "")
            }

            /// Value: What do the map pins mean?
            static func help_map_pins_title(_: Void = ()) -> String {
                return NSLocalizedString("help_map_pins_title", bundle: R.hostingBundle, comment: "")
            }

            fileprivate init() {}
        }

        fileprivate init() {}
    }

    fileprivate struct intern: Rswift.Validatable {
        fileprivate static func validate() throws {
            // There are no resources to validate
        }

        fileprivate init() {}
    }

    fileprivate class Class {}

    fileprivate init() {}
}

struct _R {
    struct nib {
        fileprivate init() {}
    }

    struct storyboard {
        struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType {
            typealias InitialController = UIKit.UIViewController

            let bundle = R.hostingBundle
            let name = "LaunchScreen"

            fileprivate init() {}
        }

        fileprivate init() {}
    }

    fileprivate init() {}
}
