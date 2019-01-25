//
//  XAxisAnchorArrayTests.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/25/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// swiftlint:disable file_length type_body_length


@testable import UILayoutKit
import XCTest

// sourcery: anchorEquationTest
// sourcery: lhsAttributes = leading, lhsAttributes = centerX, lhsAttributes = trailing
// sourcery: rhsAttributes = leading, rhsAttributes = centerX, rhsAttributes = trailing
// sourcery: lhsItem = viewArray
class XAxisAnchorArrayTests: UILayoutKitTestCase {


// sourcery:inline:auto:XAxisAnchorArrayTests.EquationTests

// MARK: viewArrayLeading <=> relatedViewLeading
    public func testViewArrayLeadingEqualLeading() {
        let constraints = viewArray.leadingAnchor .= relatedView.leading
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading)
    }

    public func testViewArrayLeadingEqualLeadingPlusConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.leading + 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10)
    }

    public func testViewArrayLeadingEqualLeadingMinusConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.leading - 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: -10)
    }

    public func testViewArrayLeadingEqualLeadingMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.leading * 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    public func testViewArrayLeadingEqualLeadingMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor .= 3 * relatedView.leading
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    public func testViewArrayLeadingEqualLeadingDividedByConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.leading / 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    public func testViewArrayLeadingEqualLeadingWithPriority() {
        let constraints = viewArray.leadingAnchor .= relatedView.leading ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, priority: .low)
    }

    public func testViewArrayLeadingEqualLeadingWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor .= relatedView.leading ~ .high - 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 749)
    }

    public func testViewArrayLeadingLessThanOrEqualLeading() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.leading
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading)
    }

    public func testViewArrayLeadingLessThanOrEqualLeadingPlusConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.leading + 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    public func testViewArrayLeadingLessThanOrEqualLeadingMinusConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.leading - 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    public func testViewArrayLeadingLessThanOrEqualLeadingMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.leading * 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testViewArrayLeadingLessThanOrEqualLeadingMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor ≤ 3 * relatedView.leading
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testViewArrayLeadingLessThanOrEqualLeadingDividedByConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.leading / 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    public func testViewArrayLeadingLessThanOrEqualLeadingWithPriority() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.leading ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    public func testViewArrayLeadingLessThanOrEqualLeadingWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.leading ~ .high - 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    public func testViewArrayLeadingGreaterThanOrEqualLeading() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.leading
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading)
    }

    public func testViewArrayLeadingGreaterThanOrEqualLeadingPlusConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.leading + 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    public func testViewArrayLeadingGreaterThanOrEqualLeadingMinusConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.leading - 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    public func testViewArrayLeadingGreaterThanOrEqualLeadingMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.leading * 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testViewArrayLeadingGreaterThanOrEqualLeadingMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor ≥ 3 * relatedView.leading
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testViewArrayLeadingGreaterThanOrEqualLeadingDividedByConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.leading / 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    public func testViewArrayLeadingGreaterThanOrEqualLeadingWithPriority() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.leading ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    public func testViewArrayLeadingGreaterThanOrEqualLeadingWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.leading ~ .high - 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

