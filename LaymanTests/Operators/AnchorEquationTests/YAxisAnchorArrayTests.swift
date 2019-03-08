//
//  YAxisAnchorArrayTests.swift
//  Layman
//
//  Created by Brian Strobach on 1/25/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// swiftlint:disable file_length type_body_length

@testable import Layman
import XCTest

// sourcery: anchorEquationTest
// sourcery: lhsAttributes = top, lhsAttributes = centerY, lhsAttributes = bottom
// sourcery: rhsAttributes = top, rhsAttributes = centerY, rhsAttributes = bottom
// sourcery: lhsItem = viewArray
class YAxisAnchorArrayTests: LaymanTestCase {

// sourcery:inline:auto:YAxisAnchorArrayTests.EquationTests
    // MARK: viewArray.topTop <=> relatedViewTop
    // MARK: Equal

    func testViewArrayTopEqualTorelatedViewTop() {
        let constraints = viewArray.top .= relatedView.topAnchor
        constraints.assert(viewArray, .top, .equal, relatedView, .top)
    }

    func testViewArrayTopEqualTorelatedViewTopInversedInference() {
        let constraints = viewArray.topAnchor .= relatedView
        constraints.assert(viewArray, .top, .equal, relatedView, .top)
    }
    // MARK: Equal with constant
    func testViewArrayTopEqualTorelatedViewTopPlusConstant() {
        let constraints = viewArray.top .= relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
    }

