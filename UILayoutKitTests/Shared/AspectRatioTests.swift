//
//  AspectRatioTests.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/24/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@testable import UILayoutKit
import XCTest
import CwlPreconditionTesting

class AspectRatioTests: UILayoutKitTestCase {

    func testAmbiguityCheckValidSize() {
        view1.sizeAnchors .= 200
        XCTAssertFalse(view1.hasAmbiguousSize)

        view2.edgeAnchors .= parentView.edgeAnchors
        XCTAssertFalse(view2.hasAmbiguousSize)
    }

    func testAmbiguityCheckInvalidHeight() {
        view1.widthAnchor .= 200
        XCTAssertFalse(view1.hasAmbiguousWidth)
        XCTAssert(view1.hasAmbiguousHeight)
        XCTAssert(view1.hasAmbiguousSize)

        view2.horizontalEdges .= parentView.horizontalEdges
        XCTAssertFalse(view2.hasAmbiguousWidth)
        XCTAssert(view2.hasAmbiguousHeight)
        XCTAssert(view2.hasAmbiguousSize)
    }

    func testAmbiguityCheckInvalidWidth() {
        view1.heightAnchor .= 200
        XCTAssert(view1.hasAmbiguousWidth)
        XCTAssertFalse(view1.hasAmbiguousHeight)
        XCTAssert(view1.hasAmbiguousSize)

        view2.verticalEdges .= parentView.verticalEdges
        XCTAssert(view2.hasAmbiguousWidth)
        XCTAssertFalse(view2.hasAmbiguousHeight)
        XCTAssert(view2.hasAmbiguousSize)
    }

    func testAspectRatioPrecondition() {
        let caughtWidthPreconditionError = catchBadInstruction { [weak self] in
            guard let self = self else { return }
            self.view1.aspectRatioAnchor .= .wide
        }

        XCTAssertNotNil(caughtWidthPreconditionError)

        let caughtHeightPreconditionError = catchBadInstruction { [weak self] in
            guard let self = self else { return }
            self.view1.aspectRatioInverseAnchor .= .wide
        }

        XCTAssertNotNil(caughtHeightPreconditionError)
    }

    func testAspectRatio() {
        view1.widthAnchor .= 160
        let aspectRatioConstraint = view1.aspectRatioAnchor .= .wide
        aspectRatioConstraint.assert(view1, .height, .equal, view1, .width, multiplier: 16.0/9.0)
    }

    func testInverseAspectRatio() {
        view1.heightAnchor .= 90
        let aspectRatioConstraint = view1.aspectRatioInverseAnchor .= .wide
        aspectRatioConstraint.assert(view1, .width, .equal, view1, .height, multiplier: 9.0/16.0)
    }


// sourcery:inline:auto:AspectRatioTests.TemplateName
// sourcery:end
}
