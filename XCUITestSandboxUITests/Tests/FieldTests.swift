//
//  XCUITestSandboxUITests.swift
//  XCUITestSandboxUITests
//
//  Created by Kim Eklund on 4/11/20.
//  Copyright © 2020 Hacking with Swift. All rights reserved.
//

import XCTest

class FieldTests: XCTestCase {

    let app = XCUIApplication()

    override func setUp() {
        XCUIDevice.shared.orientation = .portrait
        app.launch()
        continueAfterFailure = false
    }

    func testTypingTextIntoField() {
        let textField = Elements.textField.anyElement
        textField.tap()
        textField.typeText("Hello")
        XCTAssert(textField.value as? String == Elements.textLabel.anyElement.label)
    }

    func testLabelIsEmptyWhenTextFieldIsEmpty() {
        let textField = Elements.textField.anyElement
        XCTAssert(textField.label == "")
        XCTAssert(textField.label == Elements.textLabel.anyElement.label)
    }
}
