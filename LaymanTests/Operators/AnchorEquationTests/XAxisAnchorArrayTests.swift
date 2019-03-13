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
    // MARK: Equal

    func testViewArrayLeadingEqualTorelatedViewLeading() {
        let constraints = viewArray.leading .= relatedView.leading
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading)
    }

    func testViewArrayLeadingEqualTorelatedViewLeadingInversedInference() {
        let constraints = viewArray.leading .= relatedView
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading)
    }
    // MARK: Equal with constant
    func testViewArrayLeadingEqualTorelatedViewLeadingPlusConstant() {
        let constraints = viewArray.leading .= relatedView.leading .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10)
    }

    func testViewArrayLeadingEqualTorelatedViewLeadingMinusConstant() {
        let constraints = viewArray.leading .= relatedView.leading .- 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayLeadingEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = viewArray.leading .= relatedView.leading .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = viewArray.leading .= 3 .* relatedView.leading
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = viewArray.leading .= relatedView.leading ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayLeadingEqualTorelatedViewLeadingWithPriority() {
        let constraints = viewArray.leading .= relatedView.leading ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = viewArray.leading .= relatedView.leading ~ 300
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 300)
    }

    func testViewArrayLeadingEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = viewArray.leading .= relatedView.leading ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayLeadingEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading .= (relatedView.leading .+ 10) .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading .= 3 .* (relatedView.leading .+ 10)
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading .= 3 .* relatedView.leading .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.leading .= (relatedView.leading .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayLeadingEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading .= (relatedView.leading .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading .= 3 .* (relatedView.leading .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading .= 3 .* relatedView.leading .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading .= (relatedView.leading .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= (relatedView.leading .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= 3 .* (relatedView.leading .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= 3 .* relatedView.leading .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= (relatedView.leading .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeading() {
        let constraints = viewArray.leading ≤ relatedView.leading
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingInversedInference() {
        let constraints = viewArray.leading ≤ relatedView
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading)
    }
    // MARK: LessThanOrEqual with constant
    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstant() {
        let constraints = viewArray.leading ≤ relatedView.leading .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingMinusConstant() {
        let constraints = viewArray.leading ≤ relatedView.leading .- 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = viewArray.leading ≤ relatedView.leading .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.leading
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = viewArray.leading ≤ relatedView.leading ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingWithPriority() {
        let constraints = viewArray.leading ≤ relatedView.leading ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = viewArray.leading ≤ relatedView.leading ~ 300
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ relatedView.leading ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading ≤ (relatedView.leading .+ 10) .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading ≤ 3 .* (relatedView.leading .+ 10)
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.leading .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.leading ≤ (relatedView.leading .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading ≤ (relatedView.leading .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading ≤ 3 .* (relatedView.leading .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.leading .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading ≤ (relatedView.leading .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ (relatedView.leading .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ 3 .* (relatedView.leading .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.leading .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ (relatedView.leading .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeading() {
        let constraints = viewArray.leading ≥ relatedView.leading
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingInversedInference() {
        let constraints = viewArray.leading ≥ relatedView
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading)
    }
    // MARK: GreaterThanOrEqual with constant
    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstant() {
        let constraints = viewArray.leading ≥ relatedView.leading .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingMinusConstant() {
        let constraints = viewArray.leading ≥ relatedView.leading .- 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = viewArray.leading ≥ relatedView.leading .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.leading
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = viewArray.leading ≥ relatedView.leading ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingWithPriority() {
        let constraints = viewArray.leading ≥ relatedView.leading ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = viewArray.leading ≥ relatedView.leading ~ 300
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ relatedView.leading ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading ≥ (relatedView.leading .+ 10) .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading ≥ 3 .* (relatedView.leading .+ 10)
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.leading .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.leading ≥ (relatedView.leading .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading ≥ (relatedView.leading .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading ≥ 3 .* (relatedView.leading .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.leading .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading ≥ (relatedView.leading .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ (relatedView.leading .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ 3 .* (relatedView.leading .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.leading .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ (relatedView.leading .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.leadingLeading <=> relatedViewArrayLeading
    // MARK: Equal

    func testViewArrayLeadingEqualTorelatedViewArrayLeading() {
        let constraints = viewArray.leading .= relatedViewArray.leading
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayLeadingInversedInference() {
        let constraints = viewArray.leading .= relatedViewArray
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading)
    }
    // MARK: Equal with constant
    func testViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = viewArray.leading .= relatedViewArray.leading .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = viewArray.leading .= relatedViewArray.leading .- 10
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayLeadingEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = viewArray.leading .= relatedViewArray.leading .* 3
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = viewArray.leading .= 3 .* relatedViewArray.leading
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = viewArray.leading .= relatedViewArray.leading ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayLeadingEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = viewArray.leading .= relatedViewArray.leading ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = viewArray.leading .= relatedViewArray.leading ~ 300
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, priority: 300)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = viewArray.leading .= relatedViewArray.leading ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading .= (relatedViewArray.leading .+ 10) .* 3
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading .= 3 .* (relatedViewArray.leading .+ 10)
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading .= 3 .* relatedViewArray.leading .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.leading .= (relatedViewArray.leading .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading .= (relatedViewArray.leading .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading .= 3 .* (relatedViewArray.leading .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading .= 3 .* relatedViewArray.leading .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading .= (relatedViewArray.leading .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= (relatedViewArray.leading .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= 3 .* (relatedViewArray.leading .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= 3 .* relatedViewArray.leading .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= (relatedViewArray.leading .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeading() {
        let constraints = viewArray.leading ≤ relatedViewArray.leading
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingInversedInference() {
        let constraints = viewArray.leading ≤ relatedViewArray
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading)
    }
    // MARK: LessThanOrEqual with constant
    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = viewArray.leading ≤ relatedViewArray.leading .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = viewArray.leading ≤ relatedViewArray.leading .- 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = viewArray.leading ≤ relatedViewArray.leading .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = viewArray.leading ≤ 3 .* relatedViewArray.leading
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = viewArray.leading ≤ relatedViewArray.leading ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = viewArray.leading ≤ relatedViewArray.leading ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = viewArray.leading ≤ relatedViewArray.leading ~ 300
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, priority: 300)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ relatedViewArray.leading ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading ≤ (relatedViewArray.leading .+ 10) .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading ≤ 3 .* (relatedViewArray.leading .+ 10)
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading ≤ 3 .* relatedViewArray.leading .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.leading ≤ (relatedViewArray.leading .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading ≤ (relatedViewArray.leading .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading ≤ 3 .* (relatedViewArray.leading .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading ≤ 3 .* relatedViewArray.leading .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading ≤ (relatedViewArray.leading .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ (relatedViewArray.leading .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ 3 .* (relatedViewArray.leading .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ 3 .* relatedViewArray.leading .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ (relatedViewArray.leading .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeading() {
        let constraints = viewArray.leading ≥ relatedViewArray.leading
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingInversedInference() {
        let constraints = viewArray.leading ≥ relatedViewArray
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading)
    }
    // MARK: GreaterThanOrEqual with constant
    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = viewArray.leading ≥ relatedViewArray.leading .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = viewArray.leading ≥ relatedViewArray.leading .- 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = viewArray.leading ≥ relatedViewArray.leading .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = viewArray.leading ≥ 3 .* relatedViewArray.leading
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = viewArray.leading ≥ relatedViewArray.leading ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = viewArray.leading ≥ relatedViewArray.leading ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = viewArray.leading ≥ relatedViewArray.leading ~ 300
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, priority: 300)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ relatedViewArray.leading ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading ≥ (relatedViewArray.leading .+ 10) .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading ≥ 3 .* (relatedViewArray.leading .+ 10)
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading ≥ 3 .* relatedViewArray.leading .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.leading ≥ (relatedViewArray.leading .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading ≥ (relatedViewArray.leading .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading ≥ 3 .* (relatedViewArray.leading .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading ≥ 3 .* relatedViewArray.leading .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading ≥ (relatedViewArray.leading .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ (relatedViewArray.leading .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ 3 .* (relatedViewArray.leading .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ 3 .* relatedViewArray.leading .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ (relatedViewArray.leading .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.leadingLeading <=> relatedViewCenterX
    // MARK: Equal

    func testViewArrayLeadingEqualTorelatedViewCenterX() {
        let constraints = viewArray.leading .= relatedView.centerX
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX)
    }

    // MARK: Equal with constant
    func testViewArrayLeadingEqualTorelatedViewCenterXPlusConstant() {
        let constraints = viewArray.leading .= relatedView.centerX .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10)
    }

    func testViewArrayLeadingEqualTorelatedViewCenterXMinusConstant() {
        let constraints = viewArray.leading .= relatedView.centerX .- 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayLeadingEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = viewArray.leading .= relatedView.centerX .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = viewArray.leading .= 3 .* relatedView.centerX
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = viewArray.leading .= relatedView.centerX ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayLeadingEqualTorelatedViewCenterXWithPriority() {
        let constraints = viewArray.leading .= relatedView.centerX ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = viewArray.leading .= relatedView.centerX ~ 300
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, priority: 300)
    }

    func testViewArrayLeadingEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = viewArray.leading .= relatedView.centerX ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayLeadingEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading .= (relatedView.centerX .+ 10) .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading .= 3 .* (relatedView.centerX .+ 10)
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading .= 3 .* relatedView.centerX .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.leading .= (relatedView.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayLeadingEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading .= (relatedView.centerX .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading .= 3 .* (relatedView.centerX .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading .= 3 .* relatedView.centerX .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading .= (relatedView.centerX .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= (relatedView.centerX .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= 3 .* (relatedView.centerX .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= 3 .* relatedView.centerX .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= (relatedView.centerX .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterX() {
        let constraints = viewArray.leading ≤ relatedView.centerX
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXPlusConstant() {
        let constraints = viewArray.leading ≤ relatedView.centerX .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXMinusConstant() {
        let constraints = viewArray.leading ≤ relatedView.centerX .- 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = viewArray.leading ≤ relatedView.centerX .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.centerX
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = viewArray.leading ≤ relatedView.centerX ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXWithPriority() {
        let constraints = viewArray.leading ≤ relatedView.centerX ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = viewArray.leading ≤ relatedView.centerX ~ 300
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ relatedView.centerX ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading ≤ (relatedView.centerX .+ 10) .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading ≤ 3 .* (relatedView.centerX .+ 10)
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.centerX .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.leading ≤ (relatedView.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading ≤ (relatedView.centerX .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading ≤ 3 .* (relatedView.centerX .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.centerX .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading ≤ (relatedView.centerX .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ (relatedView.centerX .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ 3 .* (relatedView.centerX .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.centerX .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ (relatedView.centerX .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterX() {
        let constraints = viewArray.leading ≥ relatedView.centerX
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstant() {
        let constraints = viewArray.leading ≥ relatedView.centerX .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXMinusConstant() {
        let constraints = viewArray.leading ≥ relatedView.centerX .- 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = viewArray.leading ≥ relatedView.centerX .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.centerX
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = viewArray.leading ≥ relatedView.centerX ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXWithPriority() {
        let constraints = viewArray.leading ≥ relatedView.centerX ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = viewArray.leading ≥ relatedView.centerX ~ 300
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ relatedView.centerX ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading ≥ (relatedView.centerX .+ 10) .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading ≥ 3 .* (relatedView.centerX .+ 10)
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.centerX .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.leading ≥ (relatedView.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading ≥ (relatedView.centerX .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading ≥ 3 .* (relatedView.centerX .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.centerX .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading ≥ (relatedView.centerX .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ (relatedView.centerX .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ 3 .* (relatedView.centerX .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.centerX .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ (relatedView.centerX .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.leadingLeading <=> relatedViewArrayCenterX
    // MARK: Equal

    func testViewArrayLeadingEqualTorelatedViewArrayCenterX() {
        let constraints = viewArray.leading .= relatedViewArray.centerX
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX)
    }

    // MARK: Equal with constant
    func testViewArrayLeadingEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = viewArray.leading .= relatedViewArray.centerX .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, constant: 10)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = viewArray.leading .= relatedViewArray.centerX .- 10
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayLeadingEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = viewArray.leading .= relatedViewArray.centerX .* 3
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = viewArray.leading .= 3 .* relatedViewArray.centerX
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = viewArray.leading .= relatedViewArray.centerX ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayLeadingEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = viewArray.leading .= relatedViewArray.centerX ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = viewArray.leading .= relatedViewArray.centerX ~ 300
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, priority: 300)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = viewArray.leading .= relatedViewArray.centerX ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayLeadingEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading .= (relatedViewArray.centerX .+ 10) .* 3
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading .= 3 .* (relatedViewArray.centerX .+ 10)
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading .= 3 .* relatedViewArray.centerX .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.leading .= (relatedViewArray.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayLeadingEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading .= (relatedViewArray.centerX .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading .= 3 .* (relatedViewArray.centerX .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading .= 3 .* relatedViewArray.centerX .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading .= (relatedViewArray.centerX .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= (relatedViewArray.centerX .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= 3 .* (relatedViewArray.centerX .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= 3 .* relatedViewArray.centerX .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= (relatedViewArray.centerX .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterX() {
        let constraints = viewArray.leading ≤ relatedViewArray.centerX
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = viewArray.leading ≤ relatedViewArray.centerX .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = viewArray.leading ≤ relatedViewArray.centerX .- 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = viewArray.leading ≤ relatedViewArray.centerX .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = viewArray.leading ≤ 3 .* relatedViewArray.centerX
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = viewArray.leading ≤ relatedViewArray.centerX ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = viewArray.leading ≤ relatedViewArray.centerX ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = viewArray.leading ≤ relatedViewArray.centerX ~ 300
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, priority: 300)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ relatedViewArray.centerX ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading ≤ (relatedViewArray.centerX .+ 10) .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading ≤ 3 .* (relatedViewArray.centerX .+ 10)
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading ≤ 3 .* relatedViewArray.centerX .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.leading ≤ (relatedViewArray.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading ≤ (relatedViewArray.centerX .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading ≤ 3 .* (relatedViewArray.centerX .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading ≤ 3 .* relatedViewArray.centerX .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading ≤ (relatedViewArray.centerX .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ (relatedViewArray.centerX .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ 3 .* (relatedViewArray.centerX .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ 3 .* relatedViewArray.centerX .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ (relatedViewArray.centerX .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterX() {
        let constraints = viewArray.leading ≥ relatedViewArray.centerX
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = viewArray.leading ≥ relatedViewArray.centerX .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = viewArray.leading ≥ relatedViewArray.centerX .- 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = viewArray.leading ≥ relatedViewArray.centerX .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = viewArray.leading ≥ 3 .* relatedViewArray.centerX
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = viewArray.leading ≥ relatedViewArray.centerX ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = viewArray.leading ≥ relatedViewArray.centerX ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = viewArray.leading ≥ relatedViewArray.centerX ~ 300
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, priority: 300)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ relatedViewArray.centerX ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading ≥ (relatedViewArray.centerX .+ 10) .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading ≥ 3 .* (relatedViewArray.centerX .+ 10)
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading ≥ 3 .* relatedViewArray.centerX .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.leading ≥ (relatedViewArray.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading ≥ (relatedViewArray.centerX .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading ≥ 3 .* (relatedViewArray.centerX .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading ≥ 3 .* relatedViewArray.centerX .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading ≥ (relatedViewArray.centerX .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ (relatedViewArray.centerX .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ 3 .* (relatedViewArray.centerX .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ 3 .* relatedViewArray.centerX .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ (relatedViewArray.centerX .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.leadingLeading <=> relatedViewTrailing
    // MARK: Equal

    func testViewArrayLeadingEqualTorelatedViewTrailing() {
        let constraints = viewArray.leading .= relatedView.trailing
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testViewArrayLeadingEqualTorelatedViewTrailingPlusConstant() {
        let constraints = viewArray.leading .= relatedView.trailing .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10)
    }

    func testViewArrayLeadingEqualTorelatedViewTrailingMinusConstant() {
        let constraints = viewArray.leading .= relatedView.trailing .- 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayLeadingEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = viewArray.leading .= relatedView.trailing .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = viewArray.leading .= 3 .* relatedView.trailing
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = viewArray.leading .= relatedView.trailing ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayLeadingEqualTorelatedViewTrailingWithPriority() {
        let constraints = viewArray.leading .= relatedView.trailing ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = viewArray.leading .= relatedView.trailing ~ 300
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, priority: 300)
    }

    func testViewArrayLeadingEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = viewArray.leading .= relatedView.trailing ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayLeadingEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading .= (relatedView.trailing .+ 10) .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading .= 3 .* (relatedView.trailing .+ 10)
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading .= 3 .* relatedView.trailing .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.leading .= (relatedView.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayLeadingEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading .= (relatedView.trailing .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading .= 3 .* (relatedView.trailing .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading .= 3 .* relatedView.trailing .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading .= (relatedView.trailing .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= (relatedView.trailing .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= 3 .* (relatedView.trailing .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= 3 .* relatedView.trailing .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= (relatedView.trailing .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailing() {
        let constraints = viewArray.leading ≤ relatedView.trailing
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingPlusConstant() {
        let constraints = viewArray.leading ≤ relatedView.trailing .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingMinusConstant() {
        let constraints = viewArray.leading ≤ relatedView.trailing .- 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = viewArray.leading ≤ relatedView.trailing .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.trailing
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = viewArray.leading ≤ relatedView.trailing ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingWithPriority() {
        let constraints = viewArray.leading ≤ relatedView.trailing ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = viewArray.leading ≤ relatedView.trailing ~ 300
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ relatedView.trailing ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading ≤ (relatedView.trailing .+ 10) .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading ≤ 3 .* (relatedView.trailing .+ 10)
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.trailing .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.leading ≤ (relatedView.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading ≤ (relatedView.trailing .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading ≤ 3 .* (relatedView.trailing .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.trailing .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading ≤ (relatedView.trailing .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ (relatedView.trailing .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ 3 .* (relatedView.trailing .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ 3 .* relatedView.trailing .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ (relatedView.trailing .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailing() {
        let constraints = viewArray.leading ≥ relatedView.trailing
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstant() {
        let constraints = viewArray.leading ≥ relatedView.trailing .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingMinusConstant() {
        let constraints = viewArray.leading ≥ relatedView.trailing .- 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = viewArray.leading ≥ relatedView.trailing .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.trailing
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = viewArray.leading ≥ relatedView.trailing ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingWithPriority() {
        let constraints = viewArray.leading ≥ relatedView.trailing ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = viewArray.leading ≥ relatedView.trailing ~ 300
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ relatedView.trailing ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading ≥ (relatedView.trailing .+ 10) .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading ≥ 3 .* (relatedView.trailing .+ 10)
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.trailing .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.leading ≥ (relatedView.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading ≥ (relatedView.trailing .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading ≥ 3 .* (relatedView.trailing .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.trailing .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading ≥ (relatedView.trailing .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ (relatedView.trailing .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ 3 .* (relatedView.trailing .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ 3 .* relatedView.trailing .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ (relatedView.trailing .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.leadingLeading <=> relatedViewArrayTrailing
    // MARK: Equal

    func testViewArrayLeadingEqualTorelatedViewArrayTrailing() {
        let constraints = viewArray.leading .= relatedViewArray.trailing
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing)
    }

    // MARK: Equal with constant
    func testViewArrayLeadingEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = viewArray.leading .= relatedViewArray.trailing .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, constant: 10)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = viewArray.leading .= relatedViewArray.trailing .- 10
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayLeadingEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = viewArray.leading .= relatedViewArray.trailing .* 3
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = viewArray.leading .= 3 .* relatedViewArray.trailing
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = viewArray.leading .= relatedViewArray.trailing ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayLeadingEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = viewArray.leading .= relatedViewArray.trailing ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = viewArray.leading .= relatedViewArray.trailing ~ 300
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, priority: 300)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = viewArray.leading .= relatedViewArray.trailing ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayLeadingEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading .= (relatedViewArray.trailing .+ 10) .* 3
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading .= 3 .* (relatedViewArray.trailing .+ 10)
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading .= 3 .* relatedViewArray.trailing .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.leading .= (relatedViewArray.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayLeadingEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading .= (relatedViewArray.trailing .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading .= 3 .* (relatedViewArray.trailing .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading .= 3 .* relatedViewArray.trailing .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading .= (relatedViewArray.trailing .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= (relatedViewArray.trailing .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= 3 .* (relatedViewArray.trailing .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= 3 .* relatedViewArray.trailing .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading .= (relatedViewArray.trailing .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailing() {
        let constraints = viewArray.leading ≤ relatedViewArray.trailing
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = viewArray.leading ≤ relatedViewArray.trailing .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = viewArray.leading ≤ relatedViewArray.trailing .- 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = viewArray.leading ≤ relatedViewArray.trailing .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = viewArray.leading ≤ 3 .* relatedViewArray.trailing
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = viewArray.leading ≤ relatedViewArray.trailing ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = viewArray.leading ≤ relatedViewArray.trailing ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = viewArray.leading ≤ relatedViewArray.trailing ~ 300
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, priority: 300)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ relatedViewArray.trailing ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading ≤ (relatedViewArray.trailing .+ 10) .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading ≤ 3 .* (relatedViewArray.trailing .+ 10)
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading ≤ 3 .* relatedViewArray.trailing .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.leading ≤ (relatedViewArray.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading ≤ (relatedViewArray.trailing .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading ≤ 3 .* (relatedViewArray.trailing .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading ≤ 3 .* relatedViewArray.trailing .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading ≤ (relatedViewArray.trailing .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ (relatedViewArray.trailing .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ 3 .* (relatedViewArray.trailing .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ 3 .* relatedViewArray.trailing .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≤ (relatedViewArray.trailing .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailing() {
        let constraints = viewArray.leading ≥ relatedViewArray.trailing
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = viewArray.leading ≥ relatedViewArray.trailing .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = viewArray.leading ≥ relatedViewArray.trailing .- 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = viewArray.leading ≥ relatedViewArray.trailing .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = viewArray.leading ≥ 3 .* relatedViewArray.trailing
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = viewArray.leading ≥ relatedViewArray.trailing ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = viewArray.leading ≥ relatedViewArray.trailing ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = viewArray.leading ≥ relatedViewArray.trailing ~ 300
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, priority: 300)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ relatedViewArray.trailing ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.leading ≥ (relatedViewArray.trailing .+ 10) .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.leading ≥ 3 .* (relatedViewArray.trailing .+ 10)
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.leading ≥ 3 .* relatedViewArray.trailing .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.leading ≥ (relatedViewArray.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.leading ≥ (relatedViewArray.trailing .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.leading ≥ 3 .* (relatedViewArray.trailing .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.leading ≥ 3 .* relatedViewArray.trailing .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.leading ≥ (relatedViewArray.trailing .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ (relatedViewArray.trailing .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ 3 .* (relatedViewArray.trailing .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ 3 .* relatedViewArray.trailing .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.leading ≥ (relatedViewArray.trailing .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerXCenterX <=> relatedViewLeading
    // MARK: Equal

    func testViewArrayCenterXEqualTorelatedViewLeading() {
        let constraints = viewArray.centerX .= relatedView.leading
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading)
    }

    // MARK: Equal with constant
    func testViewArrayCenterXEqualTorelatedViewLeadingPlusConstant() {
        let constraints = viewArray.centerX .= relatedView.leading .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10)
    }

    func testViewArrayCenterXEqualTorelatedViewLeadingMinusConstant() {
        let constraints = viewArray.centerX .= relatedView.leading .- 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterXEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = viewArray.centerX .= relatedView.leading .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = viewArray.centerX .= 3 .* relatedView.leading
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = viewArray.centerX .= relatedView.leading ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayCenterXEqualTorelatedViewLeadingWithPriority() {
        let constraints = viewArray.centerX .= relatedView.leading ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = viewArray.centerX .= relatedView.leading ~ 300
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, priority: 300)
    }

    func testViewArrayCenterXEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= relatedView.leading ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterXEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX .= (relatedView.leading .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX .= 3 .* (relatedView.leading .+ 10)
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX .= 3 .* relatedView.leading .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX .= (relatedView.leading .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayCenterXEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX .= (relatedView.leading .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX .= 3 .* (relatedView.leading .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX .= 3 .* relatedView.leading .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX .= (relatedView.leading .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= (relatedView.leading .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= 3 .* (relatedView.leading .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= 3 .* relatedView.leading .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= (relatedView.leading .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeading() {
        let constraints = viewArray.centerX ≤ relatedView.leading
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingPlusConstant() {
        let constraints = viewArray.centerX ≤ relatedView.leading .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingMinusConstant() {
        let constraints = viewArray.centerX ≤ relatedView.leading .- 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = viewArray.centerX ≤ relatedView.leading .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.leading
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = viewArray.centerX ≤ relatedView.leading ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingWithPriority() {
        let constraints = viewArray.centerX ≤ relatedView.leading ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = viewArray.centerX ≤ relatedView.leading ~ 300
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ relatedView.leading ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX ≤ (relatedView.leading .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedView.leading .+ 10)
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.leading .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX ≤ (relatedView.leading .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX ≤ (relatedView.leading .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedView.leading .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.leading .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX ≤ (relatedView.leading .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ (relatedView.leading .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedView.leading .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.leading .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ (relatedView.leading .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeading() {
        let constraints = viewArray.centerX ≥ relatedView.leading
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstant() {
        let constraints = viewArray.centerX ≥ relatedView.leading .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingMinusConstant() {
        let constraints = viewArray.centerX ≥ relatedView.leading .- 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = viewArray.centerX ≥ relatedView.leading .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.leading
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = viewArray.centerX ≥ relatedView.leading ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingWithPriority() {
        let constraints = viewArray.centerX ≥ relatedView.leading ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = viewArray.centerX ≥ relatedView.leading ~ 300
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ relatedView.leading ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX ≥ (relatedView.leading .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedView.leading .+ 10)
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.leading .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX ≥ (relatedView.leading .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX ≥ (relatedView.leading .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedView.leading .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.leading .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX ≥ (relatedView.leading .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ (relatedView.leading .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedView.leading .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.leading .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ (relatedView.leading .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerXCenterX <=> relatedViewArrayLeading
    // MARK: Equal

    func testViewArrayCenterXEqualTorelatedViewArrayLeading() {
        let constraints = viewArray.centerX .= relatedViewArray.leading
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading)
    }

    // MARK: Equal with constant
    func testViewArrayCenterXEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = viewArray.centerX .= relatedViewArray.leading .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, constant: 10)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = viewArray.centerX .= relatedViewArray.leading .- 10
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterXEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = viewArray.centerX .= relatedViewArray.leading .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = viewArray.centerX .= 3 .* relatedViewArray.leading
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = viewArray.centerX .= relatedViewArray.leading ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayCenterXEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = viewArray.centerX .= relatedViewArray.leading ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = viewArray.centerX .= relatedViewArray.leading ~ 300
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, priority: 300)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= relatedViewArray.leading ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterXEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX .= (relatedViewArray.leading .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX .= 3 .* (relatedViewArray.leading .+ 10)
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX .= 3 .* relatedViewArray.leading .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX .= (relatedViewArray.leading .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayCenterXEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX .= (relatedViewArray.leading .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX .= 3 .* (relatedViewArray.leading .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX .= 3 .* relatedViewArray.leading .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX .= (relatedViewArray.leading .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= (relatedViewArray.leading .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= 3 .* (relatedViewArray.leading .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= 3 .* relatedViewArray.leading .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= (relatedViewArray.leading .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeading() {
        let constraints = viewArray.centerX ≤ relatedViewArray.leading
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = viewArray.centerX ≤ relatedViewArray.leading .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = viewArray.centerX ≤ relatedViewArray.leading .- 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = viewArray.centerX ≤ relatedViewArray.leading .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = viewArray.centerX ≤ 3 .* relatedViewArray.leading
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = viewArray.centerX ≤ relatedViewArray.leading ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = viewArray.centerX ≤ relatedViewArray.leading ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = viewArray.centerX ≤ relatedViewArray.leading ~ 300
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, priority: 300)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ relatedViewArray.leading ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX ≤ (relatedViewArray.leading .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedViewArray.leading .+ 10)
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX ≤ 3 .* relatedViewArray.leading .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX ≤ (relatedViewArray.leading .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX ≤ (relatedViewArray.leading .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedViewArray.leading .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX ≤ 3 .* relatedViewArray.leading .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX ≤ (relatedViewArray.leading .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ (relatedViewArray.leading .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedViewArray.leading .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ 3 .* relatedViewArray.leading .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ (relatedViewArray.leading .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeading() {
        let constraints = viewArray.centerX ≥ relatedViewArray.leading
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = viewArray.centerX ≥ relatedViewArray.leading .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = viewArray.centerX ≥ relatedViewArray.leading .- 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = viewArray.centerX ≥ relatedViewArray.leading .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = viewArray.centerX ≥ 3 .* relatedViewArray.leading
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = viewArray.centerX ≥ relatedViewArray.leading ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = viewArray.centerX ≥ relatedViewArray.leading ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = viewArray.centerX ≥ relatedViewArray.leading ~ 300
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, priority: 300)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ relatedViewArray.leading ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX ≥ (relatedViewArray.leading .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedViewArray.leading .+ 10)
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX ≥ 3 .* relatedViewArray.leading .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX ≥ (relatedViewArray.leading .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX ≥ (relatedViewArray.leading .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedViewArray.leading .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX ≥ 3 .* relatedViewArray.leading .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX ≥ (relatedViewArray.leading .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ (relatedViewArray.leading .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedViewArray.leading .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ 3 .* relatedViewArray.leading .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ (relatedViewArray.leading .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerXCenterX <=> relatedViewCenterX
    // MARK: Equal

    func testViewArrayCenterXEqualTorelatedViewCenterX() {
        let constraints = viewArray.centerX .= relatedView.centerX
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX)
    }

    func testViewArrayCenterXEqualTorelatedViewCenterXInversedInference() {
        let constraints = viewArray.centerX .= relatedView
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX)
    }
    // MARK: Equal with constant
    func testViewArrayCenterXEqualTorelatedViewCenterXPlusConstant() {
        let constraints = viewArray.centerX .= relatedView.centerX .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10)
    }

    func testViewArrayCenterXEqualTorelatedViewCenterXMinusConstant() {
        let constraints = viewArray.centerX .= relatedView.centerX .- 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterXEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = viewArray.centerX .= relatedView.centerX .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = viewArray.centerX .= 3 .* relatedView.centerX
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = viewArray.centerX .= relatedView.centerX ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayCenterXEqualTorelatedViewCenterXWithPriority() {
        let constraints = viewArray.centerX .= relatedView.centerX ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = viewArray.centerX .= relatedView.centerX ~ 300
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 300)
    }

    func testViewArrayCenterXEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= relatedView.centerX ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterXEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX .= (relatedView.centerX .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX .= 3 .* (relatedView.centerX .+ 10)
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX .= 3 .* relatedView.centerX .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX .= (relatedView.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayCenterXEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX .= (relatedView.centerX .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX .= 3 .* (relatedView.centerX .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX .= 3 .* relatedView.centerX .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX .= (relatedView.centerX .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= (relatedView.centerX .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= 3 .* (relatedView.centerX .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= 3 .* relatedView.centerX .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= (relatedView.centerX .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterX() {
        let constraints = viewArray.centerX ≤ relatedView.centerX
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXInversedInference() {
        let constraints = viewArray.centerX ≤ relatedView
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX)
    }
    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstant() {
        let constraints = viewArray.centerX ≤ relatedView.centerX .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXMinusConstant() {
        let constraints = viewArray.centerX ≤ relatedView.centerX .- 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = viewArray.centerX ≤ relatedView.centerX .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.centerX
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = viewArray.centerX ≤ relatedView.centerX ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXWithPriority() {
        let constraints = viewArray.centerX ≤ relatedView.centerX ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = viewArray.centerX ≤ relatedView.centerX ~ 300
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ relatedView.centerX ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX ≤ (relatedView.centerX .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedView.centerX .+ 10)
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.centerX .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX ≤ (relatedView.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX ≤ (relatedView.centerX .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedView.centerX .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.centerX .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX ≤ (relatedView.centerX .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ (relatedView.centerX .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedView.centerX .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.centerX .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ (relatedView.centerX .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterX() {
        let constraints = viewArray.centerX ≥ relatedView.centerX
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXInversedInference() {
        let constraints = viewArray.centerX ≥ relatedView
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX)
    }
    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstant() {
        let constraints = viewArray.centerX ≥ relatedView.centerX .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXMinusConstant() {
        let constraints = viewArray.centerX ≥ relatedView.centerX .- 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = viewArray.centerX ≥ relatedView.centerX .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.centerX
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = viewArray.centerX ≥ relatedView.centerX ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXWithPriority() {
        let constraints = viewArray.centerX ≥ relatedView.centerX ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = viewArray.centerX ≥ relatedView.centerX ~ 300
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ relatedView.centerX ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX ≥ (relatedView.centerX .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedView.centerX .+ 10)
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.centerX .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX ≥ (relatedView.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX ≥ (relatedView.centerX .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedView.centerX .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.centerX .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX ≥ (relatedView.centerX .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ (relatedView.centerX .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedView.centerX .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.centerX .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ (relatedView.centerX .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerXCenterX <=> relatedViewArrayCenterX
    // MARK: Equal

    func testViewArrayCenterXEqualTorelatedViewArrayCenterX() {
        let constraints = viewArray.centerX .= relatedViewArray.centerX
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayCenterXInversedInference() {
        let constraints = viewArray.centerX .= relatedViewArray
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX)
    }
    // MARK: Equal with constant
    func testViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = viewArray.centerX .= relatedViewArray.centerX .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = viewArray.centerX .= relatedViewArray.centerX .- 10
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterXEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = viewArray.centerX .= relatedViewArray.centerX .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = viewArray.centerX .= 3 .* relatedViewArray.centerX
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = viewArray.centerX .= relatedViewArray.centerX ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayCenterXEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = viewArray.centerX .= relatedViewArray.centerX ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = viewArray.centerX .= relatedViewArray.centerX ~ 300
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, priority: 300)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= relatedViewArray.centerX ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX .= (relatedViewArray.centerX .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX .= 3 .* (relatedViewArray.centerX .+ 10)
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX .= 3 .* relatedViewArray.centerX .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX .= (relatedViewArray.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX .= (relatedViewArray.centerX .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX .= 3 .* (relatedViewArray.centerX .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX .= 3 .* relatedViewArray.centerX .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX .= (relatedViewArray.centerX .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= (relatedViewArray.centerX .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= 3 .* (relatedViewArray.centerX .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= 3 .* relatedViewArray.centerX .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= (relatedViewArray.centerX .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterX() {
        let constraints = viewArray.centerX ≤ relatedViewArray.centerX
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXInversedInference() {
        let constraints = viewArray.centerX ≤ relatedViewArray
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX)
    }
    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = viewArray.centerX ≤ relatedViewArray.centerX .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = viewArray.centerX ≤ relatedViewArray.centerX .- 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = viewArray.centerX ≤ relatedViewArray.centerX .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = viewArray.centerX ≤ 3 .* relatedViewArray.centerX
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = viewArray.centerX ≤ relatedViewArray.centerX ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = viewArray.centerX ≤ relatedViewArray.centerX ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = viewArray.centerX ≤ relatedViewArray.centerX ~ 300
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, priority: 300)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ relatedViewArray.centerX ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX ≤ (relatedViewArray.centerX .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedViewArray.centerX .+ 10)
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX ≤ 3 .* relatedViewArray.centerX .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX ≤ (relatedViewArray.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX ≤ (relatedViewArray.centerX .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedViewArray.centerX .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX ≤ 3 .* relatedViewArray.centerX .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX ≤ (relatedViewArray.centerX .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ (relatedViewArray.centerX .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedViewArray.centerX .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ 3 .* relatedViewArray.centerX .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ (relatedViewArray.centerX .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterX() {
        let constraints = viewArray.centerX ≥ relatedViewArray.centerX
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXInversedInference() {
        let constraints = viewArray.centerX ≥ relatedViewArray
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX)
    }
    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = viewArray.centerX ≥ relatedViewArray.centerX .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = viewArray.centerX ≥ relatedViewArray.centerX .- 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = viewArray.centerX ≥ relatedViewArray.centerX .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = viewArray.centerX ≥ 3 .* relatedViewArray.centerX
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = viewArray.centerX ≥ relatedViewArray.centerX ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = viewArray.centerX ≥ relatedViewArray.centerX ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = viewArray.centerX ≥ relatedViewArray.centerX ~ 300
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, priority: 300)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ relatedViewArray.centerX ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX ≥ (relatedViewArray.centerX .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedViewArray.centerX .+ 10)
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX ≥ 3 .* relatedViewArray.centerX .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX ≥ (relatedViewArray.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX ≥ (relatedViewArray.centerX .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedViewArray.centerX .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX ≥ 3 .* relatedViewArray.centerX .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX ≥ (relatedViewArray.centerX .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ (relatedViewArray.centerX .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedViewArray.centerX .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ 3 .* relatedViewArray.centerX .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ (relatedViewArray.centerX .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerXCenterX <=> relatedViewTrailing
    // MARK: Equal

    func testViewArrayCenterXEqualTorelatedViewTrailing() {
        let constraints = viewArray.centerX .= relatedView.trailing
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testViewArrayCenterXEqualTorelatedViewTrailingPlusConstant() {
        let constraints = viewArray.centerX .= relatedView.trailing .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10)
    }

    func testViewArrayCenterXEqualTorelatedViewTrailingMinusConstant() {
        let constraints = viewArray.centerX .= relatedView.trailing .- 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterXEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = viewArray.centerX .= relatedView.trailing .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = viewArray.centerX .= 3 .* relatedView.trailing
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = viewArray.centerX .= relatedView.trailing ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayCenterXEqualTorelatedViewTrailingWithPriority() {
        let constraints = viewArray.centerX .= relatedView.trailing ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = viewArray.centerX .= relatedView.trailing ~ 300
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, priority: 300)
    }

    func testViewArrayCenterXEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= relatedView.trailing ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterXEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX .= (relatedView.trailing .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX .= 3 .* (relatedView.trailing .+ 10)
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX .= 3 .* relatedView.trailing .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX .= (relatedView.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayCenterXEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX .= (relatedView.trailing .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX .= 3 .* (relatedView.trailing .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX .= 3 .* relatedView.trailing .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX .= (relatedView.trailing .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= (relatedView.trailing .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= 3 .* (relatedView.trailing .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= 3 .* relatedView.trailing .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= (relatedView.trailing .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailing() {
        let constraints = viewArray.centerX ≤ relatedView.trailing
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingPlusConstant() {
        let constraints = viewArray.centerX ≤ relatedView.trailing .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingMinusConstant() {
        let constraints = viewArray.centerX ≤ relatedView.trailing .- 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = viewArray.centerX ≤ relatedView.trailing .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.trailing
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = viewArray.centerX ≤ relatedView.trailing ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingWithPriority() {
        let constraints = viewArray.centerX ≤ relatedView.trailing ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = viewArray.centerX ≤ relatedView.trailing ~ 300
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ relatedView.trailing ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX ≤ (relatedView.trailing .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedView.trailing .+ 10)
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.trailing .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX ≤ (relatedView.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX ≤ (relatedView.trailing .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedView.trailing .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.trailing .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX ≤ (relatedView.trailing .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ (relatedView.trailing .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedView.trailing .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ 3 .* relatedView.trailing .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ (relatedView.trailing .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailing() {
        let constraints = viewArray.centerX ≥ relatedView.trailing
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstant() {
        let constraints = viewArray.centerX ≥ relatedView.trailing .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingMinusConstant() {
        let constraints = viewArray.centerX ≥ relatedView.trailing .- 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = viewArray.centerX ≥ relatedView.trailing .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.trailing
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = viewArray.centerX ≥ relatedView.trailing ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingWithPriority() {
        let constraints = viewArray.centerX ≥ relatedView.trailing ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = viewArray.centerX ≥ relatedView.trailing ~ 300
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ relatedView.trailing ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX ≥ (relatedView.trailing .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedView.trailing .+ 10)
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.trailing .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX ≥ (relatedView.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX ≥ (relatedView.trailing .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedView.trailing .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.trailing .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX ≥ (relatedView.trailing .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ (relatedView.trailing .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedView.trailing .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ 3 .* relatedView.trailing .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ (relatedView.trailing .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerXCenterX <=> relatedViewArrayTrailing
    // MARK: Equal

    func testViewArrayCenterXEqualTorelatedViewArrayTrailing() {
        let constraints = viewArray.centerX .= relatedViewArray.trailing
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing)
    }

    // MARK: Equal with constant
    func testViewArrayCenterXEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = viewArray.centerX .= relatedViewArray.trailing .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, constant: 10)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = viewArray.centerX .= relatedViewArray.trailing .- 10
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterXEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = viewArray.centerX .= relatedViewArray.trailing .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = viewArray.centerX .= 3 .* relatedViewArray.trailing
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = viewArray.centerX .= relatedViewArray.trailing ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayCenterXEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = viewArray.centerX .= relatedViewArray.trailing ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = viewArray.centerX .= relatedViewArray.trailing ~ 300
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, priority: 300)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= relatedViewArray.trailing ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterXEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX .= (relatedViewArray.trailing .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX .= 3 .* (relatedViewArray.trailing .+ 10)
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX .= 3 .* relatedViewArray.trailing .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX .= (relatedViewArray.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayCenterXEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX .= (relatedViewArray.trailing .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX .= 3 .* (relatedViewArray.trailing .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX .= 3 .* relatedViewArray.trailing .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX .= (relatedViewArray.trailing .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= (relatedViewArray.trailing .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= 3 .* (relatedViewArray.trailing .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= 3 .* relatedViewArray.trailing .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX .= (relatedViewArray.trailing .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailing() {
        let constraints = viewArray.centerX ≤ relatedViewArray.trailing
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = viewArray.centerX ≤ relatedViewArray.trailing .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = viewArray.centerX ≤ relatedViewArray.trailing .- 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = viewArray.centerX ≤ relatedViewArray.trailing .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = viewArray.centerX ≤ 3 .* relatedViewArray.trailing
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = viewArray.centerX ≤ relatedViewArray.trailing ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = viewArray.centerX ≤ relatedViewArray.trailing ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = viewArray.centerX ≤ relatedViewArray.trailing ~ 300
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, priority: 300)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ relatedViewArray.trailing ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX ≤ (relatedViewArray.trailing .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedViewArray.trailing .+ 10)
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX ≤ 3 .* relatedViewArray.trailing .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX ≤ (relatedViewArray.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX ≤ (relatedViewArray.trailing .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedViewArray.trailing .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX ≤ 3 .* relatedViewArray.trailing .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX ≤ (relatedViewArray.trailing .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ (relatedViewArray.trailing .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ 3 .* (relatedViewArray.trailing .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ 3 .* relatedViewArray.trailing .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≤ (relatedViewArray.trailing .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailing() {
        let constraints = viewArray.centerX ≥ relatedViewArray.trailing
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = viewArray.centerX ≥ relatedViewArray.trailing .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = viewArray.centerX ≥ relatedViewArray.trailing .- 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = viewArray.centerX ≥ relatedViewArray.trailing .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = viewArray.centerX ≥ 3 .* relatedViewArray.trailing
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = viewArray.centerX ≥ relatedViewArray.trailing ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = viewArray.centerX ≥ relatedViewArray.trailing ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = viewArray.centerX ≥ relatedViewArray.trailing ~ 300
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, priority: 300)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ relatedViewArray.trailing ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerX ≥ (relatedViewArray.trailing .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedViewArray.trailing .+ 10)
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerX ≥ 3 .* relatedViewArray.trailing .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.centerX ≥ (relatedViewArray.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerX ≥ (relatedViewArray.trailing .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedViewArray.trailing .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerX ≥ 3 .* relatedViewArray.trailing .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerX ≥ (relatedViewArray.trailing .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ (relatedViewArray.trailing .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ 3 .* (relatedViewArray.trailing .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ 3 .* relatedViewArray.trailing .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerX ≥ (relatedViewArray.trailing .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.trailingTrailing <=> relatedViewLeading
    // MARK: Equal

    func testViewArrayTrailingEqualTorelatedViewLeading() {
        let constraints = viewArray.trailing .= relatedView.leading
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading)
    }

    // MARK: Equal with constant
    func testViewArrayTrailingEqualTorelatedViewLeadingPlusConstant() {
        let constraints = viewArray.trailing .= relatedView.leading .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10)
    }

    func testViewArrayTrailingEqualTorelatedViewLeadingMinusConstant() {
        let constraints = viewArray.trailing .= relatedView.leading .- 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTrailingEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = viewArray.trailing .= relatedView.leading .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = viewArray.trailing .= 3 .* relatedView.leading
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = viewArray.trailing .= relatedView.leading ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayTrailingEqualTorelatedViewLeadingWithPriority() {
        let constraints = viewArray.trailing .= relatedView.leading ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = viewArray.trailing .= relatedView.leading ~ 300
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, priority: 300)
    }

    func testViewArrayTrailingEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= relatedView.leading ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTrailingEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing .= (relatedView.leading .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing .= 3 .* (relatedView.leading .+ 10)
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing .= 3 .* relatedView.leading .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing .= (relatedView.leading .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayTrailingEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing .= (relatedView.leading .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing .= 3 .* (relatedView.leading .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing .= 3 .* relatedView.leading .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing .= (relatedView.leading .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= (relatedView.leading .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= 3 .* (relatedView.leading .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= 3 .* relatedView.leading .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= (relatedView.leading .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeading() {
        let constraints = viewArray.trailing ≤ relatedView.leading
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingPlusConstant() {
        let constraints = viewArray.trailing ≤ relatedView.leading .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingMinusConstant() {
        let constraints = viewArray.trailing ≤ relatedView.leading .- 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = viewArray.trailing ≤ relatedView.leading .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.leading
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = viewArray.trailing ≤ relatedView.leading ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingWithPriority() {
        let constraints = viewArray.trailing ≤ relatedView.leading ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = viewArray.trailing ≤ relatedView.leading ~ 300
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ relatedView.leading ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing ≤ (relatedView.leading .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedView.leading .+ 10)
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.leading .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing ≤ (relatedView.leading .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing ≤ (relatedView.leading .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedView.leading .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.leading .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing ≤ (relatedView.leading .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ (relatedView.leading .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedView.leading .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.leading .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ (relatedView.leading .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeading() {
        let constraints = viewArray.trailing ≥ relatedView.leading
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstant() {
        let constraints = viewArray.trailing ≥ relatedView.leading .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingMinusConstant() {
        let constraints = viewArray.trailing ≥ relatedView.leading .- 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = viewArray.trailing ≥ relatedView.leading .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.leading
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = viewArray.trailing ≥ relatedView.leading ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingWithPriority() {
        let constraints = viewArray.trailing ≥ relatedView.leading ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = viewArray.trailing ≥ relatedView.leading ~ 300
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ relatedView.leading ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing ≥ (relatedView.leading .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedView.leading .+ 10)
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.leading .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing ≥ (relatedView.leading .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing ≥ (relatedView.leading .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedView.leading .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.leading .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing ≥ (relatedView.leading .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ (relatedView.leading .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedView.leading .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.leading .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ (relatedView.leading .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.trailingTrailing <=> relatedViewArrayLeading
    // MARK: Equal

    func testViewArrayTrailingEqualTorelatedViewArrayLeading() {
        let constraints = viewArray.trailing .= relatedViewArray.leading
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading)
    }

    // MARK: Equal with constant
    func testViewArrayTrailingEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = viewArray.trailing .= relatedViewArray.leading .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, constant: 10)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = viewArray.trailing .= relatedViewArray.leading .- 10
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTrailingEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = viewArray.trailing .= relatedViewArray.leading .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = viewArray.trailing .= 3 .* relatedViewArray.leading
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = viewArray.trailing .= relatedViewArray.leading ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayTrailingEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = viewArray.trailing .= relatedViewArray.leading ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = viewArray.trailing .= relatedViewArray.leading ~ 300
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, priority: 300)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= relatedViewArray.leading ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTrailingEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing .= (relatedViewArray.leading .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing .= 3 .* (relatedViewArray.leading .+ 10)
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing .= 3 .* relatedViewArray.leading .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing .= (relatedViewArray.leading .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayTrailingEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing .= (relatedViewArray.leading .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing .= 3 .* (relatedViewArray.leading .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing .= 3 .* relatedViewArray.leading .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing .= (relatedViewArray.leading .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= (relatedViewArray.leading .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= 3 .* (relatedViewArray.leading .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= 3 .* relatedViewArray.leading .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= (relatedViewArray.leading .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeading() {
        let constraints = viewArray.trailing ≤ relatedViewArray.leading
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = viewArray.trailing ≤ relatedViewArray.leading .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = viewArray.trailing ≤ relatedViewArray.leading .- 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = viewArray.trailing ≤ relatedViewArray.leading .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = viewArray.trailing ≤ 3 .* relatedViewArray.leading
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = viewArray.trailing ≤ relatedViewArray.leading ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = viewArray.trailing ≤ relatedViewArray.leading ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = viewArray.trailing ≤ relatedViewArray.leading ~ 300
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, priority: 300)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ relatedViewArray.leading ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing ≤ (relatedViewArray.leading .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedViewArray.leading .+ 10)
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing ≤ 3 .* relatedViewArray.leading .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing ≤ (relatedViewArray.leading .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing ≤ (relatedViewArray.leading .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedViewArray.leading .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing ≤ 3 .* relatedViewArray.leading .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing ≤ (relatedViewArray.leading .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ (relatedViewArray.leading .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedViewArray.leading .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ 3 .* relatedViewArray.leading .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ (relatedViewArray.leading .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeading() {
        let constraints = viewArray.trailing ≥ relatedViewArray.leading
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = viewArray.trailing ≥ relatedViewArray.leading .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = viewArray.trailing ≥ relatedViewArray.leading .- 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = viewArray.trailing ≥ relatedViewArray.leading .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = viewArray.trailing ≥ 3 .* relatedViewArray.leading
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = viewArray.trailing ≥ relatedViewArray.leading ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = viewArray.trailing ≥ relatedViewArray.leading ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = viewArray.trailing ≥ relatedViewArray.leading ~ 300
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, priority: 300)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ relatedViewArray.leading ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing ≥ (relatedViewArray.leading .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedViewArray.leading .+ 10)
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing ≥ 3 .* relatedViewArray.leading .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing ≥ (relatedViewArray.leading .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing ≥ (relatedViewArray.leading .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedViewArray.leading .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing ≥ 3 .* relatedViewArray.leading .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing ≥ (relatedViewArray.leading .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ (relatedViewArray.leading .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedViewArray.leading .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ 3 .* relatedViewArray.leading .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ (relatedViewArray.leading .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.trailingTrailing <=> relatedViewCenterX
    // MARK: Equal

    func testViewArrayTrailingEqualTorelatedViewCenterX() {
        let constraints = viewArray.trailing .= relatedView.centerX
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX)
    }

    // MARK: Equal with constant
    func testViewArrayTrailingEqualTorelatedViewCenterXPlusConstant() {
        let constraints = viewArray.trailing .= relatedView.centerX .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10)
    }

    func testViewArrayTrailingEqualTorelatedViewCenterXMinusConstant() {
        let constraints = viewArray.trailing .= relatedView.centerX .- 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTrailingEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = viewArray.trailing .= relatedView.centerX .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = viewArray.trailing .= 3 .* relatedView.centerX
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = viewArray.trailing .= relatedView.centerX ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayTrailingEqualTorelatedViewCenterXWithPriority() {
        let constraints = viewArray.trailing .= relatedView.centerX ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = viewArray.trailing .= relatedView.centerX ~ 300
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, priority: 300)
    }

    func testViewArrayTrailingEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= relatedView.centerX ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTrailingEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing .= (relatedView.centerX .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing .= 3 .* (relatedView.centerX .+ 10)
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing .= 3 .* relatedView.centerX .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing .= (relatedView.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayTrailingEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing .= (relatedView.centerX .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing .= 3 .* (relatedView.centerX .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing .= 3 .* relatedView.centerX .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing .= (relatedView.centerX .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= (relatedView.centerX .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= 3 .* (relatedView.centerX .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= 3 .* relatedView.centerX .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= (relatedView.centerX .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterX() {
        let constraints = viewArray.trailing ≤ relatedView.centerX
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXPlusConstant() {
        let constraints = viewArray.trailing ≤ relatedView.centerX .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXMinusConstant() {
        let constraints = viewArray.trailing ≤ relatedView.centerX .- 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = viewArray.trailing ≤ relatedView.centerX .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.centerX
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = viewArray.trailing ≤ relatedView.centerX ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXWithPriority() {
        let constraints = viewArray.trailing ≤ relatedView.centerX ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = viewArray.trailing ≤ relatedView.centerX ~ 300
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ relatedView.centerX ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing ≤ (relatedView.centerX .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedView.centerX .+ 10)
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.centerX .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing ≤ (relatedView.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing ≤ (relatedView.centerX .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedView.centerX .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.centerX .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing ≤ (relatedView.centerX .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ (relatedView.centerX .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedView.centerX .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.centerX .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ (relatedView.centerX .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterX() {
        let constraints = viewArray.trailing ≥ relatedView.centerX
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstant() {
        let constraints = viewArray.trailing ≥ relatedView.centerX .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXMinusConstant() {
        let constraints = viewArray.trailing ≥ relatedView.centerX .- 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = viewArray.trailing ≥ relatedView.centerX .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.centerX
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = viewArray.trailing ≥ relatedView.centerX ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXWithPriority() {
        let constraints = viewArray.trailing ≥ relatedView.centerX ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = viewArray.trailing ≥ relatedView.centerX ~ 300
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ relatedView.centerX ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing ≥ (relatedView.centerX .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedView.centerX .+ 10)
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.centerX .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing ≥ (relatedView.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing ≥ (relatedView.centerX .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedView.centerX .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.centerX .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing ≥ (relatedView.centerX .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ (relatedView.centerX .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedView.centerX .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.centerX .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ (relatedView.centerX .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.trailingTrailing <=> relatedViewArrayCenterX
    // MARK: Equal

    func testViewArrayTrailingEqualTorelatedViewArrayCenterX() {
        let constraints = viewArray.trailing .= relatedViewArray.centerX
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX)
    }

    // MARK: Equal with constant
    func testViewArrayTrailingEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = viewArray.trailing .= relatedViewArray.centerX .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, constant: 10)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = viewArray.trailing .= relatedViewArray.centerX .- 10
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTrailingEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = viewArray.trailing .= relatedViewArray.centerX .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = viewArray.trailing .= 3 .* relatedViewArray.centerX
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = viewArray.trailing .= relatedViewArray.centerX ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayTrailingEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = viewArray.trailing .= relatedViewArray.centerX ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = viewArray.trailing .= relatedViewArray.centerX ~ 300
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, priority: 300)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= relatedViewArray.centerX ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTrailingEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing .= (relatedViewArray.centerX .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing .= 3 .* (relatedViewArray.centerX .+ 10)
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing .= 3 .* relatedViewArray.centerX .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing .= (relatedViewArray.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayTrailingEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing .= (relatedViewArray.centerX .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing .= 3 .* (relatedViewArray.centerX .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing .= 3 .* relatedViewArray.centerX .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing .= (relatedViewArray.centerX .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= (relatedViewArray.centerX .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= 3 .* (relatedViewArray.centerX .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= 3 .* relatedViewArray.centerX .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= (relatedViewArray.centerX .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterX() {
        let constraints = viewArray.trailing ≤ relatedViewArray.centerX
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = viewArray.trailing ≤ relatedViewArray.centerX .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = viewArray.trailing ≤ relatedViewArray.centerX .- 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = viewArray.trailing ≤ relatedViewArray.centerX .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = viewArray.trailing ≤ 3 .* relatedViewArray.centerX
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = viewArray.trailing ≤ relatedViewArray.centerX ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = viewArray.trailing ≤ relatedViewArray.centerX ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = viewArray.trailing ≤ relatedViewArray.centerX ~ 300
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, priority: 300)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ relatedViewArray.centerX ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing ≤ (relatedViewArray.centerX .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedViewArray.centerX .+ 10)
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing ≤ 3 .* relatedViewArray.centerX .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing ≤ (relatedViewArray.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing ≤ (relatedViewArray.centerX .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedViewArray.centerX .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing ≤ 3 .* relatedViewArray.centerX .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing ≤ (relatedViewArray.centerX .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ (relatedViewArray.centerX .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedViewArray.centerX .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ 3 .* relatedViewArray.centerX .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ (relatedViewArray.centerX .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterX() {
        let constraints = viewArray.trailing ≥ relatedViewArray.centerX
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = viewArray.trailing ≥ relatedViewArray.centerX .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = viewArray.trailing ≥ relatedViewArray.centerX .- 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = viewArray.trailing ≥ relatedViewArray.centerX .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = viewArray.trailing ≥ 3 .* relatedViewArray.centerX
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = viewArray.trailing ≥ relatedViewArray.centerX ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = viewArray.trailing ≥ relatedViewArray.centerX ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = viewArray.trailing ≥ relatedViewArray.centerX ~ 300
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, priority: 300)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ relatedViewArray.centerX ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing ≥ (relatedViewArray.centerX .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedViewArray.centerX .+ 10)
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing ≥ 3 .* relatedViewArray.centerX .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing ≥ (relatedViewArray.centerX .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing ≥ (relatedViewArray.centerX .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedViewArray.centerX .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing ≥ 3 .* relatedViewArray.centerX .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing ≥ (relatedViewArray.centerX .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ (relatedViewArray.centerX .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedViewArray.centerX .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ 3 .* relatedViewArray.centerX .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ (relatedViewArray.centerX .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.trailingTrailing <=> relatedViewTrailing
    // MARK: Equal

    func testViewArrayTrailingEqualTorelatedViewTrailing() {
        let constraints = viewArray.trailing .= relatedView.trailing
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing)
    }

    func testViewArrayTrailingEqualTorelatedViewTrailingInversedInference() {
        let constraints = viewArray.trailing .= relatedView
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing)
    }
    // MARK: Equal with constant
    func testViewArrayTrailingEqualTorelatedViewTrailingPlusConstant() {
        let constraints = viewArray.trailing .= relatedView.trailing .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10)
    }

    func testViewArrayTrailingEqualTorelatedViewTrailingMinusConstant() {
        let constraints = viewArray.trailing .= relatedView.trailing .- 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTrailingEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = viewArray.trailing .= relatedView.trailing .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = viewArray.trailing .= 3 .* relatedView.trailing
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = viewArray.trailing .= relatedView.trailing ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayTrailingEqualTorelatedViewTrailingWithPriority() {
        let constraints = viewArray.trailing .= relatedView.trailing ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = viewArray.trailing .= relatedView.trailing ~ 300
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 300)
    }

    func testViewArrayTrailingEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= relatedView.trailing ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTrailingEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing .= (relatedView.trailing .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing .= 3 .* (relatedView.trailing .+ 10)
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing .= 3 .* relatedView.trailing .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing .= (relatedView.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayTrailingEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing .= (relatedView.trailing .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing .= 3 .* (relatedView.trailing .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing .= 3 .* relatedView.trailing .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing .= (relatedView.trailing .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= (relatedView.trailing .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= 3 .* (relatedView.trailing .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= 3 .* relatedView.trailing .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= (relatedView.trailing .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailing() {
        let constraints = viewArray.trailing ≤ relatedView.trailing
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingInversedInference() {
        let constraints = viewArray.trailing ≤ relatedView
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }
    // MARK: LessThanOrEqual with constant
    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstant() {
        let constraints = viewArray.trailing ≤ relatedView.trailing .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingMinusConstant() {
        let constraints = viewArray.trailing ≤ relatedView.trailing .- 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = viewArray.trailing ≤ relatedView.trailing .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.trailing
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = viewArray.trailing ≤ relatedView.trailing ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingWithPriority() {
        let constraints = viewArray.trailing ≤ relatedView.trailing ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = viewArray.trailing ≤ relatedView.trailing ~ 300
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ relatedView.trailing ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing ≤ (relatedView.trailing .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedView.trailing .+ 10)
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.trailing .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing ≤ (relatedView.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing ≤ (relatedView.trailing .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedView.trailing .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.trailing .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing ≤ (relatedView.trailing .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ (relatedView.trailing .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedView.trailing .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ 3 .* relatedView.trailing .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ (relatedView.trailing .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailing() {
        let constraints = viewArray.trailing ≥ relatedView.trailing
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingInversedInference() {
        let constraints = viewArray.trailing ≥ relatedView
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }
    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstant() {
        let constraints = viewArray.trailing ≥ relatedView.trailing .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingMinusConstant() {
        let constraints = viewArray.trailing ≥ relatedView.trailing .- 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = viewArray.trailing ≥ relatedView.trailing .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.trailing
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = viewArray.trailing ≥ relatedView.trailing ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingWithPriority() {
        let constraints = viewArray.trailing ≥ relatedView.trailing ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = viewArray.trailing ≥ relatedView.trailing ~ 300
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ relatedView.trailing ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing ≥ (relatedView.trailing .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedView.trailing .+ 10)
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.trailing .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing ≥ (relatedView.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing ≥ (relatedView.trailing .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedView.trailing .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.trailing .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing ≥ (relatedView.trailing .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ (relatedView.trailing .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedView.trailing .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ 3 .* relatedView.trailing .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ (relatedView.trailing .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.trailingTrailing <=> relatedViewArrayTrailing
    // MARK: Equal

    func testViewArrayTrailingEqualTorelatedViewArrayTrailing() {
        let constraints = viewArray.trailing .= relatedViewArray.trailing
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayTrailingInversedInference() {
        let constraints = viewArray.trailing .= relatedViewArray
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing)
    }
    // MARK: Equal with constant
    func testViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = viewArray.trailing .= relatedViewArray.trailing .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = viewArray.trailing .= relatedViewArray.trailing .- 10
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTrailingEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = viewArray.trailing .= relatedViewArray.trailing .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = viewArray.trailing .= 3 .* relatedViewArray.trailing
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = viewArray.trailing .= relatedViewArray.trailing ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayTrailingEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = viewArray.trailing .= relatedViewArray.trailing ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = viewArray.trailing .= relatedViewArray.trailing ~ 300
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, priority: 300)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= relatedViewArray.trailing ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing .= (relatedViewArray.trailing .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing .= 3 .* (relatedViewArray.trailing .+ 10)
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing .= 3 .* relatedViewArray.trailing .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing .= (relatedViewArray.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing .= (relatedViewArray.trailing .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing .= 3 .* (relatedViewArray.trailing .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing .= 3 .* relatedViewArray.trailing .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing .= (relatedViewArray.trailing .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= (relatedViewArray.trailing .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= 3 .* (relatedViewArray.trailing .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= 3 .* relatedViewArray.trailing .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing .= (relatedViewArray.trailing .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailing() {
        let constraints = viewArray.trailing ≤ relatedViewArray.trailing
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingInversedInference() {
        let constraints = viewArray.trailing ≤ relatedViewArray
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing)
    }
    // MARK: LessThanOrEqual with constant
    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = viewArray.trailing ≤ relatedViewArray.trailing .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = viewArray.trailing ≤ relatedViewArray.trailing .- 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = viewArray.trailing ≤ relatedViewArray.trailing .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = viewArray.trailing ≤ 3 .* relatedViewArray.trailing
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = viewArray.trailing ≤ relatedViewArray.trailing ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = viewArray.trailing ≤ relatedViewArray.trailing ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = viewArray.trailing ≤ relatedViewArray.trailing ~ 300
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, priority: 300)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ relatedViewArray.trailing ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing ≤ (relatedViewArray.trailing .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedViewArray.trailing .+ 10)
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing ≤ 3 .* relatedViewArray.trailing .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing ≤ (relatedViewArray.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing ≤ (relatedViewArray.trailing .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedViewArray.trailing .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing ≤ 3 .* relatedViewArray.trailing .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing ≤ (relatedViewArray.trailing .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ (relatedViewArray.trailing .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ 3 .* (relatedViewArray.trailing .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ 3 .* relatedViewArray.trailing .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≤ (relatedViewArray.trailing .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailing() {
        let constraints = viewArray.trailing ≥ relatedViewArray.trailing
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingInversedInference() {
        let constraints = viewArray.trailing ≥ relatedViewArray
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing)
    }
    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = viewArray.trailing ≥ relatedViewArray.trailing .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = viewArray.trailing ≥ relatedViewArray.trailing .- 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = viewArray.trailing ≥ relatedViewArray.trailing .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = viewArray.trailing ≥ 3 .* relatedViewArray.trailing
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = viewArray.trailing ≥ relatedViewArray.trailing ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = viewArray.trailing ≥ relatedViewArray.trailing ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = viewArray.trailing ≥ relatedViewArray.trailing ~ 300
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, priority: 300)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ relatedViewArray.trailing ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray.trailing ≥ (relatedViewArray.trailing .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedViewArray.trailing .+ 10)
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray.trailing ≥ 3 .* relatedViewArray.trailing .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray.trailing ≥ (relatedViewArray.trailing .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.trailing ≥ (relatedViewArray.trailing .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedViewArray.trailing .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.trailing ≥ 3 .* relatedViewArray.trailing .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.trailing ≥ (relatedViewArray.trailing .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ (relatedViewArray.trailing .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ 3 .* (relatedViewArray.trailing .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ 3 .* relatedViewArray.trailing .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailing ≥ (relatedViewArray.trailing .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
// sourcery:end
}
