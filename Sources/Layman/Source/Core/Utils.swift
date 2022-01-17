//
//  Utils.swift
//  Layman
//
//  Created by Brian Strobach on 2/6/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import Foundation

internal var isTestOrDebug: Bool {
    #if DEBUG
    return true
    #else
    return isRunningUnitTests()
    #endif
}

// Detect if the app is running unit tests.
// Note this only detects unit tests, not UI tests.
internal func isRunningUnitTests() -> Bool {

    let env = ProcessInfo.processInfo.environment
    if let injectBundle = env["XCInjectBundle"], let url = URL(string: injectBundle) {
        return url.pathExtension == "xctest"
    }
    return NSClassFromString("XCTest") != nil
}
