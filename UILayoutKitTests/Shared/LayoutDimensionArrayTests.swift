//
//  LayoutDimensionArrayTests.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/25/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// swiftlint:disable file_length type_body_length

@testable import UILayoutKit
import XCTest

// sourcery: anchorEquationTest
// sourcery: lhsAttributes = width, lhsAttributes = height
// sourcery: rhsAttributes = width, rhsAttributes = height
// sourcery: lhsItem = viewArray
class LayoutDimensionArrayTests: UILayoutKitTestCase {

// sourcery:inline:auto:LayoutDimensionArrayTests.EquationTests
// MARK: viewArrayWidth <=> relatedViewWidth
    // MARK: GreaterThanOrEqual

    func testViewArrayWidthGreaterThanOrEqualToWidth() {
        let constraints = viewArray.widthAnchor ≥ relatedView.widthAnchor
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayWidthGreaterThanOrEqualToWidthPlusConstant() {
        let constraints = viewArray.widthAnchor ≥ relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
    }

    func testViewArrayWidthGreaterThanOrEqualToWidthMinusConstant() {
        let constraints = viewArray.widthAnchor ≥ relatedView.widthAnchor .- 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayWidthGreaterThanOrEqualToWidthMultiplyingConstant() {
        let constraints = viewArray.widthAnchor ≥ relatedView.widthAnchor .* 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualToWidthMultipliedByConstant() {
        let constraints = viewArray.widthAnchor ≥ 3 .* relatedView.widthAnchor
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualToWidthDividedByConstant() {
        let constraints = viewArray.widthAnchor ≥ relatedView.widthAnchor ./ 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayWidthGreaterThanOrEqualToWidthWithPriority() {
        let constraints = viewArray.widthAnchor ≥ relatedView.widthAnchor ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualToWidthWithPriorityLiteral() {
        let constraints = viewArray.widthAnchor ≥ relatedView.widthAnchor ~ 300
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: 300)
    }

    func testViewArrayWidthGreaterThanOrEqualToWidthWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayWidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualToWidthPlusConstantDividedByConstant() {
        let constraints = viewArray.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayWidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayWidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }

    // MARK: Equal

    func testViewArrayWidthEqualToWidth() {
        let constraints = viewArray.widthAnchor .= relatedView.widthAnchor
        constraints.assert(viewArray, .width, .equal, relatedView, .width)
    }

    // MARK: Equal with constant
    func testViewArrayWidthEqualToWidthPlusConstant() {
        let constraints = viewArray.widthAnchor .= relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10)
    }

    func testViewArrayWidthEqualToWidthMinusConstant() {
        let constraints = viewArray.widthAnchor .= relatedView.widthAnchor .- 10
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayWidthEqualToWidthMultiplyingConstant() {
        let constraints = viewArray.widthAnchor .= relatedView.widthAnchor .* 3
        constraints.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
    }

    func testViewArrayWidthEqualToWidthMultipliedByConstant() {
        let constraints = viewArray.widthAnchor .= 3 .* relatedView.widthAnchor
        constraints.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
    }

    func testViewArrayWidthEqualToWidthDividedByConstant() {
        let constraints = viewArray.widthAnchor .= relatedView.widthAnchor ./ 2
        constraints.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayWidthEqualToWidthWithPriority() {
        let constraints = viewArray.widthAnchor .= relatedView.widthAnchor ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: .low)
    }

    func testViewArrayWidthEqualToWidthWithPriorityLiteral() {
        let constraints = viewArray.widthAnchor .= relatedView.widthAnchor ~ 300
        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: 300)
    }

    func testViewArrayWidthEqualToWidthWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayWidthEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testViewArrayWidthEqualToWidthPlusConstantDividedByConstant() {
        let constraints = viewArray.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayWidthEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthEqualToWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayWidthEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }

    // MARK: LessThanOrEqual

    func testViewArrayWidthLessThanOrEqualToWidth() {
        let constraints = viewArray.widthAnchor ≤ relatedView.widthAnchor
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayWidthLessThanOrEqualToWidthPlusConstant() {
        let constraints = viewArray.widthAnchor ≤ relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
    }

    func testViewArrayWidthLessThanOrEqualToWidthMinusConstant() {
        let constraints = viewArray.widthAnchor ≤ relatedView.widthAnchor .- 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayWidthLessThanOrEqualToWidthMultiplyingConstant() {
        let constraints = viewArray.widthAnchor ≤ relatedView.widthAnchor .* 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualToWidthMultipliedByConstant() {
        let constraints = viewArray.widthAnchor ≤ 3 .* relatedView.widthAnchor
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualToWidthDividedByConstant() {
        let constraints = viewArray.widthAnchor ≤ relatedView.widthAnchor ./ 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayWidthLessThanOrEqualToWidthWithPriority() {
        let constraints = viewArray.widthAnchor ≤ relatedView.widthAnchor ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualToWidthWithPriorityLiteral() {
        let constraints = viewArray.widthAnchor ≤ relatedView.widthAnchor ~ 300
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: 300)
    }

    func testViewArrayWidthLessThanOrEqualToWidthWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayWidthLessThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualToWidthPlusConstantDividedByConstant() {
        let constraints = viewArray.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayWidthLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayWidthLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }

// MARK: viewArrayWidth <=> relatedViewHeight
    // MARK: GreaterThanOrEqual

    func testViewArrayWidthGreaterThanOrEqualToHeight() {
        let constraints = viewArray.widthAnchor ≥ relatedView.heightAnchor
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayWidthGreaterThanOrEqualToHeightPlusConstant() {
        let constraints = viewArray.widthAnchor ≥ relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testViewArrayWidthGreaterThanOrEqualToHeightMinusConstant() {
        let constraints = viewArray.widthAnchor ≥ relatedView.heightAnchor .- 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayWidthGreaterThanOrEqualToHeightMultiplyingConstant() {
        let constraints = viewArray.widthAnchor ≥ relatedView.heightAnchor .* 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualToHeightMultipliedByConstant() {
        let constraints = viewArray.widthAnchor ≥ 3 .* relatedView.heightAnchor
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualToHeightDividedByConstant() {
        let constraints = viewArray.widthAnchor ≥ relatedView.heightAnchor ./ 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayWidthGreaterThanOrEqualToHeightWithPriority() {
        let constraints = viewArray.widthAnchor ≥ relatedView.heightAnchor ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualToHeightWithPriorityLiteral() {
        let constraints = viewArray.widthAnchor ≥ relatedView.heightAnchor ~ 300
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testViewArrayWidthGreaterThanOrEqualToHeightWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≥ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayWidthGreaterThanOrEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray.widthAnchor ≥ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray.widthAnchor ≥ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray.widthAnchor ≥ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayWidthGreaterThanOrEqualToHeightPlusConstantDividedByConstant() {
        let constraints = viewArray.widthAnchor ≥ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayWidthGreaterThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.widthAnchor ≥ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.widthAnchor ≥ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.widthAnchor ≥ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualToHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.widthAnchor ≥ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayWidthGreaterThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≥ (relatedView.heightAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthGreaterThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≥ 3 .* (relatedView.heightAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthGreaterThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≥ 3 .* relatedView.heightAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthGreaterThanOrEqualToHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≥ (relatedView.heightAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }

    // MARK: Equal

    func testViewArrayWidthEqualToHeight() {
        let constraints = viewArray.widthAnchor .= relatedView.heightAnchor
        constraints.assert(viewArray, .width, .equal, relatedView, .height)
    }

    // MARK: Equal with constant
    func testViewArrayWidthEqualToHeightPlusConstant() {
        let constraints = viewArray.widthAnchor .= relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10)
    }

    func testViewArrayWidthEqualToHeightMinusConstant() {
        let constraints = viewArray.widthAnchor .= relatedView.heightAnchor .- 10
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayWidthEqualToHeightMultiplyingConstant() {
        let constraints = viewArray.widthAnchor .= relatedView.heightAnchor .* 3
        constraints.assert(viewArray, .width, .equal, relatedView, .height, multiplier: 3)
    }

    func testViewArrayWidthEqualToHeightMultipliedByConstant() {
        let constraints = viewArray.widthAnchor .= 3 .* relatedView.heightAnchor
        constraints.assert(viewArray, .width, .equal, relatedView, .height, multiplier: 3)
    }

    func testViewArrayWidthEqualToHeightDividedByConstant() {
        let constraints = viewArray.widthAnchor .= relatedView.heightAnchor ./ 2
        constraints.assert(viewArray, .width, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayWidthEqualToHeightWithPriority() {
        let constraints = viewArray.widthAnchor .= relatedView.heightAnchor ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .height, priority: .low)
    }

    func testViewArrayWidthEqualToHeightWithPriorityLiteral() {
        let constraints = viewArray.widthAnchor .= relatedView.heightAnchor ~ 300
        constraints.assert(viewArray, .width, .equal, relatedView, .height, priority: 300)
    }

    func testViewArrayWidthEqualToHeightWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor .= relatedView.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayWidthEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray.widthAnchor .= (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray.widthAnchor .= 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray.widthAnchor .= 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayWidthEqualToHeightPlusConstantDividedByConstant() {
        let constraints = viewArray.widthAnchor .= (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayWidthEqualToHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.widthAnchor .= (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthEqualToHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.widthAnchor .= 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthEqualToHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.widthAnchor .= 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthEqualToHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.widthAnchor .= (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayWidthEqualToHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor .= (relatedView.heightAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthEqualToHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor .= 3 .* (relatedView.heightAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthEqualToHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor .= 3 .* relatedView.heightAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthEqualToHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor .= (relatedView.heightAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }

    // MARK: LessThanOrEqual

    func testViewArrayWidthLessThanOrEqualToHeight() {
        let constraints = viewArray.widthAnchor ≤ relatedView.heightAnchor
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayWidthLessThanOrEqualToHeightPlusConstant() {
        let constraints = viewArray.widthAnchor ≤ relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testViewArrayWidthLessThanOrEqualToHeightMinusConstant() {
        let constraints = viewArray.widthAnchor ≤ relatedView.heightAnchor .- 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayWidthLessThanOrEqualToHeightMultiplyingConstant() {
        let constraints = viewArray.widthAnchor ≤ relatedView.heightAnchor .* 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualToHeightMultipliedByConstant() {
        let constraints = viewArray.widthAnchor ≤ 3 .* relatedView.heightAnchor
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualToHeightDividedByConstant() {
        let constraints = viewArray.widthAnchor ≤ relatedView.heightAnchor ./ 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayWidthLessThanOrEqualToHeightWithPriority() {
        let constraints = viewArray.widthAnchor ≤ relatedView.heightAnchor ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualToHeightWithPriorityLiteral() {
        let constraints = viewArray.widthAnchor ≤ relatedView.heightAnchor ~ 300
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testViewArrayWidthLessThanOrEqualToHeightWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≤ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayWidthLessThanOrEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray.widthAnchor ≤ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray.widthAnchor ≤ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray.widthAnchor ≤ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayWidthLessThanOrEqualToHeightPlusConstantDividedByConstant() {
        let constraints = viewArray.widthAnchor ≤ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayWidthLessThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.widthAnchor ≤ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.widthAnchor ≤ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.widthAnchor ≤ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualToHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.widthAnchor ≤ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayWidthLessThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≤ (relatedView.heightAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≤ 3 .* (relatedView.heightAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≤ 3 .* relatedView.heightAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualToHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≤ (relatedView.heightAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }

// MARK: viewArrayHeight <=> relatedViewWidth
    // MARK: GreaterThanOrEqual

    func testViewArrayHeightGreaterThanOrEqualToWidth() {
        let constraints = viewArray.heightAnchor ≥ relatedView.widthAnchor
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayHeightGreaterThanOrEqualToWidthPlusConstant() {
        let constraints = viewArray.heightAnchor ≥ relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10)
    }

    func testViewArrayHeightGreaterThanOrEqualToWidthMinusConstant() {
        let constraints = viewArray.heightAnchor ≥ relatedView.widthAnchor .- 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayHeightGreaterThanOrEqualToWidthMultiplyingConstant() {
        let constraints = viewArray.heightAnchor ≥ relatedView.widthAnchor .* 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualToWidthMultipliedByConstant() {
        let constraints = viewArray.heightAnchor ≥ 3 .* relatedView.widthAnchor
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualToWidthDividedByConstant() {
        let constraints = viewArray.heightAnchor ≥ relatedView.widthAnchor ./ 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayHeightGreaterThanOrEqualToWidthWithPriority() {
        let constraints = viewArray.heightAnchor ≥ relatedView.widthAnchor ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualToWidthWithPriorityLiteral() {
        let constraints = viewArray.heightAnchor ≥ relatedView.widthAnchor ~ 300
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, priority: 300)
    }

    func testViewArrayHeightGreaterThanOrEqualToWidthWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayHeightGreaterThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray.heightAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray.heightAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray.heightAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualToWidthPlusConstantDividedByConstant() {
        let constraints = viewArray.heightAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayHeightGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.heightAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.heightAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.heightAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.heightAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayHeightGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }

    // MARK: Equal

    func testViewArrayHeightEqualToWidth() {
        let constraints = viewArray.heightAnchor .= relatedView.widthAnchor
        constraints.assert(viewArray, .height, .equal, relatedView, .width)
    }

    // MARK: Equal with constant
    func testViewArrayHeightEqualToWidthPlusConstant() {
        let constraints = viewArray.heightAnchor .= relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10)
    }

    func testViewArrayHeightEqualToWidthMinusConstant() {
        let constraints = viewArray.heightAnchor .= relatedView.widthAnchor .- 10
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayHeightEqualToWidthMultiplyingConstant() {
        let constraints = viewArray.heightAnchor .= relatedView.widthAnchor .* 3
        constraints.assert(viewArray, .height, .equal, relatedView, .width, multiplier: 3)
    }

    func testViewArrayHeightEqualToWidthMultipliedByConstant() {
        let constraints = viewArray.heightAnchor .= 3 .* relatedView.widthAnchor
        constraints.assert(viewArray, .height, .equal, relatedView, .width, multiplier: 3)
    }

    func testViewArrayHeightEqualToWidthDividedByConstant() {
        let constraints = viewArray.heightAnchor .= relatedView.widthAnchor ./ 2
        constraints.assert(viewArray, .height, .equal, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayHeightEqualToWidthWithPriority() {
        let constraints = viewArray.heightAnchor .= relatedView.widthAnchor ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .width, priority: .low)
    }

    func testViewArrayHeightEqualToWidthWithPriorityLiteral() {
        let constraints = viewArray.heightAnchor .= relatedView.widthAnchor ~ 300
        constraints.assert(viewArray, .height, .equal, relatedView, .width, priority: 300)
    }

    func testViewArrayHeightEqualToWidthWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor .= relatedView.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .width, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayHeightEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray.heightAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray.heightAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray.heightAnchor .= 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testViewArrayHeightEqualToWidthPlusConstantDividedByConstant() {
        let constraints = viewArray.heightAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayHeightEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.heightAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.heightAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.heightAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightEqualToWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.heightAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayHeightEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }

    // MARK: LessThanOrEqual

    func testViewArrayHeightLessThanOrEqualToWidth() {
        let constraints = viewArray.heightAnchor ≤ relatedView.widthAnchor
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayHeightLessThanOrEqualToWidthPlusConstant() {
        let constraints = viewArray.heightAnchor ≤ relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10)
    }

    func testViewArrayHeightLessThanOrEqualToWidthMinusConstant() {
        let constraints = viewArray.heightAnchor ≤ relatedView.widthAnchor .- 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayHeightLessThanOrEqualToWidthMultiplyingConstant() {
        let constraints = viewArray.heightAnchor ≤ relatedView.widthAnchor .* 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualToWidthMultipliedByConstant() {
        let constraints = viewArray.heightAnchor ≤ 3 .* relatedView.widthAnchor
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualToWidthDividedByConstant() {
        let constraints = viewArray.heightAnchor ≤ relatedView.widthAnchor ./ 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayHeightLessThanOrEqualToWidthWithPriority() {
        let constraints = viewArray.heightAnchor ≤ relatedView.widthAnchor ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualToWidthWithPriorityLiteral() {
        let constraints = viewArray.heightAnchor ≤ relatedView.widthAnchor ~ 300
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, priority: 300)
    }

    func testViewArrayHeightLessThanOrEqualToWidthWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayHeightLessThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray.heightAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray.heightAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray.heightAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualToWidthPlusConstantDividedByConstant() {
        let constraints = viewArray.heightAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayHeightLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.heightAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.heightAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.heightAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.heightAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayHeightLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }

// MARK: viewArrayHeight <=> relatedViewHeight
    // MARK: GreaterThanOrEqual

    func testViewArrayHeightGreaterThanOrEqualToHeight() {
        let constraints = viewArray.heightAnchor ≥ relatedView.heightAnchor
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayHeightGreaterThanOrEqualToHeightPlusConstant() {
        let constraints = viewArray.heightAnchor ≥ relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testViewArrayHeightGreaterThanOrEqualToHeightMinusConstant() {
        let constraints = viewArray.heightAnchor ≥ relatedView.heightAnchor .- 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayHeightGreaterThanOrEqualToHeightMultiplyingConstant() {
        let constraints = viewArray.heightAnchor ≥ relatedView.heightAnchor .* 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualToHeightMultipliedByConstant() {
        let constraints = viewArray.heightAnchor ≥ 3 .* relatedView.heightAnchor
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualToHeightDividedByConstant() {
        let constraints = viewArray.heightAnchor ≥ relatedView.heightAnchor ./ 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayHeightGreaterThanOrEqualToHeightWithPriority() {
        let constraints = viewArray.heightAnchor ≥ relatedView.heightAnchor ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualToHeightWithPriorityLiteral() {
        let constraints = viewArray.heightAnchor ≥ relatedView.heightAnchor ~ 300
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testViewArrayHeightGreaterThanOrEqualToHeightWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≥ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayHeightGreaterThanOrEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray.heightAnchor ≥ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray.heightAnchor ≥ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray.heightAnchor ≥ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayHeightGreaterThanOrEqualToHeightPlusConstantDividedByConstant() {
        let constraints = viewArray.heightAnchor ≥ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayHeightGreaterThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.heightAnchor ≥ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.heightAnchor ≥ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.heightAnchor ≥ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualToHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.heightAnchor ≥ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayHeightGreaterThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≥ (relatedView.heightAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≥ 3 .* (relatedView.heightAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≥ 3 .* relatedView.heightAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualToHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≥ (relatedView.heightAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }

    // MARK: Equal

    func testViewArrayHeightEqualToHeight() {
        let constraints = viewArray.heightAnchor .= relatedView.heightAnchor
        constraints.assert(viewArray, .height, .equal, relatedView, .height)
    }

    // MARK: Equal with constant
    func testViewArrayHeightEqualToHeightPlusConstant() {
        let constraints = viewArray.heightAnchor .= relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10)
    }

    func testViewArrayHeightEqualToHeightMinusConstant() {
        let constraints = viewArray.heightAnchor .= relatedView.heightAnchor .- 10
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayHeightEqualToHeightMultiplyingConstant() {
        let constraints = viewArray.heightAnchor .= relatedView.heightAnchor .* 3
        constraints.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testViewArrayHeightEqualToHeightMultipliedByConstant() {
        let constraints = viewArray.heightAnchor .= 3 .* relatedView.heightAnchor
        constraints.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testViewArrayHeightEqualToHeightDividedByConstant() {
        let constraints = viewArray.heightAnchor .= relatedView.heightAnchor ./ 2
        constraints.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayHeightEqualToHeightWithPriority() {
        let constraints = viewArray.heightAnchor .= relatedView.heightAnchor ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, priority: .low)
    }

    func testViewArrayHeightEqualToHeightWithPriorityLiteral() {
        let constraints = viewArray.heightAnchor .= relatedView.heightAnchor ~ 300
        constraints.assert(viewArray, .height, .equal, relatedView, .height, priority: 300)
    }

    func testViewArrayHeightEqualToHeightWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor .= relatedView.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayHeightEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray.heightAnchor .= (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray.heightAnchor .= 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray.heightAnchor .= 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayHeightEqualToHeightPlusConstantDividedByConstant() {
        let constraints = viewArray.heightAnchor .= (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayHeightEqualToHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.heightAnchor .= (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightEqualToHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.heightAnchor .= 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightEqualToHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.heightAnchor .= 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightEqualToHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.heightAnchor .= (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayHeightEqualToHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor .= (relatedView.heightAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightEqualToHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor .= 3 .* (relatedView.heightAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightEqualToHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor .= 3 .* relatedView.heightAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightEqualToHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor .= (relatedView.heightAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }

    // MARK: LessThanOrEqual

    func testViewArrayHeightLessThanOrEqualToHeight() {
        let constraints = viewArray.heightAnchor ≤ relatedView.heightAnchor
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayHeightLessThanOrEqualToHeightPlusConstant() {
        let constraints = viewArray.heightAnchor ≤ relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testViewArrayHeightLessThanOrEqualToHeightMinusConstant() {
        let constraints = viewArray.heightAnchor ≤ relatedView.heightAnchor .- 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayHeightLessThanOrEqualToHeightMultiplyingConstant() {
        let constraints = viewArray.heightAnchor ≤ relatedView.heightAnchor .* 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualToHeightMultipliedByConstant() {
        let constraints = viewArray.heightAnchor ≤ 3 .* relatedView.heightAnchor
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualToHeightDividedByConstant() {
        let constraints = viewArray.heightAnchor ≤ relatedView.heightAnchor ./ 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayHeightLessThanOrEqualToHeightWithPriority() {
        let constraints = viewArray.heightAnchor ≤ relatedView.heightAnchor ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualToHeightWithPriorityLiteral() {
        let constraints = viewArray.heightAnchor ≤ relatedView.heightAnchor ~ 300
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testViewArrayHeightLessThanOrEqualToHeightWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≤ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayHeightLessThanOrEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray.heightAnchor ≤ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray.heightAnchor ≤ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray.heightAnchor ≤ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayHeightLessThanOrEqualToHeightPlusConstantDividedByConstant() {
        let constraints = viewArray.heightAnchor ≤ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayHeightLessThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.heightAnchor ≤ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.heightAnchor ≤ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.heightAnchor ≤ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualToHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.heightAnchor ≤ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayHeightLessThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≤ (relatedView.heightAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≤ 3 .* (relatedView.heightAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≤ 3 .* relatedView.heightAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualToHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≤ (relatedView.heightAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
// sourcery:end
}
