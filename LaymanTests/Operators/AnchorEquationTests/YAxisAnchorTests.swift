//
//  YAxisAnchorTests.swift
//  Layman
//
//  Created by Brian Strobach on 1/24/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// swiftlint:disable file_length type_body_length

@testable import Layman
import XCTest

// sourcery: anchorEquationTest
// sourcery: lhsAttributes = top, lhsAttributes = centerY, lhsAttributes = bottom
// sourcery: rhsAttributes = top, rhsAttributes = centerY, rhsAttributes = bottom
// sourcery: lhsItem = view1
class YAxisAnchorTests: LaymanTestCase {

// sourcery:inline:auto:YAxisAnchorTests.EquationTests
    // MARK: view1.topTop <=> relatedViewTop
    // MARK: Equal

    func testView1TopEqualTorelatedViewTop() {
        let constraints = view1.top .= relatedView.topAnchor
        constraints.assert(view1, .top, .equal, relatedView, .top)
    }

    func testView1TopEqualTorelatedViewTopInversedInference() {
        let constraints = view1.topAnchor .= relatedView
        constraints.assert(view1, .top, .equal, relatedView, .top)
    }
    // MARK: Equal with constant
    func testView1TopEqualTorelatedViewTopPlusConstant() {
        let constraints = view1.top .= relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10)
    }

    func testView1TopEqualTorelatedViewTopMinusConstant() {
        let constraints = view1.top .= relatedView.topAnchor .- 10
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TopEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = view1.top .= relatedView.topAnchor .* 3
        constraints.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = view1.top .= 3 .* relatedView.topAnchor
        constraints.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewTopDividedByConstant() {
        let constraints = view1.top .= relatedView.topAnchor ./ 2
        constraints.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1TopEqualTorelatedViewTopWithPriority() {
        let constraints = view1.top .= relatedView.topAnchor ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, priority: .low)
    }

    func testView1TopEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = view1.top .= relatedView.topAnchor ~ 300
        constraints.assert(view1, .top, .equal, relatedView, .top, priority: 300)
    }

    func testView1TopEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = view1.top .= relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1TopEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = view1.top .= (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = view1.top .= 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = view1.top .= 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = view1.top .= (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1TopEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top .= (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top .= 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top .= 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top .= (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1TopEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top .= (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top .= 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top .= 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top .= (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1TopGreaterThanOrEqualTorelatedViewTop() {
        let constraints = view1.top ≥ relatedView.topAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewTopInversedInference() {
        let constraints = view1.topAnchor ≥ relatedView
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
    }
    // MARK: GreaterThanOrEqual with constant
    func testView1TopGreaterThanOrEqualTorelatedViewTopPlusConstant() {
        let constraints = view1.top ≥ relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewTopMinusConstant() {
        let constraints = view1.top ≥ relatedView.topAnchor .- 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TopGreaterThanOrEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = view1.top ≥ relatedView.topAnchor .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = view1.top ≥ 3 .* relatedView.topAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewTopDividedByConstant() {
        let constraints = view1.top ≥ relatedView.topAnchor ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1TopGreaterThanOrEqualTorelatedViewTopWithPriority() {
        let constraints = view1.top ≥ relatedView.topAnchor ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = view1.top ≥ relatedView.topAnchor ~ 300
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = view1.top ≥ relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1TopGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = view1.top ≥ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = view1.top ≥ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = view1.top ≥ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = view1.top ≥ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1TopGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top ≥ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TopGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1TopLessThanOrEqualTorelatedViewTop() {
        let constraints = view1.top ≤ relatedView.topAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
    }

    func testView1TopLessThanOrEqualTorelatedViewTopInversedInference() {
        let constraints = view1.topAnchor ≤ relatedView
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
    }
    // MARK: LessThanOrEqual with constant
    func testView1TopLessThanOrEqualTorelatedViewTopPlusConstant() {
        let constraints = view1.top ≤ relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1TopLessThanOrEqualTorelatedViewTopMinusConstant() {
        let constraints = view1.top ≤ relatedView.topAnchor .- 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TopLessThanOrEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = view1.top ≤ relatedView.topAnchor .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = view1.top ≤ 3 .* relatedView.topAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewTopDividedByConstant() {
        let constraints = view1.top ≤ relatedView.topAnchor ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1TopLessThanOrEqualTorelatedViewTopWithPriority() {
        let constraints = view1.top ≤ relatedView.topAnchor ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = view1.top ≤ relatedView.topAnchor ~ 300
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1TopLessThanOrEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = view1.top ≤ relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1TopLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = view1.top ≤ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = view1.top ≤ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = view1.top ≤ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = view1.top ≤ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1TopLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top ≤ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TopLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.topTop <=> relatedViewArrayTop
    // MARK: Equal

    func testView1TopEqualTorelatedViewArrayTop() {
        let constraints = view1.top .= relatedViewArray.topAnchor
        constraints.assert(view1, .top, .equal, relatedViewArray, .top)
    }

    func testView1TopEqualTorelatedViewArrayTopInversedInference() {
        let constraints = view1.topAnchor .= relatedViewArray
        constraints.assert(view1, .top, .equal, relatedViewArray, .top)
    }
    // MARK: Equal with constant
    func testView1TopEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = view1.top .= relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10)
    }

    func testView1TopEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = view1.top .= relatedViewArray.topAnchor .- 10
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TopEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = view1.top .= relatedViewArray.topAnchor .* 3
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = view1.top .= 3 .* relatedViewArray.topAnchor
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = view1.top .= relatedViewArray.topAnchor ./ 2
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1TopEqualTorelatedViewArrayTopWithPriority() {
        let constraints = view1.top .= relatedViewArray.topAnchor ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, priority: .low)
    }

    func testView1TopEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = view1.top .= relatedViewArray.topAnchor ~ 300
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, priority: 300)
    }

    func testView1TopEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = view1.top .= relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1TopEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = view1.top .= (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = view1.top .= 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = view1.top .= 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = view1.top .= (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1TopEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top .= (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top .= 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top .= 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top .= (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1TopEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top .= (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top .= 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top .= 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top .= (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1TopGreaterThanOrEqualTorelatedViewArrayTop() {
        let constraints = view1.top ≥ relatedViewArray.topAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopInversedInference() {
        let constraints = view1.topAnchor ≥ relatedViewArray
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top)
    }
    // MARK: GreaterThanOrEqual with constant
    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = view1.top ≥ relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = view1.top ≥ relatedViewArray.topAnchor .- 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = view1.top ≥ relatedViewArray.topAnchor .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = view1.top ≥ 3 .* relatedViewArray.topAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = view1.top ≥ relatedViewArray.topAnchor ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopWithPriority() {
        let constraints = view1.top ≥ relatedViewArray.topAnchor ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = view1.top ≥ relatedViewArray.topAnchor ~ 300
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, priority: 300)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = view1.top ≥ relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = view1.top ≥ (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = view1.top ≥ 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = view1.top ≥ 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = view1.top ≥ (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top ≥ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top ≥ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top ≥ 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top ≥ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1TopLessThanOrEqualTorelatedViewArrayTop() {
        let constraints = view1.top ≤ relatedViewArray.topAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayTopInversedInference() {
        let constraints = view1.topAnchor ≤ relatedViewArray
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top)
    }
    // MARK: LessThanOrEqual with constant
    func testView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = view1.top ≤ relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = view1.top ≤ relatedViewArray.topAnchor .- 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TopLessThanOrEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = view1.top ≤ relatedViewArray.topAnchor .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = view1.top ≤ 3 .* relatedViewArray.topAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = view1.top ≤ relatedViewArray.topAnchor ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1TopLessThanOrEqualTorelatedViewArrayTopWithPriority() {
        let constraints = view1.top ≤ relatedViewArray.topAnchor ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = view1.top ≤ relatedViewArray.topAnchor ~ 300
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, priority: 300)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = view1.top ≤ relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = view1.top ≤ (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = view1.top ≤ 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = view1.top ≤ 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = view1.top ≤ (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top ≤ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top ≤ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top ≤ 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top ≤ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.topTop <=> relatedViewCenterY
    // MARK: Equal

    func testView1TopEqualTorelatedViewCenterY() {
        let constraints = view1.top .= relatedView.centerYAnchor
        constraints.assert(view1, .top, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testView1TopEqualTorelatedViewCenterYPlusConstant() {
        let constraints = view1.top .= relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10)
    }

    func testView1TopEqualTorelatedViewCenterYMinusConstant() {
        let constraints = view1.top .= relatedView.centerYAnchor .- 10
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TopEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = view1.top .= relatedView.centerYAnchor .* 3
        constraints.assert(view1, .top, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = view1.top .= 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .top, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = view1.top .= relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .top, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1TopEqualTorelatedViewCenterYWithPriority() {
        let constraints = view1.top .= relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .centerY, priority: .low)
    }

    func testView1TopEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = view1.top .= relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .top, .equal, relatedView, .centerY, priority: 300)
    }

    func testView1TopEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = view1.top .= relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1TopEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.top .= (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.top .= 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.top .= 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = view1.top .= (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1TopEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top .= 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1TopEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top .= 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1TopGreaterThanOrEqualTorelatedViewCenterY() {
        let constraints = view1.top ≥ relatedView.centerYAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1TopGreaterThanOrEqualTorelatedViewCenterYPlusConstant() {
        let constraints = view1.top ≥ relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewCenterYMinusConstant() {
        let constraints = view1.top ≥ relatedView.centerYAnchor .- 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TopGreaterThanOrEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = view1.top ≥ relatedView.centerYAnchor .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = view1.top ≥ 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = view1.top ≥ relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1TopGreaterThanOrEqualTorelatedViewCenterYWithPriority() {
        let constraints = view1.top ≥ relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = view1.top ≥ relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = view1.top ≥ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1TopGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.top ≥ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.top ≥ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.top ≥ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = view1.top ≥ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1TopGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TopGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1TopLessThanOrEqualTorelatedViewCenterY() {
        let constraints = view1.top ≤ relatedView.centerYAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testView1TopLessThanOrEqualTorelatedViewCenterYPlusConstant() {
        let constraints = view1.top ≤ relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1TopLessThanOrEqualTorelatedViewCenterYMinusConstant() {
        let constraints = view1.top ≤ relatedView.centerYAnchor .- 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TopLessThanOrEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = view1.top ≤ relatedView.centerYAnchor .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = view1.top ≤ 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = view1.top ≤ relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1TopLessThanOrEqualTorelatedViewCenterYWithPriority() {
        let constraints = view1.top ≤ relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = view1.top ≤ relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1TopLessThanOrEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = view1.top ≤ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1TopLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.top ≤ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.top ≤ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.top ≤ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = view1.top ≤ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1TopLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TopLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.topTop <=> relatedViewArrayCenterY
    // MARK: Equal

    func testView1TopEqualTorelatedViewArrayCenterY() {
        let constraints = view1.top .= relatedViewArray.centerYAnchor
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY)
    }

    // MARK: Equal with constant
    func testView1TopEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = view1.top .= relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, constant: 10)
    }

    func testView1TopEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = view1.top .= relatedViewArray.centerYAnchor .- 10
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TopEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = view1.top .= relatedViewArray.centerYAnchor .* 3
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = view1.top .= 3 .* relatedViewArray.centerYAnchor
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = view1.top .= relatedViewArray.centerYAnchor ./ 2
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1TopEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = view1.top .= relatedViewArray.centerYAnchor ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, priority: .low)
    }

    func testView1TopEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = view1.top .= relatedViewArray.centerYAnchor ~ 300
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, priority: 300)
    }

    func testView1TopEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = view1.top .= relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1TopEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.top .= (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.top .= 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.top .= 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = view1.top .= (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1TopEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top .= (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top .= 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top .= 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top .= (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1TopEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top .= (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top .= 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top .= 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top .= (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterY() {
        let constraints = view1.top ≥ relatedViewArray.centerYAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = view1.top ≥ relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = view1.top ≥ relatedViewArray.centerYAnchor .- 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = view1.top ≥ relatedViewArray.centerYAnchor .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = view1.top ≥ 3 .* relatedViewArray.centerYAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = view1.top ≥ relatedViewArray.centerYAnchor ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = view1.top ≥ relatedViewArray.centerYAnchor ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = view1.top ≥ relatedViewArray.centerYAnchor ~ 300
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, priority: 300)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = view1.top ≥ relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.top ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.top ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.top ≥ 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = view1.top ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top ≥ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1TopLessThanOrEqualTorelatedViewArrayCenterY() {
        let constraints = view1.top ≤ relatedViewArray.centerYAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = view1.top ≤ relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = view1.top ≤ relatedViewArray.centerYAnchor .- 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = view1.top ≤ relatedViewArray.centerYAnchor .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = view1.top ≤ 3 .* relatedViewArray.centerYAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = view1.top ≤ relatedViewArray.centerYAnchor ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = view1.top ≤ relatedViewArray.centerYAnchor ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = view1.top ≤ relatedViewArray.centerYAnchor ~ 300
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, priority: 300)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = view1.top ≤ relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.top ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.top ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.top ≤ 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = view1.top ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top ≤ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.topTop <=> relatedViewBottom
    // MARK: Equal

    func testView1TopEqualTorelatedViewBottom() {
        let constraints = view1.top .= relatedView.bottomAnchor
        constraints.assert(view1, .top, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testView1TopEqualTorelatedViewBottomPlusConstant() {
        let constraints = view1.top .= relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10)
    }

    func testView1TopEqualTorelatedViewBottomMinusConstant() {
        let constraints = view1.top .= relatedView.bottomAnchor .- 10
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TopEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = view1.top .= relatedView.bottomAnchor .* 3
        constraints.assert(view1, .top, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = view1.top .= 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .top, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewBottomDividedByConstant() {
        let constraints = view1.top .= relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .top, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1TopEqualTorelatedViewBottomWithPriority() {
        let constraints = view1.top .= relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .bottom, priority: .low)
    }

    func testView1TopEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = view1.top .= relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .top, .equal, relatedView, .bottom, priority: 300)
    }

    func testView1TopEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = view1.top .= relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1TopEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.top .= (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.top .= 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.top .= 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = view1.top .= (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1TopEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top .= 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1TopEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top .= 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1TopGreaterThanOrEqualTorelatedViewBottom() {
        let constraints = view1.top ≥ relatedView.bottomAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1TopGreaterThanOrEqualTorelatedViewBottomPlusConstant() {
        let constraints = view1.top ≥ relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewBottomMinusConstant() {
        let constraints = view1.top ≥ relatedView.bottomAnchor .- 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TopGreaterThanOrEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = view1.top ≥ relatedView.bottomAnchor .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = view1.top ≥ 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewBottomDividedByConstant() {
        let constraints = view1.top ≥ relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1TopGreaterThanOrEqualTorelatedViewBottomWithPriority() {
        let constraints = view1.top ≥ relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = view1.top ≥ relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = view1.top ≥ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1TopGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.top ≥ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.top ≥ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.top ≥ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = view1.top ≥ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1TopGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TopGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1TopLessThanOrEqualTorelatedViewBottom() {
        let constraints = view1.top ≤ relatedView.bottomAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testView1TopLessThanOrEqualTorelatedViewBottomPlusConstant() {
        let constraints = view1.top ≤ relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1TopLessThanOrEqualTorelatedViewBottomMinusConstant() {
        let constraints = view1.top ≤ relatedView.bottomAnchor .- 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TopLessThanOrEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = view1.top ≤ relatedView.bottomAnchor .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = view1.top ≤ 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewBottomDividedByConstant() {
        let constraints = view1.top ≤ relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1TopLessThanOrEqualTorelatedViewBottomWithPriority() {
        let constraints = view1.top ≤ relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = view1.top ≤ relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1TopLessThanOrEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = view1.top ≤ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1TopLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.top ≤ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.top ≤ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.top ≤ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = view1.top ≤ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1TopLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TopLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.topTop <=> relatedViewArrayBottom
    // MARK: Equal

    func testView1TopEqualTorelatedViewArrayBottom() {
        let constraints = view1.top .= relatedViewArray.bottomAnchor
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom)
    }

    // MARK: Equal with constant
    func testView1TopEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = view1.top .= relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, constant: 10)
    }

    func testView1TopEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = view1.top .= relatedViewArray.bottomAnchor .- 10
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TopEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = view1.top .= relatedViewArray.bottomAnchor .* 3
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = view1.top .= 3 .* relatedViewArray.bottomAnchor
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = view1.top .= relatedViewArray.bottomAnchor ./ 2
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1TopEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = view1.top .= relatedViewArray.bottomAnchor ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, priority: .low)
    }

    func testView1TopEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = view1.top .= relatedViewArray.bottomAnchor ~ 300
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, priority: 300)
    }

    func testView1TopEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = view1.top .= relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1TopEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.top .= (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.top .= 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.top .= 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testView1TopEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = view1.top .= (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1TopEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top .= (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top .= 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top .= 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top .= (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1TopEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top .= (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top .= 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top .= 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top .= (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottom() {
        let constraints = view1.top ≥ relatedViewArray.bottomAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = view1.top ≥ relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = view1.top ≥ relatedViewArray.bottomAnchor .- 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = view1.top ≥ relatedViewArray.bottomAnchor .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = view1.top ≥ 3 .* relatedViewArray.bottomAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = view1.top ≥ relatedViewArray.bottomAnchor ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = view1.top ≥ relatedViewArray.bottomAnchor ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = view1.top ≥ relatedViewArray.bottomAnchor ~ 300
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, priority: 300)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = view1.top ≥ relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.top ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.top ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.top ≥ 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = view1.top ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top ≥ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1TopLessThanOrEqualTorelatedViewArrayBottom() {
        let constraints = view1.top ≤ relatedViewArray.bottomAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testView1TopLessThanOrEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = view1.top ≤ relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = view1.top ≤ relatedViewArray.bottomAnchor .- 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TopLessThanOrEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = view1.top ≤ relatedViewArray.bottomAnchor .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = view1.top ≤ 3 .* relatedViewArray.bottomAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = view1.top ≤ relatedViewArray.bottomAnchor ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1TopLessThanOrEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = view1.top ≤ relatedViewArray.bottomAnchor ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = view1.top ≤ relatedViewArray.bottomAnchor ~ 300
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, priority: 300)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = view1.top ≤ relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1TopLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.top ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.top ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.top ≤ 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = view1.top ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1TopLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top ≤ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TopLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.centerYCenterY <=> relatedViewTop
    // MARK: Equal

    func testView1CenterYEqualTorelatedViewTop() {
        let constraints = view1.centerY .= relatedView.topAnchor
        constraints.assert(view1, .centerY, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testView1CenterYEqualTorelatedViewTopPlusConstant() {
        let constraints = view1.centerY .= relatedView.topAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10)
    }

    func testView1CenterYEqualTorelatedViewTopMinusConstant() {
        let constraints = view1.centerY .= relatedView.topAnchor .- 10
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterYEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = view1.centerY .= relatedView.topAnchor .* 3
        constraints.assert(view1, .centerY, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = view1.centerY .= 3 .* relatedView.topAnchor
        constraints.assert(view1, .centerY, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewTopDividedByConstant() {
        let constraints = view1.centerY .= relatedView.topAnchor ./ 2
        constraints.assert(view1, .centerY, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1CenterYEqualTorelatedViewTopWithPriority() {
        let constraints = view1.centerY .= relatedView.topAnchor ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .top, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = view1.centerY .= relatedView.topAnchor ~ 300
        constraints.assert(view1, .centerY, .equal, relatedView, .top, priority: 300)
    }

    func testView1CenterYEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = view1.centerY .= relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1CenterYEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY .= (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY .= 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY .= 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = view1.centerY .= (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1CenterYEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY .= (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY .= 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY .= 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY .= (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1CenterYEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1CenterYGreaterThanOrEqualTorelatedViewTop() {
        let constraints = view1.centerY ≥ relatedView.topAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1CenterYGreaterThanOrEqualTorelatedViewTopPlusConstant() {
        let constraints = view1.centerY ≥ relatedView.topAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewTopMinusConstant() {
        let constraints = view1.centerY ≥ relatedView.topAnchor .- 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterYGreaterThanOrEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = view1.centerY ≥ relatedView.topAnchor .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = view1.centerY ≥ 3 .* relatedView.topAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewTopDividedByConstant() {
        let constraints = view1.centerY ≥ relatedView.topAnchor ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1CenterYGreaterThanOrEqualTorelatedViewTopWithPriority() {
        let constraints = view1.centerY ≥ relatedView.topAnchor ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = view1.centerY ≥ relatedView.topAnchor ~ 300
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1CenterYGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY ≥ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY ≥ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY ≥ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = view1.centerY ≥ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1CenterYGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY ≥ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterYGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1CenterYLessThanOrEqualTorelatedViewTop() {
        let constraints = view1.centerY ≤ relatedView.topAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testView1CenterYLessThanOrEqualTorelatedViewTopPlusConstant() {
        let constraints = view1.centerY ≤ relatedView.topAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewTopMinusConstant() {
        let constraints = view1.centerY ≤ relatedView.topAnchor .- 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterYLessThanOrEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = view1.centerY ≤ relatedView.topAnchor .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = view1.centerY ≤ 3 .* relatedView.topAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewTopDividedByConstant() {
        let constraints = view1.centerY ≤ relatedView.topAnchor ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1CenterYLessThanOrEqualTorelatedViewTopWithPriority() {
        let constraints = view1.centerY ≤ relatedView.topAnchor ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = view1.centerY ≤ relatedView.topAnchor ~ 300
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1CenterYLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY ≤ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY ≤ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY ≤ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = view1.centerY ≤ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1CenterYLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY ≤ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterYLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.centerYCenterY <=> relatedViewArrayTop
    // MARK: Equal

    func testView1CenterYEqualTorelatedViewArrayTop() {
        let constraints = view1.centerY .= relatedViewArray.topAnchor
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top)
    }

    // MARK: Equal with constant
    func testView1CenterYEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = view1.centerY .= relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, constant: 10)
    }

    func testView1CenterYEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = view1.centerY .= relatedViewArray.topAnchor .- 10
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterYEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = view1.centerY .= relatedViewArray.topAnchor .* 3
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = view1.centerY .= 3 .* relatedViewArray.topAnchor
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = view1.centerY .= relatedViewArray.topAnchor ./ 2
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1CenterYEqualTorelatedViewArrayTopWithPriority() {
        let constraints = view1.centerY .= relatedViewArray.topAnchor ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = view1.centerY .= relatedViewArray.topAnchor ~ 300
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, priority: 300)
    }

    func testView1CenterYEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = view1.centerY .= relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1CenterYEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY .= (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY .= 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY .= 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = view1.centerY .= (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1CenterYEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY .= (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY .= 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY .= 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY .= (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1CenterYEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTop() {
        let constraints = view1.centerY ≥ relatedViewArray.topAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = view1.centerY ≥ relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = view1.centerY ≥ relatedViewArray.topAnchor .- 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = view1.centerY ≥ relatedViewArray.topAnchor .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = view1.centerY ≥ 3 .* relatedViewArray.topAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = view1.centerY ≥ relatedViewArray.topAnchor ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopWithPriority() {
        let constraints = view1.centerY ≥ relatedViewArray.topAnchor ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = view1.centerY ≥ relatedViewArray.topAnchor ~ 300
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, priority: 300)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY ≥ (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY ≥ 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY ≥ 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = view1.centerY ≥ (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY ≥ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY ≥ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY ≥ 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY ≥ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1CenterYLessThanOrEqualTorelatedViewArrayTop() {
        let constraints = view1.centerY ≤ relatedViewArray.topAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = view1.centerY ≤ relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = view1.centerY ≤ relatedViewArray.topAnchor .- 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = view1.centerY ≤ relatedViewArray.topAnchor .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = view1.centerY ≤ 3 .* relatedViewArray.topAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = view1.centerY ≤ relatedViewArray.topAnchor ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopWithPriority() {
        let constraints = view1.centerY ≤ relatedViewArray.topAnchor ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = view1.centerY ≤ relatedViewArray.topAnchor ~ 300
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, priority: 300)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY ≤ (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY ≤ 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY ≤ 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = view1.centerY ≤ (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY ≤ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY ≤ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY ≤ 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY ≤ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.centerYCenterY <=> relatedViewCenterY
    // MARK: Equal

    func testView1CenterYEqualTorelatedViewCenterY() {
        let constraints = view1.centerY .= relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY)
    }

    func testView1CenterYEqualTorelatedViewCenterYInversedInference() {
        let constraints = view1.centerYAnchor .= relatedView
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY)
    }
    // MARK: Equal with constant
    func testView1CenterYEqualTorelatedViewCenterYPlusConstant() {
        let constraints = view1.centerY .= relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10)
    }

    func testView1CenterYEqualTorelatedViewCenterYMinusConstant() {
        let constraints = view1.centerY .= relatedView.centerYAnchor .- 10
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterYEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = view1.centerY .= relatedView.centerYAnchor .* 3
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = view1.centerY .= 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = view1.centerY .= relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1CenterYEqualTorelatedViewCenterYWithPriority() {
        let constraints = view1.centerY .= relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = view1.centerY .= relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 300)
    }

    func testView1CenterYEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = view1.centerY .= relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1CenterYEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY .= (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY .= 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY .= 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = view1.centerY .= (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1CenterYEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY .= 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1CenterYEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterY() {
        let constraints = view1.centerY ≥ relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYInversedInference() {
        let constraints = view1.centerYAnchor ≥ relatedView
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }
    // MARK: GreaterThanOrEqual with constant
    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstant() {
        let constraints = view1.centerY ≥ relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYMinusConstant() {
        let constraints = view1.centerY ≥ relatedView.centerYAnchor .- 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = view1.centerY ≥ relatedView.centerYAnchor .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = view1.centerY ≥ 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = view1.centerY ≥ relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYWithPriority() {
        let constraints = view1.centerY ≥ relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = view1.centerY ≥ relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY ≥ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY ≥ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY ≥ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = view1.centerY ≥ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1CenterYLessThanOrEqualTorelatedViewCenterY() {
        let constraints = view1.centerY ≤ relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewCenterYInversedInference() {
        let constraints = view1.centerYAnchor ≤ relatedView
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }
    // MARK: LessThanOrEqual with constant
    func testView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstant() {
        let constraints = view1.centerY ≤ relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewCenterYMinusConstant() {
        let constraints = view1.centerY ≤ relatedView.centerYAnchor .- 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterYLessThanOrEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = view1.centerY ≤ relatedView.centerYAnchor .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = view1.centerY ≤ 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = view1.centerY ≤ relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1CenterYLessThanOrEqualTorelatedViewCenterYWithPriority() {
        let constraints = view1.centerY ≤ relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = view1.centerY ≤ relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY ≤ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY ≤ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY ≤ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = view1.centerY ≤ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.centerYCenterY <=> relatedViewArrayCenterY
    // MARK: Equal

    func testView1CenterYEqualTorelatedViewArrayCenterY() {
        let constraints = view1.centerY .= relatedViewArray.centerYAnchor
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY)
    }

    func testView1CenterYEqualTorelatedViewArrayCenterYInversedInference() {
        let constraints = view1.centerYAnchor .= relatedViewArray
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY)
    }
    // MARK: Equal with constant
    func testView1CenterYEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = view1.centerY .= relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10)
    }

    func testView1CenterYEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = view1.centerY .= relatedViewArray.centerYAnchor .- 10
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterYEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = view1.centerY .= relatedViewArray.centerYAnchor .* 3
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = view1.centerY .= 3 .* relatedViewArray.centerYAnchor
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = view1.centerY .= relatedViewArray.centerYAnchor ./ 2
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1CenterYEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = view1.centerY .= relatedViewArray.centerYAnchor ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = view1.centerY .= relatedViewArray.centerYAnchor ~ 300
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, priority: 300)
    }

    func testView1CenterYEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = view1.centerY .= relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1CenterYEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY .= (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY .= 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY .= 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = view1.centerY .= (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1CenterYEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY .= (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY .= 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY .= 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY .= (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1CenterYEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterY() {
        let constraints = view1.centerY ≥ relatedViewArray.centerYAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYInversedInference() {
        let constraints = view1.centerYAnchor ≥ relatedViewArray
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY)
    }
    // MARK: GreaterThanOrEqual with constant
    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = view1.centerY ≥ relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = view1.centerY ≥ relatedViewArray.centerYAnchor .- 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = view1.centerY ≥ relatedViewArray.centerYAnchor .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = view1.centerY ≥ 3 .* relatedViewArray.centerYAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = view1.centerY ≥ relatedViewArray.centerYAnchor ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = view1.centerY ≥ relatedViewArray.centerYAnchor ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = view1.centerY ≥ relatedViewArray.centerYAnchor ~ 300
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, priority: 300)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY ≥ 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = view1.centerY ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY ≥ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterY() {
        let constraints = view1.centerY ≤ relatedViewArray.centerYAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYInversedInference() {
        let constraints = view1.centerYAnchor ≤ relatedViewArray
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY)
    }
    // MARK: LessThanOrEqual with constant
    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = view1.centerY ≤ relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = view1.centerY ≤ relatedViewArray.centerYAnchor .- 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = view1.centerY ≤ relatedViewArray.centerYAnchor .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = view1.centerY ≤ 3 .* relatedViewArray.centerYAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = view1.centerY ≤ relatedViewArray.centerYAnchor ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = view1.centerY ≤ relatedViewArray.centerYAnchor ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = view1.centerY ≤ relatedViewArray.centerYAnchor ~ 300
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, priority: 300)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY ≤ 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = view1.centerY ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY ≤ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.centerYCenterY <=> relatedViewBottom
    // MARK: Equal

    func testView1CenterYEqualTorelatedViewBottom() {
        let constraints = view1.centerY .= relatedView.bottomAnchor
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testView1CenterYEqualTorelatedViewBottomPlusConstant() {
        let constraints = view1.centerY .= relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10)
    }

    func testView1CenterYEqualTorelatedViewBottomMinusConstant() {
        let constraints = view1.centerY .= relatedView.bottomAnchor .- 10
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterYEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = view1.centerY .= relatedView.bottomAnchor .* 3
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = view1.centerY .= 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewBottomDividedByConstant() {
        let constraints = view1.centerY .= relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1CenterYEqualTorelatedViewBottomWithPriority() {
        let constraints = view1.centerY .= relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = view1.centerY .= relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, priority: 300)
    }

    func testView1CenterYEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = view1.centerY .= relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1CenterYEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY .= (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY .= 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY .= 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = view1.centerY .= (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1CenterYEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY .= 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1CenterYEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1CenterYGreaterThanOrEqualTorelatedViewBottom() {
        let constraints = view1.centerY ≥ relatedView.bottomAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomPlusConstant() {
        let constraints = view1.centerY ≥ relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomMinusConstant() {
        let constraints = view1.centerY ≥ relatedView.bottomAnchor .- 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = view1.centerY ≥ relatedView.bottomAnchor .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = view1.centerY ≥ 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomDividedByConstant() {
        let constraints = view1.centerY ≥ relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomWithPriority() {
        let constraints = view1.centerY ≥ relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = view1.centerY ≥ relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY ≥ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY ≥ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY ≥ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = view1.centerY ≥ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1CenterYLessThanOrEqualTorelatedViewBottom() {
        let constraints = view1.centerY ≤ relatedView.bottomAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testView1CenterYLessThanOrEqualTorelatedViewBottomPlusConstant() {
        let constraints = view1.centerY ≤ relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewBottomMinusConstant() {
        let constraints = view1.centerY ≤ relatedView.bottomAnchor .- 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterYLessThanOrEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = view1.centerY ≤ relatedView.bottomAnchor .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = view1.centerY ≤ 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewBottomDividedByConstant() {
        let constraints = view1.centerY ≤ relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1CenterYLessThanOrEqualTorelatedViewBottomWithPriority() {
        let constraints = view1.centerY ≤ relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = view1.centerY ≤ relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1CenterYLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY ≤ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY ≤ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY ≤ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = view1.centerY ≤ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1CenterYLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterYLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.centerYCenterY <=> relatedViewArrayBottom
    // MARK: Equal

    func testView1CenterYEqualTorelatedViewArrayBottom() {
        let constraints = view1.centerY .= relatedViewArray.bottomAnchor
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom)
    }

    // MARK: Equal with constant
    func testView1CenterYEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = view1.centerY .= relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, constant: 10)
    }

    func testView1CenterYEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = view1.centerY .= relatedViewArray.bottomAnchor .- 10
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterYEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = view1.centerY .= relatedViewArray.bottomAnchor .* 3
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = view1.centerY .= 3 .* relatedViewArray.bottomAnchor
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = view1.centerY .= relatedViewArray.bottomAnchor ./ 2
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1CenterYEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = view1.centerY .= relatedViewArray.bottomAnchor ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = view1.centerY .= relatedViewArray.bottomAnchor ~ 300
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, priority: 300)
    }

    func testView1CenterYEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = view1.centerY .= relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1CenterYEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY .= (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY .= 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY .= 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testView1CenterYEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = view1.centerY .= (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1CenterYEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY .= (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY .= 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY .= 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY .= (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1CenterYEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottom() {
        let constraints = view1.centerY ≥ relatedViewArray.bottomAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = view1.centerY ≥ relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = view1.centerY ≥ relatedViewArray.bottomAnchor .- 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = view1.centerY ≥ relatedViewArray.bottomAnchor .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = view1.centerY ≥ 3 .* relatedViewArray.bottomAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = view1.centerY ≥ relatedViewArray.bottomAnchor ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = view1.centerY ≥ relatedViewArray.bottomAnchor ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = view1.centerY ≥ relatedViewArray.bottomAnchor ~ 300
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, priority: 300)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY ≥ 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = view1.centerY ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY ≥ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottom() {
        let constraints = view1.centerY ≤ relatedViewArray.bottomAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = view1.centerY ≤ relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = view1.centerY ≤ relatedViewArray.bottomAnchor .- 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = view1.centerY ≤ relatedViewArray.bottomAnchor .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = view1.centerY ≤ 3 .* relatedViewArray.bottomAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = view1.centerY ≤ relatedViewArray.bottomAnchor ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = view1.centerY ≤ relatedViewArray.bottomAnchor ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = view1.centerY ≤ relatedViewArray.bottomAnchor ~ 300
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, priority: 300)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY ≤ 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = view1.centerY ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY ≤ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.bottomBottom <=> relatedViewTop
    // MARK: Equal

    func testView1BottomEqualTorelatedViewTop() {
        let constraints = view1.bottom .= relatedView.topAnchor
        constraints.assert(view1, .bottom, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testView1BottomEqualTorelatedViewTopPlusConstant() {
        let constraints = view1.bottom .= relatedView.topAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10)
    }

    func testView1BottomEqualTorelatedViewTopMinusConstant() {
        let constraints = view1.bottom .= relatedView.topAnchor .- 10
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1BottomEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = view1.bottom .= relatedView.topAnchor .* 3
        constraints.assert(view1, .bottom, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = view1.bottom .= 3 .* relatedView.topAnchor
        constraints.assert(view1, .bottom, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewTopDividedByConstant() {
        let constraints = view1.bottom .= relatedView.topAnchor ./ 2
        constraints.assert(view1, .bottom, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1BottomEqualTorelatedViewTopWithPriority() {
        let constraints = view1.bottom .= relatedView.topAnchor ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .top, priority: .low)
    }

    func testView1BottomEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = view1.bottom .= relatedView.topAnchor ~ 300
        constraints.assert(view1, .bottom, .equal, relatedView, .top, priority: 300)
    }

    func testView1BottomEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = view1.bottom .= relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1BottomEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom .= (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom .= 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom .= 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = view1.bottom .= (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1BottomEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom .= (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom .= 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom .= 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom .= (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1BottomEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1BottomGreaterThanOrEqualTorelatedViewTop() {
        let constraints = view1.bottom ≥ relatedView.topAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1BottomGreaterThanOrEqualTorelatedViewTopPlusConstant() {
        let constraints = view1.bottom ≥ relatedView.topAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewTopMinusConstant() {
        let constraints = view1.bottom ≥ relatedView.topAnchor .- 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1BottomGreaterThanOrEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = view1.bottom ≥ relatedView.topAnchor .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = view1.bottom ≥ 3 .* relatedView.topAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewTopDividedByConstant() {
        let constraints = view1.bottom ≥ relatedView.topAnchor ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1BottomGreaterThanOrEqualTorelatedViewTopWithPriority() {
        let constraints = view1.bottom ≥ relatedView.topAnchor ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = view1.bottom ≥ relatedView.topAnchor ~ 300
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1BottomGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom ≥ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom ≥ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom ≥ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = view1.bottom ≥ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1BottomGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom ≥ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1BottomGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1BottomLessThanOrEqualTorelatedViewTop() {
        let constraints = view1.bottom ≤ relatedView.topAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testView1BottomLessThanOrEqualTorelatedViewTopPlusConstant() {
        let constraints = view1.bottom ≤ relatedView.topAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1BottomLessThanOrEqualTorelatedViewTopMinusConstant() {
        let constraints = view1.bottom ≤ relatedView.topAnchor .- 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1BottomLessThanOrEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = view1.bottom ≤ relatedView.topAnchor .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = view1.bottom ≤ 3 .* relatedView.topAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewTopDividedByConstant() {
        let constraints = view1.bottom ≤ relatedView.topAnchor ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1BottomLessThanOrEqualTorelatedViewTopWithPriority() {
        let constraints = view1.bottom ≤ relatedView.topAnchor ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = view1.bottom ≤ relatedView.topAnchor ~ 300
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1BottomLessThanOrEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1BottomLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom ≤ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom ≤ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom ≤ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = view1.bottom ≤ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1BottomLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom ≤ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1BottomLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.bottomBottom <=> relatedViewArrayTop
    // MARK: Equal

    func testView1BottomEqualTorelatedViewArrayTop() {
        let constraints = view1.bottom .= relatedViewArray.topAnchor
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top)
    }

    // MARK: Equal with constant
    func testView1BottomEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = view1.bottom .= relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, constant: 10)
    }

    func testView1BottomEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = view1.bottom .= relatedViewArray.topAnchor .- 10
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1BottomEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = view1.bottom .= relatedViewArray.topAnchor .* 3
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = view1.bottom .= 3 .* relatedViewArray.topAnchor
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = view1.bottom .= relatedViewArray.topAnchor ./ 2
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1BottomEqualTorelatedViewArrayTopWithPriority() {
        let constraints = view1.bottom .= relatedViewArray.topAnchor ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, priority: .low)
    }

    func testView1BottomEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = view1.bottom .= relatedViewArray.topAnchor ~ 300
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, priority: 300)
    }

    func testView1BottomEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = view1.bottom .= relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1BottomEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom .= (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom .= 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom .= 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = view1.bottom .= (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1BottomEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom .= (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom .= 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom .= 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom .= (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1BottomEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTop() {
        let constraints = view1.bottom ≥ relatedViewArray.topAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = view1.bottom ≥ relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = view1.bottom ≥ relatedViewArray.topAnchor .- 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = view1.bottom ≥ relatedViewArray.topAnchor .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = view1.bottom ≥ 3 .* relatedViewArray.topAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = view1.bottom ≥ relatedViewArray.topAnchor ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopWithPriority() {
        let constraints = view1.bottom ≥ relatedViewArray.topAnchor ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = view1.bottom ≥ relatedViewArray.topAnchor ~ 300
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, priority: 300)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom ≥ (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom ≥ 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom ≥ 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = view1.bottom ≥ (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom ≥ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom ≥ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom ≥ 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom ≥ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1BottomLessThanOrEqualTorelatedViewArrayTop() {
        let constraints = view1.bottom ≤ relatedViewArray.topAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testView1BottomLessThanOrEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = view1.bottom ≤ relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = view1.bottom ≤ relatedViewArray.topAnchor .- 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1BottomLessThanOrEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = view1.bottom ≤ relatedViewArray.topAnchor .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = view1.bottom ≤ 3 .* relatedViewArray.topAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = view1.bottom ≤ relatedViewArray.topAnchor ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1BottomLessThanOrEqualTorelatedViewArrayTopWithPriority() {
        let constraints = view1.bottom ≤ relatedViewArray.topAnchor ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = view1.bottom ≤ relatedViewArray.topAnchor ~ 300
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, priority: 300)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1BottomLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom ≤ (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom ≤ 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom ≤ 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = view1.bottom ≤ (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1BottomLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom ≤ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom ≤ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom ≤ 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom ≤ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1BottomLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.bottomBottom <=> relatedViewCenterY
    // MARK: Equal

    func testView1BottomEqualTorelatedViewCenterY() {
        let constraints = view1.bottom .= relatedView.centerYAnchor
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testView1BottomEqualTorelatedViewCenterYPlusConstant() {
        let constraints = view1.bottom .= relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10)
    }

    func testView1BottomEqualTorelatedViewCenterYMinusConstant() {
        let constraints = view1.bottom .= relatedView.centerYAnchor .- 10
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1BottomEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = view1.bottom .= relatedView.centerYAnchor .* 3
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = view1.bottom .= 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = view1.bottom .= relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1BottomEqualTorelatedViewCenterYWithPriority() {
        let constraints = view1.bottom .= relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, priority: .low)
    }

    func testView1BottomEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = view1.bottom .= relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, priority: 300)
    }

    func testView1BottomEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = view1.bottom .= relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1BottomEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom .= (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom .= 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom .= 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = view1.bottom .= (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1BottomEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom .= 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1BottomEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1BottomGreaterThanOrEqualTorelatedViewCenterY() {
        let constraints = view1.bottom ≥ relatedView.centerYAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYPlusConstant() {
        let constraints = view1.bottom ≥ relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYMinusConstant() {
        let constraints = view1.bottom ≥ relatedView.centerYAnchor .- 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = view1.bottom ≥ relatedView.centerYAnchor .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = view1.bottom ≥ 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = view1.bottom ≥ relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYWithPriority() {
        let constraints = view1.bottom ≥ relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = view1.bottom ≥ relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom ≥ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom ≥ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom ≥ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = view1.bottom ≥ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1BottomLessThanOrEqualTorelatedViewCenterY() {
        let constraints = view1.bottom ≤ relatedView.centerYAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testView1BottomLessThanOrEqualTorelatedViewCenterYPlusConstant() {
        let constraints = view1.bottom ≤ relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1BottomLessThanOrEqualTorelatedViewCenterYMinusConstant() {
        let constraints = view1.bottom ≤ relatedView.centerYAnchor .- 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1BottomLessThanOrEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = view1.bottom ≤ relatedView.centerYAnchor .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = view1.bottom ≤ 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = view1.bottom ≤ relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1BottomLessThanOrEqualTorelatedViewCenterYWithPriority() {
        let constraints = view1.bottom ≤ relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = view1.bottom ≤ relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1BottomLessThanOrEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1BottomLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom ≤ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom ≤ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom ≤ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = view1.bottom ≤ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1BottomLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1BottomLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.bottomBottom <=> relatedViewArrayCenterY
    // MARK: Equal

    func testView1BottomEqualTorelatedViewArrayCenterY() {
        let constraints = view1.bottom .= relatedViewArray.centerYAnchor
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY)
    }

    // MARK: Equal with constant
    func testView1BottomEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = view1.bottom .= relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, constant: 10)
    }

    func testView1BottomEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = view1.bottom .= relatedViewArray.centerYAnchor .- 10
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1BottomEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = view1.bottom .= relatedViewArray.centerYAnchor .* 3
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = view1.bottom .= 3 .* relatedViewArray.centerYAnchor
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = view1.bottom .= relatedViewArray.centerYAnchor ./ 2
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1BottomEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = view1.bottom .= relatedViewArray.centerYAnchor ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, priority: .low)
    }

    func testView1BottomEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = view1.bottom .= relatedViewArray.centerYAnchor ~ 300
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, priority: 300)
    }

    func testView1BottomEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = view1.bottom .= relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1BottomEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom .= (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom .= 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom .= 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = view1.bottom .= (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1BottomEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom .= (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom .= 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom .= 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom .= (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1BottomEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterY() {
        let constraints = view1.bottom ≥ relatedViewArray.centerYAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = view1.bottom ≥ relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = view1.bottom ≥ relatedViewArray.centerYAnchor .- 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = view1.bottom ≥ relatedViewArray.centerYAnchor .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = view1.bottom ≥ 3 .* relatedViewArray.centerYAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = view1.bottom ≥ relatedViewArray.centerYAnchor ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = view1.bottom ≥ relatedViewArray.centerYAnchor ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = view1.bottom ≥ relatedViewArray.centerYAnchor ~ 300
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, priority: 300)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom ≥ 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = view1.bottom ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom ≥ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterY() {
        let constraints = view1.bottom ≤ relatedViewArray.centerYAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = view1.bottom ≤ relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = view1.bottom ≤ relatedViewArray.centerYAnchor .- 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = view1.bottom ≤ relatedViewArray.centerYAnchor .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = view1.bottom ≤ 3 .* relatedViewArray.centerYAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = view1.bottom ≤ relatedViewArray.centerYAnchor ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = view1.bottom ≤ relatedViewArray.centerYAnchor ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = view1.bottom ≤ relatedViewArray.centerYAnchor ~ 300
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, priority: 300)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom ≤ 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = view1.bottom ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom ≤ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.bottomBottom <=> relatedViewBottom
    // MARK: Equal

    func testView1BottomEqualTorelatedViewBottom() {
        let constraints = view1.bottom .= relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom)
    }

    func testView1BottomEqualTorelatedViewBottomInversedInference() {
        let constraints = view1.bottomAnchor .= relatedView
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom)
    }
    // MARK: Equal with constant
    func testView1BottomEqualTorelatedViewBottomPlusConstant() {
        let constraints = view1.bottom .= relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testView1BottomEqualTorelatedViewBottomMinusConstant() {
        let constraints = view1.bottom .= relatedView.bottomAnchor .- 10
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1BottomEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = view1.bottom .= relatedView.bottomAnchor .* 3
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = view1.bottom .= 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewBottomDividedByConstant() {
        let constraints = view1.bottom .= relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1BottomEqualTorelatedViewBottomWithPriority() {
        let constraints = view1.bottom .= relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testView1BottomEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = view1.bottom .= relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testView1BottomEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = view1.bottom .= relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1BottomEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom .= (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom .= 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom .= 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = view1.bottom .= (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1BottomEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom .= 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1BottomEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1BottomGreaterThanOrEqualTorelatedViewBottom() {
        let constraints = view1.bottom ≥ relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewBottomInversedInference() {
        let constraints = view1.bottomAnchor ≥ relatedView
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }
    // MARK: GreaterThanOrEqual with constant
    func testView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstant() {
        let constraints = view1.bottom ≥ relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewBottomMinusConstant() {
        let constraints = view1.bottom ≥ relatedView.bottomAnchor .- 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1BottomGreaterThanOrEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = view1.bottom ≥ relatedView.bottomAnchor .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = view1.bottom ≥ 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewBottomDividedByConstant() {
        let constraints = view1.bottom ≥ relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1BottomGreaterThanOrEqualTorelatedViewBottomWithPriority() {
        let constraints = view1.bottom ≥ relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = view1.bottom ≥ relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom ≥ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom ≥ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom ≥ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = view1.bottom ≥ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1BottomLessThanOrEqualTorelatedViewBottom() {
        let constraints = view1.bottom ≤ relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    func testView1BottomLessThanOrEqualTorelatedViewBottomInversedInference() {
        let constraints = view1.bottomAnchor ≤ relatedView
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }
    // MARK: LessThanOrEqual with constant
    func testView1BottomLessThanOrEqualTorelatedViewBottomPlusConstant() {
        let constraints = view1.bottom ≤ relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1BottomLessThanOrEqualTorelatedViewBottomMinusConstant() {
        let constraints = view1.bottom ≤ relatedView.bottomAnchor .- 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1BottomLessThanOrEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = view1.bottom ≤ relatedView.bottomAnchor .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = view1.bottom ≤ 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewBottomDividedByConstant() {
        let constraints = view1.bottom ≤ relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1BottomLessThanOrEqualTorelatedViewBottomWithPriority() {
        let constraints = view1.bottom ≤ relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = view1.bottom ≤ relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1BottomLessThanOrEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1BottomLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom ≤ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom ≤ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom ≤ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = view1.bottom ≤ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1BottomLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1BottomLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.bottomBottom <=> relatedViewArrayBottom
    // MARK: Equal

    func testView1BottomEqualTorelatedViewArrayBottom() {
        let constraints = view1.bottom .= relatedViewArray.bottomAnchor
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom)
    }

    func testView1BottomEqualTorelatedViewArrayBottomInversedInference() {
        let constraints = view1.bottomAnchor .= relatedViewArray
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom)
    }
    // MARK: Equal with constant
    func testView1BottomEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = view1.bottom .= relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10)
    }

    func testView1BottomEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = view1.bottom .= relatedViewArray.bottomAnchor .- 10
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1BottomEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = view1.bottom .= relatedViewArray.bottomAnchor .* 3
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = view1.bottom .= 3 .* relatedViewArray.bottomAnchor
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = view1.bottom .= relatedViewArray.bottomAnchor ./ 2
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1BottomEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = view1.bottom .= relatedViewArray.bottomAnchor ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, priority: .low)
    }

    func testView1BottomEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = view1.bottom .= relatedViewArray.bottomAnchor ~ 300
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, priority: 300)
    }

    func testView1BottomEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = view1.bottom .= relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1BottomEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom .= (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom .= 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom .= 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testView1BottomEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = view1.bottom .= (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1BottomEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom .= (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom .= 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom .= 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom .= (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1BottomEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottom() {
        let constraints = view1.bottom ≥ relatedViewArray.bottomAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomInversedInference() {
        let constraints = view1.bottomAnchor ≥ relatedViewArray
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom)
    }
    // MARK: GreaterThanOrEqual with constant
    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = view1.bottom ≥ relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = view1.bottom ≥ relatedViewArray.bottomAnchor .- 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = view1.bottom ≥ relatedViewArray.bottomAnchor .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = view1.bottom ≥ 3 .* relatedViewArray.bottomAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = view1.bottom ≥ relatedViewArray.bottomAnchor ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = view1.bottom ≥ relatedViewArray.bottomAnchor ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = view1.bottom ≥ relatedViewArray.bottomAnchor ~ 300
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, priority: 300)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom ≥ 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = view1.bottom ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom ≥ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1BottomLessThanOrEqualTorelatedViewArrayBottom() {
        let constraints = view1.bottom ≤ relatedViewArray.bottomAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomInversedInference() {
        let constraints = view1.bottomAnchor ≤ relatedViewArray
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom)
    }
    // MARK: LessThanOrEqual with constant
    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = view1.bottom ≤ relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = view1.bottom ≤ relatedViewArray.bottomAnchor .- 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = view1.bottom ≤ relatedViewArray.bottomAnchor .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = view1.bottom ≤ 3 .* relatedViewArray.bottomAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = view1.bottom ≤ relatedViewArray.bottomAnchor ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = view1.bottom ≤ relatedViewArray.bottomAnchor ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = view1.bottom ≤ relatedViewArray.bottomAnchor ~ 300
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, priority: 300)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom ≤ 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = view1.bottom ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom ≤ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
// sourcery:end
}
