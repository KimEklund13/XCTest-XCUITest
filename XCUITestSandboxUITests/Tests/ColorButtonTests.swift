//
//  ColorButtonTests.swift
//  XCUITestSandboxUITests
//
//  Created by Kim Eklund on 4/11/20.
//  Copyright © 2020 Hacking with Swift. All rights reserved.
//

import XCTest

class ColorButtonTests: XCTestCase {

    let app = XCUIApplication()

    override func setUp() {
        XCUIDevice.shared.orientation = .portrait
        app.launch()
        continueAfterFailure = false
    }

    func testColorAlerts() {
        let red = Elements.redButton.anyElement
        let redAlert = Elements.redAlert.anyElement
        let green = Elements.greenButton.anyElement
        let greenAlert = Elements.greenAlert.anyElement
        let blue = Elements.blueButton.anyElement
        let blueAlert = Elements.blueAlert.anyElement

        red.tap()
        XCTAssertTrue(redAlert.exists)
        acceptAlert(alert: redAlert)

        blue.tap()
        XCTAssertTrue(blueAlert.exists)
        acceptAlert(alert: blueAlert)

        green.tap()
        XCTAssertTrue(greenAlert.exists)
        acceptAlert(alert: greenAlert)
    }

    func acceptAlert(alert: XCUIElement) {
        alert.buttons["OK"].tap()
    }
}