// MARK: viewArrayLeading <=> relatedViewCenterX
    public func testViewArrayLeadingEqualCenterX() {
        let constraints = viewArray.leadingAnchor .= relatedView.centerX
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX)
    }

    public func testViewArrayLeadingEqualCenterXPlusConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.centerX + 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10)
    }

    public func testViewArrayLeadingEqualCenterXMinusConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.centerX - 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: -10)
    }

    public func testViewArrayLeadingEqualCenterXMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.centerX * 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, multiplier: 3)
    }

    public func testViewArrayLeadingEqualCenterXMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor .= 3 * relatedView.centerX
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, multiplier: 3)
    }

    public func testViewArrayLeadingEqualCenterXDividedByConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.centerX / 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    public func testViewArrayLeadingEqualCenterXWithPriority() {
        let constraints = viewArray.leadingAnchor .= relatedView.centerX ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, priority: .low)
    }

    public func testViewArrayLeadingEqualCenterXWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor .= relatedView.centerX ~ .high - 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, priority: 749)
    }

    public func testViewArrayLeadingLessThanOrEqualCenterX() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.centerX
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX)
    }

    public func testViewArrayLeadingLessThanOrEqualCenterXPlusConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.centerX + 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    public func testViewArrayLeadingLessThanOrEqualCenterXMinusConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.centerX - 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    public func testViewArrayLeadingLessThanOrEqualCenterXMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.centerX * 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testViewArrayLeadingLessThanOrEqualCenterXMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor ≤ 3 * relatedView.centerX
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testViewArrayLeadingLessThanOrEqualCenterXDividedByConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.centerX / 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    public func testViewArrayLeadingLessThanOrEqualCenterXWithPriority() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.centerX ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    public func testViewArrayLeadingLessThanOrEqualCenterXWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.centerX ~ .high - 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    public func testViewArrayLeadingGreaterThanOrEqualCenterX() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.centerX
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX)
    }

    public func testViewArrayLeadingGreaterThanOrEqualCenterXPlusConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.centerX + 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    public func testViewArrayLeadingGreaterThanOrEqualCenterXMinusConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.centerX - 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    public func testViewArrayLeadingGreaterThanOrEqualCenterXMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.centerX * 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testViewArrayLeadingGreaterThanOrEqualCenterXMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor ≥ 3 * relatedView.centerX
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testViewArrayLeadingGreaterThanOrEqualCenterXDividedByConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.centerX / 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    public func testViewArrayLeadingGreaterThanOrEqualCenterXWithPriority() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.centerX ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    public func testViewArrayLeadingGreaterThanOrEqualCenterXWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.centerX ~ .high - 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

// MARK: viewArrayLeading <=> relatedViewTrailing
    public func testViewArrayLeadingEqualTrailing() {
        let constraints = viewArray.leadingAnchor .= relatedView.trailing
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing)
    }

    public func testViewArrayLeadingEqualTrailingPlusConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.trailing + 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10)
    }

    public func testViewArrayLeadingEqualTrailingMinusConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.trailing - 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: -10)
    }

    public func testViewArrayLeadingEqualTrailingMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.trailing * 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, multiplier: 3)
    }

    public func testViewArrayLeadingEqualTrailingMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor .= 3 * relatedView.trailing
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, multiplier: 3)
    }

    public func testViewArrayLeadingEqualTrailingDividedByConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.trailing / 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    public func testViewArrayLeadingEqualTrailingWithPriority() {
        let constraints = viewArray.leadingAnchor .= relatedView.trailing ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, priority: .low)
    }

    public func testViewArrayLeadingEqualTrailingWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor .= relatedView.trailing ~ .high - 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, priority: 749)
    }

    public func testViewArrayLeadingLessThanOrEqualTrailing() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.trailing
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing)
    }

    public func testViewArrayLeadingLessThanOrEqualTrailingPlusConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.trailing + 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    public func testViewArrayLeadingLessThanOrEqualTrailingMinusConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.trailing - 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    public func testViewArrayLeadingLessThanOrEqualTrailingMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.trailing * 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testViewArrayLeadingLessThanOrEqualTrailingMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor ≤ 3 * relatedView.trailing
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testViewArrayLeadingLessThanOrEqualTrailingDividedByConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.trailing / 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    public func testViewArrayLeadingLessThanOrEqualTrailingWithPriority() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.trailing ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    public func testViewArrayLeadingLessThanOrEqualTrailingWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.trailing ~ .high - 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    public func testViewArrayLeadingGreaterThanOrEqualTrailing() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.trailing
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing)
    }

    public func testViewArrayLeadingGreaterThanOrEqualTrailingPlusConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.trailing + 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    public func testViewArrayLeadingGreaterThanOrEqualTrailingMinusConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.trailing - 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    public func testViewArrayLeadingGreaterThanOrEqualTrailingMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.trailing * 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testViewArrayLeadingGreaterThanOrEqualTrailingMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor ≥ 3 * relatedView.trailing
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testViewArrayLeadingGreaterThanOrEqualTrailingDividedByConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.trailing / 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    public func testViewArrayLeadingGreaterThanOrEqualTrailingWithPriority() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.trailing ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    public func testViewArrayLeadingGreaterThanOrEqualTrailingWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.trailing ~ .high - 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

