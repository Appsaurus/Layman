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
    // MARK: Equal

    func testViewArrayLeadingEqualToLeading() {
        let constraints = viewArray.leadingAnchor .= relatedView.leading
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading)
    }

    // MARK: Equal with constant
    func testViewArrayLeadingEqualToLeadingPlusConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.leading .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10)
    }

    func testViewArrayLeadingEqualToLeadingMinusConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.leading .- 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayLeadingEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.leading .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayLeadingEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor .= 3 .* relatedView.leading
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayLeadingEqualToLeadingDividedByConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.leading ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testViewArrayLeadingEqualToLeadingWithPriority() {
        let constraints = viewArray.leadingAnchor .= relatedView.leading ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, priority: .low)
    }

    func testViewArrayLeadingEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray.leadingAnchor .= relatedView.leading ~ 300
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 300)
    }

    func testViewArrayLeadingEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor .= relatedView.leading ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayLeadingEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor .= (relatedView.leading .+ 10) .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor .= 3 .* (relatedView.leading .+ 10)
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leadingAnchor .= 3 .* relatedView.leading .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.leadingAnchor .= (relatedView.leading .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual

    func testViewArrayLeadingGreaterThanOrEqualToLeading() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.leading
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.leading .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingMinusConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.leading .- 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayLeadingGreaterThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.leading .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor ≥ 3 .* relatedView.leading
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingDividedByConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.leading ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testViewArrayLeadingGreaterThanOrEqualToLeadingWithPriority() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.leading ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.leading ~ 300
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.leading ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor ≥ (relatedView.leading .+ 10) .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor ≥ 3 .* (relatedView.leading .+ 10)
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leadingAnchor ≥ 3 .* relatedView.leading .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.leadingAnchor ≥ (relatedView.leading .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual

    func testViewArrayLeadingLessThanOrEqualToLeading() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.leading
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLeadingLessThanOrEqualToLeadingPlusConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.leading .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingMinusConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.leading .- 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLeadingLessThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.leading .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor ≤ 3 .* relatedView.leading
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingDividedByConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.leading ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testViewArrayLeadingLessThanOrEqualToLeadingWithPriority() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.leading ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.leading ~ 300
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.leading ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingLessThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor ≤ (relatedView.leading .+ 10) .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor ≤ 3 .* (relatedView.leading .+ 10)
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leadingAnchor ≤ 3 .* relatedView.leading .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.leadingAnchor ≤ (relatedView.leading .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

// MARK: viewArrayLeading <=> relatedViewCenterX
    // MARK: Equal

    func testViewArrayLeadingEqualToCenterX() {
        let constraints = viewArray.leadingAnchor .= relatedView.centerX
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX)
    }

    // MARK: Equal with constant
    func testViewArrayLeadingEqualToCenterXPlusConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.centerX .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10)
    }

    func testViewArrayLeadingEqualToCenterXMinusConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.centerX .- 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayLeadingEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.centerX .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor .= 3 .* relatedView.centerX
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingEqualToCenterXDividedByConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.centerX ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testViewArrayLeadingEqualToCenterXWithPriority() {
        let constraints = viewArray.leadingAnchor .= relatedView.centerX ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, priority: .low)
    }

    func testViewArrayLeadingEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray.leadingAnchor .= relatedView.centerX ~ 300
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, priority: 300)
    }

    func testViewArrayLeadingEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor .= relatedView.centerX ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayLeadingEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor .= (relatedView.centerX .+ 10) .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor .= 3 .* (relatedView.centerX .+ 10)
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leadingAnchor .= 3 .* relatedView.centerX .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.leadingAnchor .= (relatedView.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual

    func testViewArrayLeadingGreaterThanOrEqualToCenterX() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.centerX
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayLeadingGreaterThanOrEqualToCenterXPlusConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.centerX .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXMinusConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.centerX .- 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayLeadingGreaterThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.centerX .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor ≥ 3 .* relatedView.centerX
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXDividedByConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.centerX ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testViewArrayLeadingGreaterThanOrEqualToCenterXWithPriority() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.centerX ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.centerX ~ 300
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.centerX ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor ≥ (relatedView.centerX .+ 10) .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor ≥ 3 .* (relatedView.centerX .+ 10)
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leadingAnchor ≥ 3 .* relatedView.centerX .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.leadingAnchor ≥ (relatedView.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual

    func testViewArrayLeadingLessThanOrEqualToCenterX() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.centerX
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLeadingLessThanOrEqualToCenterXPlusConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.centerX .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXMinusConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.centerX .- 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLeadingLessThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.centerX .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor ≤ 3 .* relatedView.centerX
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXDividedByConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.centerX ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testViewArrayLeadingLessThanOrEqualToCenterXWithPriority() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.centerX ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.centerX ~ 300
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.centerX ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingLessThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor ≤ (relatedView.centerX .+ 10) .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor ≤ 3 .* (relatedView.centerX .+ 10)
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leadingAnchor ≤ 3 .* relatedView.centerX .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.leadingAnchor ≤ (relatedView.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

// MARK: viewArrayLeading <=> relatedViewTrailing
    // MARK: Equal

    func testViewArrayLeadingEqualToTrailing() {
        let constraints = viewArray.leadingAnchor .= relatedView.trailing
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testViewArrayLeadingEqualToTrailingPlusConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.trailing .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10)
    }

    func testViewArrayLeadingEqualToTrailingMinusConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.trailing .- 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayLeadingEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.trailing .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor .= 3 .* relatedView.trailing
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingEqualToTrailingDividedByConstant() {
        let constraints = viewArray.leadingAnchor .= relatedView.trailing ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testViewArrayLeadingEqualToTrailingWithPriority() {
        let constraints = viewArray.leadingAnchor .= relatedView.trailing ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, priority: .low)
    }

    func testViewArrayLeadingEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray.leadingAnchor .= relatedView.trailing ~ 300
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, priority: 300)
    }

    func testViewArrayLeadingEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor .= relatedView.trailing ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayLeadingEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor .= (relatedView.trailing .+ 10) .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor .= 3 .* (relatedView.trailing .+ 10)
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leadingAnchor .= 3 .* relatedView.trailing .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.leadingAnchor .= (relatedView.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual

    func testViewArrayLeadingGreaterThanOrEqualToTrailing() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.trailing
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayLeadingGreaterThanOrEqualToTrailingPlusConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.trailing .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingMinusConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.trailing .- 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayLeadingGreaterThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.trailing .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor ≥ 3 .* relatedView.trailing
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingDividedByConstant() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.trailing ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testViewArrayLeadingGreaterThanOrEqualToTrailingWithPriority() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.trailing ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.trailing ~ 300
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor ≥ relatedView.trailing ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor ≥ (relatedView.trailing .+ 10) .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor ≥ 3 .* (relatedView.trailing .+ 10)
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leadingAnchor ≥ 3 .* relatedView.trailing .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.leadingAnchor ≥ (relatedView.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual

    func testViewArrayLeadingLessThanOrEqualToTrailing() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.trailing
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLeadingLessThanOrEqualToTrailingPlusConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.trailing .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingMinusConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.trailing .- 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLeadingLessThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.trailing .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor ≤ 3 .* relatedView.trailing
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingDividedByConstant() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.trailing ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testViewArrayLeadingLessThanOrEqualToTrailingWithPriority() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.trailing ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.trailing ~ 300
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor ≤ relatedView.trailing ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingLessThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leadingAnchor ≤ (relatedView.trailing .+ 10) .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leadingAnchor ≤ 3 .* (relatedView.trailing .+ 10)
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leadingAnchor ≤ 3 .* relatedView.trailing .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.leadingAnchor ≤ (relatedView.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

// MARK: viewArrayCenterX <=> relatedViewLeading
    // MARK: Equal

    func testViewArrayCenterXEqualToLeading() {
        let constraints = viewArray.centerXAnchor .= relatedView.leading
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading)
    }

    // MARK: Equal with constant
    func testViewArrayCenterXEqualToLeadingPlusConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.leading .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10)
    }

    func testViewArrayCenterXEqualToLeadingMinusConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.leading .- 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterXEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.leading .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayCenterXEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor .= 3 .* relatedView.leading
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayCenterXEqualToLeadingDividedByConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.leading ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testViewArrayCenterXEqualToLeadingWithPriority() {
        let constraints = viewArray.centerXAnchor .= relatedView.leading ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, priority: .low)
    }

    func testViewArrayCenterXEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray.centerXAnchor .= relatedView.leading ~ 300
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, priority: 300)
    }

    func testViewArrayCenterXEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor .= relatedView.leading ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterXEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor .= (relatedView.leading .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor .= 3 .* (relatedView.leading .+ 10)
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerXAnchor .= 3 .* relatedView.leading .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerXAnchor .= (relatedView.leading .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual

    func testViewArrayCenterXGreaterThanOrEqualToLeading() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.leading
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterXGreaterThanOrEqualToLeadingPlusConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.leading .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingMinusConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.leading .- 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterXGreaterThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.leading .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor ≥ 3 .* relatedView.leading
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingDividedByConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.leading ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testViewArrayCenterXGreaterThanOrEqualToLeadingWithPriority() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.leading ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.leading ~ 300
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.leading ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor ≥ (relatedView.leading .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor ≥ 3 .* (relatedView.leading .+ 10)
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerXAnchor ≥ 3 .* relatedView.leading .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerXAnchor ≥ (relatedView.leading .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual

    func testViewArrayCenterXLessThanOrEqualToLeading() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.leading
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterXLessThanOrEqualToLeadingPlusConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.leading .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingMinusConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.leading .- 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterXLessThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.leading .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor ≤ 3 .* relatedView.leading
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingDividedByConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.leading ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testViewArrayCenterXLessThanOrEqualToLeadingWithPriority() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.leading ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.leading ~ 300
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.leading ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXLessThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor ≤ (relatedView.leading .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor ≤ 3 .* (relatedView.leading .+ 10)
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerXAnchor ≤ 3 .* relatedView.leading .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerXAnchor ≤ (relatedView.leading .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

// MARK: viewArrayCenterX <=> relatedViewCenterX
    // MARK: Equal

    func testViewArrayCenterXEqualToCenterX() {
        let constraints = viewArray.centerXAnchor .= relatedView.centerX
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX)
    }

    // MARK: Equal with constant
    func testViewArrayCenterXEqualToCenterXPlusConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.centerX .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10)
    }

    func testViewArrayCenterXEqualToCenterXMinusConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.centerX .- 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterXEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.centerX .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor .= 3 .* relatedView.centerX
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXEqualToCenterXDividedByConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.centerX ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testViewArrayCenterXEqualToCenterXWithPriority() {
        let constraints = viewArray.centerXAnchor .= relatedView.centerX ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: .low)
    }

    func testViewArrayCenterXEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray.centerXAnchor .= relatedView.centerX ~ 300
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 300)
    }

    func testViewArrayCenterXEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor .= relatedView.centerX ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterXEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor .= (relatedView.centerX .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor .= 3 .* (relatedView.centerX .+ 10)
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerXAnchor .= 3 .* relatedView.centerX .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.centerXAnchor .= (relatedView.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual

    func testViewArrayCenterXGreaterThanOrEqualToCenterX() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.centerX
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.centerX .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXMinusConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.centerX .- 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterXGreaterThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.centerX .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor ≥ 3 .* relatedView.centerX
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXDividedByConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.centerX ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testViewArrayCenterXGreaterThanOrEqualToCenterXWithPriority() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.centerX ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.centerX ~ 300
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.centerX ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor ≥ (relatedView.centerX .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor ≥ 3 .* (relatedView.centerX .+ 10)
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerXAnchor ≥ 3 .* relatedView.centerX .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.centerXAnchor ≥ (relatedView.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual

    func testViewArrayCenterXLessThanOrEqualToCenterX() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.centerX
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterXLessThanOrEqualToCenterXPlusConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.centerX .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXMinusConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.centerX .- 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterXLessThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.centerX .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor ≤ 3 .* relatedView.centerX
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXDividedByConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.centerX ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testViewArrayCenterXLessThanOrEqualToCenterXWithPriority() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.centerX ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.centerX ~ 300
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.centerX ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXLessThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor ≤ (relatedView.centerX .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor ≤ 3 .* (relatedView.centerX .+ 10)
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerXAnchor ≤ 3 .* relatedView.centerX .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.centerXAnchor ≤ (relatedView.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

// MARK: viewArrayCenterX <=> relatedViewTrailing
    // MARK: Equal

    func testViewArrayCenterXEqualToTrailing() {
        let constraints = viewArray.centerXAnchor .= relatedView.trailing
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testViewArrayCenterXEqualToTrailingPlusConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.trailing .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10)
    }

    func testViewArrayCenterXEqualToTrailingMinusConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.trailing .- 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterXEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.trailing .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor .= 3 .* relatedView.trailing
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXEqualToTrailingDividedByConstant() {
        let constraints = viewArray.centerXAnchor .= relatedView.trailing ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testViewArrayCenterXEqualToTrailingWithPriority() {
        let constraints = viewArray.centerXAnchor .= relatedView.trailing ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, priority: .low)
    }

    func testViewArrayCenterXEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray.centerXAnchor .= relatedView.trailing ~ 300
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, priority: 300)
    }

    func testViewArrayCenterXEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor .= relatedView.trailing ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterXEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor .= (relatedView.trailing .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor .= 3 .* (relatedView.trailing .+ 10)
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerXAnchor .= 3 .* relatedView.trailing .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerXAnchor .= (relatedView.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual

    func testViewArrayCenterXGreaterThanOrEqualToTrailing() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.trailing
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterXGreaterThanOrEqualToTrailingPlusConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.trailing .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingMinusConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.trailing .- 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterXGreaterThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.trailing .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor ≥ 3 .* relatedView.trailing
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingDividedByConstant() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.trailing ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testViewArrayCenterXGreaterThanOrEqualToTrailingWithPriority() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.trailing ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.trailing ~ 300
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor ≥ relatedView.trailing ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor ≥ (relatedView.trailing .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor ≥ 3 .* (relatedView.trailing .+ 10)
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerXAnchor ≥ 3 .* relatedView.trailing .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerXAnchor ≥ (relatedView.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual

    func testViewArrayCenterXLessThanOrEqualToTrailing() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.trailing
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterXLessThanOrEqualToTrailingPlusConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.trailing .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingMinusConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.trailing .- 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterXLessThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.trailing .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor ≤ 3 .* relatedView.trailing
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingDividedByConstant() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.trailing ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testViewArrayCenterXLessThanOrEqualToTrailingWithPriority() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.trailing ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.trailing ~ 300
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor ≤ relatedView.trailing ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXLessThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerXAnchor ≤ (relatedView.trailing .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerXAnchor ≤ 3 .* (relatedView.trailing .+ 10)
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerXAnchor ≤ 3 .* relatedView.trailing .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerXAnchor ≤ (relatedView.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

// MARK: viewArrayTrailing <=> relatedViewLeading
    // MARK: Equal

    func testViewArrayTrailingEqualToLeading() {
        let constraints = viewArray.trailingAnchor .= relatedView.leading
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading)
    }

    // MARK: Equal with constant
    func testViewArrayTrailingEqualToLeadingPlusConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.leading .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10)
    }

    func testViewArrayTrailingEqualToLeadingMinusConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.leading .- 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTrailingEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.leading .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayTrailingEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor .= 3 .* relatedView.leading
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayTrailingEqualToLeadingDividedByConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.leading ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testViewArrayTrailingEqualToLeadingWithPriority() {
        let constraints = viewArray.trailingAnchor .= relatedView.leading ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, priority: .low)
    }

    func testViewArrayTrailingEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray.trailingAnchor .= relatedView.leading ~ 300
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, priority: 300)
    }

    func testViewArrayTrailingEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor .= relatedView.leading ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTrailingEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor .= (relatedView.leading .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor .= 3 .* (relatedView.leading .+ 10)
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailingAnchor .= 3 .* relatedView.leading .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailingAnchor .= (relatedView.leading .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual

    func testViewArrayTrailingGreaterThanOrEqualToLeading() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.leading
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTrailingGreaterThanOrEqualToLeadingPlusConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.leading .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingMinusConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.leading .- 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTrailingGreaterThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.leading .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor ≥ 3 .* relatedView.leading
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingDividedByConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.leading ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testViewArrayTrailingGreaterThanOrEqualToLeadingWithPriority() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.leading ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.leading ~ 300
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.leading ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor ≥ (relatedView.leading .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor ≥ 3 .* (relatedView.leading .+ 10)
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailingAnchor ≥ 3 .* relatedView.leading .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailingAnchor ≥ (relatedView.leading .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual

    func testViewArrayTrailingLessThanOrEqualToLeading() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.leading
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTrailingLessThanOrEqualToLeadingPlusConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.leading .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingMinusConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.leading .- 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTrailingLessThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.leading .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor ≤ 3 .* relatedView.leading
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingDividedByConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.leading ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testViewArrayTrailingLessThanOrEqualToLeadingWithPriority() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.leading ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.leading ~ 300
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.leading ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingLessThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor ≤ (relatedView.leading .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor ≤ 3 .* (relatedView.leading .+ 10)
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailingAnchor ≤ 3 .* relatedView.leading .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailingAnchor ≤ (relatedView.leading .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

// MARK: viewArrayTrailing <=> relatedViewCenterX
    // MARK: Equal

    func testViewArrayTrailingEqualToCenterX() {
        let constraints = viewArray.trailingAnchor .= relatedView.centerX
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX)
    }

    // MARK: Equal with constant
    func testViewArrayTrailingEqualToCenterXPlusConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.centerX .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10)
    }

    func testViewArrayTrailingEqualToCenterXMinusConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.centerX .- 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTrailingEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.centerX .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor .= 3 .* relatedView.centerX
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingEqualToCenterXDividedByConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.centerX ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testViewArrayTrailingEqualToCenterXWithPriority() {
        let constraints = viewArray.trailingAnchor .= relatedView.centerX ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, priority: .low)
    }

    func testViewArrayTrailingEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray.trailingAnchor .= relatedView.centerX ~ 300
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, priority: 300)
    }

    func testViewArrayTrailingEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor .= relatedView.centerX ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTrailingEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor .= (relatedView.centerX .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor .= 3 .* (relatedView.centerX .+ 10)
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailingAnchor .= 3 .* relatedView.centerX .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.trailingAnchor .= (relatedView.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual

    func testViewArrayTrailingGreaterThanOrEqualToCenterX() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.centerX
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTrailingGreaterThanOrEqualToCenterXPlusConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.centerX .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXMinusConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.centerX .- 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTrailingGreaterThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.centerX .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor ≥ 3 .* relatedView.centerX
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXDividedByConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.centerX ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testViewArrayTrailingGreaterThanOrEqualToCenterXWithPriority() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.centerX ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.centerX ~ 300
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.centerX ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor ≥ (relatedView.centerX .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor ≥ 3 .* (relatedView.centerX .+ 10)
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailingAnchor ≥ 3 .* relatedView.centerX .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.trailingAnchor ≥ (relatedView.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual

    func testViewArrayTrailingLessThanOrEqualToCenterX() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.centerX
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTrailingLessThanOrEqualToCenterXPlusConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.centerX .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXMinusConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.centerX .- 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTrailingLessThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.centerX .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor ≤ 3 .* relatedView.centerX
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXDividedByConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.centerX ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testViewArrayTrailingLessThanOrEqualToCenterXWithPriority() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.centerX ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.centerX ~ 300
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.centerX ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingLessThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor ≤ (relatedView.centerX .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor ≤ 3 .* (relatedView.centerX .+ 10)
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailingAnchor ≤ 3 .* relatedView.centerX .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.trailingAnchor ≤ (relatedView.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

// MARK: viewArrayTrailing <=> relatedViewTrailing
    // MARK: Equal

    func testViewArrayTrailingEqualToTrailing() {
        let constraints = viewArray.trailingAnchor .= relatedView.trailing
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testViewArrayTrailingEqualToTrailingPlusConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.trailing .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10)
    }

    func testViewArrayTrailingEqualToTrailingMinusConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.trailing .- 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTrailingEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.trailing .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor .= 3 .* relatedView.trailing
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingEqualToTrailingDividedByConstant() {
        let constraints = viewArray.trailingAnchor .= relatedView.trailing ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testViewArrayTrailingEqualToTrailingWithPriority() {
        let constraints = viewArray.trailingAnchor .= relatedView.trailing ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: .low)
    }

    func testViewArrayTrailingEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray.trailingAnchor .= relatedView.trailing ~ 300
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 300)
    }

    func testViewArrayTrailingEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor .= relatedView.trailing ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTrailingEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor .= (relatedView.trailing .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor .= 3 .* (relatedView.trailing .+ 10)
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailingAnchor .= 3 .* relatedView.trailing .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailingAnchor .= (relatedView.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual

    func testViewArrayTrailingGreaterThanOrEqualToTrailing() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.trailing
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.trailing .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingMinusConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.trailing .- 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTrailingGreaterThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.trailing .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor ≥ 3 .* relatedView.trailing
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingDividedByConstant() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.trailing ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testViewArrayTrailingGreaterThanOrEqualToTrailingWithPriority() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.trailing ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.trailing ~ 300
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor ≥ relatedView.trailing ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor ≥ (relatedView.trailing .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor ≥ 3 .* (relatedView.trailing .+ 10)
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailingAnchor ≥ 3 .* relatedView.trailing .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailingAnchor ≥ (relatedView.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual

    func testViewArrayTrailingLessThanOrEqualToTrailing() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.trailing
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTrailingLessThanOrEqualToTrailingPlusConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.trailing .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingMinusConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.trailing .- 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTrailingLessThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.trailing .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor ≤ 3 .* relatedView.trailing
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingDividedByConstant() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.trailing ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testViewArrayTrailingLessThanOrEqualToTrailingWithPriority() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.trailing ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.trailing ~ 300
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor ≤ relatedView.trailing ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingLessThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailingAnchor ≤ (relatedView.trailing .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailingAnchor ≤ 3 .* (relatedView.trailing .+ 10)
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailingAnchor ≤ 3 .* relatedView.trailing .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailingAnchor ≤ (relatedView.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }
// sourcery:end
}
