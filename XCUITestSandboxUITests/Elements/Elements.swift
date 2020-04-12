//
//  Elements.swift
//  XCUITestSandboxUITests
//
//  Created by Kim Eklund on 4/11/20.
//  Copyright © 2020 Hacking with Swift. All rights reserved.
//

import XCTest

enum Elements: String {
    case textField = "Text Field"
    case textLabel = "LabelID"
    case slider = "Completion"
    case progressBarIndicator = "Progress Bar"
    case segmentedControlAlpha = "Alpha"
    case segmentedControlOmega = "Omega"
    case redButton = "Red Button"
    case blueButton = "Blue Button"
    case greenButton = "Green Button"
    case redAlert = "Red"
    case greenAlert = "Green"
    case blueAlert = "Blue"

    var anyElement: XCUIElement {
        return XCUIApplication().descendants(matching: .any)[self.rawValue].firstMatch
    }
}
