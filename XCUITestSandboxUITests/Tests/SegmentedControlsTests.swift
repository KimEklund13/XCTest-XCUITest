//
//  ToggleTests.swift
//  XCUITestSandboxUITests
//
//  Created by Kim Eklund on 4/11/20.
//  Copyright © 2020 Hacking with Swift. All rights reserved.
//

import XCTest

class SegmentedControlsTests: XCTestCase {

    let app = XCUIApplication()

    override func setUp() {
        XCUIDevice.shared.orientation = .portrait
        app.launch()
        continueAfterFailure = false
    }

    func testAlphaOmega() {
        let omega = Elements.segmentedControlOmega.anyElement
        let alpha = Elements.segmentedControlAlpha.anyElement

        omega.tap()
        XCTAssert(app.navigationBars.element.identifier == "Omega")

        alpha.tap()
        XCTAssert(app.navigationBars.element.identifier == "Alpha")
    }
}
