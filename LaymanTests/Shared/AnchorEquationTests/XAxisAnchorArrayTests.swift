//
//  XAxisAnchorArrayTests.swift
//  Layman
//
//  Created by Brian Strobach on 1/25/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// swiftlint:disable file_length type_body_length

@testable import Layman
import XCTest

// sourcery: anchorEquationTest
// sourcery: lhsAttributes = leading, lhsAttributes = centerX, lhsAttributes = trailing
// sourcery: rhsAttributes = leading, rhsAttributes = centerX, rhsAttributes = trailing
// sourcery: lhsItem = viewArray
class XAxisAnchorArrayTests: LaymanTestCase {

// sourcery:inline:auto:XAxisAnchorArrayTests.EquationTests
    // MARK: viewArray.leadingLeading <=> relatedViewLeading
    // MARK: GreaterThanOrEqual

    func testViewArrayLeadingGreaterThanOrEqualToLeading() {
        let constraints = viewArray.leading ≥ relatedView.leadingAnchor
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstant() {
        let constraints = viewArray.leading ≥ relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingMinusConstant() {
        let constraints = viewArray.leading ≥ relatedView.leadingAnchor .- 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayLeadingGreaterThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray.leading ≥ relatedView.leadingAnchor .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.leadingAnchor
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingDividedByConstant() {
        let constraints = viewArray.leading ≥ relatedView.leadingAnchor ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayLeadingGreaterThanOrEqualToLeadingWithPriority() {
        let constraints = viewArray.leading ≥ relatedView.leadingAnchor ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray.leading ≥ relatedView.leadingAnchor ~ 300
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading ≥ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading ≥ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.leading ≥ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading ≥ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading ≥ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading ≥ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ (relatedView.leadingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ 3 .* (relatedView.leadingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.leadingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ (relatedView.leadingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testViewArrayLeadingEqualToLeading() {
        let constraints = viewArray.leading .= relatedView.leadingAnchor
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading)
    }

    // MARK: Equal with constant
    func testViewArrayLeadingEqualToLeadingPlusConstant() {
        let constraints = viewArray.leading .= relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10)
    }

    func testViewArrayLeadingEqualToLeadingMinusConstant() {
        let constraints = viewArray.leading .= relatedView.leadingAnchor .- 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayLeadingEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray.leading .= relatedView.leadingAnchor .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayLeadingEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray.leading .= 3 .* relatedView.leadingAnchor
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayLeadingEqualToLeadingDividedByConstant() {
        let constraints = viewArray.leading .= relatedView.leadingAnchor ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayLeadingEqualToLeadingWithPriority() {
        let constraints = viewArray.leading .= relatedView.leadingAnchor ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, priority: .low)
    }

    func testViewArrayLeadingEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray.leading .= relatedView.leadingAnchor ~ 300
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 300)
    }

    func testViewArrayLeadingEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray.leading .= relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayLeadingEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading .= (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading .= 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading .= 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.leading .= (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayLeadingEqualToLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading .= (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualToLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading .= 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualToLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading .= 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualToLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading .= (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingEqualToLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= (relatedView.leadingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualToLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= 3 .* (relatedView.leadingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualToLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= 3 .* relatedView.leadingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualToLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= (relatedView.leadingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayLeadingLessThanOrEqualToLeading() {
        let constraints = viewArray.leading ≤ relatedView.leadingAnchor
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLeadingLessThanOrEqualToLeadingPlusConstant() {
        let constraints = viewArray.leading ≤ relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingMinusConstant() {
        let constraints = viewArray.leading ≤ relatedView.leadingAnchor .- 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLeadingLessThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray.leading ≤ relatedView.leadingAnchor .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.leadingAnchor
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingDividedByConstant() {
        let constraints = viewArray.leading ≤ relatedView.leadingAnchor ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLeadingLessThanOrEqualToLeadingWithPriority() {
        let constraints = viewArray.leading ≤ relatedView.leadingAnchor ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray.leading ≤ relatedView.leadingAnchor ~ 300
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingLessThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading ≤ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading ≤ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.leading ≤ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLeadingLessThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading ≤ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading ≤ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading ≤ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingLessThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ (relatedView.leadingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ 3 .* (relatedView.leadingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.leadingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualToLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ (relatedView.leadingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.leadingLeading <=> relatedViewCenterX
    // MARK: GreaterThanOrEqual

    func testViewArrayLeadingGreaterThanOrEqualToCenterX() {
        let constraints = viewArray.leading ≥ relatedView.centerXAnchor
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayLeadingGreaterThanOrEqualToCenterXPlusConstant() {
        let constraints = viewArray.leading ≥ relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXMinusConstant() {
        let constraints = viewArray.leading ≥ relatedView.centerXAnchor .- 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayLeadingGreaterThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray.leading ≥ relatedView.centerXAnchor .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.centerXAnchor
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXDividedByConstant() {
        let constraints = viewArray.leading ≥ relatedView.centerXAnchor ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayLeadingGreaterThanOrEqualToCenterXWithPriority() {
        let constraints = viewArray.leading ≥ relatedView.centerXAnchor ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray.leading ≥ relatedView.centerXAnchor ~ 300
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading ≥ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading ≥ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.leading ≥ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLeadingGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading ≥ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading ≥ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading ≥ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ (relatedView.centerXAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ 3 .* (relatedView.centerXAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.centerXAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualToCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ (relatedView.centerXAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testViewArrayLeadingEqualToCenterX() {
        let constraints = viewArray.leading .= relatedView.centerXAnchor
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX)
    }

    // MARK: Equal with constant
    func testViewArrayLeadingEqualToCenterXPlusConstant() {
        let constraints = viewArray.leading .= relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10)
    }

    func testViewArrayLeadingEqualToCenterXMinusConstant() {
        let constraints = viewArray.leading .= relatedView.centerXAnchor .- 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayLeadingEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray.leading .= relatedView.centerXAnchor .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray.leading .= 3 .* relatedView.centerXAnchor
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingEqualToCenterXDividedByConstant() {
        let constraints = viewArray.leading .= relatedView.centerXAnchor ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayLeadingEqualToCenterXWithPriority() {
        let constraints = viewArray.leading .= relatedView.centerXAnchor ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, priority: .low)
    }

    func testViewArrayLeadingEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray.leading .= relatedView.centerXAnchor ~ 300
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, priority: 300)
    }

    func testViewArrayLeadingEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray.leading .= relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayLeadingEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading .= (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading .= 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading .= 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.leading .= (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayLeadingEqualToCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading .= (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualToCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading .= 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualToCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading .= 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualToCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading .= (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingEqualToCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= (relatedView.centerXAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualToCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= 3 .* (relatedView.centerXAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualToCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= 3 .* relatedView.centerXAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualToCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= (relatedView.centerXAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayLeadingLessThanOrEqualToCenterX() {
        let constraints = viewArray.leading ≤ relatedView.centerXAnchor
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLeadingLessThanOrEqualToCenterXPlusConstant() {
        let constraints = viewArray.leading ≤ relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXMinusConstant() {
        let constraints = viewArray.leading ≤ relatedView.centerXAnchor .- 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLeadingLessThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray.leading ≤ relatedView.centerXAnchor .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.centerXAnchor
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXDividedByConstant() {
        let constraints = viewArray.leading ≤ relatedView.centerXAnchor ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLeadingLessThanOrEqualToCenterXWithPriority() {
        let constraints = viewArray.leading ≤ relatedView.centerXAnchor ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray.leading ≤ relatedView.centerXAnchor ~ 300
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingLessThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading ≤ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading ≤ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.leading ≤ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLeadingLessThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading ≤ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading ≤ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading ≤ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingLessThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ (relatedView.centerXAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ 3 .* (relatedView.centerXAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.centerXAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualToCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ (relatedView.centerXAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.leadingLeading <=> relatedViewTrailing
    // MARK: GreaterThanOrEqual

    func testViewArrayLeadingGreaterThanOrEqualToTrailing() {
        let constraints = viewArray.leading ≥ relatedView.trailingAnchor
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayLeadingGreaterThanOrEqualToTrailingPlusConstant() {
        let constraints = viewArray.leading ≥ relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingMinusConstant() {
        let constraints = viewArray.leading ≥ relatedView.trailingAnchor .- 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayLeadingGreaterThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray.leading ≥ relatedView.trailingAnchor .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.trailingAnchor
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingDividedByConstant() {
        let constraints = viewArray.leading ≥ relatedView.trailingAnchor ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayLeadingGreaterThanOrEqualToTrailingWithPriority() {
        let constraints = viewArray.leading ≥ relatedView.trailingAnchor ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray.leading ≥ relatedView.trailingAnchor ~ 300
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading ≥ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading ≥ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.leading ≥ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLeadingGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading ≥ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading ≥ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading ≥ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ (relatedView.trailingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ 3 .* (relatedView.trailingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.trailingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualToTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ (relatedView.trailingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testViewArrayLeadingEqualToTrailing() {
        let constraints = viewArray.leading .= relatedView.trailingAnchor
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testViewArrayLeadingEqualToTrailingPlusConstant() {
        let constraints = viewArray.leading .= relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10)
    }

    func testViewArrayLeadingEqualToTrailingMinusConstant() {
        let constraints = viewArray.leading .= relatedView.trailingAnchor .- 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayLeadingEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray.leading .= relatedView.trailingAnchor .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray.leading .= 3 .* relatedView.trailingAnchor
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingEqualToTrailingDividedByConstant() {
        let constraints = viewArray.leading .= relatedView.trailingAnchor ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayLeadingEqualToTrailingWithPriority() {
        let constraints = viewArray.leading .= relatedView.trailingAnchor ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, priority: .low)
    }

    func testViewArrayLeadingEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray.leading .= relatedView.trailingAnchor ~ 300
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, priority: 300)
    }

    func testViewArrayLeadingEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray.leading .= relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayLeadingEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading .= (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading .= 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading .= 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.leading .= (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayLeadingEqualToTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading .= (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualToTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading .= 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualToTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading .= 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualToTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading .= (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingEqualToTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= (relatedView.trailingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualToTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= 3 .* (relatedView.trailingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualToTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= 3 .* relatedView.trailingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualToTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= (relatedView.trailingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayLeadingLessThanOrEqualToTrailing() {
        let constraints = viewArray.leading ≤ relatedView.trailingAnchor
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLeadingLessThanOrEqualToTrailingPlusConstant() {
        let constraints = viewArray.leading ≤ relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingMinusConstant() {
        let constraints = viewArray.leading ≤ relatedView.trailingAnchor .- 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLeadingLessThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray.leading ≤ relatedView.trailingAnchor .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.trailingAnchor
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingDividedByConstant() {
        let constraints = viewArray.leading ≤ relatedView.trailingAnchor ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLeadingLessThanOrEqualToTrailingWithPriority() {
        let constraints = viewArray.leading ≤ relatedView.trailingAnchor ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray.leading ≤ relatedView.trailingAnchor ~ 300
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingLessThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading ≤ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading ≤ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.leading ≤ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLeadingLessThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading ≤ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading ≤ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading ≤ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingLessThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ (relatedView.trailingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ 3 .* (relatedView.trailingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.trailingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualToTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ (relatedView.trailingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerXCenterX <=> relatedViewLeading
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterXGreaterThanOrEqualToLeading() {
        let constraints = viewArray.centerX ≥ relatedView.leadingAnchor
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterXGreaterThanOrEqualToLeadingPlusConstant() {
        let constraints = viewArray.centerX ≥ relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingMinusConstant() {
        let constraints = viewArray.centerX ≥ relatedView.leadingAnchor .- 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterXGreaterThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray.centerX ≥ relatedView.leadingAnchor .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.leadingAnchor
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingDividedByConstant() {
        let constraints = viewArray.centerX ≥ relatedView.leadingAnchor ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayCenterXGreaterThanOrEqualToLeadingWithPriority() {
        let constraints = viewArray.centerX ≥ relatedView.leadingAnchor ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray.centerX ≥ relatedView.leadingAnchor ~ 300
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX ≥ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX ≥ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterXGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX ≥ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX ≥ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ (relatedView.leadingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedView.leadingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.leadingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualToLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ (relatedView.leadingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testViewArrayCenterXEqualToLeading() {
        let constraints = viewArray.centerX .= relatedView.leadingAnchor
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading)
    }

    // MARK: Equal with constant
    func testViewArrayCenterXEqualToLeadingPlusConstant() {
        let constraints = viewArray.centerX .= relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10)
    }

    func testViewArrayCenterXEqualToLeadingMinusConstant() {
        let constraints = viewArray.centerX .= relatedView.leadingAnchor .- 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterXEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray.centerX .= relatedView.leadingAnchor .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayCenterXEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray.centerX .= 3 .* relatedView.leadingAnchor
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayCenterXEqualToLeadingDividedByConstant() {
        let constraints = viewArray.centerX .= relatedView.leadingAnchor ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayCenterXEqualToLeadingWithPriority() {
        let constraints = viewArray.centerX .= relatedView.leadingAnchor ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, priority: .low)
    }

    func testViewArrayCenterXEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray.centerX .= relatedView.leadingAnchor ~ 300
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, priority: 300)
    }

    func testViewArrayCenterXEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterXEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX .= (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX .= 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX .= 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX .= (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayCenterXEqualToLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX .= (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualToLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX .= 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualToLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX .= 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualToLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX .= (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXEqualToLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= (relatedView.leadingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualToLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= 3 .* (relatedView.leadingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualToLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= 3 .* relatedView.leadingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualToLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= (relatedView.leadingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayCenterXLessThanOrEqualToLeading() {
        let constraints = viewArray.centerX ≤ relatedView.leadingAnchor
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterXLessThanOrEqualToLeadingPlusConstant() {
        let constraints = viewArray.centerX ≤ relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingMinusConstant() {
        let constraints = viewArray.centerX ≤ relatedView.leadingAnchor .- 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterXLessThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray.centerX ≤ relatedView.leadingAnchor .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.leadingAnchor
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingDividedByConstant() {
        let constraints = viewArray.centerX ≤ relatedView.leadingAnchor ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayCenterXLessThanOrEqualToLeadingWithPriority() {
        let constraints = viewArray.centerX ≤ relatedView.leadingAnchor ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray.centerX ≤ relatedView.leadingAnchor ~ 300
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXLessThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX ≤ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX ≤ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterXLessThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX ≤ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX ≤ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXLessThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ (relatedView.leadingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedView.leadingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.leadingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualToLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ (relatedView.leadingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerXCenterX <=> relatedViewCenterX
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterXGreaterThanOrEqualToCenterX() {
        let constraints = viewArray.centerX ≥ relatedView.centerXAnchor
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstant() {
        let constraints = viewArray.centerX ≥ relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXMinusConstant() {
        let constraints = viewArray.centerX ≥ relatedView.centerXAnchor .- 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterXGreaterThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray.centerX ≥ relatedView.centerXAnchor .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.centerXAnchor
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXDividedByConstant() {
        let constraints = viewArray.centerX ≥ relatedView.centerXAnchor ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayCenterXGreaterThanOrEqualToCenterXWithPriority() {
        let constraints = viewArray.centerX ≥ relatedView.centerXAnchor ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray.centerX ≥ relatedView.centerXAnchor ~ 300
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX ≥ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX ≥ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX ≥ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX ≥ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ (relatedView.centerXAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedView.centerXAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.centerXAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ (relatedView.centerXAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testViewArrayCenterXEqualToCenterX() {
        let constraints = viewArray.centerX .= relatedView.centerXAnchor
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX)
    }

    // MARK: Equal with constant
    func testViewArrayCenterXEqualToCenterXPlusConstant() {
        let constraints = viewArray.centerX .= relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10)
    }

    func testViewArrayCenterXEqualToCenterXMinusConstant() {
        let constraints = viewArray.centerX .= relatedView.centerXAnchor .- 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterXEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray.centerX .= relatedView.centerXAnchor .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray.centerX .= 3 .* relatedView.centerXAnchor
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXEqualToCenterXDividedByConstant() {
        let constraints = viewArray.centerX .= relatedView.centerXAnchor ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayCenterXEqualToCenterXWithPriority() {
        let constraints = viewArray.centerX .= relatedView.centerXAnchor ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: .low)
    }

    func testViewArrayCenterXEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray.centerX .= relatedView.centerXAnchor ~ 300
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 300)
    }

    func testViewArrayCenterXEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterXEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX .= (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX .= 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX .= 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX .= (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayCenterXEqualToCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX .= (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualToCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX .= 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualToCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX .= 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualToCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX .= (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXEqualToCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= (relatedView.centerXAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualToCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= 3 .* (relatedView.centerXAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualToCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= 3 .* relatedView.centerXAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualToCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= (relatedView.centerXAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayCenterXLessThanOrEqualToCenterX() {
        let constraints = viewArray.centerX ≤ relatedView.centerXAnchor
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterXLessThanOrEqualToCenterXPlusConstant() {
        let constraints = viewArray.centerX ≤ relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXMinusConstant() {
        let constraints = viewArray.centerX ≤ relatedView.centerXAnchor .- 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterXLessThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray.centerX ≤ relatedView.centerXAnchor .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.centerXAnchor
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXDividedByConstant() {
        let constraints = viewArray.centerX ≤ relatedView.centerXAnchor ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayCenterXLessThanOrEqualToCenterXWithPriority() {
        let constraints = viewArray.centerX ≤ relatedView.centerXAnchor ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray.centerX ≤ relatedView.centerXAnchor ~ 300
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXLessThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX ≤ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX ≤ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterXLessThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX ≤ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX ≤ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXLessThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ (relatedView.centerXAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedView.centerXAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.centerXAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualToCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ (relatedView.centerXAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerXCenterX <=> relatedViewTrailing
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterXGreaterThanOrEqualToTrailing() {
        let constraints = viewArray.centerX ≥ relatedView.trailingAnchor
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterXGreaterThanOrEqualToTrailingPlusConstant() {
        let constraints = viewArray.centerX ≥ relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingMinusConstant() {
        let constraints = viewArray.centerX ≥ relatedView.trailingAnchor .- 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterXGreaterThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray.centerX ≥ relatedView.trailingAnchor .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.trailingAnchor
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingDividedByConstant() {
        let constraints = viewArray.centerX ≥ relatedView.trailingAnchor ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayCenterXGreaterThanOrEqualToTrailingWithPriority() {
        let constraints = viewArray.centerX ≥ relatedView.trailingAnchor ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray.centerX ≥ relatedView.trailingAnchor ~ 300
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX ≥ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX ≥ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterXGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX ≥ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX ≥ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ (relatedView.trailingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedView.trailingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.trailingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualToTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ (relatedView.trailingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testViewArrayCenterXEqualToTrailing() {
        let constraints = viewArray.centerX .= relatedView.trailingAnchor
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testViewArrayCenterXEqualToTrailingPlusConstant() {
        let constraints = viewArray.centerX .= relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10)
    }

    func testViewArrayCenterXEqualToTrailingMinusConstant() {
        let constraints = viewArray.centerX .= relatedView.trailingAnchor .- 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterXEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray.centerX .= relatedView.trailingAnchor .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray.centerX .= 3 .* relatedView.trailingAnchor
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXEqualToTrailingDividedByConstant() {
        let constraints = viewArray.centerX .= relatedView.trailingAnchor ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayCenterXEqualToTrailingWithPriority() {
        let constraints = viewArray.centerX .= relatedView.trailingAnchor ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, priority: .low)
    }

    func testViewArrayCenterXEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray.centerX .= relatedView.trailingAnchor ~ 300
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, priority: 300)
    }

    func testViewArrayCenterXEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterXEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX .= (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX .= 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX .= 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX .= (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayCenterXEqualToTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX .= (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualToTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX .= 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualToTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX .= 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualToTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX .= (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXEqualToTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= (relatedView.trailingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualToTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= 3 .* (relatedView.trailingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualToTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= 3 .* relatedView.trailingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualToTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= (relatedView.trailingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayCenterXLessThanOrEqualToTrailing() {
        let constraints = viewArray.centerX ≤ relatedView.trailingAnchor
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterXLessThanOrEqualToTrailingPlusConstant() {
        let constraints = viewArray.centerX ≤ relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingMinusConstant() {
        let constraints = viewArray.centerX ≤ relatedView.trailingAnchor .- 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterXLessThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray.centerX ≤ relatedView.trailingAnchor .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.trailingAnchor
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingDividedByConstant() {
        let constraints = viewArray.centerX ≤ relatedView.trailingAnchor ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayCenterXLessThanOrEqualToTrailingWithPriority() {
        let constraints = viewArray.centerX ≤ relatedView.trailingAnchor ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray.centerX ≤ relatedView.trailingAnchor ~ 300
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXLessThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX ≤ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX ≤ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterXLessThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX ≤ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX ≤ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXLessThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ (relatedView.trailingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedView.trailingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.trailingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualToTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ (relatedView.trailingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.trailingTrailing <=> relatedViewLeading
    // MARK: GreaterThanOrEqual

    func testViewArrayTrailingGreaterThanOrEqualToLeading() {
        let constraints = viewArray.trailing ≥ relatedView.leadingAnchor
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTrailingGreaterThanOrEqualToLeadingPlusConstant() {
        let constraints = viewArray.trailing ≥ relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingMinusConstant() {
        let constraints = viewArray.trailing ≥ relatedView.leadingAnchor .- 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTrailingGreaterThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray.trailing ≥ relatedView.leadingAnchor .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.leadingAnchor
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingDividedByConstant() {
        let constraints = viewArray.trailing ≥ relatedView.leadingAnchor ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayTrailingGreaterThanOrEqualToLeadingWithPriority() {
        let constraints = viewArray.trailing ≥ relatedView.leadingAnchor ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray.trailing ≥ relatedView.leadingAnchor ~ 300
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing ≥ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing ≥ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTrailingGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing ≥ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing ≥ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ (relatedView.leadingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedView.leadingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.leadingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualToLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ (relatedView.leadingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testViewArrayTrailingEqualToLeading() {
        let constraints = viewArray.trailing .= relatedView.leadingAnchor
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading)
    }

    // MARK: Equal with constant
    func testViewArrayTrailingEqualToLeadingPlusConstant() {
        let constraints = viewArray.trailing .= relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10)
    }

    func testViewArrayTrailingEqualToLeadingMinusConstant() {
        let constraints = viewArray.trailing .= relatedView.leadingAnchor .- 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTrailingEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray.trailing .= relatedView.leadingAnchor .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayTrailingEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray.trailing .= 3 .* relatedView.leadingAnchor
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayTrailingEqualToLeadingDividedByConstant() {
        let constraints = viewArray.trailing .= relatedView.leadingAnchor ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayTrailingEqualToLeadingWithPriority() {
        let constraints = viewArray.trailing .= relatedView.leadingAnchor ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, priority: .low)
    }

    func testViewArrayTrailingEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray.trailing .= relatedView.leadingAnchor ~ 300
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, priority: 300)
    }

    func testViewArrayTrailingEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTrailingEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing .= (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing .= 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing .= 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing .= (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayTrailingEqualToLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing .= (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualToLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing .= 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualToLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing .= 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualToLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing .= (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingEqualToLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= (relatedView.leadingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualToLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= 3 .* (relatedView.leadingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualToLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= 3 .* relatedView.leadingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualToLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= (relatedView.leadingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayTrailingLessThanOrEqualToLeading() {
        let constraints = viewArray.trailing ≤ relatedView.leadingAnchor
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTrailingLessThanOrEqualToLeadingPlusConstant() {
        let constraints = viewArray.trailing ≤ relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingMinusConstant() {
        let constraints = viewArray.trailing ≤ relatedView.leadingAnchor .- 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTrailingLessThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray.trailing ≤ relatedView.leadingAnchor .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.leadingAnchor
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingDividedByConstant() {
        let constraints = viewArray.trailing ≤ relatedView.leadingAnchor ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayTrailingLessThanOrEqualToLeadingWithPriority() {
        let constraints = viewArray.trailing ≤ relatedView.leadingAnchor ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray.trailing ≤ relatedView.leadingAnchor ~ 300
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingLessThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing ≤ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing ≤ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTrailingLessThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing ≤ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing ≤ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingLessThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ (relatedView.leadingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedView.leadingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.leadingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualToLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ (relatedView.leadingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.trailingTrailing <=> relatedViewCenterX
    // MARK: GreaterThanOrEqual

    func testViewArrayTrailingGreaterThanOrEqualToCenterX() {
        let constraints = viewArray.trailing ≥ relatedView.centerXAnchor
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTrailingGreaterThanOrEqualToCenterXPlusConstant() {
        let constraints = viewArray.trailing ≥ relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXMinusConstant() {
        let constraints = viewArray.trailing ≥ relatedView.centerXAnchor .- 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTrailingGreaterThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray.trailing ≥ relatedView.centerXAnchor .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.centerXAnchor
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXDividedByConstant() {
        let constraints = viewArray.trailing ≥ relatedView.centerXAnchor ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayTrailingGreaterThanOrEqualToCenterXWithPriority() {
        let constraints = viewArray.trailing ≥ relatedView.centerXAnchor ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray.trailing ≥ relatedView.centerXAnchor ~ 300
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing ≥ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing ≥ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTrailingGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing ≥ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing ≥ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ (relatedView.centerXAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedView.centerXAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.centerXAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualToCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ (relatedView.centerXAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testViewArrayTrailingEqualToCenterX() {
        let constraints = viewArray.trailing .= relatedView.centerXAnchor
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX)
    }

    // MARK: Equal with constant
    func testViewArrayTrailingEqualToCenterXPlusConstant() {
        let constraints = viewArray.trailing .= relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10)
    }

    func testViewArrayTrailingEqualToCenterXMinusConstant() {
        let constraints = viewArray.trailing .= relatedView.centerXAnchor .- 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTrailingEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray.trailing .= relatedView.centerXAnchor .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray.trailing .= 3 .* relatedView.centerXAnchor
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingEqualToCenterXDividedByConstant() {
        let constraints = viewArray.trailing .= relatedView.centerXAnchor ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayTrailingEqualToCenterXWithPriority() {
        let constraints = viewArray.trailing .= relatedView.centerXAnchor ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, priority: .low)
    }

    func testViewArrayTrailingEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray.trailing .= relatedView.centerXAnchor ~ 300
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, priority: 300)
    }

    func testViewArrayTrailingEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTrailingEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing .= (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing .= 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing .= 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing .= (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayTrailingEqualToCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing .= (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualToCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing .= 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualToCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing .= 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualToCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing .= (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingEqualToCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= (relatedView.centerXAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualToCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= 3 .* (relatedView.centerXAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualToCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= 3 .* relatedView.centerXAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualToCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= (relatedView.centerXAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayTrailingLessThanOrEqualToCenterX() {
        let constraints = viewArray.trailing ≤ relatedView.centerXAnchor
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTrailingLessThanOrEqualToCenterXPlusConstant() {
        let constraints = viewArray.trailing ≤ relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXMinusConstant() {
        let constraints = viewArray.trailing ≤ relatedView.centerXAnchor .- 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTrailingLessThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray.trailing ≤ relatedView.centerXAnchor .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.centerXAnchor
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXDividedByConstant() {
        let constraints = viewArray.trailing ≤ relatedView.centerXAnchor ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayTrailingLessThanOrEqualToCenterXWithPriority() {
        let constraints = viewArray.trailing ≤ relatedView.centerXAnchor ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray.trailing ≤ relatedView.centerXAnchor ~ 300
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingLessThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing ≤ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing ≤ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTrailingLessThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing ≤ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing ≤ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingLessThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ (relatedView.centerXAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedView.centerXAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.centerXAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualToCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ (relatedView.centerXAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.trailingTrailing <=> relatedViewTrailing
    // MARK: GreaterThanOrEqual

    func testViewArrayTrailingGreaterThanOrEqualToTrailing() {
        let constraints = viewArray.trailing ≥ relatedView.trailingAnchor
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstant() {
        let constraints = viewArray.trailing ≥ relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingMinusConstant() {
        let constraints = viewArray.trailing ≥ relatedView.trailingAnchor .- 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTrailingGreaterThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray.trailing ≥ relatedView.trailingAnchor .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.trailingAnchor
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingDividedByConstant() {
        let constraints = viewArray.trailing ≥ relatedView.trailingAnchor ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayTrailingGreaterThanOrEqualToTrailingWithPriority() {
        let constraints = viewArray.trailing ≥ relatedView.trailingAnchor ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray.trailing ≥ relatedView.trailingAnchor ~ 300
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing ≥ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing ≥ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing ≥ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing ≥ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ (relatedView.trailingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedView.trailingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.trailingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ (relatedView.trailingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testViewArrayTrailingEqualToTrailing() {
        let constraints = viewArray.trailing .= relatedView.trailingAnchor
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testViewArrayTrailingEqualToTrailingPlusConstant() {
        let constraints = viewArray.trailing .= relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10)
    }

    func testViewArrayTrailingEqualToTrailingMinusConstant() {
        let constraints = viewArray.trailing .= relatedView.trailingAnchor .- 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTrailingEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray.trailing .= relatedView.trailingAnchor .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray.trailing .= 3 .* relatedView.trailingAnchor
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingEqualToTrailingDividedByConstant() {
        let constraints = viewArray.trailing .= relatedView.trailingAnchor ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayTrailingEqualToTrailingWithPriority() {
        let constraints = viewArray.trailing .= relatedView.trailingAnchor ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: .low)
    }

    func testViewArrayTrailingEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray.trailing .= relatedView.trailingAnchor ~ 300
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 300)
    }

    func testViewArrayTrailingEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTrailingEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing .= (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing .= 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing .= 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing .= (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayTrailingEqualToTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing .= (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualToTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing .= 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualToTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing .= 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualToTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing .= (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingEqualToTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= (relatedView.trailingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualToTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= 3 .* (relatedView.trailingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualToTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= 3 .* relatedView.trailingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualToTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= (relatedView.trailingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayTrailingLessThanOrEqualToTrailing() {
        let constraints = viewArray.trailing ≤ relatedView.trailingAnchor
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTrailingLessThanOrEqualToTrailingPlusConstant() {
        let constraints = viewArray.trailing ≤ relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingMinusConstant() {
        let constraints = viewArray.trailing ≤ relatedView.trailingAnchor .- 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTrailingLessThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray.trailing ≤ relatedView.trailingAnchor .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.trailingAnchor
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingDividedByConstant() {
        let constraints = viewArray.trailing ≤ relatedView.trailingAnchor ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayTrailingLessThanOrEqualToTrailingWithPriority() {
        let constraints = viewArray.trailing ≤ relatedView.trailingAnchor ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray.trailing ≤ relatedView.trailingAnchor ~ 300
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingLessThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing ≤ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing ≤ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTrailingLessThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing ≤ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing ≤ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingLessThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ (relatedView.trailingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedView.trailingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.trailingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualToTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ (relatedView.trailingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
// sourcery:end
}