// MARK: viewArrayCenterX <=> relatedViewLeading
    public func testViewArrayCenterXEqualLeading() {
        let constraints = viewArray.centerXAnchor .= relatedView.leading
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading)
    }

    public func testViewArrayCenterXEqualLeadingPlusConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.leading + 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10)
    }

    public func testViewArrayCenterXEqualLeadingMinusConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.leading - 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: -10)
    }

    public func testViewArrayCenterXEqualLeadingMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.leading * 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, multiplier: 3)
    }

    public func testViewArrayCenterXEqualLeadingMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor .= 3 * relatedView.leading
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, multiplier: 3)
    }

    public func testViewArrayCenterXEqualLeadingDividedByConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.leading / 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    public func testViewArrayCenterXEqualLeadingWithPriority() {
        let constraints = viewArray.centerXAnchor .= relatedView.leading ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, priority: .low)
    }

    public func testViewArrayCenterXEqualLeadingWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor .= relatedView.leading ~ .high - 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, priority: 749)
    }

    public func testViewArrayCenterXLessThanOrEqualLeading() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.leading
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading)
    }

    public func testViewArrayCenterXLessThanOrEqualLeadingPlusConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.leading + 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    public func testViewArrayCenterXLessThanOrEqualLeadingMinusConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.leading - 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    public func testViewArrayCenterXLessThanOrEqualLeadingMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.leading * 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testViewArrayCenterXLessThanOrEqualLeadingMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor ≤ 3 * relatedView.leading
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testViewArrayCenterXLessThanOrEqualLeadingDividedByConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.leading / 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    public func testViewArrayCenterXLessThanOrEqualLeadingWithPriority() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.leading ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    public func testViewArrayCenterXLessThanOrEqualLeadingWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.leading ~ .high - 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    public func testViewArrayCenterXGreaterThanOrEqualLeading() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.leading
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading)
    }

    public func testViewArrayCenterXGreaterThanOrEqualLeadingPlusConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.leading + 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    public func testViewArrayCenterXGreaterThanOrEqualLeadingMinusConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.leading - 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    public func testViewArrayCenterXGreaterThanOrEqualLeadingMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.leading * 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testViewArrayCenterXGreaterThanOrEqualLeadingMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor ≥ 3 * relatedView.leading
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testViewArrayCenterXGreaterThanOrEqualLeadingDividedByConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.leading / 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    public func testViewArrayCenterXGreaterThanOrEqualLeadingWithPriority() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.leading ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    public func testViewArrayCenterXGreaterThanOrEqualLeadingWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.leading ~ .high - 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

