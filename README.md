# XCTest-XCUITest
UI Automation using XCode's XCTest/XCUITest

Got sample project from: https://www.hackingwithswift.com/files/XCUITestSandbox.zip

Summary:

Added a handful of tests on a single-view iOS application which interacts on an assortment of XCUIElements. This is an extremely simple application that serves no purpose except to demonstrate interactions with different elements for UI Tests.
Tests are written in Swift.

Demonstrates:
* Added a new test target for UI tests
* setUp() method that initializes a test run with the simulator in the portrait orientation
* Tapping and typing text into a text field
* Moving a slider back and forth after adding an accessibility ID for the slider as opposed to using its % value for subscripting
* Grabbing the progress bar value via .progressIndicators and casting to a String that can be used for assertions
* Toggling segmented controls
* Tapping on buttons
* Excusing OS alerts
* Creating helper methods that take repeated code to be reused across test methods


Assertions:
* The text of a label equals an expected string result
* Compares the value of a progress bar % to an expected %
* Asserting the header static text in a navigation bar after it has been changed
* Checking for the existence of an OS alert
