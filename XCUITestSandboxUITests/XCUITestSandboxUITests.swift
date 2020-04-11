//
//  XCUITestSandboxUITests.swift
//  XCUITestSandboxUITests
//
//  Created by Kim Eklund on 4/11/20.
//  Copyright © 2020 Hacking with Swift. All rights reserved.
//

import XCTest

class XCUITestSandboxUITests: XCTestCase {

    let app = XCUIApplication()

    override func setUp() {
        XCUIDevice.shared.orientation = .portrait
        app.launch()
        continueAfterFailure = false
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTypingTextIntoField() {
        let textField = app.textFields.element
        textField.tap()
        textField.typeText("Hello")
        XCTAssertTrue(app.staticTexts["labelID"].label == "Hello")
    }

    func testSlider() {
        let slider = app.sliders["Completion"]
        slider.adjust(toNormalizedSliderPosition: 1)
        let progress = app.progressIndicators["Progress"].value as! String
        XCTAssert(progress == "0%", "Progress value was: " + progress)

        slider.adjust(toNormalizedSliderPosition: 0)
        XCTAssert(progress == "0%", "Progress value was " + progress)
    }

    func testAlphaOmega() {
        let omega = app.segmentedControls.buttons["Omega"]
        let alpha = app.segmentedControls.buttons["Alpha"]
        omega.tap()
        XCTAssert(app.navigationBars["Omega"].staticTexts["Omega"].exists)

        alpha.tap()
        XCTAssert(app.navigationBars["Alpha"].staticTexts["Alpha"].exists)
    }

    func testColorAlerts() {
        let red = app.buttons["Red"]
        let redAlert = app.alerts["Red"]
        let green = app.buttons["Green"]
        let greenAlert = app.alerts["Green"]
        let blue = app.buttons["Blue"]
        let blueAlert = app.alerts["Blue"]

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