// MARK: viewArrayCenterX <=> relatedViewCenterX
    public func testViewArrayCenterXEqualCenterX() {
        let constraints = viewArray.centerXAnchor .= relatedView.centerX
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX)
    }

    public func testViewArrayCenterXEqualCenterXPlusConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.centerX + 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10)
    }

    public func testViewArrayCenterXEqualCenterXMinusConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.centerX - 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: -10)
    }

    public func testViewArrayCenterXEqualCenterXMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.centerX * 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    public func testViewArrayCenterXEqualCenterXMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor .= 3 * relatedView.centerX
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    public func testViewArrayCenterXEqualCenterXDividedByConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.centerX / 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    public func testViewArrayCenterXEqualCenterXWithPriority() {
        let constraints = viewArray.centerXAnchor .= relatedView.centerX ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: .low)
    }

    public func testViewArrayCenterXEqualCenterXWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor .= relatedView.centerX ~ .high - 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 749)
    }

    public func testViewArrayCenterXLessThanOrEqualCenterX() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.centerX
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX)
    }

    public func testViewArrayCenterXLessThanOrEqualCenterXPlusConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.centerX + 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    public func testViewArrayCenterXLessThanOrEqualCenterXMinusConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.centerX - 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    public func testViewArrayCenterXLessThanOrEqualCenterXMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.centerX * 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testViewArrayCenterXLessThanOrEqualCenterXMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor ≤ 3 * relatedView.centerX
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testViewArrayCenterXLessThanOrEqualCenterXDividedByConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.centerX / 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    public func testViewArrayCenterXLessThanOrEqualCenterXWithPriority() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.centerX ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    public func testViewArrayCenterXLessThanOrEqualCenterXWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.centerX ~ .high - 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    public func testViewArrayCenterXGreaterThanOrEqualCenterX() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.centerX
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX)
    }

    public func testViewArrayCenterXGreaterThanOrEqualCenterXPlusConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.centerX + 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    public func testViewArrayCenterXGreaterThanOrEqualCenterXMinusConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.centerX - 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    public func testViewArrayCenterXGreaterThanOrEqualCenterXMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.centerX * 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testViewArrayCenterXGreaterThanOrEqualCenterXMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor ≥ 3 * relatedView.centerX
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testViewArrayCenterXGreaterThanOrEqualCenterXDividedByConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.centerX / 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    public func testViewArrayCenterXGreaterThanOrEqualCenterXWithPriority() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.centerX ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    public func testViewArrayCenterXGreaterThanOrEqualCenterXWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.centerX ~ .high - 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

// MARK: viewArrayCenterX <=> relatedViewTrailing
    public func testViewArrayCenterXEqualTrailing() {
        let constraints = viewArray.centerXAnchor .= relatedView.trailing
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing)
    }

    public func testViewArrayCenterXEqualTrailingPlusConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.trailing + 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10)
    }

    public func testViewArrayCenterXEqualTrailingMinusConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.trailing - 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: -10)
    }

    public func testViewArrayCenterXEqualTrailingMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.trailing * 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, multiplier: 3)
    }

    public func testViewArrayCenterXEqualTrailingMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor .= 3 * relatedView.trailing
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, multiplier: 3)
    }

    public func testViewArrayCenterXEqualTrailingDividedByConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.trailing / 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    public func testViewArrayCenterXEqualTrailingWithPriority() {
        let constraints = viewArray.centerXAnchor .= relatedView.trailing ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, priority: .low)
    }

    public func testViewArrayCenterXEqualTrailingWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor .= relatedView.trailing ~ .high - 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, priority: 749)
    }

    public func testViewArrayCenterXLessThanOrEqualTrailing() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.trailing
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing)
    }

    public func testViewArrayCenterXLessThanOrEqualTrailingPlusConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.trailing + 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    public func testViewArrayCenterXLessThanOrEqualTrailingMinusConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.trailing - 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    public func testViewArrayCenterXLessThanOrEqualTrailingMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.trailing * 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testViewArrayCenterXLessThanOrEqualTrailingMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor ≤ 3 * relatedView.trailing
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testViewArrayCenterXLessThanOrEqualTrailingDividedByConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.trailing / 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    public func testViewArrayCenterXLessThanOrEqualTrailingWithPriority() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.trailing ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    public func testViewArrayCenterXLessThanOrEqualTrailingWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.trailing ~ .high - 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    public func testViewArrayCenterXGreaterThanOrEqualTrailing() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.trailing
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing)
    }

    public func testViewArrayCenterXGreaterThanOrEqualTrailingPlusConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.trailing + 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    public func testViewArrayCenterXGreaterThanOrEqualTrailingMinusConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.trailing - 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    public func testViewArrayCenterXGreaterThanOrEqualTrailingMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.trailing * 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testViewArrayCenterXGreaterThanOrEqualTrailingMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor ≥ 3 * relatedView.trailing
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testViewArrayCenterXGreaterThanOrEqualTrailingDividedByConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.trailing / 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    public func testViewArrayCenterXGreaterThanOrEqualTrailingWithPriority() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.trailing ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    public func testViewArrayCenterXGreaterThanOrEqualTrailingWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.trailing ~ .high - 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

