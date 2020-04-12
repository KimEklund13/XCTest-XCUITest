//
//  SliderTests.swift
//  XCUITestSandboxUITests
//
//  Created by Kim Eklund on 4/11/20.
//  Copyright © 2020 Hacking with Swift. All rights reserved.
//

import XCTest

class SliderTests: XCTestCase {

    let app = XCUIApplication()

    override func setUp() {
        XCUIDevice.shared.orientation = .portrait
        app.launch()
        continueAfterFailure = false
    }

    func testSlider() {
        let slider = app.sliders["Completion"]
        slider.adjust(toNormalizedSliderPosition: 1)

        guard let progressEmpty = app.progressIndicators["Progress"].value as? String else {
            XCTFail()
            return
        }

        XCTAssert(progressEmpty == "0%", "Progress value was: " + progressEmpty)

        slider.adjust(toNormalizedSliderPosition: 0)
        guard let progressFull = app.progressIndicators["Progress"].value as? String else {
                   XCTFail()
                   return
               }
        XCTAssert(progressFull == "100%", "Progress value was " + progressFull)
    }
}
