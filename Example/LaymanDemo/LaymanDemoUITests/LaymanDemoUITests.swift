//
//  LaymanDemoUITests.swift
//  LaymanDemoUITests
//
//  Created by Brian Strobach on 2/21/19.
//  Copyright © 2019 Hyper Interaktiv AS. All rights reserved.
//

import XCTest

class LaymanDemoUITests: XCTestCase {

    let app = XCUIApplication()
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.

        setupSnapshot(app)
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        XCUIDevice.shared.orientation = .landscapeLeft
        LayoutExample.allCases.forEach { enumCase in
            app.tables.staticTexts["\(enumCase)".uppercased()].tap()
            let containerView = app.otherElements["container"]
            Snapshot.snapshot("\(enumCase)", element: containerView)
            app.navigationBars.buttons.element(boundBy: 0).tap()
        }
    }

    func image(with view: UIView) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.isOpaque, 0.0)
        defer { UIGraphicsEndImageContext() }
        if let context = UIGraphicsGetCurrentContext() {
            view.layer.render(in: context)
            let image = UIGraphicsGetImageFromCurrentImageContext()
            return image
        }
        return nil
    }
}

extension Snapshot {
    open class func snapshot(_ name: String, timeWaitingForIdle timeout: TimeInterval = 20, element: XCUIElement) {
        if timeout > 0 {
            waitForLoadingIndicatorToDisappear(within: timeout)
        }

        print("snapshot: \(name)") // more information about this, check out https://docs.fastlane.tools/actions/snapshot/#how-does-it-work

        sleep(1) // Waiting for the animation to be finished (kind of)

        #if os(OSX)
        XCUIApplication().typeKey(XCUIKeyboardKeySecondaryFn, modifierFlags: [])
        #else

        guard let _ = self.app else {
            print("XCUIApplication is not set. Please call setupSnapshot(app) before snapshot().")
            return
        }

        let screenshot = element.screenshot()
        guard let simulator = ProcessInfo().environment["SIMULATOR_DEVICE_NAME"], let screenshotsDir = screenshotsDirectory else { return }
        let path = screenshotsDir.appendingPathComponent("\(simulator)-\(name).png")
        do {
            try screenshot.pngRepresentation.write(to: path)
        } catch let error {
            print("Problem writing screenshot: \(name) to \(path)")
            print(error)
        }
        #endif
    }
}
