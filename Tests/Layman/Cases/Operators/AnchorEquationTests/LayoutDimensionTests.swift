//
//  LayoutDimensionTests.swift
//  Layman
//
//  Created by Brian Strobach on 1/24/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// swiftlint:disable file_length type_body_length

@testable import Layman
import XCTest

// sourcery: anchorEquationTest
// sourcery: lhsAttributes = width, lhsAttributes = height
// sourcery: rhsAttributes = width, rhsAttributes = height
// sourcery: lhsItem = view1
class LayoutDimensionTests: LaymanTestCase {

// sourcery:inline:auto:LayoutDimensionTests.EquationTests
    // MARK: view1.widthWidth <=> relatedViewWidth
    // MARK: Equal

    func testView1WidthEqualTorelatedViewWidth() {
        let constraints = view1.width .= relatedView.width
        constraints.assert(view1, .width, .equal, relatedView, .width)
    }

    func testView1WidthEqualTorelatedViewWidthInversedInference() {
        let constraints = view1.width .= relatedView
        constraints.assert(view1, .width, .equal, relatedView, .width)
    }
    // MARK: Equal with constant
    func testView1WidthEqualTorelatedViewWidthPlusConstant() {
        let constraints = view1.width .= relatedView.width .+ 10
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10)
    }

    func testView1WidthEqualTorelatedViewWidthMinusConstant() {
        let constraints = view1.width .= relatedView.width .- 10
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1WidthEqualTorelatedViewWidthMultiplyingConstant() {
        let constraints = view1.width .= relatedView.width .* 3
        constraints.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewWidthMultipliedByConstant() {
        let constraints = view1.width .= 3 .* relatedView.width
        constraints.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewWidthDividedByConstant() {
        let constraints = view1.width .= relatedView.width ./ 2
        constraints.assert(view1, .width, .equal, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1WidthEqualTorelatedViewWidthWithPriority() {
        let constraints = view1.width .= relatedView.width ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, priority: .low)
    }

    func testView1WidthEqualTorelatedViewWidthWithPriorityLiteral() {
        let constraints = view1.width .= relatedView.width ~ 300
        constraints.assert(view1, .width, .equal, relatedView, .width, priority: 300)
    }

    func testView1WidthEqualTorelatedViewWidthWithPriorityArithmetic() {
        let constraints = view1.width .= relatedView.width ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1WidthEqualTorelatedViewWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.width .= (relatedView.width .+ 10) .* 3
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.width .= 3 .* (relatedView.width .+ 10)
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.width .= 3 .* relatedView.width .+ 10
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewWidthPlusConstantDividedByConstant() {
        let constraints = view1.width .= (relatedView.width .+ 10) ./ 2
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1WidthEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1WidthEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1WidthEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.width .= (relatedView.width .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.width .= 3 .* (relatedView.width .+ 10) ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.width .= 3 .* relatedView.width .+ 10 ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1WidthEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.width .= (relatedView.width .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1WidthLessThanOrEqualTorelatedViewWidth() {
        let constraints = view1.width ≤ relatedView.width
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width)
    }

    func testView1WidthLessThanOrEqualTorelatedViewWidthInversedInference() {
        let constraints = view1.width ≤ relatedView
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width)
    }
    // MARK: LessThanOrEqual with constant
    func testView1WidthLessThanOrEqualTorelatedViewWidthPlusConstant() {
        let constraints = view1.width ≤ relatedView.width .+ 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
    }

    func testView1WidthLessThanOrEqualTorelatedViewWidthMinusConstant() {
        let constraints = view1.width ≤ relatedView.width .- 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1WidthLessThanOrEqualTorelatedViewWidthMultiplyingConstant() {
        let constraints = view1.width ≤ relatedView.width .* 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewWidthMultipliedByConstant() {
        let constraints = view1.width ≤ 3 .* relatedView.width
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewWidthDividedByConstant() {
        let constraints = view1.width ≤ relatedView.width ./ 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1WidthLessThanOrEqualTorelatedViewWidthWithPriority() {
        let constraints = view1.width ≤ relatedView.width ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
    }

    func testView1WidthLessThanOrEqualTorelatedViewWidthWithPriorityLiteral() {
        let constraints = view1.width ≤ relatedView.width ~ 300
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 300)
    }

    func testView1WidthLessThanOrEqualTorelatedViewWidthWithPriorityArithmetic() {
        let constraints = view1.width ≤ relatedView.width ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1WidthLessThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.width ≤ (relatedView.width .+ 10) .* 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.width ≤ 3 .* (relatedView.width .+ 10)
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.width ≤ 3 .* relatedView.width .+ 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewWidthPlusConstantDividedByConstant() {
        let constraints = view1.width ≤ (relatedView.width .+ 10) ./ 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1WidthLessThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthLessThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthLessThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1WidthLessThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1WidthLessThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthLessThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthLessThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ 3 .* relatedView.width .+ 10 ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1WidthLessThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1WidthGreaterThanOrEqualTorelatedViewWidth() {
        let constraints = view1.width ≥ relatedView.width
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewWidthInversedInference() {
        let constraints = view1.width ≥ relatedView
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width)
    }
    // MARK: GreaterThanOrEqual with constant
    func testView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstant() {
        let constraints = view1.width ≥ relatedView.width .+ 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewWidthMinusConstant() {
        let constraints = view1.width ≥ relatedView.width .- 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1WidthGreaterThanOrEqualTorelatedViewWidthMultiplyingConstant() {
        let constraints = view1.width ≥ relatedView.width .* 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewWidthMultipliedByConstant() {
        let constraints = view1.width ≥ 3 .* relatedView.width
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewWidthDividedByConstant() {
        let constraints = view1.width ≥ relatedView.width ./ 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1WidthGreaterThanOrEqualTorelatedViewWidthWithPriority() {
        let constraints = view1.width ≥ relatedView.width ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewWidthWithPriorityLiteral() {
        let constraints = view1.width ≥ relatedView.width ~ 300
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 300)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewWidthWithPriorityArithmetic() {
        let constraints = view1.width ≥ relatedView.width ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.width ≥ (relatedView.width .+ 10) .* 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.width ≥ 3 .* (relatedView.width .+ 10)
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.width ≥ 3 .* relatedView.width .+ 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstantDividedByConstant() {
        let constraints = view1.width ≥ (relatedView.width .+ 10) ./ 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ 3 .* relatedView.width .+ 10 ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.widthWidth <=> relatedViewArrayWidth
    // MARK: Equal

    func testView1WidthEqualTorelatedViewArrayWidth() {
        let constraints = view1.width .= relatedViewArray.width
        constraints.assert(view1, .width, .equal, relatedViewArray, .width)
    }

    func testView1WidthEqualTorelatedViewArrayWidthInversedInference() {
        let constraints = view1.width .= relatedViewArray
        constraints.assert(view1, .width, .equal, relatedViewArray, .width)
    }
    // MARK: Equal with constant
    func testView1WidthEqualTorelatedViewArrayWidthPlusConstant() {
        let constraints = view1.width .= relatedViewArray.width .+ 10
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10)
    }

    func testView1WidthEqualTorelatedViewArrayWidthMinusConstant() {
        let constraints = view1.width .= relatedViewArray.width .- 10
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1WidthEqualTorelatedViewArrayWidthMultiplyingConstant() {
        let constraints = view1.width .= relatedViewArray.width .* 3
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewArrayWidthMultipliedByConstant() {
        let constraints = view1.width .= 3 .* relatedViewArray.width
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewArrayWidthDividedByConstant() {
        let constraints = view1.width .= relatedViewArray.width ./ 2
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1WidthEqualTorelatedViewArrayWidthWithPriority() {
        let constraints = view1.width .= relatedViewArray.width ~ .low
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, priority: .low)
    }

    func testView1WidthEqualTorelatedViewArrayWidthWithPriorityLiteral() {
        let constraints = view1.width .= relatedViewArray.width ~ 300
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, priority: 300)
    }

    func testView1WidthEqualTorelatedViewArrayWidthWithPriorityArithmetic() {
        let constraints = view1.width .= relatedViewArray.width ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1WidthEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.width .= (relatedViewArray.width .+ 10) .* 3
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.width .= 3 .* (relatedViewArray.width .+ 10)
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.width .= 3 .* relatedViewArray.width .+ 10
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewArrayWidthPlusConstantDividedByConstant() {
        let constraints = view1.width .= (relatedViewArray.width .+ 10) ./ 2
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1WidthEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.width .= (relatedViewArray.width .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.width .= 3 .* (relatedViewArray.width .+ 10) ~ .low
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.width .= 3 .* relatedViewArray.width .+ 10 ~ .low
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1WidthEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.width .= (relatedViewArray.width .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1WidthEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.width .= (relatedViewArray.width .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.width .= 3 .* (relatedViewArray.width .+ 10) ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.width .= 3 .* relatedViewArray.width .+ 10 ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1WidthEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.width .= (relatedViewArray.width .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1WidthLessThanOrEqualTorelatedViewArrayWidth() {
        let constraints = view1.width ≤ relatedViewArray.width
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthInversedInference() {
        let constraints = view1.width ≤ relatedViewArray
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width)
    }
    // MARK: LessThanOrEqual with constant
    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstant() {
        let constraints = view1.width ≤ relatedViewArray.width .+ 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthMinusConstant() {
        let constraints = view1.width ≤ relatedViewArray.width .- 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthMultiplyingConstant() {
        let constraints = view1.width ≤ relatedViewArray.width .* 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstant() {
        let constraints = view1.width ≤ 3 .* relatedViewArray.width
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthDividedByConstant() {
        let constraints = view1.width ≤ relatedViewArray.width ./ 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthWithPriority() {
        let constraints = view1.width ≤ relatedViewArray.width ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, priority: .low)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthWithPriorityLiteral() {
        let constraints = view1.width ≤ relatedViewArray.width ~ 300
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, priority: 300)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthWithPriorityArithmetic() {
        let constraints = view1.width ≤ relatedViewArray.width ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.width ≤ (relatedViewArray.width .+ 10) .* 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.width ≤ 3 .* (relatedViewArray.width .+ 10)
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.width ≤ 3 .* relatedViewArray.width .+ 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstant() {
        let constraints = view1.width ≤ (relatedViewArray.width .+ 10) ./ 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.width ≤ (relatedViewArray.width .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.width ≤ 3 .* (relatedViewArray.width .+ 10) ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.width ≤ 3 .* relatedViewArray.width .+ 10 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.width ≤ (relatedViewArray.width .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ (relatedViewArray.width .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ 3 .* (relatedViewArray.width .+ 10) ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ 3 .* relatedViewArray.width .+ 10 ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ (relatedViewArray.width .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidth() {
        let constraints = view1.width ≥ relatedViewArray.width
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthInversedInference() {
        let constraints = view1.width ≥ relatedViewArray
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width)
    }
    // MARK: GreaterThanOrEqual with constant
    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstant() {
        let constraints = view1.width ≥ relatedViewArray.width .+ 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthMinusConstant() {
        let constraints = view1.width ≥ relatedViewArray.width .- 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthMultiplyingConstant() {
        let constraints = view1.width ≥ relatedViewArray.width .* 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstant() {
        let constraints = view1.width ≥ 3 .* relatedViewArray.width
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthDividedByConstant() {
        let constraints = view1.width ≥ relatedViewArray.width ./ 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthWithPriority() {
        let constraints = view1.width ≥ relatedViewArray.width ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthWithPriorityLiteral() {
        let constraints = view1.width ≥ relatedViewArray.width ~ 300
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, priority: 300)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthWithPriorityArithmetic() {
        let constraints = view1.width ≥ relatedViewArray.width ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.width ≥ (relatedViewArray.width .+ 10) .* 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.width ≥ 3 .* (relatedViewArray.width .+ 10)
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.width ≥ 3 .* relatedViewArray.width .+ 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstant() {
        let constraints = view1.width ≥ (relatedViewArray.width .+ 10) ./ 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.width ≥ (relatedViewArray.width .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.width ≥ 3 .* (relatedViewArray.width .+ 10) ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.width ≥ 3 .* relatedViewArray.width .+ 10 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.width ≥ (relatedViewArray.width .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ (relatedViewArray.width .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ 3 .* (relatedViewArray.width .+ 10) ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ 3 .* relatedViewArray.width .+ 10 ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ (relatedViewArray.width .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.widthWidth <=> relatedViewHeight
    // MARK: Equal

    func testView1WidthEqualTorelatedViewHeight() {
        let constraints = view1.width .= relatedView.height
        constraints.assert(view1, .width, .equal, relatedView, .height)
    }

    // MARK: Equal with constant
    func testView1WidthEqualTorelatedViewHeightPlusConstant() {
        let constraints = view1.width .= relatedView.height .+ 10
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10)
    }

    func testView1WidthEqualTorelatedViewHeightMinusConstant() {
        let constraints = view1.width .= relatedView.height .- 10
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1WidthEqualTorelatedViewHeightMultiplyingConstant() {
        let constraints = view1.width .= relatedView.height .* 3
        constraints.assert(view1, .width, .equal, relatedView, .height, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewHeightMultipliedByConstant() {
        let constraints = view1.width .= 3 .* relatedView.height
        constraints.assert(view1, .width, .equal, relatedView, .height, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewHeightDividedByConstant() {
        let constraints = view1.width .= relatedView.height ./ 2
        constraints.assert(view1, .width, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1WidthEqualTorelatedViewHeightWithPriority() {
        let constraints = view1.width .= relatedView.height ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .height, priority: .low)
    }

    func testView1WidthEqualTorelatedViewHeightWithPriorityLiteral() {
        let constraints = view1.width .= relatedView.height ~ 300
        constraints.assert(view1, .width, .equal, relatedView, .height, priority: 300)
    }

    func testView1WidthEqualTorelatedViewHeightWithPriorityArithmetic() {
        let constraints = view1.width .= relatedView.height ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1WidthEqualTorelatedViewHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.width .= (relatedView.height .+ 10) .* 3
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.width .= 3 .* (relatedView.height .+ 10)
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.width .= 3 .* relatedView.height .+ 10
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewHeightPlusConstantDividedByConstant() {
        let constraints = view1.width .= (relatedView.height .+ 10) ./ 2
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1WidthEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.width .= (relatedView.height .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.width .= 3 .* (relatedView.height .+ 10) ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.width .= 3 .* relatedView.height .+ 10 ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1WidthEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.width .= (relatedView.height .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1WidthEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.width .= (relatedView.height .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.width .= 3 .* (relatedView.height .+ 10) ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.width .= 3 .* relatedView.height .+ 10 ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1WidthEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.width .= (relatedView.height .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1WidthLessThanOrEqualTorelatedViewHeight() {
        let constraints = view1.width ≤ relatedView.height
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height)
    }

    // MARK: LessThanOrEqual with constant
    func testView1WidthLessThanOrEqualTorelatedViewHeightPlusConstant() {
        let constraints = view1.width ≤ relatedView.height .+ 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testView1WidthLessThanOrEqualTorelatedViewHeightMinusConstant() {
        let constraints = view1.width ≤ relatedView.height .- 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1WidthLessThanOrEqualTorelatedViewHeightMultiplyingConstant() {
        let constraints = view1.width ≤ relatedView.height .* 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewHeightMultipliedByConstant() {
        let constraints = view1.width ≤ 3 .* relatedView.height
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewHeightDividedByConstant() {
        let constraints = view1.width ≤ relatedView.height ./ 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1WidthLessThanOrEqualTorelatedViewHeightWithPriority() {
        let constraints = view1.width ≤ relatedView.height ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testView1WidthLessThanOrEqualTorelatedViewHeightWithPriorityLiteral() {
        let constraints = view1.width ≤ relatedView.height ~ 300
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testView1WidthLessThanOrEqualTorelatedViewHeightWithPriorityArithmetic() {
        let constraints = view1.width ≤ relatedView.height ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1WidthLessThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.width ≤ (relatedView.height .+ 10) .* 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.width ≤ 3 .* (relatedView.height .+ 10)
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.width ≤ 3 .* relatedView.height .+ 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewHeightPlusConstantDividedByConstant() {
        let constraints = view1.width ≤ (relatedView.height .+ 10) ./ 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1WidthLessThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.width ≤ (relatedView.height .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthLessThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.width ≤ 3 .* (relatedView.height .+ 10) ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthLessThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.width ≤ 3 .* relatedView.height .+ 10 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1WidthLessThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.width ≤ (relatedView.height .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1WidthLessThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ (relatedView.height .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthLessThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ 3 .* (relatedView.height .+ 10) ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthLessThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ 3 .* relatedView.height .+ 10 ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1WidthLessThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ (relatedView.height .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1WidthGreaterThanOrEqualTorelatedViewHeight() {
        let constraints = view1.width ≥ relatedView.height
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1WidthGreaterThanOrEqualTorelatedViewHeightPlusConstant() {
        let constraints = view1.width ≥ relatedView.height .+ 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewHeightMinusConstant() {
        let constraints = view1.width ≥ relatedView.height .- 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1WidthGreaterThanOrEqualTorelatedViewHeightMultiplyingConstant() {
        let constraints = view1.width ≥ relatedView.height .* 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewHeightMultipliedByConstant() {
        let constraints = view1.width ≥ 3 .* relatedView.height
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewHeightDividedByConstant() {
        let constraints = view1.width ≥ relatedView.height ./ 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1WidthGreaterThanOrEqualTorelatedViewHeightWithPriority() {
        let constraints = view1.width ≥ relatedView.height ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewHeightWithPriorityLiteral() {
        let constraints = view1.width ≥ relatedView.height ~ 300
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewHeightWithPriorityArithmetic() {
        let constraints = view1.width ≥ relatedView.height ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1WidthGreaterThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.width ≥ (relatedView.height .+ 10) .* 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.width ≥ 3 .* (relatedView.height .+ 10)
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.width ≥ 3 .* relatedView.height .+ 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewHeightPlusConstantDividedByConstant() {
        let constraints = view1.width ≥ (relatedView.height .+ 10) ./ 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1WidthGreaterThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.width ≥ (relatedView.height .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.width ≥ 3 .* (relatedView.height .+ 10) ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.width ≥ 3 .* relatedView.height .+ 10 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.width ≥ (relatedView.height .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1WidthGreaterThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ (relatedView.height .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ 3 .* (relatedView.height .+ 10) ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ 3 .* relatedView.height .+ 10 ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ (relatedView.height .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.widthWidth <=> relatedViewArrayHeight
    // MARK: Equal

    func testView1WidthEqualTorelatedViewArrayHeight() {
        let constraints = view1.width .= relatedViewArray.height
        constraints.assert(view1, .width, .equal, relatedViewArray, .height)
    }

    // MARK: Equal with constant
    func testView1WidthEqualTorelatedViewArrayHeightPlusConstant() {
        let constraints = view1.width .= relatedViewArray.height .+ 10
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, constant: 10)
    }

    func testView1WidthEqualTorelatedViewArrayHeightMinusConstant() {
        let constraints = view1.width .= relatedViewArray.height .- 10
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1WidthEqualTorelatedViewArrayHeightMultiplyingConstant() {
        let constraints = view1.width .= relatedViewArray.height .* 3
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewArrayHeightMultipliedByConstant() {
        let constraints = view1.width .= 3 .* relatedViewArray.height
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewArrayHeightDividedByConstant() {
        let constraints = view1.width .= relatedViewArray.height ./ 2
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1WidthEqualTorelatedViewArrayHeightWithPriority() {
        let constraints = view1.width .= relatedViewArray.height ~ .low
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, priority: .low)
    }

    func testView1WidthEqualTorelatedViewArrayHeightWithPriorityLiteral() {
        let constraints = view1.width .= relatedViewArray.height ~ 300
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, priority: 300)
    }

    func testView1WidthEqualTorelatedViewArrayHeightWithPriorityArithmetic() {
        let constraints = view1.width .= relatedViewArray.height ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1WidthEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.width .= (relatedViewArray.height .+ 10) .* 3
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.width .= 3 .* (relatedViewArray.height .+ 10)
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.width .= 3 .* relatedViewArray.height .+ 10
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, constant: 10, multiplier: 3)
    }

    func testView1WidthEqualTorelatedViewArrayHeightPlusConstantDividedByConstant() {
        let constraints = view1.width .= (relatedViewArray.height .+ 10) ./ 2
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1WidthEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.width .= (relatedViewArray.height .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.width .= 3 .* (relatedViewArray.height .+ 10) ~ .low
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.width .= 3 .* relatedViewArray.height .+ 10 ~ .low
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1WidthEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.width .= (relatedViewArray.height .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1WidthEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.width .= (relatedViewArray.height .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.width .= 3 .* (relatedViewArray.height .+ 10) ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.width .= 3 .* relatedViewArray.height .+ 10 ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1WidthEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.width .= (relatedViewArray.height .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1WidthLessThanOrEqualTorelatedViewArrayHeight() {
        let constraints = view1.width ≤ relatedViewArray.height
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height)
    }

    // MARK: LessThanOrEqual with constant
    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightPlusConstant() {
        let constraints = view1.width ≤ relatedViewArray.height .+ 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightMinusConstant() {
        let constraints = view1.width ≤ relatedViewArray.height .- 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightMultiplyingConstant() {
        let constraints = view1.width ≤ relatedViewArray.height .* 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstant() {
        let constraints = view1.width ≤ 3 .* relatedViewArray.height
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightDividedByConstant() {
        let constraints = view1.width ≤ relatedViewArray.height ./ 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightWithPriority() {
        let constraints = view1.width ≤ relatedViewArray.height ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, priority: .low)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightWithPriorityLiteral() {
        let constraints = view1.width ≤ relatedViewArray.height ~ 300
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, priority: 300)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightWithPriorityArithmetic() {
        let constraints = view1.width ≤ relatedViewArray.height ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.width ≤ (relatedViewArray.height .+ 10) .* 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.width ≤ 3 .* (relatedViewArray.height .+ 10)
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.width ≤ 3 .* relatedViewArray.height .+ 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstant() {
        let constraints = view1.width ≤ (relatedViewArray.height .+ 10) ./ 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.width ≤ (relatedViewArray.height .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.width ≤ 3 .* (relatedViewArray.height .+ 10) ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.width ≤ 3 .* relatedViewArray.height .+ 10 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.width ≤ (relatedViewArray.height .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ (relatedViewArray.height .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ 3 .* (relatedViewArray.height .+ 10) ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ 3 .* relatedViewArray.height .+ 10 ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1WidthLessThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ (relatedViewArray.height .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeight() {
        let constraints = view1.width ≥ relatedViewArray.height
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstant() {
        let constraints = view1.width ≥ relatedViewArray.height .+ 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightMinusConstant() {
        let constraints = view1.width ≥ relatedViewArray.height .- 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightMultiplyingConstant() {
        let constraints = view1.width ≥ relatedViewArray.height .* 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstant() {
        let constraints = view1.width ≥ 3 .* relatedViewArray.height
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightDividedByConstant() {
        let constraints = view1.width ≥ relatedViewArray.height ./ 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightWithPriority() {
        let constraints = view1.width ≥ relatedViewArray.height ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightWithPriorityLiteral() {
        let constraints = view1.width ≥ relatedViewArray.height ~ 300
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, priority: 300)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightWithPriorityArithmetic() {
        let constraints = view1.width ≥ relatedViewArray.height ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.width ≥ (relatedViewArray.height .+ 10) .* 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.width ≥ 3 .* (relatedViewArray.height .+ 10)
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.width ≥ 3 .* relatedViewArray.height .+ 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstant() {
        let constraints = view1.width ≥ (relatedViewArray.height .+ 10) ./ 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.width ≥ (relatedViewArray.height .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.width ≥ 3 .* (relatedViewArray.height .+ 10) ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.width ≥ 3 .* relatedViewArray.height .+ 10 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.width ≥ (relatedViewArray.height .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ (relatedViewArray.height .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ 3 .* (relatedViewArray.height .+ 10) ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ 3 .* relatedViewArray.height .+ 10 ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1WidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ (relatedViewArray.height .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.heightHeight <=> relatedViewWidth
    // MARK: Equal

    func testView1HeightEqualTorelatedViewWidth() {
        let constraints = view1.height .= relatedView.width
        constraints.assert(view1, .height, .equal, relatedView, .width)
    }

    // MARK: Equal with constant
    func testView1HeightEqualTorelatedViewWidthPlusConstant() {
        let constraints = view1.height .= relatedView.width .+ 10
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10)
    }

    func testView1HeightEqualTorelatedViewWidthMinusConstant() {
        let constraints = view1.height .= relatedView.width .- 10
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1HeightEqualTorelatedViewWidthMultiplyingConstant() {
        let constraints = view1.height .= relatedView.width .* 3
        constraints.assert(view1, .height, .equal, relatedView, .width, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewWidthMultipliedByConstant() {
        let constraints = view1.height .= 3 .* relatedView.width
        constraints.assert(view1, .height, .equal, relatedView, .width, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewWidthDividedByConstant() {
        let constraints = view1.height .= relatedView.width ./ 2
        constraints.assert(view1, .height, .equal, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1HeightEqualTorelatedViewWidthWithPriority() {
        let constraints = view1.height .= relatedView.width ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .width, priority: .low)
    }

    func testView1HeightEqualTorelatedViewWidthWithPriorityLiteral() {
        let constraints = view1.height .= relatedView.width ~ 300
        constraints.assert(view1, .height, .equal, relatedView, .width, priority: 300)
    }

    func testView1HeightEqualTorelatedViewWidthWithPriorityArithmetic() {
        let constraints = view1.height .= relatedView.width ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .width, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1HeightEqualTorelatedViewWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.height .= (relatedView.width .+ 10) .* 3
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.height .= 3 .* (relatedView.width .+ 10)
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.height .= 3 .* relatedView.width .+ 10
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewWidthPlusConstantDividedByConstant() {
        let constraints = view1.height .= (relatedView.width .+ 10) ./ 2
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1HeightEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.height .= (relatedView.width .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.height .= 3 .* (relatedView.width .+ 10) ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.height .= 3 .* relatedView.width .+ 10 ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1HeightEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.height .= (relatedView.width .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1HeightEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.height .= (relatedView.width .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.height .= 3 .* (relatedView.width .+ 10) ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.height .= 3 .* relatedView.width .+ 10 ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1HeightEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.height .= (relatedView.width .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1HeightLessThanOrEqualTorelatedViewWidth() {
        let constraints = view1.height ≤ relatedView.width
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width)
    }

    // MARK: LessThanOrEqual with constant
    func testView1HeightLessThanOrEqualTorelatedViewWidthPlusConstant() {
        let constraints = view1.height ≤ relatedView.width .+ 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10)
    }

    func testView1HeightLessThanOrEqualTorelatedViewWidthMinusConstant() {
        let constraints = view1.height ≤ relatedView.width .- 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1HeightLessThanOrEqualTorelatedViewWidthMultiplyingConstant() {
        let constraints = view1.height ≤ relatedView.width .* 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewWidthMultipliedByConstant() {
        let constraints = view1.height ≤ 3 .* relatedView.width
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewWidthDividedByConstant() {
        let constraints = view1.height ≤ relatedView.width ./ 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1HeightLessThanOrEqualTorelatedViewWidthWithPriority() {
        let constraints = view1.height ≤ relatedView.width ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, priority: .low)
    }

    func testView1HeightLessThanOrEqualTorelatedViewWidthWithPriorityLiteral() {
        let constraints = view1.height ≤ relatedView.width ~ 300
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, priority: 300)
    }

    func testView1HeightLessThanOrEqualTorelatedViewWidthWithPriorityArithmetic() {
        let constraints = view1.height ≤ relatedView.width ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1HeightLessThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.height ≤ (relatedView.width .+ 10) .* 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.height ≤ 3 .* (relatedView.width .+ 10)
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.height ≤ 3 .* relatedView.width .+ 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewWidthPlusConstantDividedByConstant() {
        let constraints = view1.height ≤ (relatedView.width .+ 10) ./ 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1HeightLessThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.height ≤ (relatedView.width .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightLessThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.height ≤ 3 .* (relatedView.width .+ 10) ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightLessThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.height ≤ 3 .* relatedView.width .+ 10 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1HeightLessThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.height ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1HeightLessThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ (relatedView.width .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightLessThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ 3 .* (relatedView.width .+ 10) ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightLessThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ 3 .* relatedView.width .+ 10 ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1HeightLessThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ (relatedView.width .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1HeightGreaterThanOrEqualTorelatedViewWidth() {
        let constraints = view1.height ≥ relatedView.width
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1HeightGreaterThanOrEqualTorelatedViewWidthPlusConstant() {
        let constraints = view1.height ≥ relatedView.width .+ 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewWidthMinusConstant() {
        let constraints = view1.height ≥ relatedView.width .- 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1HeightGreaterThanOrEqualTorelatedViewWidthMultiplyingConstant() {
        let constraints = view1.height ≥ relatedView.width .* 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewWidthMultipliedByConstant() {
        let constraints = view1.height ≥ 3 .* relatedView.width
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewWidthDividedByConstant() {
        let constraints = view1.height ≥ relatedView.width ./ 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1HeightGreaterThanOrEqualTorelatedViewWidthWithPriority() {
        let constraints = view1.height ≥ relatedView.width ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewWidthWithPriorityLiteral() {
        let constraints = view1.height ≥ relatedView.width ~ 300
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, priority: 300)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewWidthWithPriorityArithmetic() {
        let constraints = view1.height ≥ relatedView.width ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1HeightGreaterThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.height ≥ (relatedView.width .+ 10) .* 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.height ≥ 3 .* (relatedView.width .+ 10)
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.height ≥ 3 .* relatedView.width .+ 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewWidthPlusConstantDividedByConstant() {
        let constraints = view1.height ≥ (relatedView.width .+ 10) ./ 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1HeightGreaterThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.height ≥ (relatedView.width .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.height ≥ 3 .* (relatedView.width .+ 10) ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.height ≥ 3 .* relatedView.width .+ 10 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.height ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1HeightGreaterThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ (relatedView.width .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ 3 .* (relatedView.width .+ 10) ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ 3 .* relatedView.width .+ 10 ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ (relatedView.width .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.heightHeight <=> relatedViewArrayWidth
    // MARK: Equal

    func testView1HeightEqualTorelatedViewArrayWidth() {
        let constraints = view1.height .= relatedViewArray.width
        constraints.assert(view1, .height, .equal, relatedViewArray, .width)
    }

    // MARK: Equal with constant
    func testView1HeightEqualTorelatedViewArrayWidthPlusConstant() {
        let constraints = view1.height .= relatedViewArray.width .+ 10
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, constant: 10)
    }

    func testView1HeightEqualTorelatedViewArrayWidthMinusConstant() {
        let constraints = view1.height .= relatedViewArray.width .- 10
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1HeightEqualTorelatedViewArrayWidthMultiplyingConstant() {
        let constraints = view1.height .= relatedViewArray.width .* 3
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewArrayWidthMultipliedByConstant() {
        let constraints = view1.height .= 3 .* relatedViewArray.width
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewArrayWidthDividedByConstant() {
        let constraints = view1.height .= relatedViewArray.width ./ 2
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1HeightEqualTorelatedViewArrayWidthWithPriority() {
        let constraints = view1.height .= relatedViewArray.width ~ .low
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, priority: .low)
    }

    func testView1HeightEqualTorelatedViewArrayWidthWithPriorityLiteral() {
        let constraints = view1.height .= relatedViewArray.width ~ 300
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, priority: 300)
    }

    func testView1HeightEqualTorelatedViewArrayWidthWithPriorityArithmetic() {
        let constraints = view1.height .= relatedViewArray.width ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1HeightEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.height .= (relatedViewArray.width .+ 10) .* 3
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.height .= 3 .* (relatedViewArray.width .+ 10)
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.height .= 3 .* relatedViewArray.width .+ 10
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, constant: 10, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewArrayWidthPlusConstantDividedByConstant() {
        let constraints = view1.height .= (relatedViewArray.width .+ 10) ./ 2
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1HeightEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.height .= (relatedViewArray.width .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.height .= 3 .* (relatedViewArray.width .+ 10) ~ .low
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.height .= 3 .* relatedViewArray.width .+ 10 ~ .low
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1HeightEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.height .= (relatedViewArray.width .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1HeightEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.height .= (relatedViewArray.width .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.height .= 3 .* (relatedViewArray.width .+ 10) ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.height .= 3 .* relatedViewArray.width .+ 10 ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1HeightEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.height .= (relatedViewArray.width .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1HeightLessThanOrEqualTorelatedViewArrayWidth() {
        let constraints = view1.height ≤ relatedViewArray.width
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width)
    }

    // MARK: LessThanOrEqual with constant
    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthPlusConstant() {
        let constraints = view1.height ≤ relatedViewArray.width .+ 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthMinusConstant() {
        let constraints = view1.height ≤ relatedViewArray.width .- 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthMultiplyingConstant() {
        let constraints = view1.height ≤ relatedViewArray.width .* 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstant() {
        let constraints = view1.height ≤ 3 .* relatedViewArray.width
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthDividedByConstant() {
        let constraints = view1.height ≤ relatedViewArray.width ./ 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthWithPriority() {
        let constraints = view1.height ≤ relatedViewArray.width ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, priority: .low)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthWithPriorityLiteral() {
        let constraints = view1.height ≤ relatedViewArray.width ~ 300
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, priority: 300)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthWithPriorityArithmetic() {
        let constraints = view1.height ≤ relatedViewArray.width ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.height ≤ (relatedViewArray.width .+ 10) .* 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.height ≤ 3 .* (relatedViewArray.width .+ 10)
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.height ≤ 3 .* relatedViewArray.width .+ 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstant() {
        let constraints = view1.height ≤ (relatedViewArray.width .+ 10) ./ 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.height ≤ (relatedViewArray.width .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.height ≤ 3 .* (relatedViewArray.width .+ 10) ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.height ≤ 3 .* relatedViewArray.width .+ 10 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.height ≤ (relatedViewArray.width .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ (relatedViewArray.width .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ 3 .* (relatedViewArray.width .+ 10) ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ 3 .* relatedViewArray.width .+ 10 ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ (relatedViewArray.width .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidth() {
        let constraints = view1.height ≥ relatedViewArray.width
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstant() {
        let constraints = view1.height ≥ relatedViewArray.width .+ 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthMinusConstant() {
        let constraints = view1.height ≥ relatedViewArray.width .- 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthMultiplyingConstant() {
        let constraints = view1.height ≥ relatedViewArray.width .* 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstant() {
        let constraints = view1.height ≥ 3 .* relatedViewArray.width
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthDividedByConstant() {
        let constraints = view1.height ≥ relatedViewArray.width ./ 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthWithPriority() {
        let constraints = view1.height ≥ relatedViewArray.width ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthWithPriorityLiteral() {
        let constraints = view1.height ≥ relatedViewArray.width ~ 300
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, priority: 300)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthWithPriorityArithmetic() {
        let constraints = view1.height ≥ relatedViewArray.width ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.height ≥ (relatedViewArray.width .+ 10) .* 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.height ≥ 3 .* (relatedViewArray.width .+ 10)
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.height ≥ 3 .* relatedViewArray.width .+ 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstant() {
        let constraints = view1.height ≥ (relatedViewArray.width .+ 10) ./ 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.height ≥ (relatedViewArray.width .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.height ≥ 3 .* (relatedViewArray.width .+ 10) ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.height ≥ 3 .* relatedViewArray.width .+ 10 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.height ≥ (relatedViewArray.width .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ (relatedViewArray.width .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ 3 .* (relatedViewArray.width .+ 10) ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ 3 .* relatedViewArray.width .+ 10 ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ (relatedViewArray.width .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.heightHeight <=> relatedViewHeight
    // MARK: Equal

    func testView1HeightEqualTorelatedViewHeight() {
        let constraints = view1.height .= relatedView.height
        constraints.assert(view1, .height, .equal, relatedView, .height)
    }

    func testView1HeightEqualTorelatedViewHeightInversedInference() {
        let constraints = view1.height .= relatedView
        constraints.assert(view1, .height, .equal, relatedView, .height)
    }
    // MARK: Equal with constant
    func testView1HeightEqualTorelatedViewHeightPlusConstant() {
        let constraints = view1.height .= relatedView.height .+ 10
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10)
    }

    func testView1HeightEqualTorelatedViewHeightMinusConstant() {
        let constraints = view1.height .= relatedView.height .- 10
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1HeightEqualTorelatedViewHeightMultiplyingConstant() {
        let constraints = view1.height .= relatedView.height .* 3
        constraints.assert(view1, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewHeightMultipliedByConstant() {
        let constraints = view1.height .= 3 .* relatedView.height
        constraints.assert(view1, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewHeightDividedByConstant() {
        let constraints = view1.height .= relatedView.height ./ 2
        constraints.assert(view1, .height, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1HeightEqualTorelatedViewHeightWithPriority() {
        let constraints = view1.height .= relatedView.height ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, priority: .low)
    }

    func testView1HeightEqualTorelatedViewHeightWithPriorityLiteral() {
        let constraints = view1.height .= relatedView.height ~ 300
        constraints.assert(view1, .height, .equal, relatedView, .height, priority: 300)
    }

    func testView1HeightEqualTorelatedViewHeightWithPriorityArithmetic() {
        let constraints = view1.height .= relatedView.height ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1HeightEqualTorelatedViewHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.height .= (relatedView.height .+ 10) .* 3
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.height .= 3 .* (relatedView.height .+ 10)
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.height .= 3 .* relatedView.height .+ 10
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewHeightPlusConstantDividedByConstant() {
        let constraints = view1.height .= (relatedView.height .+ 10) ./ 2
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1HeightEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.height .= (relatedView.height .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.height .= 3 .* (relatedView.height .+ 10) ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.height .= 3 .* relatedView.height .+ 10 ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1HeightEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.height .= (relatedView.height .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1HeightEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.height .= (relatedView.height .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.height .= 3 .* (relatedView.height .+ 10) ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.height .= 3 .* relatedView.height .+ 10 ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1HeightEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.height .= (relatedView.height .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1HeightLessThanOrEqualTorelatedViewHeight() {
        let constraints = view1.height ≤ relatedView.height
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height)
    }

    func testView1HeightLessThanOrEqualTorelatedViewHeightInversedInference() {
        let constraints = view1.height ≤ relatedView
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height)
    }
    // MARK: LessThanOrEqual with constant
    func testView1HeightLessThanOrEqualTorelatedViewHeightPlusConstant() {
        let constraints = view1.height ≤ relatedView.height .+ 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testView1HeightLessThanOrEqualTorelatedViewHeightMinusConstant() {
        let constraints = view1.height ≤ relatedView.height .- 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1HeightLessThanOrEqualTorelatedViewHeightMultiplyingConstant() {
        let constraints = view1.height ≤ relatedView.height .* 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewHeightMultipliedByConstant() {
        let constraints = view1.height ≤ 3 .* relatedView.height
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewHeightDividedByConstant() {
        let constraints = view1.height ≤ relatedView.height ./ 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1HeightLessThanOrEqualTorelatedViewHeightWithPriority() {
        let constraints = view1.height ≤ relatedView.height ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testView1HeightLessThanOrEqualTorelatedViewHeightWithPriorityLiteral() {
        let constraints = view1.height ≤ relatedView.height ~ 300
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testView1HeightLessThanOrEqualTorelatedViewHeightWithPriorityArithmetic() {
        let constraints = view1.height ≤ relatedView.height ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1HeightLessThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.height ≤ (relatedView.height .+ 10) .* 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.height ≤ 3 .* (relatedView.height .+ 10)
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.height ≤ 3 .* relatedView.height .+ 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewHeightPlusConstantDividedByConstant() {
        let constraints = view1.height ≤ (relatedView.height .+ 10) ./ 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1HeightLessThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.height ≤ (relatedView.height .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightLessThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.height ≤ 3 .* (relatedView.height .+ 10) ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightLessThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.height ≤ 3 .* relatedView.height .+ 10 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1HeightLessThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.height ≤ (relatedView.height .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1HeightLessThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ (relatedView.height .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightLessThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ 3 .* (relatedView.height .+ 10) ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightLessThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ 3 .* relatedView.height .+ 10 ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1HeightLessThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ (relatedView.height .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1HeightGreaterThanOrEqualTorelatedViewHeight() {
        let constraints = view1.height ≥ relatedView.height
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewHeightInversedInference() {
        let constraints = view1.height ≥ relatedView
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height)
    }
    // MARK: GreaterThanOrEqual with constant
    func testView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstant() {
        let constraints = view1.height ≥ relatedView.height .+ 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewHeightMinusConstant() {
        let constraints = view1.height ≥ relatedView.height .- 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1HeightGreaterThanOrEqualTorelatedViewHeightMultiplyingConstant() {
        let constraints = view1.height ≥ relatedView.height .* 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewHeightMultipliedByConstant() {
        let constraints = view1.height ≥ 3 .* relatedView.height
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewHeightDividedByConstant() {
        let constraints = view1.height ≥ relatedView.height ./ 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1HeightGreaterThanOrEqualTorelatedViewHeightWithPriority() {
        let constraints = view1.height ≥ relatedView.height ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewHeightWithPriorityLiteral() {
        let constraints = view1.height ≥ relatedView.height ~ 300
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewHeightWithPriorityArithmetic() {
        let constraints = view1.height ≥ relatedView.height ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.height ≥ (relatedView.height .+ 10) .* 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.height ≥ 3 .* (relatedView.height .+ 10)
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.height ≥ 3 .* relatedView.height .+ 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstantDividedByConstant() {
        let constraints = view1.height ≥ (relatedView.height .+ 10) ./ 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.height ≥ (relatedView.height .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.height ≥ 3 .* (relatedView.height .+ 10) ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.height ≥ 3 .* relatedView.height .+ 10 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.height ≥ (relatedView.height .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ (relatedView.height .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ 3 .* (relatedView.height .+ 10) ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ 3 .* relatedView.height .+ 10 ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ (relatedView.height .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.heightHeight <=> relatedViewArrayHeight
    // MARK: Equal

    func testView1HeightEqualTorelatedViewArrayHeight() {
        let constraints = view1.height .= relatedViewArray.height
        constraints.assert(view1, .height, .equal, relatedViewArray, .height)
    }

    func testView1HeightEqualTorelatedViewArrayHeightInversedInference() {
        let constraints = view1.height .= relatedViewArray
        constraints.assert(view1, .height, .equal, relatedViewArray, .height)
    }
    // MARK: Equal with constant
    func testView1HeightEqualTorelatedViewArrayHeightPlusConstant() {
        let constraints = view1.height .= relatedViewArray.height .+ 10
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10)
    }

    func testView1HeightEqualTorelatedViewArrayHeightMinusConstant() {
        let constraints = view1.height .= relatedViewArray.height .- 10
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1HeightEqualTorelatedViewArrayHeightMultiplyingConstant() {
        let constraints = view1.height .= relatedViewArray.height .* 3
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewArrayHeightMultipliedByConstant() {
        let constraints = view1.height .= 3 .* relatedViewArray.height
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewArrayHeightDividedByConstant() {
        let constraints = view1.height .= relatedViewArray.height ./ 2
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1HeightEqualTorelatedViewArrayHeightWithPriority() {
        let constraints = view1.height .= relatedViewArray.height ~ .low
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, priority: .low)
    }

    func testView1HeightEqualTorelatedViewArrayHeightWithPriorityLiteral() {
        let constraints = view1.height .= relatedViewArray.height ~ 300
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, priority: 300)
    }

    func testView1HeightEqualTorelatedViewArrayHeightWithPriorityArithmetic() {
        let constraints = view1.height .= relatedViewArray.height ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1HeightEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.height .= (relatedViewArray.height .+ 10) .* 3
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.height .= 3 .* (relatedViewArray.height .+ 10)
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.height .= 3 .* relatedViewArray.height .+ 10
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10, multiplier: 3)
    }

    func testView1HeightEqualTorelatedViewArrayHeightPlusConstantDividedByConstant() {
        let constraints = view1.height .= (relatedViewArray.height .+ 10) ./ 2
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1HeightEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.height .= (relatedViewArray.height .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.height .= 3 .* (relatedViewArray.height .+ 10) ~ .low
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.height .= 3 .* relatedViewArray.height .+ 10 ~ .low
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1HeightEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.height .= (relatedViewArray.height .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1HeightEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.height .= (relatedViewArray.height .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.height .= 3 .* (relatedViewArray.height .+ 10) ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.height .= 3 .* relatedViewArray.height .+ 10 ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1HeightEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.height .= (relatedViewArray.height .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1HeightLessThanOrEqualTorelatedViewArrayHeight() {
        let constraints = view1.height ≤ relatedViewArray.height
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightInversedInference() {
        let constraints = view1.height ≤ relatedViewArray
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height)
    }
    // MARK: LessThanOrEqual with constant
    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstant() {
        let constraints = view1.height ≤ relatedViewArray.height .+ 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightMinusConstant() {
        let constraints = view1.height ≤ relatedViewArray.height .- 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightMultiplyingConstant() {
        let constraints = view1.height ≤ relatedViewArray.height .* 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstant() {
        let constraints = view1.height ≤ 3 .* relatedViewArray.height
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightDividedByConstant() {
        let constraints = view1.height ≤ relatedViewArray.height ./ 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightWithPriority() {
        let constraints = view1.height ≤ relatedViewArray.height ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, priority: .low)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightWithPriorityLiteral() {
        let constraints = view1.height ≤ relatedViewArray.height ~ 300
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, priority: 300)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightWithPriorityArithmetic() {
        let constraints = view1.height ≤ relatedViewArray.height ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.height ≤ (relatedViewArray.height .+ 10) .* 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.height ≤ 3 .* (relatedViewArray.height .+ 10)
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.height ≤ 3 .* relatedViewArray.height .+ 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstant() {
        let constraints = view1.height ≤ (relatedViewArray.height .+ 10) ./ 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.height ≤ (relatedViewArray.height .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.height ≤ 3 .* (relatedViewArray.height .+ 10) ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.height ≤ 3 .* relatedViewArray.height .+ 10 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.height ≤ (relatedViewArray.height .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ (relatedViewArray.height .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ 3 .* (relatedViewArray.height .+ 10) ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ 3 .* relatedViewArray.height .+ 10 ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ (relatedViewArray.height .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeight() {
        let constraints = view1.height ≥ relatedViewArray.height
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightInversedInference() {
        let constraints = view1.height ≥ relatedViewArray
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height)
    }
    // MARK: GreaterThanOrEqual with constant
    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstant() {
        let constraints = view1.height ≥ relatedViewArray.height .+ 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightMinusConstant() {
        let constraints = view1.height ≥ relatedViewArray.height .- 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightMultiplyingConstant() {
        let constraints = view1.height ≥ relatedViewArray.height .* 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstant() {
        let constraints = view1.height ≥ 3 .* relatedViewArray.height
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightDividedByConstant() {
        let constraints = view1.height ≥ relatedViewArray.height ./ 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightWithPriority() {
        let constraints = view1.height ≥ relatedViewArray.height ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightWithPriorityLiteral() {
        let constraints = view1.height ≥ relatedViewArray.height ~ 300
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, priority: 300)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightWithPriorityArithmetic() {
        let constraints = view1.height ≥ relatedViewArray.height ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.height ≥ (relatedViewArray.height .+ 10) .* 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.height ≥ 3 .* (relatedViewArray.height .+ 10)
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.height ≥ 3 .* relatedViewArray.height .+ 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstant() {
        let constraints = view1.height ≥ (relatedViewArray.height .+ 10) ./ 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.height ≥ (relatedViewArray.height .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.height ≥ 3 .* (relatedViewArray.height .+ 10) ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.height ≥ 3 .* relatedViewArray.height .+ 10 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.height ≥ (relatedViewArray.height .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ (relatedViewArray.height .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ 3 .* (relatedViewArray.height .+ 10) ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ 3 .* relatedViewArray.height .+ 10 ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ (relatedViewArray.height .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
// sourcery:end
}
