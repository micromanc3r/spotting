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

        XCTAssertNil(loginView.passwordLabel.backgroundColor)
        XCTAssertNil(loginView.usernameLabel.backgroundColor)

        loginView.loginButton.sendActions(for: .touchUpInside)

        XCTAssertEqual(loginView.passwordLabel.backgroundColor, .red)
        XCTAssertEqual(loginView.passwordLabel.backgroundColor, .red)
    }

    func testInvalidUsername() {
        let loginView = LoginView { credentials in
            XCTAssertFalse(credentials.username.isEmpty)
            XCTAssertFalse(credentials.password.isEmpty)
        }

        loginView.passwordLabel.text = "validpassword"
        loginView.usernameLabel.text = "iu" // invalid username

        loginView.loginButton.sendActions(for: .touchUpInside)

        XCTAssertNil(loginView.passwordLabel.backgroundColor)
        XCTAssertEqual(loginView.usernameLabel.backgroundColor, .red)
    }
    
    func testInvalidPassword() {
        let loginView = LoginView { credentials in
            XCTAssertFalse(credentials.username.isEmpty)
            XCTAssertFalse(credentials.password.isEmpty)
        }
        
        loginView.passwordLabel.text = "ip" // invalid password
        loginView.usernameLabel.text = "validUsername"
        
        loginView.loginButton.sendActions(for: .touchUpInside)
        
        XCTAssertEqual(loginView.passwordLabel.backgroundColor, .red)
        XCTAssertNil(loginView.usernameLabel.backgroundColor)
    }
    
    func testHappyCase() {
        let loginView = LoginView { credentials in
            XCTAssertFalse(credentials.username.isEmpty)
            XCTAssertFalse(credentials.password.isEmpty)
            
            XCTAssertEqual(credentials.username, "validUsername")
            XCTAssertEqual(credentials.password, "validPassword")
        }
        
        loginView.passwordLabel.text = "validPassword"
        loginView.usernameLabel.text = "validUsername"
        
        loginView.loginButton.sendActions(for: .touchUpInside)
        
        XCTAssertNil(loginView.passwordLabel.backgroundColor)
        XCTAssertNil(loginView.usernameLabel.backgroundColor)
    }
}