// MARK: viewArrayTrailing <=> relatedViewLeading
    public func testViewArrayTrailingEqualLeading() {
        let constraints = viewArray.trailingAnchor .= relatedView.leading
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading)
    }

    public func testViewArrayTrailingEqualLeadingPlusConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.leading + 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10)
    }

    public func testViewArrayTrailingEqualLeadingMinusConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.leading - 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: -10)
    }

    public func testViewArrayTrailingEqualLeadingMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.leading * 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, multiplier: 3)
    }

    public func testViewArrayTrailingEqualLeadingMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor .= 3 * relatedView.leading
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, multiplier: 3)
    }

    public func testViewArrayTrailingEqualLeadingDividedByConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.leading / 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    public func testViewArrayTrailingEqualLeadingWithPriority() {
        let constraints = viewArray.trailingAnchor .= relatedView.leading ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, priority: .low)
    }

    public func testViewArrayTrailingEqualLeadingWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor .= relatedView.leading ~ .high - 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, priority: 749)
    }

    public func testViewArrayTrailingLessThanOrEqualLeading() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.leading
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading)
    }

    public func testViewArrayTrailingLessThanOrEqualLeadingPlusConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.leading + 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    public func testViewArrayTrailingLessThanOrEqualLeadingMinusConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.leading - 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    public func testViewArrayTrailingLessThanOrEqualLeadingMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.leading * 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testViewArrayTrailingLessThanOrEqualLeadingMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor ≤ 3 * relatedView.leading
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testViewArrayTrailingLessThanOrEqualLeadingDividedByConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.leading / 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    public func testViewArrayTrailingLessThanOrEqualLeadingWithPriority() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.leading ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    public func testViewArrayTrailingLessThanOrEqualLeadingWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.leading ~ .high - 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    public func testViewArrayTrailingGreaterThanOrEqualLeading() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.leading
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading)
    }

    public func testViewArrayTrailingGreaterThanOrEqualLeadingPlusConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.leading + 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    public func testViewArrayTrailingGreaterThanOrEqualLeadingMinusConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.leading - 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    public func testViewArrayTrailingGreaterThanOrEqualLeadingMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.leading * 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testViewArrayTrailingGreaterThanOrEqualLeadingMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor ≥ 3 * relatedView.leading
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testViewArrayTrailingGreaterThanOrEqualLeadingDividedByConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.leading / 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    public func testViewArrayTrailingGreaterThanOrEqualLeadingWithPriority() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.leading ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    public func testViewArrayTrailingGreaterThanOrEqualLeadingWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.leading ~ .high - 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

