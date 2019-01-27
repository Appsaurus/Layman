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
    // MARK: LessThanOrEqual

    func testView1LeadingLessThanOrEqualToLeading() {
        let constraints = view1.leadingAnchor ≤ relatedView.leading
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LeadingLessThanOrEqualToLeadingPlusConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.leading + 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testView1LeadingLessThanOrEqualToLeadingMinusConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.leading - 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LeadingLessThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.leading * 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = view1.leadingAnchor ≤ 3 * relatedView.leading
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualToLeadingDividedByConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.leading / 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1LeadingLessThanOrEqualToLeadingWithPriority() {
        let constraints = view1.leadingAnchor ≤ relatedView.leading ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testView1LeadingLessThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = view1.leadingAnchor ≤ relatedView.leading ~ 300
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testView1LeadingLessThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor ≤ relatedView.leading ~ .high - 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1LeadingLessThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.leadingAnchor ≤ (relatedView.leading + 10) * 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.leadingAnchor ≤ 3 * (relatedView.leading + 10)
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.leadingAnchor ≤ 3 * relatedView.leading + 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }
/*
    func testView1LeadingLessThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = view1.leadingAnchor ≤ (relatedView.leading + 10) / 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1LeadingEqualToLeading() {
        let constraints = view1.leadingAnchor .= relatedView.leading
        constraints.assert(view1, .leading, .equal, relatedView, .leading)
    }

    // MARK: Equal with constant
    func testView1LeadingEqualToLeadingPlusConstant() {
        let constraints = view1.leadingAnchor .= relatedView.leading + 10
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10)
    }

    func testView1LeadingEqualToLeadingMinusConstant() {
        let constraints = view1.leadingAnchor .= relatedView.leading - 10
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1LeadingEqualToLeadingMultiplyingConstant() {
        let constraints = view1.leadingAnchor .= relatedView.leading * 3
        constraints.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    func testView1LeadingEqualToLeadingMultipliedByConstant() {
        let constraints = view1.leadingAnchor .= 3 * relatedView.leading
        constraints.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    func testView1LeadingEqualToLeadingDividedByConstant() {
        let constraints = view1.leadingAnchor .= relatedView.leading / 2
        constraints.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1LeadingEqualToLeadingWithPriority() {
        let constraints = view1.leadingAnchor .= relatedView.leading ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .leading, priority: .low)
    }

    func testView1LeadingEqualToLeadingWithPriorityLiteral() {
        let constraints = view1.leadingAnchor .= relatedView.leading ~ 300
        constraints.assert(view1, .leading, .equal, relatedView, .leading, priority: 300)
    }

    func testView1LeadingEqualToLeadingWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor .= relatedView.leading ~ .high - 1
        constraints.assert(view1, .leading, .equal, relatedView, .leading, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1LeadingEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.leadingAnchor .= (relatedView.leading + 10) * 3
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.leadingAnchor .= 3 * (relatedView.leading + 10)
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.leadingAnchor .= 3 * relatedView.leading + 10
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
    }
/*
    func testView1LeadingEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = view1.leadingAnchor .= (relatedView.leading + 10) / 2
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1LeadingGreaterThanOrEqualToLeading() {
        let constraints = view1.leadingAnchor ≥ relatedView.leading
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1LeadingGreaterThanOrEqualToLeadingPlusConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.leading + 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testView1LeadingGreaterThanOrEqualToLeadingMinusConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.leading - 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1LeadingGreaterThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.leading * 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = view1.leadingAnchor ≥ 3 * relatedView.leading
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualToLeadingDividedByConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.leading / 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1LeadingGreaterThanOrEqualToLeadingWithPriority() {
        let constraints = view1.leadingAnchor ≥ relatedView.leading ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = view1.leadingAnchor ≥ relatedView.leading ~ 300
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testView1LeadingGreaterThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor ≥ relatedView.leading ~ .high - 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1LeadingGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.leadingAnchor ≥ (relatedView.leading + 10) * 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.leadingAnchor ≥ 3 * (relatedView.leading + 10)
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.leadingAnchor ≥ 3 * relatedView.leading + 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }
/*
    func testView1LeadingGreaterThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = view1.leadingAnchor ≥ (relatedView.leading + 10) / 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: view1Leading <=> relatedViewCenterX
    // MARK: LessThanOrEqual

    func testView1LeadingLessThanOrEqualToCenterX() {
        let constraints = view1.leadingAnchor ≤ relatedView.centerX
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LeadingLessThanOrEqualToCenterXPlusConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.centerX + 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testView1LeadingLessThanOrEqualToCenterXMinusConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.centerX - 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LeadingLessThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.centerX * 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = view1.leadingAnchor ≤ 3 * relatedView.centerX
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualToCenterXDividedByConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.centerX / 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1LeadingLessThanOrEqualToCenterXWithPriority() {
        let constraints = view1.leadingAnchor ≤ relatedView.centerX ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testView1LeadingLessThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = view1.leadingAnchor ≤ relatedView.centerX ~ 300
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testView1LeadingLessThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor ≤ relatedView.centerX ~ .high - 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1LeadingLessThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.leadingAnchor ≤ (relatedView.centerX + 10) * 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.leadingAnchor ≤ 3 * (relatedView.centerX + 10)
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.leadingAnchor ≤ 3 * relatedView.centerX + 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }
/*
    func testView1LeadingLessThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = view1.leadingAnchor ≤ (relatedView.centerX + 10) / 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1LeadingEqualToCenterX() {
        let constraints = view1.leadingAnchor .= relatedView.centerX
        constraints.assert(view1, .leading, .equal, relatedView, .centerX)
    }

    // MARK: Equal with constant
    func testView1LeadingEqualToCenterXPlusConstant() {
        let constraints = view1.leadingAnchor .= relatedView.centerX + 10
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: 10)
    }

    func testView1LeadingEqualToCenterXMinusConstant() {
        let constraints = view1.leadingAnchor .= relatedView.centerX - 10
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1LeadingEqualToCenterXMultiplyingConstant() {
        let constraints = view1.leadingAnchor .= relatedView.centerX * 3
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testView1LeadingEqualToCenterXMultipliedByConstant() {
        let constraints = view1.leadingAnchor .= 3 * relatedView.centerX
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testView1LeadingEqualToCenterXDividedByConstant() {
        let constraints = view1.leadingAnchor .= relatedView.centerX / 2
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1LeadingEqualToCenterXWithPriority() {
        let constraints = view1.leadingAnchor .= relatedView.centerX ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, priority: .low)
    }

    func testView1LeadingEqualToCenterXWithPriorityLiteral() {
        let constraints = view1.leadingAnchor .= relatedView.centerX ~ 300
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, priority: 300)
    }

    func testView1LeadingEqualToCenterXWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor .= relatedView.centerX ~ .high - 1
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1LeadingEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.leadingAnchor .= (relatedView.centerX + 10) * 3
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.leadingAnchor .= 3 * (relatedView.centerX + 10)
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.leadingAnchor .= 3 * relatedView.centerX + 10
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
    }
/*
    func testView1LeadingEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = view1.leadingAnchor .= (relatedView.centerX + 10) / 2
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1LeadingGreaterThanOrEqualToCenterX() {
        let constraints = view1.leadingAnchor ≥ relatedView.centerX
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1LeadingGreaterThanOrEqualToCenterXPlusConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.centerX + 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testView1LeadingGreaterThanOrEqualToCenterXMinusConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.centerX - 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1LeadingGreaterThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.centerX * 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = view1.leadingAnchor ≥ 3 * relatedView.centerX
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualToCenterXDividedByConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.centerX / 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1LeadingGreaterThanOrEqualToCenterXWithPriority() {
        let constraints = view1.leadingAnchor ≥ relatedView.centerX ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = view1.leadingAnchor ≥ relatedView.centerX ~ 300
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testView1LeadingGreaterThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor ≥ relatedView.centerX ~ .high - 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1LeadingGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.leadingAnchor ≥ (relatedView.centerX + 10) * 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.leadingAnchor ≥ 3 * (relatedView.centerX + 10)
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.leadingAnchor ≥ 3 * relatedView.centerX + 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }
/*
    func testView1LeadingGreaterThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = view1.leadingAnchor ≥ (relatedView.centerX + 10) / 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: view1Leading <=> relatedViewTrailing
    // MARK: LessThanOrEqual

    func testView1LeadingLessThanOrEqualToTrailing() {
        let constraints = view1.leadingAnchor ≤ relatedView.trailing
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LeadingLessThanOrEqualToTrailingPlusConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.trailing + 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testView1LeadingLessThanOrEqualToTrailingMinusConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.trailing - 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LeadingLessThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.trailing * 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = view1.leadingAnchor ≤ 3 * relatedView.trailing
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualToTrailingDividedByConstant() {
        let constraints = view1.leadingAnchor ≤ relatedView.trailing / 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1LeadingLessThanOrEqualToTrailingWithPriority() {
        let constraints = view1.leadingAnchor ≤ relatedView.trailing ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testView1LeadingLessThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = view1.leadingAnchor ≤ relatedView.trailing ~ 300
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testView1LeadingLessThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor ≤ relatedView.trailing ~ .high - 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1LeadingLessThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.leadingAnchor ≤ (relatedView.trailing + 10) * 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.leadingAnchor ≤ 3 * (relatedView.trailing + 10)
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.leadingAnchor ≤ 3 * relatedView.trailing + 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }
/*
    func testView1LeadingLessThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = view1.leadingAnchor ≤ (relatedView.trailing + 10) / 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1LeadingEqualToTrailing() {
        let constraints = view1.leadingAnchor .= relatedView.trailing
        constraints.assert(view1, .leading, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testView1LeadingEqualToTrailingPlusConstant() {
        let constraints = view1.leadingAnchor .= relatedView.trailing + 10
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: 10)
    }

    func testView1LeadingEqualToTrailingMinusConstant() {
        let constraints = view1.leadingAnchor .= relatedView.trailing - 10
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1LeadingEqualToTrailingMultiplyingConstant() {
        let constraints = view1.leadingAnchor .= relatedView.trailing * 3
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testView1LeadingEqualToTrailingMultipliedByConstant() {
        let constraints = view1.leadingAnchor .= 3 * relatedView.trailing
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testView1LeadingEqualToTrailingDividedByConstant() {
        let constraints = view1.leadingAnchor .= relatedView.trailing / 2
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1LeadingEqualToTrailingWithPriority() {
        let constraints = view1.leadingAnchor .= relatedView.trailing ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, priority: .low)
    }

    func testView1LeadingEqualToTrailingWithPriorityLiteral() {
        let constraints = view1.leadingAnchor .= relatedView.trailing ~ 300
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, priority: 300)
    }

    func testView1LeadingEqualToTrailingWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor .= relatedView.trailing ~ .high - 1
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1LeadingEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.leadingAnchor .= (relatedView.trailing + 10) * 3
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.leadingAnchor .= 3 * (relatedView.trailing + 10)
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.leadingAnchor .= 3 * relatedView.trailing + 10
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }
/*
    func testView1LeadingEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = view1.leadingAnchor .= (relatedView.trailing + 10) / 2
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1LeadingGreaterThanOrEqualToTrailing() {
        let constraints = view1.leadingAnchor ≥ relatedView.trailing
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1LeadingGreaterThanOrEqualToTrailingPlusConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.trailing + 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testView1LeadingGreaterThanOrEqualToTrailingMinusConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.trailing - 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1LeadingGreaterThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.trailing * 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = view1.leadingAnchor ≥ 3 * relatedView.trailing
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualToTrailingDividedByConstant() {
        let constraints = view1.leadingAnchor ≥ relatedView.trailing / 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1LeadingGreaterThanOrEqualToTrailingWithPriority() {
        let constraints = view1.leadingAnchor ≥ relatedView.trailing ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = view1.leadingAnchor ≥ relatedView.trailing ~ 300
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testView1LeadingGreaterThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor ≥ relatedView.trailing ~ .high - 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1LeadingGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.leadingAnchor ≥ (relatedView.trailing + 10) * 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.leadingAnchor ≥ 3 * (relatedView.trailing + 10)
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.leadingAnchor ≥ 3 * relatedView.trailing + 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }
/*
    func testView1LeadingGreaterThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = view1.leadingAnchor ≥ (relatedView.trailing + 10) / 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: view1CenterX <=> relatedViewLeading
    // MARK: LessThanOrEqual

    func testView1CenterXLessThanOrEqualToLeading() {
        let constraints = view1.centerXAnchor ≤ relatedView.leading
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading)
    }

    // MARK: LessThanOrEqual with constant
    func testView1CenterXLessThanOrEqualToLeadingPlusConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.leading + 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testView1CenterXLessThanOrEqualToLeadingMinusConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.leading - 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterXLessThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.leading * 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = view1.centerXAnchor ≤ 3 * relatedView.leading
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualToLeadingDividedByConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.leading / 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1CenterXLessThanOrEqualToLeadingWithPriority() {
        let constraints = view1.centerXAnchor ≤ relatedView.leading ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testView1CenterXLessThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = view1.centerXAnchor ≤ relatedView.leading ~ 300
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testView1CenterXLessThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor ≤ relatedView.leading ~ .high - 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1CenterXLessThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.centerXAnchor ≤ (relatedView.leading + 10) * 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.centerXAnchor ≤ 3 * (relatedView.leading + 10)
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.centerXAnchor ≤ 3 * relatedView.leading + 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }
/*
    func testView1CenterXLessThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = view1.centerXAnchor ≤ (relatedView.leading + 10) / 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1CenterXEqualToLeading() {
        let constraints = view1.centerXAnchor .= relatedView.leading
        constraints.assert(view1, .centerX, .equal, relatedView, .leading)
    }

    // MARK: Equal with constant
    func testView1CenterXEqualToLeadingPlusConstant() {
        let constraints = view1.centerXAnchor .= relatedView.leading + 10
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: 10)
    }

    func testView1CenterXEqualToLeadingMinusConstant() {
        let constraints = view1.centerXAnchor .= relatedView.leading - 10
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterXEqualToLeadingMultiplyingConstant() {
        let constraints = view1.centerXAnchor .= relatedView.leading * 3
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, multiplier: 3)
    }

    func testView1CenterXEqualToLeadingMultipliedByConstant() {
        let constraints = view1.centerXAnchor .= 3 * relatedView.leading
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, multiplier: 3)
    }

    func testView1CenterXEqualToLeadingDividedByConstant() {
        let constraints = view1.centerXAnchor .= relatedView.leading / 2
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1CenterXEqualToLeadingWithPriority() {
        let constraints = view1.centerXAnchor .= relatedView.leading ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, priority: .low)
    }

    func testView1CenterXEqualToLeadingWithPriorityLiteral() {
        let constraints = view1.centerXAnchor .= relatedView.leading ~ 300
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, priority: 300)
    }

    func testView1CenterXEqualToLeadingWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor .= relatedView.leading ~ .high - 1
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1CenterXEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.centerXAnchor .= (relatedView.leading + 10) * 3
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.centerXAnchor .= 3 * (relatedView.leading + 10)
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.centerXAnchor .= 3 * relatedView.leading + 10
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: 10, multiplier: 3)
    }
/*
    func testView1CenterXEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = view1.centerXAnchor .= (relatedView.leading + 10) / 2
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1CenterXGreaterThanOrEqualToLeading() {
        let constraints = view1.centerXAnchor ≥ relatedView.leading
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1CenterXGreaterThanOrEqualToLeadingPlusConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.leading + 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testView1CenterXGreaterThanOrEqualToLeadingMinusConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.leading - 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterXGreaterThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.leading * 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = view1.centerXAnchor ≥ 3 * relatedView.leading
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualToLeadingDividedByConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.leading / 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1CenterXGreaterThanOrEqualToLeadingWithPriority() {
        let constraints = view1.centerXAnchor ≥ relatedView.leading ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = view1.centerXAnchor ≥ relatedView.leading ~ 300
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testView1CenterXGreaterThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor ≥ relatedView.leading ~ .high - 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1CenterXGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.centerXAnchor ≥ (relatedView.leading + 10) * 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.centerXAnchor ≥ 3 * (relatedView.leading + 10)
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.centerXAnchor ≥ 3 * relatedView.leading + 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }
/*
    func testView1CenterXGreaterThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = view1.centerXAnchor ≥ (relatedView.leading + 10) / 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: view1CenterX <=> relatedViewCenterX
    // MARK: LessThanOrEqual

    func testView1CenterXLessThanOrEqualToCenterX() {
        let constraints = view1.centerXAnchor ≤ relatedView.centerX
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX)
    }

    // MARK: LessThanOrEqual with constant
    func testView1CenterXLessThanOrEqualToCenterXPlusConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.centerX + 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testView1CenterXLessThanOrEqualToCenterXMinusConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.centerX - 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterXLessThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.centerX * 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = view1.centerXAnchor ≤ 3 * relatedView.centerX
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualToCenterXDividedByConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.centerX / 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1CenterXLessThanOrEqualToCenterXWithPriority() {
        let constraints = view1.centerXAnchor ≤ relatedView.centerX ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testView1CenterXLessThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = view1.centerXAnchor ≤ relatedView.centerX ~ 300
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testView1CenterXLessThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor ≤ relatedView.centerX ~ .high - 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1CenterXLessThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.centerXAnchor ≤ (relatedView.centerX + 10) * 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.centerXAnchor ≤ 3 * (relatedView.centerX + 10)
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.centerXAnchor ≤ 3 * relatedView.centerX + 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }
/*
    func testView1CenterXLessThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = view1.centerXAnchor ≤ (relatedView.centerX + 10) / 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1CenterXEqualToCenterX() {
        let constraints = view1.centerXAnchor .= relatedView.centerX
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX)
    }

    // MARK: Equal with constant
    func testView1CenterXEqualToCenterXPlusConstant() {
        let constraints = view1.centerXAnchor .= relatedView.centerX + 10
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10)
    }

    func testView1CenterXEqualToCenterXMinusConstant() {
        let constraints = view1.centerXAnchor .= relatedView.centerX - 10
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterXEqualToCenterXMultiplyingConstant() {
        let constraints = view1.centerXAnchor .= relatedView.centerX * 3
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testView1CenterXEqualToCenterXMultipliedByConstant() {
        let constraints = view1.centerXAnchor .= 3 * relatedView.centerX
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testView1CenterXEqualToCenterXDividedByConstant() {
        let constraints = view1.centerXAnchor .= relatedView.centerX / 2
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1CenterXEqualToCenterXWithPriority() {
        let constraints = view1.centerXAnchor .= relatedView.centerX ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, priority: .low)
    }

    func testView1CenterXEqualToCenterXWithPriorityLiteral() {
        let constraints = view1.centerXAnchor .= relatedView.centerX ~ 300
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 300)
    }

    func testView1CenterXEqualToCenterXWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor .= relatedView.centerX ~ .high - 1
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1CenterXEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.centerXAnchor .= (relatedView.centerX + 10) * 3
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.centerXAnchor .= 3 * (relatedView.centerX + 10)
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.centerXAnchor .= 3 * relatedView.centerX + 10
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
    }
/*
    func testView1CenterXEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = view1.centerXAnchor .= (relatedView.centerX + 10) / 2
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1CenterXGreaterThanOrEqualToCenterX() {
        let constraints = view1.centerXAnchor ≥ relatedView.centerX
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1CenterXGreaterThanOrEqualToCenterXPlusConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.centerX + 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testView1CenterXGreaterThanOrEqualToCenterXMinusConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.centerX - 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterXGreaterThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.centerX * 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = view1.centerXAnchor ≥ 3 * relatedView.centerX
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualToCenterXDividedByConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.centerX / 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1CenterXGreaterThanOrEqualToCenterXWithPriority() {
        let constraints = view1.centerXAnchor ≥ relatedView.centerX ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = view1.centerXAnchor ≥ relatedView.centerX ~ 300
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testView1CenterXGreaterThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor ≥ relatedView.centerX ~ .high - 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1CenterXGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.centerXAnchor ≥ (relatedView.centerX + 10) * 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.centerXAnchor ≥ 3 * (relatedView.centerX + 10)
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.centerXAnchor ≥ 3 * relatedView.centerX + 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }
/*
    func testView1CenterXGreaterThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = view1.centerXAnchor ≥ (relatedView.centerX + 10) / 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: view1CenterX <=> relatedViewTrailing
    // MARK: LessThanOrEqual

    func testView1CenterXLessThanOrEqualToTrailing() {
        let constraints = view1.centerXAnchor ≤ relatedView.trailing
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testView1CenterXLessThanOrEqualToTrailingPlusConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.trailing + 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testView1CenterXLessThanOrEqualToTrailingMinusConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.trailing - 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterXLessThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.trailing * 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = view1.centerXAnchor ≤ 3 * relatedView.trailing
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualToTrailingDividedByConstant() {
        let constraints = view1.centerXAnchor ≤ relatedView.trailing / 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1CenterXLessThanOrEqualToTrailingWithPriority() {
        let constraints = view1.centerXAnchor ≤ relatedView.trailing ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testView1CenterXLessThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = view1.centerXAnchor ≤ relatedView.trailing ~ 300
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testView1CenterXLessThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor ≤ relatedView.trailing ~ .high - 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1CenterXLessThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.centerXAnchor ≤ (relatedView.trailing + 10) * 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.centerXAnchor ≤ 3 * (relatedView.trailing + 10)
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.centerXAnchor ≤ 3 * relatedView.trailing + 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }
/*
    func testView1CenterXLessThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = view1.centerXAnchor ≤ (relatedView.trailing + 10) / 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1CenterXEqualToTrailing() {
        let constraints = view1.centerXAnchor .= relatedView.trailing
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testView1CenterXEqualToTrailingPlusConstant() {
        let constraints = view1.centerXAnchor .= relatedView.trailing + 10
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: 10)
    }

    func testView1CenterXEqualToTrailingMinusConstant() {
        let constraints = view1.centerXAnchor .= relatedView.trailing - 10
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterXEqualToTrailingMultiplyingConstant() {
        let constraints = view1.centerXAnchor .= relatedView.trailing * 3
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testView1CenterXEqualToTrailingMultipliedByConstant() {
        let constraints = view1.centerXAnchor .= 3 * relatedView.trailing
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testView1CenterXEqualToTrailingDividedByConstant() {
        let constraints = view1.centerXAnchor .= relatedView.trailing / 2
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1CenterXEqualToTrailingWithPriority() {
        let constraints = view1.centerXAnchor .= relatedView.trailing ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, priority: .low)
    }

    func testView1CenterXEqualToTrailingWithPriorityLiteral() {
        let constraints = view1.centerXAnchor .= relatedView.trailing ~ 300
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, priority: 300)
    }

    func testView1CenterXEqualToTrailingWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor .= relatedView.trailing ~ .high - 1
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1CenterXEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.centerXAnchor .= (relatedView.trailing + 10) * 3
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.centerXAnchor .= 3 * (relatedView.trailing + 10)
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.centerXAnchor .= 3 * relatedView.trailing + 10
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }
/*
    func testView1CenterXEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = view1.centerXAnchor .= (relatedView.trailing + 10) / 2
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1CenterXGreaterThanOrEqualToTrailing() {
        let constraints = view1.centerXAnchor ≥ relatedView.trailing
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1CenterXGreaterThanOrEqualToTrailingPlusConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.trailing + 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testView1CenterXGreaterThanOrEqualToTrailingMinusConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.trailing - 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterXGreaterThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.trailing * 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = view1.centerXAnchor ≥ 3 * relatedView.trailing
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualToTrailingDividedByConstant() {
        let constraints = view1.centerXAnchor ≥ relatedView.trailing / 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1CenterXGreaterThanOrEqualToTrailingWithPriority() {
        let constraints = view1.centerXAnchor ≥ relatedView.trailing ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = view1.centerXAnchor ≥ relatedView.trailing ~ 300
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testView1CenterXGreaterThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor ≥ relatedView.trailing ~ .high - 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1CenterXGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.centerXAnchor ≥ (relatedView.trailing + 10) * 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.centerXAnchor ≥ 3 * (relatedView.trailing + 10)
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.centerXAnchor ≥ 3 * relatedView.trailing + 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }
/*
    func testView1CenterXGreaterThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = view1.centerXAnchor ≥ (relatedView.trailing + 10) / 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: view1Trailing <=> relatedViewLeading
    // MARK: LessThanOrEqual

    func testView1TrailingLessThanOrEqualToLeading() {
        let constraints = view1.trailingAnchor ≤ relatedView.leading
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading)
    }

    // MARK: LessThanOrEqual with constant
    func testView1TrailingLessThanOrEqualToLeadingPlusConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.leading + 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testView1TrailingLessThanOrEqualToLeadingMinusConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.leading - 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TrailingLessThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.leading * 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = view1.trailingAnchor ≤ 3 * relatedView.leading
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualToLeadingDividedByConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.leading / 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1TrailingLessThanOrEqualToLeadingWithPriority() {
        let constraints = view1.trailingAnchor ≤ relatedView.leading ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testView1TrailingLessThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = view1.trailingAnchor ≤ relatedView.leading ~ 300
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testView1TrailingLessThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor ≤ relatedView.leading ~ .high - 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1TrailingLessThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.trailingAnchor ≤ (relatedView.leading + 10) * 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.trailingAnchor ≤ 3 * (relatedView.leading + 10)
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.trailingAnchor ≤ 3 * relatedView.leading + 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }
/*
    func testView1TrailingLessThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = view1.trailingAnchor ≤ (relatedView.leading + 10) / 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1TrailingEqualToLeading() {
        let constraints = view1.trailingAnchor .= relatedView.leading
        constraints.assert(view1, .trailing, .equal, relatedView, .leading)
    }

    // MARK: Equal with constant
    func testView1TrailingEqualToLeadingPlusConstant() {
        let constraints = view1.trailingAnchor .= relatedView.leading + 10
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: 10)
    }

    func testView1TrailingEqualToLeadingMinusConstant() {
        let constraints = view1.trailingAnchor .= relatedView.leading - 10
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TrailingEqualToLeadingMultiplyingConstant() {
        let constraints = view1.trailingAnchor .= relatedView.leading * 3
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, multiplier: 3)
    }

    func testView1TrailingEqualToLeadingMultipliedByConstant() {
        let constraints = view1.trailingAnchor .= 3 * relatedView.leading
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, multiplier: 3)
    }

    func testView1TrailingEqualToLeadingDividedByConstant() {
        let constraints = view1.trailingAnchor .= relatedView.leading / 2
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1TrailingEqualToLeadingWithPriority() {
        let constraints = view1.trailingAnchor .= relatedView.leading ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, priority: .low)
    }

    func testView1TrailingEqualToLeadingWithPriorityLiteral() {
        let constraints = view1.trailingAnchor .= relatedView.leading ~ 300
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, priority: 300)
    }

    func testView1TrailingEqualToLeadingWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor .= relatedView.leading ~ .high - 1
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1TrailingEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.trailingAnchor .= (relatedView.leading + 10) * 3
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.trailingAnchor .= 3 * (relatedView.leading + 10)
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.trailingAnchor .= 3 * relatedView.leading + 10
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: 10, multiplier: 3)
    }
/*
    func testView1TrailingEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = view1.trailingAnchor .= (relatedView.leading + 10) / 2
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1TrailingGreaterThanOrEqualToLeading() {
        let constraints = view1.trailingAnchor ≥ relatedView.leading
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1TrailingGreaterThanOrEqualToLeadingPlusConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.leading + 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testView1TrailingGreaterThanOrEqualToLeadingMinusConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.leading - 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TrailingGreaterThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.leading * 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = view1.trailingAnchor ≥ 3 * relatedView.leading
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualToLeadingDividedByConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.leading / 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1TrailingGreaterThanOrEqualToLeadingWithPriority() {
        let constraints = view1.trailingAnchor ≥ relatedView.leading ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = view1.trailingAnchor ≥ relatedView.leading ~ 300
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testView1TrailingGreaterThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor ≥ relatedView.leading ~ .high - 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1TrailingGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.trailingAnchor ≥ (relatedView.leading + 10) * 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.trailingAnchor ≥ 3 * (relatedView.leading + 10)
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.trailingAnchor ≥ 3 * relatedView.leading + 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }
/*
    func testView1TrailingGreaterThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = view1.trailingAnchor ≥ (relatedView.leading + 10) / 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: view1Trailing <=> relatedViewCenterX
    // MARK: LessThanOrEqual

    func testView1TrailingLessThanOrEqualToCenterX() {
        let constraints = view1.trailingAnchor ≤ relatedView.centerX
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX)
    }

    // MARK: LessThanOrEqual with constant
    func testView1TrailingLessThanOrEqualToCenterXPlusConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.centerX + 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testView1TrailingLessThanOrEqualToCenterXMinusConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.centerX - 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TrailingLessThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.centerX * 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = view1.trailingAnchor ≤ 3 * relatedView.centerX
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualToCenterXDividedByConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.centerX / 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1TrailingLessThanOrEqualToCenterXWithPriority() {
        let constraints = view1.trailingAnchor ≤ relatedView.centerX ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testView1TrailingLessThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = view1.trailingAnchor ≤ relatedView.centerX ~ 300
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testView1TrailingLessThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor ≤ relatedView.centerX ~ .high - 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1TrailingLessThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.trailingAnchor ≤ (relatedView.centerX + 10) * 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.trailingAnchor ≤ 3 * (relatedView.centerX + 10)
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.trailingAnchor ≤ 3 * relatedView.centerX + 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }
/*
    func testView1TrailingLessThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = view1.trailingAnchor ≤ (relatedView.centerX + 10) / 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1TrailingEqualToCenterX() {
        let constraints = view1.trailingAnchor .= relatedView.centerX
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX)
    }

    // MARK: Equal with constant
    func testView1TrailingEqualToCenterXPlusConstant() {
        let constraints = view1.trailingAnchor .= relatedView.centerX + 10
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10)
    }

    func testView1TrailingEqualToCenterXMinusConstant() {
        let constraints = view1.trailingAnchor .= relatedView.centerX - 10
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TrailingEqualToCenterXMultiplyingConstant() {
        let constraints = view1.trailingAnchor .= relatedView.centerX * 3
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testView1TrailingEqualToCenterXMultipliedByConstant() {
        let constraints = view1.trailingAnchor .= 3 * relatedView.centerX
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testView1TrailingEqualToCenterXDividedByConstant() {
        let constraints = view1.trailingAnchor .= relatedView.centerX / 2
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1TrailingEqualToCenterXWithPriority() {
        let constraints = view1.trailingAnchor .= relatedView.centerX ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, priority: .low)
    }

    func testView1TrailingEqualToCenterXWithPriorityLiteral() {
        let constraints = view1.trailingAnchor .= relatedView.centerX ~ 300
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, priority: 300)
    }

    func testView1TrailingEqualToCenterXWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor .= relatedView.centerX ~ .high - 1
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1TrailingEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.trailingAnchor .= (relatedView.centerX + 10) * 3
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.trailingAnchor .= 3 * (relatedView.centerX + 10)
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.trailingAnchor .= 3 * relatedView.centerX + 10
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
    }
/*
    func testView1TrailingEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = view1.trailingAnchor .= (relatedView.centerX + 10) / 2
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1TrailingGreaterThanOrEqualToCenterX() {
        let constraints = view1.trailingAnchor ≥ relatedView.centerX
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1TrailingGreaterThanOrEqualToCenterXPlusConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.centerX + 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testView1TrailingGreaterThanOrEqualToCenterXMinusConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.centerX - 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TrailingGreaterThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.centerX * 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = view1.trailingAnchor ≥ 3 * relatedView.centerX
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualToCenterXDividedByConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.centerX / 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1TrailingGreaterThanOrEqualToCenterXWithPriority() {
        let constraints = view1.trailingAnchor ≥ relatedView.centerX ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = view1.trailingAnchor ≥ relatedView.centerX ~ 300
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testView1TrailingGreaterThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor ≥ relatedView.centerX ~ .high - 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1TrailingGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.trailingAnchor ≥ (relatedView.centerX + 10) * 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.trailingAnchor ≥ 3 * (relatedView.centerX + 10)
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.trailingAnchor ≥ 3 * relatedView.centerX + 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }
/*
    func testView1TrailingGreaterThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = view1.trailingAnchor ≥ (relatedView.centerX + 10) / 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: view1Trailing <=> relatedViewTrailing
    // MARK: LessThanOrEqual

    func testView1TrailingLessThanOrEqualToTrailing() {
        let constraints = view1.trailingAnchor ≤ relatedView.trailing
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testView1TrailingLessThanOrEqualToTrailingPlusConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.trailing + 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testView1TrailingLessThanOrEqualToTrailingMinusConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.trailing - 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TrailingLessThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.trailing * 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = view1.trailingAnchor ≤ 3 * relatedView.trailing
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualToTrailingDividedByConstant() {
        let constraints = view1.trailingAnchor ≤ relatedView.trailing / 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1TrailingLessThanOrEqualToTrailingWithPriority() {
        let constraints = view1.trailingAnchor ≤ relatedView.trailing ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testView1TrailingLessThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = view1.trailingAnchor ≤ relatedView.trailing ~ 300
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testView1TrailingLessThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor ≤ relatedView.trailing ~ .high - 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1TrailingLessThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.trailingAnchor ≤ (relatedView.trailing + 10) * 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.trailingAnchor ≤ 3 * (relatedView.trailing + 10)
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.trailingAnchor ≤ 3 * relatedView.trailing + 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }
/*
    func testView1TrailingLessThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = view1.trailingAnchor ≤ (relatedView.trailing + 10) / 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1TrailingEqualToTrailing() {
        let constraints = view1.trailingAnchor .= relatedView.trailing
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testView1TrailingEqualToTrailingPlusConstant() {
        let constraints = view1.trailingAnchor .= relatedView.trailing + 10
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10)
    }

    func testView1TrailingEqualToTrailingMinusConstant() {
        let constraints = view1.trailingAnchor .= relatedView.trailing - 10
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TrailingEqualToTrailingMultiplyingConstant() {
        let constraints = view1.trailingAnchor .= relatedView.trailing * 3
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testView1TrailingEqualToTrailingMultipliedByConstant() {
        let constraints = view1.trailingAnchor .= 3 * relatedView.trailing
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testView1TrailingEqualToTrailingDividedByConstant() {
        let constraints = view1.trailingAnchor .= relatedView.trailing / 2
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1TrailingEqualToTrailingWithPriority() {
        let constraints = view1.trailingAnchor .= relatedView.trailing ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, priority: .low)
    }

    func testView1TrailingEqualToTrailingWithPriorityLiteral() {
        let constraints = view1.trailingAnchor .= relatedView.trailing ~ 300
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 300)
    }

    func testView1TrailingEqualToTrailingWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor .= relatedView.trailing ~ .high - 1
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1TrailingEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.trailingAnchor .= (relatedView.trailing + 10) * 3
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.trailingAnchor .= 3 * (relatedView.trailing + 10)
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.trailingAnchor .= 3 * relatedView.trailing + 10
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }
/*
    func testView1TrailingEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = view1.trailingAnchor .= (relatedView.trailing + 10) / 2
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1TrailingGreaterThanOrEqualToTrailing() {
        let constraints = view1.trailingAnchor ≥ relatedView.trailing
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1TrailingGreaterThanOrEqualToTrailingPlusConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.trailing + 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testView1TrailingGreaterThanOrEqualToTrailingMinusConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.trailing - 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TrailingGreaterThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.trailing * 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = view1.trailingAnchor ≥ 3 * relatedView.trailing
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualToTrailingDividedByConstant() {
        let constraints = view1.trailingAnchor ≥ relatedView.trailing / 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1TrailingGreaterThanOrEqualToTrailingWithPriority() {
        let constraints = view1.trailingAnchor ≥ relatedView.trailing ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = view1.trailingAnchor ≥ relatedView.trailing ~ 300
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testView1TrailingGreaterThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor ≥ relatedView.trailing ~ .high - 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1TrailingGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.trailingAnchor ≥ (relatedView.trailing + 10) * 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.trailingAnchor ≥ 3 * (relatedView.trailing + 10)
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.trailingAnchor ≥ 3 * relatedView.trailing + 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }
/*
    func testView1TrailingGreaterThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = view1.trailingAnchor ≥ (relatedView.trailing + 10) / 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 1 / 2)
    }
*/
// sourcery:end
}
