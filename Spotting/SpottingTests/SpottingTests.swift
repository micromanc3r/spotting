//
//  SpottingTests.swift
//  SpottingTests
//
//  Created by micromanc3r on 06/09/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

@testable import Spotting
import XCTest

class LoginViewTests: XCTestCase {
    func testEmptyInit() {
        let loginView = LoginView { credentials in
            XCTAssertFalse(credentials.username.isEmpty)
            XCTAssertFalse(credentials.password.isEmpty)
        }

        XCTAssertNil(loginView.passwordField.backgroundColor)
        XCTAssertNil(loginView.usernameField.backgroundColor)

        loginView.loginButton.sendActions(for: .touchUpInside)

        XCTAssertEqual(loginView.passwordField.backgroundColor, .red)
        XCTAssertEqual(loginView.passwordField.backgroundColor, .red)
    }

    func testInvalidUsername() {
        let loginView = LoginView { credentials in
            XCTAssertFalse(credentials.username.isEmpty)
            XCTAssertFalse(credentials.password.isEmpty)
        }

        loginView.passwordField.text = "validpassword"
        loginView.usernameField.text = "iu" // invalid username

        loginView.loginButton.sendActions(for: .touchUpInside)

        XCTAssertNil(loginView.passwordField.backgroundColor)
        XCTAssertEqual(loginView.usernameField.backgroundColor, .red)
    }

    func testInvalidPassword() {
        let loginView = LoginView { credentials in
            XCTAssertFalse(credentials.username.isEmpty)
            XCTAssertFalse(credentials.password.isEmpty)
        }

        loginView.passwordField.text = "ip" // invalid password
        loginView.usernameField.text = "validUsername"

        loginView.loginButton.sendActions(for: .touchUpInside)

        XCTAssertEqual(loginView.passwordField.backgroundColor, .red)
        XCTAssertNil(loginView.usernameField.backgroundColor)
    }

    func testHappyCase() {
        let loginView = LoginView { credentials in
            XCTAssertFalse(credentials.username.isEmpty)
            XCTAssertFalse(credentials.password.isEmpty)

            XCTAssertEqual(credentials.username, "validUsername")
            XCTAssertEqual(credentials.password, "validPassword")
        }

        loginView.passwordField.text = "validPassword"
        loginView.usernameField.text = "validUsername"

        loginView.loginButton.sendActions(for: .touchUpInside)

        XCTAssertNil(loginView.passwordField.backgroundColor)
        XCTAssertNil(loginView.usernameField.backgroundColor)
    }
}
