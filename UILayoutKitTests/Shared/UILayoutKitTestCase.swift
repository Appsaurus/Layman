//
//  SharedTestUtils.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/16/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

#if canImport(AppKit)
import AppKit
#else
import UIKit
#endif

@testable import UILayoutKit
import XCTest
import SwiftTestUtils

class UILayoutKitTestCase: XCTestCase {
    let parentView = View()
    let view1 = View()
    let view2 = View()
    let relatedView = View()

    var viewArray: [UIView] {
        return [view1, view2]
    }
    let window = Window()

    override func setUp() {
        UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
        #if canImport(AppKit)
        window.contentView!.addSubview(parentView)
        #else
        window.addSubview(parentView)
        #endif
        [view1, view2, relatedView].forEach { (view) in
            parentView.addSubview(view)
        }

        parentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

    }

// sourcery:inline:auto:UILayoutKitTestCase.TemplateName
// sourcery:end
}
