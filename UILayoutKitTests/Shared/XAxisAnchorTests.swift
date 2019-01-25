//
//  XAxisAnchorTests.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/24/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// swiftlint:disable file_length type_body_length

@testable import UILayoutKit
import XCTest

// sourcery: anchorEquationTest
// sourcery: lhsAttributes = leading, lhsAttributes = centerX, lhsAttributes = trailing
// sourcery: rhsAttributes = leading, rhsAttributes = centerX, rhsAttributes = trailing
// sourcery: lhsItem = view1
class XAxisAnchorTests: UILayoutKitTestCase {

// sourcery:inline:auto:XAxisAnchorTests.EquationTests

// MARK: view1Leading <=> relatedViewLeading
    public func testView1LeadingEqualLeading() {
        let constraints = view1.leadingAnchor .= relatedView.leading
        constraints.assert(view1, .leading, .equal, relatedView, .leading)
    }

    public func testView1LeadingEqualLeadingPlusConstant() {
        let constraints = view1.leadingAnchor .= relatedView.leading + 10
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10)
    }

    public func testView1LeadingEqualLeadingMinusConstant() {
        let constraints = view1.leadingAnchor .= relatedView.leading - 10
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: -10)
    }

    public func testView1LeadingEqualLeadingMultiplyingConstant() {
        let constraints = view1.leadingAnchor .= relatedView.leading * 3
        constraints.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    public func testView1LeadingEqualLeadingMultipliedByConstant() {
        let constraints = view1.leadingAnchor .= 3 * relatedView.leading
        constraints.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    public func testView1LeadingEqualLeadingDividedByConstant() {
        let constraints = view1.leadingAnchor .= relatedView.leading / 2
        constraints.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    public func testView1LeadingEqualLeadingWithPriority() {
        let constraints = view1.leadingAnchor .= relatedView.leading ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .leading, priority: .low)
    }

    public func testView1LeadingEqualLeadingWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor .= relatedView.leading ~ .high - 1
        constraints.assert(view1, .leading, .equal, relatedView, .leading, priority: 749)
    }

    public func testView1LeadingLessThanOrEqualLeading() {
        let constraints = view1.leadingAnchor ≤ relatedView.leading
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
    }

    public func testView1LeadingLessThanOrEqualLeadingPlusConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.leading + 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    public func testView1LeadingLessThanOrEqualLeadingMinusConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.leading - 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    public func testView1LeadingLessThanOrEqualLeadingMultiplyingConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.leading * 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testView1LeadingLessThanOrEqualLeadingMultipliedByConstant() {
        let constraints = view1.leadingAnchor ≤ 3 * relatedView.leading
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testView1LeadingLessThanOrEqualLeadingDividedByConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.leading / 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    public func testView1LeadingLessThanOrEqualLeadingWithPriority() {
        let constraints = view1.leadingAnchor ≤ relatedView.leading ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    public func testView1LeadingLessThanOrEqualLeadingWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor ≤ relatedView.leading ~ .high - 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    public func testView1LeadingGreaterThanOrEqualLeading() {
        let constraints = view1.leadingAnchor ≥ relatedView.leading
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
    }

    public func testView1LeadingGreaterThanOrEqualLeadingPlusConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.leading + 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    public func testView1LeadingGreaterThanOrEqualLeadingMinusConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.leading - 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    public func testView1LeadingGreaterThanOrEqualLeadingMultiplyingConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.leading * 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testView1LeadingGreaterThanOrEqualLeadingMultipliedByConstant() {
        let constraints = view1.leadingAnchor ≥ 3 * relatedView.leading
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testView1LeadingGreaterThanOrEqualLeadingDividedByConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.leading / 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    public func testView1LeadingGreaterThanOrEqualLeadingWithPriority() {
        let constraints = view1.leadingAnchor ≥ relatedView.leading ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    public func testView1LeadingGreaterThanOrEqualLeadingWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor ≥ relatedView.leading ~ .high - 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

// MARK: view1Leading <=> relatedViewCenterX
    public func testView1LeadingEqualCenterX() {
        let constraints = view1.leadingAnchor .= relatedView.centerX
        constraints.assert(view1, .leading, .equal, relatedView, .centerX)
    }

    public func testView1LeadingEqualCenterXPlusConstant() {
        let constraints = view1.leadingAnchor .= relatedView.centerX + 10
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: 10)
    }

    public func testView1LeadingEqualCenterXMinusConstant() {
        let constraints = view1.leadingAnchor .= relatedView.centerX - 10
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: -10)
    }

    public func testView1LeadingEqualCenterXMultiplyingConstant() {
        let constraints = view1.leadingAnchor .= relatedView.centerX * 3
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, multiplier: 3)
    }

    public func testView1LeadingEqualCenterXMultipliedByConstant() {
        let constraints = view1.leadingAnchor .= 3 * relatedView.centerX
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, multiplier: 3)
    }

    public func testView1LeadingEqualCenterXDividedByConstant() {
        let constraints = view1.leadingAnchor .= relatedView.centerX / 2
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    public func testView1LeadingEqualCenterXWithPriority() {
        let constraints = view1.leadingAnchor .= relatedView.centerX ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, priority: .low)
    }

    public func testView1LeadingEqualCenterXWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor .= relatedView.centerX ~ .high - 1
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, priority: 749)
    }

    public func testView1LeadingLessThanOrEqualCenterX() {
        let constraints = view1.leadingAnchor ≤ relatedView.centerX
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX)
    }

    public func testView1LeadingLessThanOrEqualCenterXPlusConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.centerX + 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    public func testView1LeadingLessThanOrEqualCenterXMinusConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.centerX - 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    public func testView1LeadingLessThanOrEqualCenterXMultiplyingConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.centerX * 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testView1LeadingLessThanOrEqualCenterXMultipliedByConstant() {
        let constraints = view1.leadingAnchor ≤ 3 * relatedView.centerX
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testView1LeadingLessThanOrEqualCenterXDividedByConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.centerX / 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    public func testView1LeadingLessThanOrEqualCenterXWithPriority() {
        let constraints = view1.leadingAnchor ≤ relatedView.centerX ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    public func testView1LeadingLessThanOrEqualCenterXWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor ≤ relatedView.centerX ~ .high - 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    public func testView1LeadingGreaterThanOrEqualCenterX() {
        let constraints = view1.leadingAnchor ≥ relatedView.centerX
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX)
    }

    public func testView1LeadingGreaterThanOrEqualCenterXPlusConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.centerX + 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    public func testView1LeadingGreaterThanOrEqualCenterXMinusConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.centerX - 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    public func testView1LeadingGreaterThanOrEqualCenterXMultiplyingConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.centerX * 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testView1LeadingGreaterThanOrEqualCenterXMultipliedByConstant() {
        let constraints = view1.leadingAnchor ≥ 3 * relatedView.centerX
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testView1LeadingGreaterThanOrEqualCenterXDividedByConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.centerX / 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    public func testView1LeadingGreaterThanOrEqualCenterXWithPriority() {
        let constraints = view1.leadingAnchor ≥ relatedView.centerX ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    public func testView1LeadingGreaterThanOrEqualCenterXWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor ≥ relatedView.centerX ~ .high - 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

// MARK: view1Leading <=> relatedViewTrailing
    public func testView1LeadingEqualTrailing() {
        let constraints = view1.leadingAnchor .= relatedView.trailing
        constraints.assert(view1, .leading, .equal, relatedView, .trailing)
    }

    public func testView1LeadingEqualTrailingPlusConstant() {
        let constraints = view1.leadingAnchor .= relatedView.trailing + 10
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: 10)
    }

    public func testView1LeadingEqualTrailingMinusConstant() {
        let constraints = view1.leadingAnchor .= relatedView.trailing - 10
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: -10)
    }

    public func testView1LeadingEqualTrailingMultiplyingConstant() {
        let constraints = view1.leadingAnchor .= relatedView.trailing * 3
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, multiplier: 3)
    }

    public func testView1LeadingEqualTrailingMultipliedByConstant() {
        let constraints = view1.leadingAnchor .= 3 * relatedView.trailing
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, multiplier: 3)
    }

    public func testView1LeadingEqualTrailingDividedByConstant() {
        let constraints = view1.leadingAnchor .= relatedView.trailing / 2
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    public func testView1LeadingEqualTrailingWithPriority() {
        let constraints = view1.leadingAnchor .= relatedView.trailing ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, priority: .low)
    }

    public func testView1LeadingEqualTrailingWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor .= relatedView.trailing ~ .high - 1
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, priority: 749)
    }

    public func testView1LeadingLessThanOrEqualTrailing() {
        let constraints = view1.leadingAnchor ≤ relatedView.trailing
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing)
    }

    public func testView1LeadingLessThanOrEqualTrailingPlusConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.trailing + 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    public func testView1LeadingLessThanOrEqualTrailingMinusConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.trailing - 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    public func testView1LeadingLessThanOrEqualTrailingMultiplyingConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.trailing * 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testView1LeadingLessThanOrEqualTrailingMultipliedByConstant() {
        let constraints = view1.leadingAnchor ≤ 3 * relatedView.trailing
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testView1LeadingLessThanOrEqualTrailingDividedByConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.trailing / 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    public func testView1LeadingLessThanOrEqualTrailingWithPriority() {
        let constraints = view1.leadingAnchor ≤ relatedView.trailing ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    public func testView1LeadingLessThanOrEqualTrailingWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor ≤ relatedView.trailing ~ .high - 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    public func testView1LeadingGreaterThanOrEqualTrailing() {
        let constraints = view1.leadingAnchor ≥ relatedView.trailing
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing)
    }

    public func testView1LeadingGreaterThanOrEqualTrailingPlusConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.trailing + 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    public func testView1LeadingGreaterThanOrEqualTrailingMinusConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.trailing - 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    public func testView1LeadingGreaterThanOrEqualTrailingMultiplyingConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.trailing * 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testView1LeadingGreaterThanOrEqualTrailingMultipliedByConstant() {
        let constraints = view1.leadingAnchor ≥ 3 * relatedView.trailing
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testView1LeadingGreaterThanOrEqualTrailingDividedByConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.trailing / 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    public func testView1LeadingGreaterThanOrEqualTrailingWithPriority() {
        let constraints = view1.leadingAnchor ≥ relatedView.trailing ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    public func testView1LeadingGreaterThanOrEqualTrailingWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor ≥ relatedView.trailing ~ .high - 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

// MARK: view1CenterX <=> relatedViewLeading
    public func testView1CenterXEqualLeading() {
        let constraints = view1.centerXAnchor .= relatedView.leading
        constraints.assert(view1, .centerX, .equal, relatedView, .leading)
    }

    public func testView1CenterXEqualLeadingPlusConstant() {
        let constraints = view1.centerXAnchor .= relatedView.leading + 10
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: 10)
    }

    public func testView1CenterXEqualLeadingMinusConstant() {
        let constraints = view1.centerXAnchor .= relatedView.leading - 10
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: -10)
    }

    public func testView1CenterXEqualLeadingMultiplyingConstant() {
        let constraints = view1.centerXAnchor .= relatedView.leading * 3
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, multiplier: 3)
    }

    public func testView1CenterXEqualLeadingMultipliedByConstant() {
        let constraints = view1.centerXAnchor .= 3 * relatedView.leading
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, multiplier: 3)
    }

    public func testView1CenterXEqualLeadingDividedByConstant() {
        let constraints = view1.centerXAnchor .= relatedView.leading / 2
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    public func testView1CenterXEqualLeadingWithPriority() {
        let constraints = view1.centerXAnchor .= relatedView.leading ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, priority: .low)
    }

    public func testView1CenterXEqualLeadingWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor .= relatedView.leading ~ .high - 1
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, priority: 749)
    }

    public func testView1CenterXLessThanOrEqualLeading() {
        let constraints = view1.centerXAnchor ≤ relatedView.leading
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading)
    }

    public func testView1CenterXLessThanOrEqualLeadingPlusConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.leading + 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    public func testView1CenterXLessThanOrEqualLeadingMinusConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.leading - 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    public func testView1CenterXLessThanOrEqualLeadingMultiplyingConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.leading * 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testView1CenterXLessThanOrEqualLeadingMultipliedByConstant() {
        let constraints = view1.centerXAnchor ≤ 3 * relatedView.leading
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testView1CenterXLessThanOrEqualLeadingDividedByConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.leading / 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    public func testView1CenterXLessThanOrEqualLeadingWithPriority() {
        let constraints = view1.centerXAnchor ≤ relatedView.leading ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    public func testView1CenterXLessThanOrEqualLeadingWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor ≤ relatedView.leading ~ .high - 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    public func testView1CenterXGreaterThanOrEqualLeading() {
        let constraints = view1.centerXAnchor ≥ relatedView.leading
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading)
    }

    public func testView1CenterXGreaterThanOrEqualLeadingPlusConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.leading + 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    public func testView1CenterXGreaterThanOrEqualLeadingMinusConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.leading - 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    public func testView1CenterXGreaterThanOrEqualLeadingMultiplyingConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.leading * 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testView1CenterXGreaterThanOrEqualLeadingMultipliedByConstant() {
        let constraints = view1.centerXAnchor ≥ 3 * relatedView.leading
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testView1CenterXGreaterThanOrEqualLeadingDividedByConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.leading / 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    public func testView1CenterXGreaterThanOrEqualLeadingWithPriority() {
        let constraints = view1.centerXAnchor ≥ relatedView.leading ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    public func testView1CenterXGreaterThanOrEqualLeadingWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor ≥ relatedView.leading ~ .high - 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

// MARK: view1CenterX <=> relatedViewCenterX
    public func testView1CenterXEqualCenterX() {
        let constraints = view1.centerXAnchor .= relatedView.centerX
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX)
    }

    public func testView1CenterXEqualCenterXPlusConstant() {
        let constraints = view1.centerXAnchor .= relatedView.centerX + 10
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10)
    }

    public func testView1CenterXEqualCenterXMinusConstant() {
        let constraints = view1.centerXAnchor .= relatedView.centerX - 10
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: -10)
    }

    public func testView1CenterXEqualCenterXMultiplyingConstant() {
        let constraints = view1.centerXAnchor .= relatedView.centerX * 3
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    public func testView1CenterXEqualCenterXMultipliedByConstant() {
        let constraints = view1.centerXAnchor .= 3 * relatedView.centerX
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    public func testView1CenterXEqualCenterXDividedByConstant() {
        let constraints = view1.centerXAnchor .= relatedView.centerX / 2
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    public func testView1CenterXEqualCenterXWithPriority() {
        let constraints = view1.centerXAnchor .= relatedView.centerX ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, priority: .low)
    }

    public func testView1CenterXEqualCenterXWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor .= relatedView.centerX ~ .high - 1
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 749)
    }

    public func testView1CenterXLessThanOrEqualCenterX() {
        let constraints = view1.centerXAnchor ≤ relatedView.centerX
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX)
    }

    public func testView1CenterXLessThanOrEqualCenterXPlusConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.centerX + 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    public func testView1CenterXLessThanOrEqualCenterXMinusConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.centerX - 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    public func testView1CenterXLessThanOrEqualCenterXMultiplyingConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.centerX * 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testView1CenterXLessThanOrEqualCenterXMultipliedByConstant() {
        let constraints = view1.centerXAnchor ≤ 3 * relatedView.centerX
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testView1CenterXLessThanOrEqualCenterXDividedByConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.centerX / 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    public func testView1CenterXLessThanOrEqualCenterXWithPriority() {
        let constraints = view1.centerXAnchor ≤ relatedView.centerX ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    public func testView1CenterXLessThanOrEqualCenterXWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor ≤ relatedView.centerX ~ .high - 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    public func testView1CenterXGreaterThanOrEqualCenterX() {
        let constraints = view1.centerXAnchor ≥ relatedView.centerX
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX)
    }

    public func testView1CenterXGreaterThanOrEqualCenterXPlusConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.centerX + 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    public func testView1CenterXGreaterThanOrEqualCenterXMinusConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.centerX - 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    public func testView1CenterXGreaterThanOrEqualCenterXMultiplyingConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.centerX * 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testView1CenterXGreaterThanOrEqualCenterXMultipliedByConstant() {
        let constraints = view1.centerXAnchor ≥ 3 * relatedView.centerX
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testView1CenterXGreaterThanOrEqualCenterXDividedByConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.centerX / 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    public func testView1CenterXGreaterThanOrEqualCenterXWithPriority() {
        let constraints = view1.centerXAnchor ≥ relatedView.centerX ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    public func testView1CenterXGreaterThanOrEqualCenterXWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor ≥ relatedView.centerX ~ .high - 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

// MARK: view1CenterX <=> relatedViewTrailing
    public func testView1CenterXEqualTrailing() {
        let constraints = view1.centerXAnchor .= relatedView.trailing
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing)
    }

    public func testView1CenterXEqualTrailingPlusConstant() {
        let constraints = view1.centerXAnchor .= relatedView.trailing + 10
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: 10)
    }

    public func testView1CenterXEqualTrailingMinusConstant() {
        let constraints = view1.centerXAnchor .= relatedView.trailing - 10
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: -10)
    }

    public func testView1CenterXEqualTrailingMultiplyingConstant() {
        let constraints = view1.centerXAnchor .= relatedView.trailing * 3
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, multiplier: 3)
    }

    public func testView1CenterXEqualTrailingMultipliedByConstant() {
        let constraints = view1.centerXAnchor .= 3 * relatedView.trailing
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, multiplier: 3)
    }

    public func testView1CenterXEqualTrailingDividedByConstant() {
        let constraints = view1.centerXAnchor .= relatedView.trailing / 2
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    public func testView1CenterXEqualTrailingWithPriority() {
        let constraints = view1.centerXAnchor .= relatedView.trailing ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, priority: .low)
    }

    public func testView1CenterXEqualTrailingWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor .= relatedView.trailing ~ .high - 1
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, priority: 749)
    }

    public func testView1CenterXLessThanOrEqualTrailing() {
        let constraints = view1.centerXAnchor ≤ relatedView.trailing
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing)
    }

    public func testView1CenterXLessThanOrEqualTrailingPlusConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.trailing + 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    public func testView1CenterXLessThanOrEqualTrailingMinusConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.trailing - 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    public func testView1CenterXLessThanOrEqualTrailingMultiplyingConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.trailing * 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testView1CenterXLessThanOrEqualTrailingMultipliedByConstant() {
        let constraints = view1.centerXAnchor ≤ 3 * relatedView.trailing
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testView1CenterXLessThanOrEqualTrailingDividedByConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.trailing / 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    public func testView1CenterXLessThanOrEqualTrailingWithPriority() {
        let constraints = view1.centerXAnchor ≤ relatedView.trailing ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    public func testView1CenterXLessThanOrEqualTrailingWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor ≤ relatedView.trailing ~ .high - 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    public func testView1CenterXGreaterThanOrEqualTrailing() {
        let constraints = view1.centerXAnchor ≥ relatedView.trailing
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing)
    }

    public func testView1CenterXGreaterThanOrEqualTrailingPlusConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.trailing + 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    public func testView1CenterXGreaterThanOrEqualTrailingMinusConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.trailing - 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    public func testView1CenterXGreaterThanOrEqualTrailingMultiplyingConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.trailing * 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testView1CenterXGreaterThanOrEqualTrailingMultipliedByConstant() {
        let constraints = view1.centerXAnchor ≥ 3 * relatedView.trailing
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testView1CenterXGreaterThanOrEqualTrailingDividedByConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.trailing / 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    public func testView1CenterXGreaterThanOrEqualTrailingWithPriority() {
        let constraints = view1.centerXAnchor ≥ relatedView.trailing ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    public func testView1CenterXGreaterThanOrEqualTrailingWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor ≥ relatedView.trailing ~ .high - 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

// MARK: view1Trailing <=> relatedViewLeading
    public func testView1TrailingEqualLeading() {
        let constraints = view1.trailingAnchor .= relatedView.leading
        constraints.assert(view1, .trailing, .equal, relatedView, .leading)
    }

    public func testView1TrailingEqualLeadingPlusConstant() {
        let constraints = view1.trailingAnchor .= relatedView.leading + 10
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: 10)
    }

    public func testView1TrailingEqualLeadingMinusConstant() {
        let constraints = view1.trailingAnchor .= relatedView.leading - 10
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: -10)
    }

    public func testView1TrailingEqualLeadingMultiplyingConstant() {
        let constraints = view1.trailingAnchor .= relatedView.leading * 3
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, multiplier: 3)
    }

    public func testView1TrailingEqualLeadingMultipliedByConstant() {
        let constraints = view1.trailingAnchor .= 3 * relatedView.leading
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, multiplier: 3)
    }

    public func testView1TrailingEqualLeadingDividedByConstant() {
        let constraints = view1.trailingAnchor .= relatedView.leading / 2
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    public func testView1TrailingEqualLeadingWithPriority() {
        let constraints = view1.trailingAnchor .= relatedView.leading ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, priority: .low)
    }

    public func testView1TrailingEqualLeadingWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor .= relatedView.leading ~ .high - 1
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, priority: 749)
    }

    public func testView1TrailingLessThanOrEqualLeading() {
        let constraints = view1.trailingAnchor ≤ relatedView.leading
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading)
    }

    public func testView1TrailingLessThanOrEqualLeadingPlusConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.leading + 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    public func testView1TrailingLessThanOrEqualLeadingMinusConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.leading - 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    public func testView1TrailingLessThanOrEqualLeadingMultiplyingConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.leading * 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testView1TrailingLessThanOrEqualLeadingMultipliedByConstant() {
        let constraints = view1.trailingAnchor ≤ 3 * relatedView.leading
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testView1TrailingLessThanOrEqualLeadingDividedByConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.leading / 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    public func testView1TrailingLessThanOrEqualLeadingWithPriority() {
        let constraints = view1.trailingAnchor ≤ relatedView.leading ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    public func testView1TrailingLessThanOrEqualLeadingWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor ≤ relatedView.leading ~ .high - 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    public func testView1TrailingGreaterThanOrEqualLeading() {
        let constraints = view1.trailingAnchor ≥ relatedView.leading
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading)
    }

    public func testView1TrailingGreaterThanOrEqualLeadingPlusConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.leading + 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    public func testView1TrailingGreaterThanOrEqualLeadingMinusConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.leading - 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    public func testView1TrailingGreaterThanOrEqualLeadingMultiplyingConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.leading * 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testView1TrailingGreaterThanOrEqualLeadingMultipliedByConstant() {
        let constraints = view1.trailingAnchor ≥ 3 * relatedView.leading
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    public func testView1TrailingGreaterThanOrEqualLeadingDividedByConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.leading / 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    public func testView1TrailingGreaterThanOrEqualLeadingWithPriority() {
        let constraints = view1.trailingAnchor ≥ relatedView.leading ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    public func testView1TrailingGreaterThanOrEqualLeadingWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor ≥ relatedView.leading ~ .high - 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

// MARK: view1Trailing <=> relatedViewCenterX
    public func testView1TrailingEqualCenterX() {
        let constraints = view1.trailingAnchor .= relatedView.centerX
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX)
    }

    public func testView1TrailingEqualCenterXPlusConstant() {
        let constraints = view1.trailingAnchor .= relatedView.centerX + 10
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10)
    }

    public func testView1TrailingEqualCenterXMinusConstant() {
        let constraints = view1.trailingAnchor .= relatedView.centerX - 10
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: -10)
    }

    public func testView1TrailingEqualCenterXMultiplyingConstant() {
        let constraints = view1.trailingAnchor .= relatedView.centerX * 3
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, multiplier: 3)
    }

    public func testView1TrailingEqualCenterXMultipliedByConstant() {
        let constraints = view1.trailingAnchor .= 3 * relatedView.centerX
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, multiplier: 3)
    }

    public func testView1TrailingEqualCenterXDividedByConstant() {
        let constraints = view1.trailingAnchor .= relatedView.centerX / 2
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    public func testView1TrailingEqualCenterXWithPriority() {
        let constraints = view1.trailingAnchor .= relatedView.centerX ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, priority: .low)
    }

    public func testView1TrailingEqualCenterXWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor .= relatedView.centerX ~ .high - 1
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, priority: 749)
    }

    public func testView1TrailingLessThanOrEqualCenterX() {
        let constraints = view1.trailingAnchor ≤ relatedView.centerX
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX)
    }

    public func testView1TrailingLessThanOrEqualCenterXPlusConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.centerX + 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    public func testView1TrailingLessThanOrEqualCenterXMinusConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.centerX - 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    public func testView1TrailingLessThanOrEqualCenterXMultiplyingConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.centerX * 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testView1TrailingLessThanOrEqualCenterXMultipliedByConstant() {
        let constraints = view1.trailingAnchor ≤ 3 * relatedView.centerX
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testView1TrailingLessThanOrEqualCenterXDividedByConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.centerX / 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    public func testView1TrailingLessThanOrEqualCenterXWithPriority() {
        let constraints = view1.trailingAnchor ≤ relatedView.centerX ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    public func testView1TrailingLessThanOrEqualCenterXWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor ≤ relatedView.centerX ~ .high - 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    public func testView1TrailingGreaterThanOrEqualCenterX() {
        let constraints = view1.trailingAnchor ≥ relatedView.centerX
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX)
    }

    public func testView1TrailingGreaterThanOrEqualCenterXPlusConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.centerX + 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    public func testView1TrailingGreaterThanOrEqualCenterXMinusConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.centerX - 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    public func testView1TrailingGreaterThanOrEqualCenterXMultiplyingConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.centerX * 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testView1TrailingGreaterThanOrEqualCenterXMultipliedByConstant() {
        let constraints = view1.trailingAnchor ≥ 3 * relatedView.centerX
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    public func testView1TrailingGreaterThanOrEqualCenterXDividedByConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.centerX / 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    public func testView1TrailingGreaterThanOrEqualCenterXWithPriority() {
        let constraints = view1.trailingAnchor ≥ relatedView.centerX ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    public func testView1TrailingGreaterThanOrEqualCenterXWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor ≥ relatedView.centerX ~ .high - 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

// MARK: view1Trailing <=> relatedViewTrailing
    public func testView1TrailingEqualTrailing() {
        let constraints = view1.trailingAnchor .= relatedView.trailing
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing)
    }

    public func testView1TrailingEqualTrailingPlusConstant() {
        let constraints = view1.trailingAnchor .= relatedView.trailing + 10
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10)
    }

    public func testView1TrailingEqualTrailingMinusConstant() {
        let constraints = view1.trailingAnchor .= relatedView.trailing - 10
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10)
    }

    public func testView1TrailingEqualTrailingMultiplyingConstant() {
        let constraints = view1.trailingAnchor .= relatedView.trailing * 3
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    public func testView1TrailingEqualTrailingMultipliedByConstant() {
        let constraints = view1.trailingAnchor .= 3 * relatedView.trailing
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    public func testView1TrailingEqualTrailingDividedByConstant() {
        let constraints = view1.trailingAnchor .= relatedView.trailing / 2
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    public func testView1TrailingEqualTrailingWithPriority() {
        let constraints = view1.trailingAnchor .= relatedView.trailing ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, priority: .low)
    }

    public func testView1TrailingEqualTrailingWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor .= relatedView.trailing ~ .high - 1
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 749)
    }

    public func testView1TrailingLessThanOrEqualTrailing() {
        let constraints = view1.trailingAnchor ≤ relatedView.trailing
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    public func testView1TrailingLessThanOrEqualTrailingPlusConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.trailing + 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    public func testView1TrailingLessThanOrEqualTrailingMinusConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.trailing - 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    public func testView1TrailingLessThanOrEqualTrailingMultiplyingConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.trailing * 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testView1TrailingLessThanOrEqualTrailingMultipliedByConstant() {
        let constraints = view1.trailingAnchor ≤ 3 * relatedView.trailing
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testView1TrailingLessThanOrEqualTrailingDividedByConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.trailing / 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    public func testView1TrailingLessThanOrEqualTrailingWithPriority() {
        let constraints = view1.trailingAnchor ≤ relatedView.trailing ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    public func testView1TrailingLessThanOrEqualTrailingWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor ≤ relatedView.trailing ~ .high - 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    public func testView1TrailingGreaterThanOrEqualTrailing() {
        let constraints = view1.trailingAnchor ≥ relatedView.trailing
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    public func testView1TrailingGreaterThanOrEqualTrailingPlusConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.trailing + 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    public func testView1TrailingGreaterThanOrEqualTrailingMinusConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.trailing - 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    public func testView1TrailingGreaterThanOrEqualTrailingMultiplyingConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.trailing * 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testView1TrailingGreaterThanOrEqualTrailingMultipliedByConstant() {
        let constraints = view1.trailingAnchor ≥ 3 * relatedView.trailing
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    public func testView1TrailingGreaterThanOrEqualTrailingDividedByConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.trailing / 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    public func testView1TrailingGreaterThanOrEqualTrailingWithPriority() {
        let constraints = view1.trailingAnchor ≥ relatedView.trailing ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    public func testView1TrailingGreaterThanOrEqualTrailingWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor ≥ relatedView.trailing ~ .high - 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }
// sourcery:end
}