    func testViewArrayTopEqualTorelatedViewTopMinusConstant() {
        let constraints = viewArray.top .= relatedView.topAnchor .- 10
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTopEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = viewArray.top .= relatedView.topAnchor .* 3
        constraints.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = viewArray.top .= 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewTopDividedByConstant() {
        let constraints = viewArray.top .= relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayTopEqualTorelatedViewTopWithPriority() {
        let constraints = viewArray.top .= relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = viewArray.top .= relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .top, .equal, relatedView, .top, priority: 300)
    }

    func testViewArrayTopEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = viewArray.top .= relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTopEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top .= (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top .= 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top .= 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = viewArray.top .= (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayTopEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top .= (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top .= 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top .= 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top .= (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayTopEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayTopGreaterThanOrEqualTorelatedViewTop() {
        let constraints = viewArray.top ≥ relatedView.topAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopInversedInference() {
        let constraints = viewArray.topAnchor ≥ relatedView
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
    }
    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstant() {
        let constraints = viewArray.top ≥ relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopMinusConstant() {
        let constraints = viewArray.top ≥ relatedView.topAnchor .- 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = viewArray.top ≥ relatedView.topAnchor .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = viewArray.top ≥ 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopDividedByConstant() {
        let constraints = viewArray.top ≥ relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopWithPriority() {
        let constraints = viewArray.top ≥ relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = viewArray.top ≥ relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top ≥ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top ≥ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top ≥ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = viewArray.top ≥ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top ≥ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayTopLessThanOrEqualTorelatedViewTop() {
        let constraints = viewArray.top ≤ relatedView.topAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewTopInversedInference() {
        let constraints = viewArray.topAnchor ≤ relatedView
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
    }
    // MARK: LessThanOrEqual with constant
    func testViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstant() {
        let constraints = viewArray.top ≤ relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewTopMinusConstant() {
        let constraints = viewArray.top ≤ relatedView.topAnchor .- 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTopLessThanOrEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = viewArray.top ≤ relatedView.topAnchor .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = viewArray.top ≤ 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewTopDividedByConstant() {
        let constraints = viewArray.top ≤ relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayTopLessThanOrEqualTorelatedViewTopWithPriority() {
        let constraints = viewArray.top ≤ relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = viewArray.top ≤ relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top ≤ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top ≤ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top ≤ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = viewArray.top ≤ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top ≤ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.topTop <=> relatedViewArrayTop
    // MARK: Equal

    func testViewArrayTopEqualTorelatedViewArrayTop() {
        let constraints = viewArray.top .= relatedViewArray.topAnchor
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top)
    }

    func testViewArrayTopEqualTorelatedViewArrayTopInversedInference() {
        let constraints = viewArray.topAnchor .= relatedViewArray
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top)
    }
    // MARK: Equal with constant
    func testViewArrayTopEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = viewArray.top .= relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10)
    }

    func testViewArrayTopEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = viewArray.top .= relatedViewArray.topAnchor .- 10
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTopEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = viewArray.top .= relatedViewArray.topAnchor .* 3
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = viewArray.top .= 3 .* relatedViewArray.topAnchor
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = viewArray.top .= relatedViewArray.topAnchor ./ 2
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayTopEqualTorelatedViewArrayTopWithPriority() {
        let constraints = viewArray.top .= relatedViewArray.topAnchor ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = viewArray.top .= relatedViewArray.topAnchor ~ 300
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, priority: 300)
    }

    func testViewArrayTopEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = viewArray.top .= relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTopEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top .= (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top .= 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top .= 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = viewArray.top .= (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayTopEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top .= (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top .= 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top .= 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top .= (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayTopEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTop() {
        let constraints = viewArray.top ≥ relatedViewArray.topAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopInversedInference() {
        let constraints = viewArray.topAnchor ≥ relatedViewArray
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top)
    }
    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = viewArray.top ≥ relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = viewArray.top ≥ relatedViewArray.topAnchor .- 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = viewArray.top ≥ relatedViewArray.topAnchor .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = viewArray.top ≥ 3 .* relatedViewArray.topAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = viewArray.top ≥ relatedViewArray.topAnchor ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopWithPriority() {
        let constraints = viewArray.top ≥ relatedViewArray.topAnchor ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = viewArray.top ≥ relatedViewArray.topAnchor ~ 300
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, priority: 300)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top ≥ (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top ≥ 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top ≥ 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = viewArray.top ≥ (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top ≥ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top ≥ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top ≥ 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top ≥ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTop() {
        let constraints = viewArray.top ≤ relatedViewArray.topAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopInversedInference() {
        let constraints = viewArray.topAnchor ≤ relatedViewArray
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top)
    }
    // MARK: LessThanOrEqual with constant
    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = viewArray.top ≤ relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = viewArray.top ≤ relatedViewArray.topAnchor .- 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = viewArray.top ≤ relatedViewArray.topAnchor .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = viewArray.top ≤ 3 .* relatedViewArray.topAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = viewArray.top ≤ relatedViewArray.topAnchor ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopWithPriority() {
        let constraints = viewArray.top ≤ relatedViewArray.topAnchor ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = viewArray.top ≤ relatedViewArray.topAnchor ~ 300
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, priority: 300)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top ≤ (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top ≤ 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top ≤ 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = viewArray.top ≤ (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top ≤ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top ≤ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top ≤ 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top ≤ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.topTop <=> relatedViewCenterY
    // MARK: Equal

    func testViewArrayTopEqualTorelatedViewCenterY() {
        let constraints = viewArray.top .= relatedView.centerYAnchor
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testViewArrayTopEqualTorelatedViewCenterYPlusConstant() {
        let constraints = viewArray.top .= relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10)
    }

    func testViewArrayTopEqualTorelatedViewCenterYMinusConstant() {
        let constraints = viewArray.top .= relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTopEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = viewArray.top .= relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = viewArray.top .= 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = viewArray.top .= relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayTopEqualTorelatedViewCenterYWithPriority() {
        let constraints = viewArray.top .= relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = viewArray.top .= relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, priority: 300)
    }

    func testViewArrayTopEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = viewArray.top .= relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTopEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top .= (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top .= 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top .= 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.top .= (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayTopEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top .= 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayTopEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterY() {
        let constraints = viewArray.top ≥ relatedView.centerYAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYPlusConstant() {
        let constraints = viewArray.top ≥ relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYMinusConstant() {
        let constraints = viewArray.top ≥ relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = viewArray.top ≥ relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = viewArray.top ≥ 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = viewArray.top ≥ relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYWithPriority() {
        let constraints = viewArray.top ≥ relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = viewArray.top ≥ relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top ≥ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top ≥ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top ≥ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.top ≥ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayTopLessThanOrEqualTorelatedViewCenterY() {
        let constraints = viewArray.top ≤ relatedView.centerYAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYPlusConstant() {
        let constraints = viewArray.top ≤ relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYMinusConstant() {
        let constraints = viewArray.top ≤ relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = viewArray.top ≤ relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = viewArray.top ≤ 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = viewArray.top ≤ relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYWithPriority() {
        let constraints = viewArray.top ≤ relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = viewArray.top ≤ relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top ≤ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top ≤ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top ≤ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.top ≤ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.topTop <=> relatedViewArrayCenterY
    // MARK: Equal

    func testViewArrayTopEqualTorelatedViewArrayCenterY() {
        let constraints = viewArray.top .= relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY)
    }

    // MARK: Equal with constant
    func testViewArrayTopEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = viewArray.top .= relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, constant: 10)
    }

    func testViewArrayTopEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = viewArray.top .= relatedViewArray.centerYAnchor .- 10
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTopEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = viewArray.top .= relatedViewArray.centerYAnchor .* 3
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = viewArray.top .= 3 .* relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = viewArray.top .= relatedViewArray.centerYAnchor ./ 2
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayTopEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = viewArray.top .= relatedViewArray.centerYAnchor ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = viewArray.top .= relatedViewArray.centerYAnchor ~ 300
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, priority: 300)
    }

    func testViewArrayTopEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = viewArray.top .= relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTopEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top .= (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top .= 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top .= 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.top .= (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayTopEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top .= (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top .= 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top .= 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top .= (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayTopEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterY() {
        let constraints = viewArray.top ≥ relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = viewArray.top ≥ relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = viewArray.top ≥ relatedViewArray.centerYAnchor .- 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = viewArray.top ≥ relatedViewArray.centerYAnchor .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = viewArray.top ≥ 3 .* relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = viewArray.top ≥ relatedViewArray.centerYAnchor ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = viewArray.top ≥ relatedViewArray.centerYAnchor ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = viewArray.top ≥ relatedViewArray.centerYAnchor ~ 300
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, priority: 300)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top ≥ 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.top ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top ≥ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterY() {
        let constraints = viewArray.top ≤ relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = viewArray.top ≤ relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = viewArray.top ≤ relatedViewArray.centerYAnchor .- 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = viewArray.top ≤ relatedViewArray.centerYAnchor .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = viewArray.top ≤ 3 .* relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = viewArray.top ≤ relatedViewArray.centerYAnchor ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = viewArray.top ≤ relatedViewArray.centerYAnchor ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = viewArray.top ≤ relatedViewArray.centerYAnchor ~ 300
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, priority: 300)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top ≤ 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.top ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top ≤ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.topTop <=> relatedViewBottom
    // MARK: Equal

    func testViewArrayTopEqualTorelatedViewBottom() {
        let constraints = viewArray.top .= relatedView.bottomAnchor
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testViewArrayTopEqualTorelatedViewBottomPlusConstant() {
        let constraints = viewArray.top .= relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10)
    }

    func testViewArrayTopEqualTorelatedViewBottomMinusConstant() {
        let constraints = viewArray.top .= relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTopEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = viewArray.top .= relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = viewArray.top .= 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewBottomDividedByConstant() {
        let constraints = viewArray.top .= relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayTopEqualTorelatedViewBottomWithPriority() {
        let constraints = viewArray.top .= relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = viewArray.top .= relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, priority: 300)
    }

    func testViewArrayTopEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = viewArray.top .= relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTopEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top .= (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top .= 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top .= 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.top .= (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayTopEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top .= 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayTopEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottom() {
        let constraints = viewArray.top ≥ relatedView.bottomAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomPlusConstant() {
        let constraints = viewArray.top ≥ relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomMinusConstant() {
        let constraints = viewArray.top ≥ relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = viewArray.top ≥ relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = viewArray.top ≥ 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomDividedByConstant() {
        let constraints = viewArray.top ≥ relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomWithPriority() {
        let constraints = viewArray.top ≥ relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = viewArray.top ≥ relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top ≥ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top ≥ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top ≥ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.top ≥ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayTopLessThanOrEqualTorelatedViewBottom() {
        let constraints = viewArray.top ≤ relatedView.bottomAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTopLessThanOrEqualTorelatedViewBottomPlusConstant() {
        let constraints = viewArray.top ≤ relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewBottomMinusConstant() {
        let constraints = viewArray.top ≤ relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTopLessThanOrEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = viewArray.top ≤ relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = viewArray.top ≤ 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewBottomDividedByConstant() {
        let constraints = viewArray.top ≤ relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayTopLessThanOrEqualTorelatedViewBottomWithPriority() {
        let constraints = viewArray.top ≤ relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = viewArray.top ≤ relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTopLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top ≤ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top ≤ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top ≤ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.top ≤ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTopLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTopLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.topTop <=> relatedViewArrayBottom
    // MARK: Equal

    func testViewArrayTopEqualTorelatedViewArrayBottom() {
        let constraints = viewArray.top .= relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom)
    }

    // MARK: Equal with constant
    func testViewArrayTopEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = viewArray.top .= relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, constant: 10)
    }

    func testViewArrayTopEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = viewArray.top .= relatedViewArray.bottomAnchor .- 10
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTopEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = viewArray.top .= relatedViewArray.bottomAnchor .* 3
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = viewArray.top .= 3 .* relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = viewArray.top .= relatedViewArray.bottomAnchor ./ 2
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayTopEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = viewArray.top .= relatedViewArray.bottomAnchor ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = viewArray.top .= relatedViewArray.bottomAnchor ~ 300
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, priority: 300)
    }

    func testViewArrayTopEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = viewArray.top .= relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTopEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top .= (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top .= 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top .= 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayTopEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.top .= (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayTopEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top .= (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top .= 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top .= 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top .= (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayTopEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottom() {
        let constraints = viewArray.top ≥ relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = viewArray.top ≥ relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = viewArray.top ≥ relatedViewArray.bottomAnchor .- 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = viewArray.top ≥ relatedViewArray.bottomAnchor .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = viewArray.top ≥ 3 .* relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = viewArray.top ≥ relatedViewArray.bottomAnchor ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = viewArray.top ≥ relatedViewArray.bottomAnchor ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = viewArray.top ≥ relatedViewArray.bottomAnchor ~ 300
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, priority: 300)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top ≥ 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.top ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top ≥ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottom() {
        let constraints = viewArray.top ≤ relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = viewArray.top ≤ relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = viewArray.top ≤ relatedViewArray.bottomAnchor .- 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = viewArray.top ≤ relatedViewArray.bottomAnchor .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = viewArray.top ≤ 3 .* relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = viewArray.top ≤ relatedViewArray.bottomAnchor ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = viewArray.top ≤ relatedViewArray.bottomAnchor ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = viewArray.top ≤ relatedViewArray.bottomAnchor ~ 300
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, priority: 300)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top ≤ 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.top ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top ≤ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerYCenterY <=> relatedViewTop
    // MARK: Equal

    func testViewArrayCenterYEqualTorelatedViewTop() {
        let constraints = viewArray.centerY .= relatedView.topAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testViewArrayCenterYEqualTorelatedViewTopPlusConstant() {
        let constraints = viewArray.centerY .= relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10)
    }

    func testViewArrayCenterYEqualTorelatedViewTopMinusConstant() {
        let constraints = viewArray.centerY .= relatedView.topAnchor .- 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterYEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = viewArray.centerY .= relatedView.topAnchor .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = viewArray.centerY .= 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewTopDividedByConstant() {
        let constraints = viewArray.centerY .= relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayCenterYEqualTorelatedViewTopWithPriority() {
        let constraints = viewArray.centerY .= relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = viewArray.centerY .= relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, priority: 300)
    }

    func testViewArrayCenterYEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterYEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY .= (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY .= 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY .= 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY .= (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayCenterYEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY .= (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY .= 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY .= 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY .= (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTop() {
        let constraints = viewArray.centerY ≥ relatedView.topAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopPlusConstant() {
        let constraints = viewArray.centerY ≥ relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopMinusConstant() {
        let constraints = viewArray.centerY ≥ relatedView.topAnchor .- 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = viewArray.centerY ≥ relatedView.topAnchor .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopDividedByConstant() {
        let constraints = viewArray.centerY ≥ relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopWithPriority() {
        let constraints = viewArray.centerY ≥ relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = viewArray.centerY ≥ relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY ≥ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY ≥ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayCenterYLessThanOrEqualTorelatedViewTop() {
        let constraints = viewArray.centerY ≤ relatedView.topAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopPlusConstant() {
        let constraints = viewArray.centerY ≤ relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopMinusConstant() {
        let constraints = viewArray.centerY ≤ relatedView.topAnchor .- 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = viewArray.centerY ≤ relatedView.topAnchor .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopDividedByConstant() {
        let constraints = viewArray.centerY ≤ relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopWithPriority() {
        let constraints = viewArray.centerY ≤ relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = viewArray.centerY ≤ relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY ≤ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY ≤ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerYCenterY <=> relatedViewArrayTop
    // MARK: Equal

    func testViewArrayCenterYEqualTorelatedViewArrayTop() {
        let constraints = viewArray.centerY .= relatedViewArray.topAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top)
    }

    // MARK: Equal with constant
    func testViewArrayCenterYEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = viewArray.centerY .= relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, constant: 10)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = viewArray.centerY .= relatedViewArray.topAnchor .- 10
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterYEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = viewArray.centerY .= relatedViewArray.topAnchor .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = viewArray.centerY .= 3 .* relatedViewArray.topAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = viewArray.centerY .= relatedViewArray.topAnchor ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayCenterYEqualTorelatedViewArrayTopWithPriority() {
        let constraints = viewArray.centerY .= relatedViewArray.topAnchor ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = viewArray.centerY .= relatedViewArray.topAnchor ~ 300
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, priority: 300)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterYEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY .= (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY .= 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY .= 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY .= (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayCenterYEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY .= (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY .= 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY .= 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY .= (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTop() {
        let constraints = viewArray.centerY ≥ relatedViewArray.topAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = viewArray.centerY ≥ relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = viewArray.centerY ≥ relatedViewArray.topAnchor .- 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = viewArray.centerY ≥ relatedViewArray.topAnchor .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = viewArray.centerY ≥ 3 .* relatedViewArray.topAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = viewArray.centerY ≥ relatedViewArray.topAnchor ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopWithPriority() {
        let constraints = viewArray.centerY ≥ relatedViewArray.topAnchor ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = viewArray.centerY ≥ relatedViewArray.topAnchor ~ 300
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, priority: 300)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY ≥ (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY ≥ 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY ≥ (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY ≥ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY ≥ 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY ≥ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTop() {
        let constraints = viewArray.centerY ≤ relatedViewArray.topAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = viewArray.centerY ≤ relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = viewArray.centerY ≤ relatedViewArray.topAnchor .- 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = viewArray.centerY ≤ relatedViewArray.topAnchor .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = viewArray.centerY ≤ 3 .* relatedViewArray.topAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = viewArray.centerY ≤ relatedViewArray.topAnchor ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopWithPriority() {
        let constraints = viewArray.centerY ≤ relatedViewArray.topAnchor ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = viewArray.centerY ≤ relatedViewArray.topAnchor ~ 300
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, priority: 300)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY ≤ (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY ≤ 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY ≤ (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY ≤ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY ≤ 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY ≤ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerYCenterY <=> relatedViewCenterY
    // MARK: Equal

    func testViewArrayCenterYEqualTorelatedViewCenterY() {
        let constraints = viewArray.centerY .= relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY)
    }

    func testViewArrayCenterYEqualTorelatedViewCenterYInversedInference() {
        let constraints = viewArray.centerYAnchor .= relatedView
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY)
    }
    // MARK: Equal with constant
    func testViewArrayCenterYEqualTorelatedViewCenterYPlusConstant() {
        let constraints = viewArray.centerY .= relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10)
    }

    func testViewArrayCenterYEqualTorelatedViewCenterYMinusConstant() {
        let constraints = viewArray.centerY .= relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterYEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = viewArray.centerY .= relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = viewArray.centerY .= 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = viewArray.centerY .= relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayCenterYEqualTorelatedViewCenterYWithPriority() {
        let constraints = viewArray.centerY .= relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = viewArray.centerY .= relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 300)
    }

    func testViewArrayCenterYEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterYEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY .= (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY .= 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY .= 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY .= (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayCenterYEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY .= 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterY() {
        let constraints = viewArray.centerY ≥ relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYInversedInference() {
        let constraints = viewArray.centerYAnchor ≥ relatedView
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }
    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstant() {
        let constraints = viewArray.centerY ≥ relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYMinusConstant() {
        let constraints = viewArray.centerY ≥ relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = viewArray.centerY ≥ relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = viewArray.centerY ≥ relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYWithPriority() {
        let constraints = viewArray.centerY ≥ relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = viewArray.centerY ≥ relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY ≥ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY ≥ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterY() {
        let constraints = viewArray.centerY ≤ relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYInversedInference() {
        let constraints = viewArray.centerYAnchor ≤ relatedView
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }
    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstant() {
        let constraints = viewArray.centerY ≤ relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYMinusConstant() {
        let constraints = viewArray.centerY ≤ relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = viewArray.centerY ≤ relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = viewArray.centerY ≤ relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYWithPriority() {
        let constraints = viewArray.centerY ≤ relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = viewArray.centerY ≤ relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY ≤ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY ≤ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerYCenterY <=> relatedViewArrayCenterY
    // MARK: Equal

    func testViewArrayCenterYEqualTorelatedViewArrayCenterY() {
        let constraints = viewArray.centerY .= relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayCenterYInversedInference() {
        let constraints = viewArray.centerYAnchor .= relatedViewArray
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY)
    }
    // MARK: Equal with constant
    func testViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = viewArray.centerY .= relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = viewArray.centerY .= relatedViewArray.centerYAnchor .- 10
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterYEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = viewArray.centerY .= relatedViewArray.centerYAnchor .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = viewArray.centerY .= 3 .* relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = viewArray.centerY .= relatedViewArray.centerYAnchor ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayCenterYEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = viewArray.centerY .= relatedViewArray.centerYAnchor ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = viewArray.centerY .= relatedViewArray.centerYAnchor ~ 300
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, priority: 300)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY .= (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY .= 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY .= 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY .= (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY .= (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY .= 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY .= 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY .= (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterY() {
        let constraints = viewArray.centerY ≥ relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYInversedInference() {
        let constraints = viewArray.centerYAnchor ≥ relatedViewArray
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY)
    }
    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = viewArray.centerY ≥ relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = viewArray.centerY ≥ relatedViewArray.centerYAnchor .- 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = viewArray.centerY ≥ relatedViewArray.centerYAnchor .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = viewArray.centerY ≥ 3 .* relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = viewArray.centerY ≥ relatedViewArray.centerYAnchor ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = viewArray.centerY ≥ relatedViewArray.centerYAnchor ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = viewArray.centerY ≥ relatedViewArray.centerYAnchor ~ 300
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, priority: 300)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY ≥ 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY ≥ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterY() {
        let constraints = viewArray.centerY ≤ relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYInversedInference() {
        let constraints = viewArray.centerYAnchor ≤ relatedViewArray
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY)
    }
    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = viewArray.centerY ≤ relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = viewArray.centerY ≤ relatedViewArray.centerYAnchor .- 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = viewArray.centerY ≤ relatedViewArray.centerYAnchor .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = viewArray.centerY ≤ 3 .* relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = viewArray.centerY ≤ relatedViewArray.centerYAnchor ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = viewArray.centerY ≤ relatedViewArray.centerYAnchor ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = viewArray.centerY ≤ relatedViewArray.centerYAnchor ~ 300
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, priority: 300)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY ≤ 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY ≤ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerYCenterY <=> relatedViewBottom
    // MARK: Equal

    func testViewArrayCenterYEqualTorelatedViewBottom() {
        let constraints = viewArray.centerY .= relatedView.bottomAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testViewArrayCenterYEqualTorelatedViewBottomPlusConstant() {
        let constraints = viewArray.centerY .= relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10)
    }

    func testViewArrayCenterYEqualTorelatedViewBottomMinusConstant() {
        let constraints = viewArray.centerY .= relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterYEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = viewArray.centerY .= relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = viewArray.centerY .= 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewBottomDividedByConstant() {
        let constraints = viewArray.centerY .= relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayCenterYEqualTorelatedViewBottomWithPriority() {
        let constraints = viewArray.centerY .= relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = viewArray.centerY .= relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, priority: 300)
    }

    func testViewArrayCenterYEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterYEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY .= (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY .= 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY .= 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY .= (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayCenterYEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY .= 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottom() {
        let constraints = viewArray.centerY ≥ relatedView.bottomAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomPlusConstant() {
        let constraints = viewArray.centerY ≥ relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomMinusConstant() {
        let constraints = viewArray.centerY ≥ relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = viewArray.centerY ≥ relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomDividedByConstant() {
        let constraints = viewArray.centerY ≥ relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomWithPriority() {
        let constraints = viewArray.centerY ≥ relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = viewArray.centerY ≥ relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY ≥ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY ≥ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottom() {
        let constraints = viewArray.centerY ≤ relatedView.bottomAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomPlusConstant() {
        let constraints = viewArray.centerY ≤ relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomMinusConstant() {
        let constraints = viewArray.centerY ≤ relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = viewArray.centerY ≤ relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomDividedByConstant() {
        let constraints = viewArray.centerY ≤ relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomWithPriority() {
        let constraints = viewArray.centerY ≤ relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = viewArray.centerY ≤ relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY ≤ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY ≤ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerYCenterY <=> relatedViewArrayBottom
    // MARK: Equal

    func testViewArrayCenterYEqualTorelatedViewArrayBottom() {
        let constraints = viewArray.centerY .= relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom)
    }

    // MARK: Equal with constant
    func testViewArrayCenterYEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = viewArray.centerY .= relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, constant: 10)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = viewArray.centerY .= relatedViewArray.bottomAnchor .- 10
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterYEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = viewArray.centerY .= relatedViewArray.bottomAnchor .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = viewArray.centerY .= 3 .* relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = viewArray.centerY .= relatedViewArray.bottomAnchor ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayCenterYEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = viewArray.centerY .= relatedViewArray.bottomAnchor ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = viewArray.centerY .= relatedViewArray.bottomAnchor ~ 300
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, priority: 300)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterYEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY .= (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY .= 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY .= 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY .= (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayCenterYEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY .= (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY .= 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY .= 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY .= (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottom() {
        let constraints = viewArray.centerY ≥ relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = viewArray.centerY ≥ relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = viewArray.centerY ≥ relatedViewArray.bottomAnchor .- 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = viewArray.centerY ≥ relatedViewArray.bottomAnchor .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = viewArray.centerY ≥ 3 .* relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = viewArray.centerY ≥ relatedViewArray.bottomAnchor ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = viewArray.centerY ≥ relatedViewArray.bottomAnchor ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = viewArray.centerY ≥ relatedViewArray.bottomAnchor ~ 300
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, priority: 300)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY ≥ 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY ≥ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottom() {
        let constraints = viewArray.centerY ≤ relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = viewArray.centerY ≤ relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = viewArray.centerY ≤ relatedViewArray.bottomAnchor .- 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = viewArray.centerY ≤ relatedViewArray.bottomAnchor .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = viewArray.centerY ≤ 3 .* relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = viewArray.centerY ≤ relatedViewArray.bottomAnchor ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = viewArray.centerY ≤ relatedViewArray.bottomAnchor ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = viewArray.centerY ≤ relatedViewArray.bottomAnchor ~ 300
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, priority: 300)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY ≤ 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY ≤ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.bottomBottom <=> relatedViewTop
    // MARK: Equal

    func testViewArrayBottomEqualTorelatedViewTop() {
        let constraints = viewArray.bottom .= relatedView.topAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testViewArrayBottomEqualTorelatedViewTopPlusConstant() {
        let constraints = viewArray.bottom .= relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10)
    }

    func testViewArrayBottomEqualTorelatedViewTopMinusConstant() {
        let constraints = viewArray.bottom .= relatedView.topAnchor .- 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayBottomEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = viewArray.bottom .= relatedView.topAnchor .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = viewArray.bottom .= 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewTopDividedByConstant() {
        let constraints = viewArray.bottom .= relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayBottomEqualTorelatedViewTopWithPriority() {
        let constraints = viewArray.bottom .= relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = viewArray.bottom .= relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, priority: 300)
    }

    func testViewArrayBottomEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayBottomEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom .= (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom .= 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom .= 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom .= (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayBottomEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom .= (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom .= 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom .= 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom .= (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTop() {
        let constraints = viewArray.bottom ≥ relatedView.topAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopPlusConstant() {
        let constraints = viewArray.bottom ≥ relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopMinusConstant() {
        let constraints = viewArray.bottom ≥ relatedView.topAnchor .- 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = viewArray.bottom ≥ relatedView.topAnchor .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopDividedByConstant() {
        let constraints = viewArray.bottom ≥ relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopWithPriority() {
        let constraints = viewArray.bottom ≥ relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = viewArray.bottom ≥ relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom ≥ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom ≥ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayBottomLessThanOrEqualTorelatedViewTop() {
        let constraints = viewArray.bottom ≤ relatedView.topAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayBottomLessThanOrEqualTorelatedViewTopPlusConstant() {
        let constraints = viewArray.bottom ≤ relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewTopMinusConstant() {
        let constraints = viewArray.bottom ≤ relatedView.topAnchor .- 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayBottomLessThanOrEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = viewArray.bottom ≤ relatedView.topAnchor .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewTopDividedByConstant() {
        let constraints = viewArray.bottom ≤ relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayBottomLessThanOrEqualTorelatedViewTopWithPriority() {
        let constraints = viewArray.bottom ≤ relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = viewArray.bottom ≤ relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayBottomLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom ≤ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom ≤ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayBottomLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.bottomBottom <=> relatedViewArrayTop
    // MARK: Equal

    func testViewArrayBottomEqualTorelatedViewArrayTop() {
        let constraints = viewArray.bottom .= relatedViewArray.topAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top)
    }

    // MARK: Equal with constant
    func testViewArrayBottomEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = viewArray.bottom .= relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, constant: 10)
    }

    func testViewArrayBottomEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = viewArray.bottom .= relatedViewArray.topAnchor .- 10
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayBottomEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = viewArray.bottom .= relatedViewArray.topAnchor .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = viewArray.bottom .= 3 .* relatedViewArray.topAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = viewArray.bottom .= relatedViewArray.topAnchor ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayBottomEqualTorelatedViewArrayTopWithPriority() {
        let constraints = viewArray.bottom .= relatedViewArray.topAnchor ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = viewArray.bottom .= relatedViewArray.topAnchor ~ 300
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, priority: 300)
    }

    func testViewArrayBottomEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayBottomEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom .= (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom .= 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom .= 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom .= (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayBottomEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom .= (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom .= 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom .= 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom .= (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTop() {
        let constraints = viewArray.bottom ≥ relatedViewArray.topAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = viewArray.bottom ≥ relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = viewArray.bottom ≥ relatedViewArray.topAnchor .- 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = viewArray.bottom ≥ relatedViewArray.topAnchor .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = viewArray.bottom ≥ 3 .* relatedViewArray.topAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = viewArray.bottom ≥ relatedViewArray.topAnchor ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopWithPriority() {
        let constraints = viewArray.bottom ≥ relatedViewArray.topAnchor ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = viewArray.bottom ≥ relatedViewArray.topAnchor ~ 300
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, priority: 300)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom ≥ (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom ≥ 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom ≥ (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom ≥ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom ≥ 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom ≥ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTop() {
        let constraints = viewArray.bottom ≤ relatedViewArray.topAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = viewArray.bottom ≤ relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = viewArray.bottom ≤ relatedViewArray.topAnchor .- 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = viewArray.bottom ≤ relatedViewArray.topAnchor .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = viewArray.bottom ≤ 3 .* relatedViewArray.topAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = viewArray.bottom ≤ relatedViewArray.topAnchor ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopWithPriority() {
        let constraints = viewArray.bottom ≤ relatedViewArray.topAnchor ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = viewArray.bottom ≤ relatedViewArray.topAnchor ~ 300
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, priority: 300)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom ≤ (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom ≤ 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom ≤ (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom ≤ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom ≤ 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom ≤ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.bottomBottom <=> relatedViewCenterY
    // MARK: Equal

    func testViewArrayBottomEqualTorelatedViewCenterY() {
        let constraints = viewArray.bottom .= relatedView.centerYAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testViewArrayBottomEqualTorelatedViewCenterYPlusConstant() {
        let constraints = viewArray.bottom .= relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10)
    }

    func testViewArrayBottomEqualTorelatedViewCenterYMinusConstant() {
        let constraints = viewArray.bottom .= relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayBottomEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = viewArray.bottom .= relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = viewArray.bottom .= 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = viewArray.bottom .= relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayBottomEqualTorelatedViewCenterYWithPriority() {
        let constraints = viewArray.bottom .= relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = viewArray.bottom .= relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, priority: 300)
    }

    func testViewArrayBottomEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayBottomEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom .= (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom .= 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom .= 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom .= (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayBottomEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom .= 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterY() {
        let constraints = viewArray.bottom ≥ relatedView.centerYAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYPlusConstant() {
        let constraints = viewArray.bottom ≥ relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYMinusConstant() {
        let constraints = viewArray.bottom ≥ relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = viewArray.bottom ≥ relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = viewArray.bottom ≥ relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYWithPriority() {
        let constraints = viewArray.bottom ≥ relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = viewArray.bottom ≥ relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom ≥ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom ≥ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterY() {
        let constraints = viewArray.bottom ≤ relatedView.centerYAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYPlusConstant() {
        let constraints = viewArray.bottom ≤ relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYMinusConstant() {
        let constraints = viewArray.bottom ≤ relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = viewArray.bottom ≤ relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = viewArray.bottom ≤ relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYWithPriority() {
        let constraints = viewArray.bottom ≤ relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = viewArray.bottom ≤ relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom ≤ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom ≤ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.bottomBottom <=> relatedViewArrayCenterY
    // MARK: Equal

    func testViewArrayBottomEqualTorelatedViewArrayCenterY() {
        let constraints = viewArray.bottom .= relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY)
    }

    // MARK: Equal with constant
    func testViewArrayBottomEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = viewArray.bottom .= relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, constant: 10)
    }

    func testViewArrayBottomEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = viewArray.bottom .= relatedViewArray.centerYAnchor .- 10
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayBottomEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = viewArray.bottom .= relatedViewArray.centerYAnchor .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = viewArray.bottom .= 3 .* relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = viewArray.bottom .= relatedViewArray.centerYAnchor ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayBottomEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = viewArray.bottom .= relatedViewArray.centerYAnchor ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = viewArray.bottom .= relatedViewArray.centerYAnchor ~ 300
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, priority: 300)
    }

    func testViewArrayBottomEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayBottomEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom .= (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom .= 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom .= 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom .= (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayBottomEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom .= (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom .= 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom .= 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom .= (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterY() {
        let constraints = viewArray.bottom ≥ relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = viewArray.bottom ≥ relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = viewArray.bottom ≥ relatedViewArray.centerYAnchor .- 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = viewArray.bottom ≥ relatedViewArray.centerYAnchor .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = viewArray.bottom ≥ 3 .* relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = viewArray.bottom ≥ relatedViewArray.centerYAnchor ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = viewArray.bottom ≥ relatedViewArray.centerYAnchor ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = viewArray.bottom ≥ relatedViewArray.centerYAnchor ~ 300
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, priority: 300)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom ≥ 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom ≥ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterY() {
        let constraints = viewArray.bottom ≤ relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = viewArray.bottom ≤ relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = viewArray.bottom ≤ relatedViewArray.centerYAnchor .- 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = viewArray.bottom ≤ relatedViewArray.centerYAnchor .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = viewArray.bottom ≤ 3 .* relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = viewArray.bottom ≤ relatedViewArray.centerYAnchor ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = viewArray.bottom ≤ relatedViewArray.centerYAnchor ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = viewArray.bottom ≤ relatedViewArray.centerYAnchor ~ 300
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, priority: 300)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom ≤ 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom ≤ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.bottomBottom <=> relatedViewBottom
    // MARK: Equal

    func testViewArrayBottomEqualTorelatedViewBottom() {
        let constraints = viewArray.bottom .= relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom)
    }

    func testViewArrayBottomEqualTorelatedViewBottomInversedInference() {
        let constraints = viewArray.bottomAnchor .= relatedView
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom)
    }
    // MARK: Equal with constant
    func testViewArrayBottomEqualTorelatedViewBottomPlusConstant() {
        let constraints = viewArray.bottom .= relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testViewArrayBottomEqualTorelatedViewBottomMinusConstant() {
        let constraints = viewArray.bottom .= relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayBottomEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = viewArray.bottom .= relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = viewArray.bottom .= 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewBottomDividedByConstant() {
        let constraints = viewArray.bottom .= relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayBottomEqualTorelatedViewBottomWithPriority() {
        let constraints = viewArray.bottom .= relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = viewArray.bottom .= relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testViewArrayBottomEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayBottomEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom .= (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom .= 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom .= 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom .= (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayBottomEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom .= 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottom() {
        let constraints = viewArray.bottom ≥ relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomInversedInference() {
        let constraints = viewArray.bottomAnchor ≥ relatedView
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }
    // MARK: GreaterThanOrEqual with constant
    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstant() {
        let constraints = viewArray.bottom ≥ relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomMinusConstant() {
        let constraints = viewArray.bottom ≥ relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = viewArray.bottom ≥ relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomDividedByConstant() {
        let constraints = viewArray.bottom ≥ relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomWithPriority() {
        let constraints = viewArray.bottom ≥ relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = viewArray.bottom ≥ relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom ≥ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom ≥ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayBottomLessThanOrEqualTorelatedViewBottom() {
        let constraints = viewArray.bottom ≤ relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomInversedInference() {
        let constraints = viewArray.bottomAnchor ≤ relatedView
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }
    // MARK: LessThanOrEqual with constant
    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstant() {
        let constraints = viewArray.bottom ≤ relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomMinusConstant() {
        let constraints = viewArray.bottom ≤ relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = viewArray.bottom ≤ relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomDividedByConstant() {
        let constraints = viewArray.bottom ≤ relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomWithPriority() {
        let constraints = viewArray.bottom ≤ relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = viewArray.bottom ≤ relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom ≤ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom ≤ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.bottomBottom <=> relatedViewArrayBottom
    // MARK: Equal

    func testViewArrayBottomEqualTorelatedViewArrayBottom() {
        let constraints = viewArray.bottom .= relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom)
    }

    func testViewArrayBottomEqualTorelatedViewArrayBottomInversedInference() {
        let constraints = viewArray.bottomAnchor .= relatedViewArray
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom)
    }
    // MARK: Equal with constant
    func testViewArrayBottomEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = viewArray.bottom .= relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10)
    }

    func testViewArrayBottomEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = viewArray.bottom .= relatedViewArray.bottomAnchor .- 10
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayBottomEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = viewArray.bottom .= relatedViewArray.bottomAnchor .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = viewArray.bottom .= 3 .* relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = viewArray.bottom .= relatedViewArray.bottomAnchor ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayBottomEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = viewArray.bottom .= relatedViewArray.bottomAnchor ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = viewArray.bottom .= relatedViewArray.bottomAnchor ~ 300
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, priority: 300)
    }

    func testViewArrayBottomEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayBottomEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom .= (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom .= 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom .= 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom .= (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayBottomEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom .= (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom .= 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom .= 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom .= (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottom() {
        let constraints = viewArray.bottom ≥ relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomInversedInference() {
        let constraints = viewArray.bottomAnchor ≥ relatedViewArray
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom)
    }
    // MARK: GreaterThanOrEqual with constant
    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = viewArray.bottom ≥ relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = viewArray.bottom ≥ relatedViewArray.bottomAnchor .- 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = viewArray.bottom ≥ relatedViewArray.bottomAnchor .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = viewArray.bottom ≥ 3 .* relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = viewArray.bottom ≥ relatedViewArray.bottomAnchor ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = viewArray.bottom ≥ relatedViewArray.bottomAnchor ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = viewArray.bottom ≥ relatedViewArray.bottomAnchor ~ 300
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, priority: 300)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom ≥ 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom ≥ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottom() {
        let constraints = viewArray.bottom ≤ relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomInversedInference() {
        let constraints = viewArray.bottomAnchor ≤ relatedViewArray
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom)
    }
    // MARK: LessThanOrEqual with constant
    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = viewArray.bottom ≤ relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = viewArray.bottom ≤ relatedViewArray.bottomAnchor .- 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = viewArray.bottom ≤ relatedViewArray.bottomAnchor .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = viewArray.bottom ≤ 3 .* relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = viewArray.bottom ≤ relatedViewArray.bottomAnchor ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = viewArray.bottom ≤ relatedViewArray.bottomAnchor ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = viewArray.bottom ≤ relatedViewArray.bottomAnchor ~ 300
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, priority: 300)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom ≤ 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom ≤ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
// sourcery:end
}
