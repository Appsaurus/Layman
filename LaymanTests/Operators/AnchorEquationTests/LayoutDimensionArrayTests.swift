//
//  LayoutDimensionArrayTests.swift
//  Layman
//
//  Created by Brian Strobach on 1/25/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// swiftlint:disable file_length type_body_length

@testable import Layman
import XCTest

// sourcery: anchorEquationTest
// sourcery: lhsAttributes = width, lhsAttributes = height
// sourcery: rhsAttributes = width, rhsAttributes = height
// sourcery: lhsItem = viewArray
class LayoutDimensionArrayTests: LaymanTestCase {

// sourcery:inline:auto:LayoutDimensionArrayTests.EquationTests
    // MARK: viewArray.widthWidth <=> relatedViewWidth
    // MARK: Equal

    func testViewArrayWidthEqualTorelatedViewWidth() {
        let constraints = viewArray.width .= relatedView.widthAnchor
        constraints.assert(viewArray, .width, .equal, relatedView, .width)
    }

    func testViewArrayWidthEqualTorelatedViewWidthInversedInference() {
        let constraints = viewArray.widthAnchor .= relatedView
        constraints.assert(viewArray, .width, .equal, relatedView, .width)
    }
    // MARK: Equal with constant
    func testViewArrayWidthEqualTorelatedViewWidthPlusConstant() {
        let constraints = viewArray.width .= relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10)
    }

    func testViewArrayWidthEqualTorelatedViewWidthMinusConstant() {
        let constraints = viewArray.width .= relatedView.widthAnchor .- 10
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayWidthEqualTorelatedViewWidthMultiplyingConstant() {
        let constraints = viewArray.width .= relatedView.widthAnchor .* 3
        constraints.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewWidthMultipliedByConstant() {
        let constraints = viewArray.width .= 3 .* relatedView.widthAnchor
        constraints.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewWidthDividedByConstant() {
        let constraints = viewArray.width .= relatedView.widthAnchor ./ 2
        constraints.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayWidthEqualTorelatedViewWidthWithPriority() {
        let constraints = viewArray.width .= relatedView.widthAnchor ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: .low)
    }

    func testViewArrayWidthEqualTorelatedViewWidthWithPriorityLiteral() {
        let constraints = viewArray.width .= relatedView.widthAnchor ~ 300
        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: 300)
    }

    func testViewArrayWidthEqualTorelatedViewWidthWithPriorityArithmetic() {
        let constraints = viewArray.width .= relatedView.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayWidthEqualTorelatedViewWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray.width .= (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray.width .= 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray.width .= 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewWidthPlusConstantDividedByConstant() {
        let constraints = viewArray.width .= (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayWidthEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayWidthEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidth() {
        let constraints = viewArray.width ≥ relatedView.widthAnchor
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthInversedInference() {
        let constraints = viewArray.widthAnchor ≥ relatedView
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width)
    }
    // MARK: GreaterThanOrEqual with constant
    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstant() {
        let constraints = viewArray.width ≥ relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthMinusConstant() {
        let constraints = viewArray.width ≥ relatedView.widthAnchor .- 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthMultiplyingConstant() {
        let constraints = viewArray.width ≥ relatedView.widthAnchor .* 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthMultipliedByConstant() {
        let constraints = viewArray.width ≥ 3 .* relatedView.widthAnchor
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthDividedByConstant() {
        let constraints = viewArray.width ≥ relatedView.widthAnchor ./ 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthWithPriority() {
        let constraints = viewArray.width ≥ relatedView.widthAnchor ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthWithPriorityLiteral() {
        let constraints = viewArray.width ≥ relatedView.widthAnchor ~ 300
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: 300)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray.width ≥ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstantDividedByConstant() {
        let constraints = viewArray.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayWidthLessThanOrEqualTorelatedViewWidth() {
        let constraints = viewArray.width ≤ relatedView.widthAnchor
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthInversedInference() {
        let constraints = viewArray.widthAnchor ≤ relatedView
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width)
    }
    // MARK: LessThanOrEqual with constant
    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstant() {
        let constraints = viewArray.width ≤ relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthMinusConstant() {
        let constraints = viewArray.width ≤ relatedView.widthAnchor .- 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthMultiplyingConstant() {
        let constraints = viewArray.width ≤ relatedView.widthAnchor .* 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthMultipliedByConstant() {
        let constraints = viewArray.width ≤ 3 .* relatedView.widthAnchor
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthDividedByConstant() {
        let constraints = viewArray.width ≤ relatedView.widthAnchor ./ 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthWithPriority() {
        let constraints = viewArray.width ≤ relatedView.widthAnchor ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthWithPriorityLiteral() {
        let constraints = viewArray.width ≤ relatedView.widthAnchor ~ 300
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: 300)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray.width ≤ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstantDividedByConstant() {
        let constraints = viewArray.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.widthWidth <=> relatedViewArrayWidth
    // MARK: Equal

    func testViewArrayWidthEqualTorelatedViewArrayWidth() {
        let constraints = viewArray.width .= relatedViewArray.widthAnchor        
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width)
    }

    func testViewArrayWidthEqualTorelatedViewArrayWidthInversedInference() {
        let constraints = viewArray.widthAnchor .= relatedViewArray
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width)
    }
    // MARK: Equal with constant
    func testViewArrayWidthEqualTorelatedViewArrayWidthPlusConstant() {
        let constraints = viewArray.width .= relatedViewArray.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10)
    }

    func testViewArrayWidthEqualTorelatedViewArrayWidthMinusConstant() {
        let constraints = viewArray.width .= relatedViewArray.widthAnchor .- 10
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayWidthEqualTorelatedViewArrayWidthMultiplyingConstant() {
        let constraints = viewArray.width .= relatedViewArray.widthAnchor .* 3
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewArrayWidthMultipliedByConstant() {
        let constraints = viewArray.width .= 3 .* relatedViewArray.widthAnchor
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewArrayWidthDividedByConstant() {
        let constraints = viewArray.width .= relatedViewArray.widthAnchor ./ 2
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayWidthEqualTorelatedViewArrayWidthWithPriority() {
        let constraints = viewArray.width .= relatedViewArray.widthAnchor ~ .low
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, priority: .low)
    }

    func testViewArrayWidthEqualTorelatedViewArrayWidthWithPriorityLiteral() {
        let constraints = viewArray.width .= relatedViewArray.widthAnchor ~ 300
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, priority: 300)
    }

    func testViewArrayWidthEqualTorelatedViewArrayWidthWithPriorityArithmetic() {
        let constraints = viewArray.width .= relatedViewArray.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayWidthEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray.width .= (relatedViewArray.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray.width .= 3 .* (relatedViewArray.widthAnchor .+ 10)
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray.width .= 3 .* relatedViewArray.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewArrayWidthPlusConstantDividedByConstant() {
        let constraints = viewArray.width .= (relatedViewArray.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayWidthEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.width .= (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.width .= 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.width .= 3 .* relatedViewArray.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.width .= (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayWidthEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.width .= (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width .= 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.width .= 3 .* relatedViewArray.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width .= (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidth() {
        let constraints = viewArray.width ≥ relatedViewArray.widthAnchor
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthInversedInference() {
        let constraints = viewArray.widthAnchor ≥ relatedViewArray
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width)
    }
    // MARK: GreaterThanOrEqual with constant
    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstant() {
        let constraints = viewArray.width ≥ relatedViewArray.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthMinusConstant() {
        let constraints = viewArray.width ≥ relatedViewArray.widthAnchor .- 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthMultiplyingConstant() {
        let constraints = viewArray.width ≥ relatedViewArray.widthAnchor .* 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstant() {
        let constraints = viewArray.width ≥ 3 .* relatedViewArray.widthAnchor
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthDividedByConstant() {
        let constraints = viewArray.width ≥ relatedViewArray.widthAnchor ./ 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthWithPriority() {
        let constraints = viewArray.width ≥ relatedViewArray.widthAnchor ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthWithPriorityLiteral() {
        let constraints = viewArray.width ≥ relatedViewArray.widthAnchor ~ 300
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, priority: 300)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ relatedViewArray.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray.width ≥ (relatedViewArray.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray.width ≥ 3 .* (relatedViewArray.widthAnchor .+ 10)
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray.width ≥ 3 .* relatedViewArray.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstant() {
        let constraints = viewArray.width ≥ (relatedViewArray.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.width ≥ (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.width ≥ 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.width ≥ 3 .* relatedViewArray.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.width ≥ (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ 3 .* relatedViewArray.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidth() {
        let constraints = viewArray.width ≤ relatedViewArray.widthAnchor
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthInversedInference() {
        let constraints = viewArray.widthAnchor ≤ relatedViewArray
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width)
    }
    // MARK: LessThanOrEqual with constant
    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstant() {
        let constraints = viewArray.width ≤ relatedViewArray.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthMinusConstant() {
        let constraints = viewArray.width ≤ relatedViewArray.widthAnchor .- 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthMultiplyingConstant() {
        let constraints = viewArray.width ≤ relatedViewArray.widthAnchor .* 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstant() {
        let constraints = viewArray.width ≤ 3 .* relatedViewArray.widthAnchor
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthDividedByConstant() {
        let constraints = viewArray.width ≤ relatedViewArray.widthAnchor ./ 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthWithPriority() {
        let constraints = viewArray.width ≤ relatedViewArray.widthAnchor ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthWithPriorityLiteral() {
        let constraints = viewArray.width ≤ relatedViewArray.widthAnchor ~ 300
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, priority: 300)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ relatedViewArray.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray.width ≤ (relatedViewArray.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray.width ≤ 3 .* (relatedViewArray.widthAnchor .+ 10)
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray.width ≤ 3 .* relatedViewArray.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstant() {
        let constraints = viewArray.width ≤ (relatedViewArray.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.width ≤ (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.width ≤ 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.width ≤ 3 .* relatedViewArray.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.width ≤ (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ 3 .* relatedViewArray.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.widthWidth <=> relatedViewHeight
    // MARK: Equal

    func testViewArrayWidthEqualTorelatedViewHeight() {
        let constraints = viewArray.width .= relatedView.heightAnchor
        constraints.assert(viewArray, .width, .equal, relatedView, .height)
    }

    // MARK: Equal with constant
    func testViewArrayWidthEqualTorelatedViewHeightPlusConstant() {
        let constraints = viewArray.width .= relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10)
    }

    func testViewArrayWidthEqualTorelatedViewHeightMinusConstant() {
        let constraints = viewArray.width .= relatedView.heightAnchor .- 10
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayWidthEqualTorelatedViewHeightMultiplyingConstant() {
        let constraints = viewArray.width .= relatedView.heightAnchor .* 3
        constraints.assert(viewArray, .width, .equal, relatedView, .height, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewHeightMultipliedByConstant() {
        let constraints = viewArray.width .= 3 .* relatedView.heightAnchor
        constraints.assert(viewArray, .width, .equal, relatedView, .height, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewHeightDividedByConstant() {
        let constraints = viewArray.width .= relatedView.heightAnchor ./ 2
        constraints.assert(viewArray, .width, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayWidthEqualTorelatedViewHeightWithPriority() {
        let constraints = viewArray.width .= relatedView.heightAnchor ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .height, priority: .low)
    }

    func testViewArrayWidthEqualTorelatedViewHeightWithPriorityLiteral() {
        let constraints = viewArray.width .= relatedView.heightAnchor ~ 300
        constraints.assert(viewArray, .width, .equal, relatedView, .height, priority: 300)
    }

    func testViewArrayWidthEqualTorelatedViewHeightWithPriorityArithmetic() {
        let constraints = viewArray.width .= relatedView.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayWidthEqualTorelatedViewHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray.width .= (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray.width .= 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray.width .= 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewHeightPlusConstantDividedByConstant() {
        let constraints = viewArray.width .= (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayWidthEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.width .= (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.width .= 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.width .= 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.width .= (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayWidthEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.width .= (relatedView.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width .= 3 .* (relatedView.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.width .= 3 .* relatedView.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width .= (relatedView.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeight() {
        let constraints = viewArray.width ≥ relatedView.heightAnchor
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightPlusConstant() {
        let constraints = viewArray.width ≥ relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightMinusConstant() {
        let constraints = viewArray.width ≥ relatedView.heightAnchor .- 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightMultiplyingConstant() {
        let constraints = viewArray.width ≥ relatedView.heightAnchor .* 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightMultipliedByConstant() {
        let constraints = viewArray.width ≥ 3 .* relatedView.heightAnchor
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightDividedByConstant() {
        let constraints = viewArray.width ≥ relatedView.heightAnchor ./ 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightWithPriority() {
        let constraints = viewArray.width ≥ relatedView.heightAnchor ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightWithPriorityLiteral() {
        let constraints = viewArray.width ≥ relatedView.heightAnchor ~ 300
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray.width ≥ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray.width ≥ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray.width ≥ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightPlusConstantDividedByConstant() {
        let constraints = viewArray.width ≥ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.width ≥ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.width ≥ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.width ≥ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.width ≥ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ (relatedView.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ 3 .* (relatedView.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ 3 .* relatedView.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ (relatedView.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayWidthLessThanOrEqualTorelatedViewHeight() {
        let constraints = viewArray.width ≤ relatedView.heightAnchor
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightPlusConstant() {
        let constraints = viewArray.width ≤ relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightMinusConstant() {
        let constraints = viewArray.width ≤ relatedView.heightAnchor .- 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightMultiplyingConstant() {
        let constraints = viewArray.width ≤ relatedView.heightAnchor .* 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightMultipliedByConstant() {
        let constraints = viewArray.width ≤ 3 .* relatedView.heightAnchor
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightDividedByConstant() {
        let constraints = viewArray.width ≤ relatedView.heightAnchor ./ 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightWithPriority() {
        let constraints = viewArray.width ≤ relatedView.heightAnchor ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightWithPriorityLiteral() {
        let constraints = viewArray.width ≤ relatedView.heightAnchor ~ 300
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray.width ≤ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray.width ≤ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray.width ≤ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightPlusConstantDividedByConstant() {
        let constraints = viewArray.width ≤ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.width ≤ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.width ≤ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.width ≤ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.width ≤ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ (relatedView.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ 3 .* (relatedView.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ 3 .* relatedView.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ (relatedView.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.widthWidth <=> relatedViewArrayHeight
    // MARK: Equal

    func testViewArrayWidthEqualTorelatedViewArrayHeight() {
        let constraints = viewArray.width .= relatedViewArray.heightAnchor
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height)
    }

    // MARK: Equal with constant
    func testViewArrayWidthEqualTorelatedViewArrayHeightPlusConstant() {
        let constraints = viewArray.width .= relatedViewArray.heightAnchor .+ 10
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, constant: 10)
    }

    func testViewArrayWidthEqualTorelatedViewArrayHeightMinusConstant() {
        let constraints = viewArray.width .= relatedViewArray.heightAnchor .- 10
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayWidthEqualTorelatedViewArrayHeightMultiplyingConstant() {
        let constraints = viewArray.width .= relatedViewArray.heightAnchor .* 3
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewArrayHeightMultipliedByConstant() {
        let constraints = viewArray.width .= 3 .* relatedViewArray.heightAnchor
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewArrayHeightDividedByConstant() {
        let constraints = viewArray.width .= relatedViewArray.heightAnchor ./ 2
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayWidthEqualTorelatedViewArrayHeightWithPriority() {
        let constraints = viewArray.width .= relatedViewArray.heightAnchor ~ .low
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, priority: .low)
    }

    func testViewArrayWidthEqualTorelatedViewArrayHeightWithPriorityLiteral() {
        let constraints = viewArray.width .= relatedViewArray.heightAnchor ~ 300
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, priority: 300)
    }

    func testViewArrayWidthEqualTorelatedViewArrayHeightWithPriorityArithmetic() {
        let constraints = viewArray.width .= relatedViewArray.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayWidthEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray.width .= (relatedViewArray.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray.width .= 3 .* (relatedViewArray.heightAnchor .+ 10)
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray.width .= 3 .* relatedViewArray.heightAnchor .+ 10
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayWidthEqualTorelatedViewArrayHeightPlusConstantDividedByConstant() {
        let constraints = viewArray.width .= (relatedViewArray.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayWidthEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.width .= (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.width .= 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.width .= 3 .* relatedViewArray.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.width .= (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayWidthEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.width .= (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width .= 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.width .= 3 .* relatedViewArray.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width .= (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeight() {
        let constraints = viewArray.width ≥ relatedViewArray.heightAnchor
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstant() {
        let constraints = viewArray.width ≥ relatedViewArray.heightAnchor .+ 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightMinusConstant() {
        let constraints = viewArray.width ≥ relatedViewArray.heightAnchor .- 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightMultiplyingConstant() {
        let constraints = viewArray.width ≥ relatedViewArray.heightAnchor .* 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstant() {
        let constraints = viewArray.width ≥ 3 .* relatedViewArray.heightAnchor
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightDividedByConstant() {
        let constraints = viewArray.width ≥ relatedViewArray.heightAnchor ./ 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightWithPriority() {
        let constraints = viewArray.width ≥ relatedViewArray.heightAnchor ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightWithPriorityLiteral() {
        let constraints = viewArray.width ≥ relatedViewArray.heightAnchor ~ 300
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, priority: 300)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ relatedViewArray.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray.width ≥ (relatedViewArray.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray.width ≥ 3 .* (relatedViewArray.heightAnchor .+ 10)
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray.width ≥ 3 .* relatedViewArray.heightAnchor .+ 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstant() {
        let constraints = viewArray.width ≥ (relatedViewArray.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.width ≥ (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.width ≥ 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.width ≥ 3 .* relatedViewArray.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.width ≥ (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ 3 .* relatedViewArray.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≥ (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeight() {
        let constraints = viewArray.width ≤ relatedViewArray.heightAnchor
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightPlusConstant() {
        let constraints = viewArray.width ≤ relatedViewArray.heightAnchor .+ 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightMinusConstant() {
        let constraints = viewArray.width ≤ relatedViewArray.heightAnchor .- 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightMultiplyingConstant() {
        let constraints = viewArray.width ≤ relatedViewArray.heightAnchor .* 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstant() {
        let constraints = viewArray.width ≤ 3 .* relatedViewArray.heightAnchor
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightDividedByConstant() {
        let constraints = viewArray.width ≤ relatedViewArray.heightAnchor ./ 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightWithPriority() {
        let constraints = viewArray.width ≤ relatedViewArray.heightAnchor ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightWithPriorityLiteral() {
        let constraints = viewArray.width ≤ relatedViewArray.heightAnchor ~ 300
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, priority: 300)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ relatedViewArray.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray.width ≤ (relatedViewArray.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray.width ≤ 3 .* (relatedViewArray.heightAnchor .+ 10)
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray.width ≤ 3 .* relatedViewArray.heightAnchor .+ 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstant() {
        let constraints = viewArray.width ≤ (relatedViewArray.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.width ≤ (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.width ≤ 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.width ≤ 3 .* relatedViewArray.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.width ≤ (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ 3 .* relatedViewArray.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.width ≤ (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.heightHeight <=> relatedViewWidth
    // MARK: Equal

    func testViewArrayHeightEqualTorelatedViewWidth() {
        let constraints = viewArray.height .= relatedView.widthAnchor
        constraints.assert(viewArray, .height, .equal, relatedView, .width)
    }

    // MARK: Equal with constant
    func testViewArrayHeightEqualTorelatedViewWidthPlusConstant() {
        let constraints = viewArray.height .= relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10)
    }

    func testViewArrayHeightEqualTorelatedViewWidthMinusConstant() {
        let constraints = viewArray.height .= relatedView.widthAnchor .- 10
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayHeightEqualTorelatedViewWidthMultiplyingConstant() {
        let constraints = viewArray.height .= relatedView.widthAnchor .* 3
        constraints.assert(viewArray, .height, .equal, relatedView, .width, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewWidthMultipliedByConstant() {
        let constraints = viewArray.height .= 3 .* relatedView.widthAnchor
        constraints.assert(viewArray, .height, .equal, relatedView, .width, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewWidthDividedByConstant() {
        let constraints = viewArray.height .= relatedView.widthAnchor ./ 2
        constraints.assert(viewArray, .height, .equal, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayHeightEqualTorelatedViewWidthWithPriority() {
        let constraints = viewArray.height .= relatedView.widthAnchor ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .width, priority: .low)
    }

    func testViewArrayHeightEqualTorelatedViewWidthWithPriorityLiteral() {
        let constraints = viewArray.height .= relatedView.widthAnchor ~ 300
        constraints.assert(viewArray, .height, .equal, relatedView, .width, priority: 300)
    }

    func testViewArrayHeightEqualTorelatedViewWidthWithPriorityArithmetic() {
        let constraints = viewArray.height .= relatedView.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .width, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayHeightEqualTorelatedViewWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray.height .= (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray.height .= 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray.height .= 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewWidthPlusConstantDividedByConstant() {
        let constraints = viewArray.height .= (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayHeightEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.height .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.height .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.height .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.height .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayHeightEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.height .= (relatedView.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height .= 3 .* (relatedView.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.height .= 3 .* relatedView.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidth() {
        let constraints = viewArray.height ≥ relatedView.widthAnchor
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthPlusConstant() {
        let constraints = viewArray.height ≥ relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthMinusConstant() {
        let constraints = viewArray.height ≥ relatedView.widthAnchor .- 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthMultiplyingConstant() {
        let constraints = viewArray.height ≥ relatedView.widthAnchor .* 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthMultipliedByConstant() {
        let constraints = viewArray.height ≥ 3 .* relatedView.widthAnchor
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthDividedByConstant() {
        let constraints = viewArray.height ≥ relatedView.widthAnchor ./ 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthWithPriority() {
        let constraints = viewArray.height ≥ relatedView.widthAnchor ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthWithPriorityLiteral() {
        let constraints = viewArray.height ≥ relatedView.widthAnchor ~ 300
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, priority: 300)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray.height ≥ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray.height ≥ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray.height ≥ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthPlusConstantDividedByConstant() {
        let constraints = viewArray.height ≥ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.height ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.height ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.height ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.height ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayHeightLessThanOrEqualTorelatedViewWidth() {
        let constraints = viewArray.height ≤ relatedView.widthAnchor
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthPlusConstant() {
        let constraints = viewArray.height ≤ relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthMinusConstant() {
        let constraints = viewArray.height ≤ relatedView.widthAnchor .- 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthMultiplyingConstant() {
        let constraints = viewArray.height ≤ relatedView.widthAnchor .* 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthMultipliedByConstant() {
        let constraints = viewArray.height ≤ 3 .* relatedView.widthAnchor
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthDividedByConstant() {
        let constraints = viewArray.height ≤ relatedView.widthAnchor ./ 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthWithPriority() {
        let constraints = viewArray.height ≤ relatedView.widthAnchor ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthWithPriorityLiteral() {
        let constraints = viewArray.height ≤ relatedView.widthAnchor ~ 300
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, priority: 300)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray.height ≤ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray.height ≤ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray.height ≤ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthPlusConstantDividedByConstant() {
        let constraints = viewArray.height ≤ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.height ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.height ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.height ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.height ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.heightHeight <=> relatedViewArrayWidth
    // MARK: Equal

    func testViewArrayHeightEqualTorelatedViewArrayWidth() {
        let constraints = viewArray.height .= relatedViewArray.widthAnchor
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width)
    }

    // MARK: Equal with constant
    func testViewArrayHeightEqualTorelatedViewArrayWidthPlusConstant() {
        let constraints = viewArray.height .= relatedViewArray.widthAnchor .+ 10
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, constant: 10)
    }

    func testViewArrayHeightEqualTorelatedViewArrayWidthMinusConstant() {
        let constraints = viewArray.height .= relatedViewArray.widthAnchor .- 10
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayHeightEqualTorelatedViewArrayWidthMultiplyingConstant() {
        let constraints = viewArray.height .= relatedViewArray.widthAnchor .* 3
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewArrayWidthMultipliedByConstant() {
        let constraints = viewArray.height .= 3 .* relatedViewArray.widthAnchor
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewArrayWidthDividedByConstant() {
        let constraints = viewArray.height .= relatedViewArray.widthAnchor ./ 2
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayHeightEqualTorelatedViewArrayWidthWithPriority() {
        let constraints = viewArray.height .= relatedViewArray.widthAnchor ~ .low
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, priority: .low)
    }

    func testViewArrayHeightEqualTorelatedViewArrayWidthWithPriorityLiteral() {
        let constraints = viewArray.height .= relatedViewArray.widthAnchor ~ 300
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, priority: 300)
    }

    func testViewArrayHeightEqualTorelatedViewArrayWidthWithPriorityArithmetic() {
        let constraints = viewArray.height .= relatedViewArray.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayHeightEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray.height .= (relatedViewArray.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray.height .= 3 .* (relatedViewArray.widthAnchor .+ 10)
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray.height .= 3 .* relatedViewArray.widthAnchor .+ 10
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, constant: 10, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewArrayWidthPlusConstantDividedByConstant() {
        let constraints = viewArray.height .= (relatedViewArray.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayHeightEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.height .= (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.height .= 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.height .= 3 .* relatedViewArray.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.height .= (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayHeightEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.height .= (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height .= 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.height .= 3 .* relatedViewArray.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height .= (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidth() {
        let constraints = viewArray.height ≥ relatedViewArray.widthAnchor
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstant() {
        let constraints = viewArray.height ≥ relatedViewArray.widthAnchor .+ 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthMinusConstant() {
        let constraints = viewArray.height ≥ relatedViewArray.widthAnchor .- 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthMultiplyingConstant() {
        let constraints = viewArray.height ≥ relatedViewArray.widthAnchor .* 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstant() {
        let constraints = viewArray.height ≥ 3 .* relatedViewArray.widthAnchor
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthDividedByConstant() {
        let constraints = viewArray.height ≥ relatedViewArray.widthAnchor ./ 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthWithPriority() {
        let constraints = viewArray.height ≥ relatedViewArray.widthAnchor ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthWithPriorityLiteral() {
        let constraints = viewArray.height ≥ relatedViewArray.widthAnchor ~ 300
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, priority: 300)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ relatedViewArray.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray.height ≥ (relatedViewArray.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray.height ≥ 3 .* (relatedViewArray.widthAnchor .+ 10)
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray.height ≥ 3 .* relatedViewArray.widthAnchor .+ 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstant() {
        let constraints = viewArray.height ≥ (relatedViewArray.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.height ≥ (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.height ≥ 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.height ≥ 3 .* relatedViewArray.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.height ≥ (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ 3 .* relatedViewArray.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidth() {
        let constraints = viewArray.height ≤ relatedViewArray.widthAnchor
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthPlusConstant() {
        let constraints = viewArray.height ≤ relatedViewArray.widthAnchor .+ 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthMinusConstant() {
        let constraints = viewArray.height ≤ relatedViewArray.widthAnchor .- 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthMultiplyingConstant() {
        let constraints = viewArray.height ≤ relatedViewArray.widthAnchor .* 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstant() {
        let constraints = viewArray.height ≤ 3 .* relatedViewArray.widthAnchor
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthDividedByConstant() {
        let constraints = viewArray.height ≤ relatedViewArray.widthAnchor ./ 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthWithPriority() {
        let constraints = viewArray.height ≤ relatedViewArray.widthAnchor ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthWithPriorityLiteral() {
        let constraints = viewArray.height ≤ relatedViewArray.widthAnchor ~ 300
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, priority: 300)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ relatedViewArray.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray.height ≤ (relatedViewArray.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray.height ≤ 3 .* (relatedViewArray.widthAnchor .+ 10)
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray.height ≤ 3 .* relatedViewArray.widthAnchor .+ 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstant() {
        let constraints = viewArray.height ≤ (relatedViewArray.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.height ≤ (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.height ≤ 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.height ≤ 3 .* relatedViewArray.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.height ≤ (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ 3 .* relatedViewArray.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.heightHeight <=> relatedViewHeight
    // MARK: Equal

    func testViewArrayHeightEqualTorelatedViewHeight() {
        let constraints = viewArray.height .= relatedView.heightAnchor
        constraints.assert(viewArray, .height, .equal, relatedView, .height)
    }

    func testViewArrayHeightEqualTorelatedViewHeightInversedInference() {
        let constraints = viewArray.heightAnchor .= relatedView
        constraints.assert(viewArray, .height, .equal, relatedView, .height)
    }
    // MARK: Equal with constant
    func testViewArrayHeightEqualTorelatedViewHeightPlusConstant() {
        let constraints = viewArray.height .= relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10)
    }

    func testViewArrayHeightEqualTorelatedViewHeightMinusConstant() {
        let constraints = viewArray.height .= relatedView.heightAnchor .- 10
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayHeightEqualTorelatedViewHeightMultiplyingConstant() {
        let constraints = viewArray.height .= relatedView.heightAnchor .* 3
        constraints.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewHeightMultipliedByConstant() {
        let constraints = viewArray.height .= 3 .* relatedView.heightAnchor
        constraints.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewHeightDividedByConstant() {
        let constraints = viewArray.height .= relatedView.heightAnchor ./ 2
        constraints.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayHeightEqualTorelatedViewHeightWithPriority() {
        let constraints = viewArray.height .= relatedView.heightAnchor ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, priority: .low)
    }

    func testViewArrayHeightEqualTorelatedViewHeightWithPriorityLiteral() {
        let constraints = viewArray.height .= relatedView.heightAnchor ~ 300
        constraints.assert(viewArray, .height, .equal, relatedView, .height, priority: 300)
    }

    func testViewArrayHeightEqualTorelatedViewHeightWithPriorityArithmetic() {
        let constraints = viewArray.height .= relatedView.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayHeightEqualTorelatedViewHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray.height .= (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray.height .= 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray.height .= 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewHeightPlusConstantDividedByConstant() {
        let constraints = viewArray.height .= (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayHeightEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.height .= (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.height .= 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.height .= 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.height .= (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayHeightEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.height .= (relatedView.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height .= 3 .* (relatedView.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.height .= 3 .* relatedView.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height .= (relatedView.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeight() {
        let constraints = viewArray.height ≥ relatedView.heightAnchor
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightInversedInference() {
        let constraints = viewArray.heightAnchor ≥ relatedView
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height)
    }
    // MARK: GreaterThanOrEqual with constant
    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstant() {
        let constraints = viewArray.height ≥ relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightMinusConstant() {
        let constraints = viewArray.height ≥ relatedView.heightAnchor .- 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightMultiplyingConstant() {
        let constraints = viewArray.height ≥ relatedView.heightAnchor .* 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightMultipliedByConstant() {
        let constraints = viewArray.height ≥ 3 .* relatedView.heightAnchor
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightDividedByConstant() {
        let constraints = viewArray.height ≥ relatedView.heightAnchor ./ 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightWithPriority() {
        let constraints = viewArray.height ≥ relatedView.heightAnchor ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightWithPriorityLiteral() {
        let constraints = viewArray.height ≥ relatedView.heightAnchor ~ 300
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray.height ≥ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray.height ≥ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray.height ≥ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstantDividedByConstant() {
        let constraints = viewArray.height ≥ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.height ≥ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.height ≥ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.height ≥ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.height ≥ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ (relatedView.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ 3 .* (relatedView.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ 3 .* relatedView.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ (relatedView.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayHeightLessThanOrEqualTorelatedViewHeight() {
        let constraints = viewArray.height ≤ relatedView.heightAnchor
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightInversedInference() {
        let constraints = viewArray.heightAnchor ≤ relatedView
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height)
    }
    // MARK: LessThanOrEqual with constant
    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstant() {
        let constraints = viewArray.height ≤ relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightMinusConstant() {
        let constraints = viewArray.height ≤ relatedView.heightAnchor .- 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightMultiplyingConstant() {
        let constraints = viewArray.height ≤ relatedView.heightAnchor .* 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightMultipliedByConstant() {
        let constraints = viewArray.height ≤ 3 .* relatedView.heightAnchor
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightDividedByConstant() {
        let constraints = viewArray.height ≤ relatedView.heightAnchor ./ 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightWithPriority() {
        let constraints = viewArray.height ≤ relatedView.heightAnchor ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightWithPriorityLiteral() {
        let constraints = viewArray.height ≤ relatedView.heightAnchor ~ 300
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray.height ≤ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray.height ≤ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray.height ≤ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstantDividedByConstant() {
        let constraints = viewArray.height ≤ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.height ≤ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.height ≤ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.height ≤ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.height ≤ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ (relatedView.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ 3 .* (relatedView.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ 3 .* relatedView.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ (relatedView.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.heightHeight <=> relatedViewArrayHeight
    // MARK: Equal

    func testViewArrayHeightEqualTorelatedViewArrayHeight() {
        let constraints = viewArray.height .= relatedViewArray.heightAnchor
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height)
    }

    func testViewArrayHeightEqualTorelatedViewArrayHeightInversedInference() {
        let constraints = viewArray.heightAnchor .= relatedViewArray
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height)
    }
    // MARK: Equal with constant
    func testViewArrayHeightEqualTorelatedViewArrayHeightPlusConstant() {
        let constraints = viewArray.height .= relatedViewArray.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10)
    }

    func testViewArrayHeightEqualTorelatedViewArrayHeightMinusConstant() {
        let constraints = viewArray.height .= relatedViewArray.heightAnchor .- 10
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayHeightEqualTorelatedViewArrayHeightMultiplyingConstant() {
        let constraints = viewArray.height .= relatedViewArray.heightAnchor .* 3
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewArrayHeightMultipliedByConstant() {
        let constraints = viewArray.height .= 3 .* relatedViewArray.heightAnchor
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewArrayHeightDividedByConstant() {
        let constraints = viewArray.height .= relatedViewArray.heightAnchor ./ 2
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayHeightEqualTorelatedViewArrayHeightWithPriority() {
        let constraints = viewArray.height .= relatedViewArray.heightAnchor ~ .low
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, priority: .low)
    }

    func testViewArrayHeightEqualTorelatedViewArrayHeightWithPriorityLiteral() {
        let constraints = viewArray.height .= relatedViewArray.heightAnchor ~ 300
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, priority: 300)
    }

    func testViewArrayHeightEqualTorelatedViewArrayHeightWithPriorityArithmetic() {
        let constraints = viewArray.height .= relatedViewArray.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayHeightEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray.height .= (relatedViewArray.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray.height .= 3 .* (relatedViewArray.heightAnchor .+ 10)
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray.height .= 3 .* relatedViewArray.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayHeightEqualTorelatedViewArrayHeightPlusConstantDividedByConstant() {
        let constraints = viewArray.height .= (relatedViewArray.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayHeightEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.height .= (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.height .= 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.height .= 3 .* relatedViewArray.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.height .= (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayHeightEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.height .= (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height .= 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.height .= 3 .* relatedViewArray.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height .= (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeight() {
        let constraints = viewArray.height ≥ relatedViewArray.heightAnchor
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightInversedInference() {
        let constraints = viewArray.heightAnchor ≥ relatedViewArray
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height)
    }
    // MARK: GreaterThanOrEqual with constant
    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstant() {
        let constraints = viewArray.height ≥ relatedViewArray.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightMinusConstant() {
        let constraints = viewArray.height ≥ relatedViewArray.heightAnchor .- 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightMultiplyingConstant() {
        let constraints = viewArray.height ≥ relatedViewArray.heightAnchor .* 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstant() {
        let constraints = viewArray.height ≥ 3 .* relatedViewArray.heightAnchor
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightDividedByConstant() {
        let constraints = viewArray.height ≥ relatedViewArray.heightAnchor ./ 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightWithPriority() {
        let constraints = viewArray.height ≥ relatedViewArray.heightAnchor ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightWithPriorityLiteral() {
        let constraints = viewArray.height ≥ relatedViewArray.heightAnchor ~ 300
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, priority: 300)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ relatedViewArray.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray.height ≥ (relatedViewArray.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray.height ≥ 3 .* (relatedViewArray.heightAnchor .+ 10)
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray.height ≥ 3 .* relatedViewArray.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstant() {
        let constraints = viewArray.height ≥ (relatedViewArray.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.height ≥ (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.height ≥ 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.height ≥ 3 .* relatedViewArray.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.height ≥ (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ 3 .* relatedViewArray.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≥ (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeight() {
        let constraints = viewArray.height ≤ relatedViewArray.heightAnchor
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightInversedInference() {
        let constraints = viewArray.heightAnchor ≤ relatedViewArray
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height)
    }
    // MARK: LessThanOrEqual with constant
    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstant() {
        let constraints = viewArray.height ≤ relatedViewArray.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightMinusConstant() {
        let constraints = viewArray.height ≤ relatedViewArray.heightAnchor .- 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightMultiplyingConstant() {
        let constraints = viewArray.height ≤ relatedViewArray.heightAnchor .* 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstant() {
        let constraints = viewArray.height ≤ 3 .* relatedViewArray.heightAnchor
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightDividedByConstant() {
        let constraints = viewArray.height ≤ relatedViewArray.heightAnchor ./ 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightWithPriority() {
        let constraints = viewArray.height ≤ relatedViewArray.heightAnchor ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightWithPriorityLiteral() {
        let constraints = viewArray.height ≤ relatedViewArray.heightAnchor ~ 300
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, priority: 300)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ relatedViewArray.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray.height ≤ (relatedViewArray.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray.height ≤ 3 .* (relatedViewArray.heightAnchor .+ 10)
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray.height ≤ 3 .* relatedViewArray.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstant() {
        let constraints = viewArray.height ≤ (relatedViewArray.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.height ≤ (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.height ≤ 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.height ≤ 3 .* relatedViewArray.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.height ≤ (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ 3 .* relatedViewArray.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.height ≤ (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
// sourcery:end
}