// MARK: viewArrayTrailing <=> relatedViewCenterX
    public func testViewArrayTrailingEqualCenterX() {
        let constraints = viewArray.trailingAnchor .= relatedView.centerX
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX)
    }

    public func testViewArrayTrailingEqualCenterXPlusConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.centerX + 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10)
    }

    public func testViewArrayTrailingEqualCenterXMinusConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.centerX - 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: -10)
    }

    public func testViewArrayTrailingEqualCenterXMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.centerX * 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, multiplier: 3)
    }

    public func testViewArrayTrailingEqualCenterXMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor .= 3 * relatedView.centerX
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, multiplier: 3)
    }

    public func testViewArrayTrailingEqualCenterXDividedByConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.centerX / 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    public func testViewArrayTrailingEqualCenterXWithPriority() {
        let constraints = viewArray.trailingAnchor .= relatedView.centerX ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, priority: .low)
    }

    public func testViewArrayTrailingEqualCenterXWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor .= relatedView.centerX ~ .high - 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, priority: 749)
    }

    public func testViewArrayTrailingLessThanOrEqualCenterX() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.centerX
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX)
    }

    public func testViewArrayTrailingLessThanOrEqualCenterXPlusConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.centerX + 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    public func testViewArrayTrailingLessThanOrEqualCenterXMinusConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.centerX - 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    public func testViewArrayTrailingLessThanOrEqualCenterXMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.centerX * 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testViewArrayTrailingLessThanOrEqualCenterXMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor ≤ 3 * relatedView.centerX
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testViewArrayTrailingLessThanOrEqualCenterXDividedByConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.centerX / 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    public func testViewArrayTrailingLessThanOrEqualCenterXWithPriority() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.centerX ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    public func testViewArrayTrailingLessThanOrEqualCenterXWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.centerX ~ .high - 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    public func testViewArrayTrailingGreaterThanOrEqualCenterX() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.centerX
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX)
    }

    public func testViewArrayTrailingGreaterThanOrEqualCenterXPlusConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.centerX + 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    public func testViewArrayTrailingGreaterThanOrEqualCenterXMinusConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.centerX - 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    public func testViewArrayTrailingGreaterThanOrEqualCenterXMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.centerX * 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testViewArrayTrailingGreaterThanOrEqualCenterXMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor ≥ 3 * relatedView.centerX
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testViewArrayTrailingGreaterThanOrEqualCenterXDividedByConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.centerX / 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    public func testViewArrayTrailingGreaterThanOrEqualCenterXWithPriority() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.centerX ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    public func testViewArrayTrailingGreaterThanOrEqualCenterXWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.centerX ~ .high - 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

// MARK: viewArrayTrailing <=> relatedViewTrailing
    public func testViewArrayTrailingEqualTrailing() {
        let constraints = viewArray.trailingAnchor .= relatedView.trailing
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing)
    }

    public func testViewArrayTrailingEqualTrailingPlusConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.trailing + 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10)
    }

    public func testViewArrayTrailingEqualTrailingMinusConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.trailing - 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10)
    }

    public func testViewArrayTrailingEqualTrailingMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.trailing * 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    public func testViewArrayTrailingEqualTrailingMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor .= 3 * relatedView.trailing
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    public func testViewArrayTrailingEqualTrailingDividedByConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.trailing / 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    public func testViewArrayTrailingEqualTrailingWithPriority() {
        let constraints = viewArray.trailingAnchor .= relatedView.trailing ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: .low)
    }

    public func testViewArrayTrailingEqualTrailingWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor .= relatedView.trailing ~ .high - 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 749)
    }

    public func testViewArrayTrailingLessThanOrEqualTrailing() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.trailing
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    public func testViewArrayTrailingLessThanOrEqualTrailingPlusConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.trailing + 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    public func testViewArrayTrailingLessThanOrEqualTrailingMinusConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.trailing - 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    public func testViewArrayTrailingLessThanOrEqualTrailingMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.trailing * 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testViewArrayTrailingLessThanOrEqualTrailingMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor ≤ 3 * relatedView.trailing
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testViewArrayTrailingLessThanOrEqualTrailingDividedByConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.trailing / 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    public func testViewArrayTrailingLessThanOrEqualTrailingWithPriority() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.trailing ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    public func testViewArrayTrailingLessThanOrEqualTrailingWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.trailing ~ .high - 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    public func testViewArrayTrailingGreaterThanOrEqualTrailing() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.trailing
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    public func testViewArrayTrailingGreaterThanOrEqualTrailingPlusConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.trailing + 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    public func testViewArrayTrailingGreaterThanOrEqualTrailingMinusConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.trailing - 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    public func testViewArrayTrailingGreaterThanOrEqualTrailingMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.trailing * 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testViewArrayTrailingGreaterThanOrEqualTrailingMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor ≥ 3 * relatedView.trailing
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testViewArrayTrailingGreaterThanOrEqualTrailingDividedByConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.trailing / 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    public func testViewArrayTrailingGreaterThanOrEqualTrailingWithPriority() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.trailing ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    public func testViewArrayTrailingGreaterThanOrEqualTrailingWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.trailing ~ .high - 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }
// sourcery:end
}

