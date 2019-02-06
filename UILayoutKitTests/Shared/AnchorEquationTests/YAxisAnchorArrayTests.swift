//
//  YAxisAnchorArrayTests.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/25/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// swiftlint:disable file_length type_body_length

@testable import UILayoutKit
import XCTest

// sourcery: anchorEquationTest
// sourcery: lhsAttributes = top, lhsAttributes = centerY, lhsAttributes = bottom
// sourcery: rhsAttributes = top, rhsAttributes = centerY, rhsAttributes = bottom
// sourcery: lhsItem = viewArray
class YAxisAnchorArrayTests: UILayoutKitTestCase {

// sourcery:inline:auto:YAxisAnchorArrayTests.EquationTests
    // MARK: viewArray.topTop <=> relatedViewTop
    // MARK: LessThanOrEqual

    func testViewArrayTopLessThanOrEqualToTop() {
        let constraints = viewArray.top ≤ relatedView.topAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTopLessThanOrEqualToTopPlusConstant() {
        let constraints = viewArray.top ≤ relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayTopLessThanOrEqualToTopMinusConstant() {
        let constraints = viewArray.top ≤ relatedView.topAnchor .- 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTopLessThanOrEqualToTopMultiplyingConstant() {
        let constraints = viewArray.top ≤ relatedView.topAnchor .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToTopMultipliedByConstant() {
        let constraints = viewArray.top ≤ 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToTopDividedByConstant() {
        let constraints = viewArray.top ≤ relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayTopLessThanOrEqualToTopWithPriority() {
        let constraints = viewArray.top ≤ relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualToTopWithPriorityLiteral() {
        let constraints = viewArray.top ≤ relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayTopLessThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTopLessThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top ≤ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top ≤ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top ≤ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray.top ≤ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTopLessThanOrEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top ≤ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTopLessThanOrEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayTopGreaterThanOrEqualToTop() {
        let constraints = viewArray.top ≥ relatedView.topAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTopGreaterThanOrEqualToTopPlusConstant() {
        let constraints = viewArray.top ≥ relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayTopGreaterThanOrEqualToTopMinusConstant() {
        let constraints = viewArray.top ≥ relatedView.topAnchor .- 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTopGreaterThanOrEqualToTopMultiplyingConstant() {
        let constraints = viewArray.top ≥ relatedView.topAnchor .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToTopMultipliedByConstant() {
        let constraints = viewArray.top ≥ 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToTopDividedByConstant() {
        let constraints = viewArray.top ≥ relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayTopGreaterThanOrEqualToTopWithPriority() {
        let constraints = viewArray.top ≥ relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualToTopWithPriorityLiteral() {
        let constraints = viewArray.top ≥ relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayTopGreaterThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTopGreaterThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top ≥ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top ≥ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top ≥ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray.top ≥ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTopGreaterThanOrEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top ≥ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTopGreaterThanOrEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testViewArrayTopEqualToTop() {
        let constraints = viewArray.top .= relatedView.topAnchor
        constraints.assert(viewArray, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testViewArrayTopEqualToTopPlusConstant() {
        let constraints = viewArray.top .= relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
    }

    func testViewArrayTopEqualToTopMinusConstant() {
        let constraints = viewArray.top .= relatedView.topAnchor .- 10
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTopEqualToTopMultiplyingConstant() {
        let constraints = viewArray.top .= relatedView.topAnchor .* 3
        constraints.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayTopEqualToTopMultipliedByConstant() {
        let constraints = viewArray.top .= 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayTopEqualToTopDividedByConstant() {
        let constraints = viewArray.top .= relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayTopEqualToTopWithPriority() {
        let constraints = viewArray.top .= relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
    }

    func testViewArrayTopEqualToTopWithPriorityLiteral() {
        let constraints = viewArray.top .= relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .top, .equal, relatedView, .top, priority: 300)
    }

    func testViewArrayTopEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray.top .= relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTopEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top .= (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top .= 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top .= 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayTopEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray.top .= (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayTopEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top .= (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top .= 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top .= 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top .= (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayTopEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.topTop <=> relatedViewCenterY
    // MARK: LessThanOrEqual

    func testViewArrayTopLessThanOrEqualToCenterY() {
        let constraints = viewArray.top ≤ relatedView.centerYAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTopLessThanOrEqualToCenterYPlusConstant() {
        let constraints = viewArray.top ≤ relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayTopLessThanOrEqualToCenterYMinusConstant() {
        let constraints = viewArray.top ≤ relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTopLessThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray.top ≤ relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray.top ≤ 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToCenterYDividedByConstant() {
        let constraints = viewArray.top ≤ relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayTopLessThanOrEqualToCenterYWithPriority() {
        let constraints = viewArray.top ≤ relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray.top ≤ relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayTopLessThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTopLessThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top ≤ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top ≤ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top ≤ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.top ≤ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTopLessThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTopLessThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayTopGreaterThanOrEqualToCenterY() {
        let constraints = viewArray.top ≥ relatedView.centerYAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTopGreaterThanOrEqualToCenterYPlusConstant() {
        let constraints = viewArray.top ≥ relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYMinusConstant() {
        let constraints = viewArray.top ≥ relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTopGreaterThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray.top ≥ relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray.top ≥ 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYDividedByConstant() {
        let constraints = viewArray.top ≥ relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayTopGreaterThanOrEqualToCenterYWithPriority() {
        let constraints = viewArray.top ≥ relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray.top ≥ relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTopGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top ≥ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top ≥ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top ≥ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.top ≥ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTopGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTopGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testViewArrayTopEqualToCenterY() {
        let constraints = viewArray.top .= relatedView.centerYAnchor
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testViewArrayTopEqualToCenterYPlusConstant() {
        let constraints = viewArray.top .= relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10)
    }

    func testViewArrayTopEqualToCenterYMinusConstant() {
        let constraints = viewArray.top .= relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTopEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray.top .= relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayTopEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray.top .= 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayTopEqualToCenterYDividedByConstant() {
        let constraints = viewArray.top .= relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayTopEqualToCenterYWithPriority() {
        let constraints = viewArray.top .= relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, priority: .low)
    }

    func testViewArrayTopEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray.top .= relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, priority: 300)
    }

    func testViewArrayTopEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray.top .= relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTopEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top .= (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top .= 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top .= 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayTopEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.top .= (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayTopEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top .= 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayTopEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.topTop <=> relatedViewBottom
    // MARK: LessThanOrEqual

    func testViewArrayTopLessThanOrEqualToBottom() {
        let constraints = viewArray.top ≤ relatedView.bottomAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTopLessThanOrEqualToBottomPlusConstant() {
        let constraints = viewArray.top ≤ relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayTopLessThanOrEqualToBottomMinusConstant() {
        let constraints = viewArray.top ≤ relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTopLessThanOrEqualToBottomMultiplyingConstant() {
        let constraints = viewArray.top ≤ relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToBottomMultipliedByConstant() {
        let constraints = viewArray.top ≤ 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToBottomDividedByConstant() {
        let constraints = viewArray.top ≤ relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayTopLessThanOrEqualToBottomWithPriority() {
        let constraints = viewArray.top ≤ relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray.top ≤ relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayTopLessThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayTopLessThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top ≤ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top ≤ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top ≤ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.top ≤ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTopLessThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTopLessThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≤ (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayTopGreaterThanOrEqualToBottom() {
        let constraints = viewArray.top ≥ relatedView.bottomAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTopGreaterThanOrEqualToBottomPlusConstant() {
        let constraints = viewArray.top ≥ relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomMinusConstant() {
        let constraints = viewArray.top ≥ relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTopGreaterThanOrEqualToBottomMultiplyingConstant() {
        let constraints = viewArray.top ≥ relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomMultipliedByConstant() {
        let constraints = viewArray.top ≥ 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomDividedByConstant() {
        let constraints = viewArray.top ≥ relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayTopGreaterThanOrEqualToBottomWithPriority() {
        let constraints = viewArray.top ≥ relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray.top ≥ relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayTopGreaterThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top ≥ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top ≥ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top ≥ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.top ≥ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayTopGreaterThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayTopGreaterThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top ≥ (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testViewArrayTopEqualToBottom() {
        let constraints = viewArray.top .= relatedView.bottomAnchor
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testViewArrayTopEqualToBottomPlusConstant() {
        let constraints = viewArray.top .= relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10)
    }

    func testViewArrayTopEqualToBottomMinusConstant() {
        let constraints = viewArray.top .= relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTopEqualToBottomMultiplyingConstant() {
        let constraints = viewArray.top .= relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayTopEqualToBottomMultipliedByConstant() {
        let constraints = viewArray.top .= 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayTopEqualToBottomDividedByConstant() {
        let constraints = viewArray.top .= relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayTopEqualToBottomWithPriority() {
        let constraints = viewArray.top .= relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, priority: .low)
    }

    func testViewArrayTopEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray.top .= relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, priority: 300)
    }

    func testViewArrayTopEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray.top .= relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayTopEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.top .= (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.top .= 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.top .= 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayTopEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.top .= (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayTopEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.top .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.top .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.top .= 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayTopEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.top .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayTopEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayTopEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.top .= (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerYCenterY <=> relatedViewTop
    // MARK: LessThanOrEqual

    func testViewArrayCenterYLessThanOrEqualToTop() {
        let constraints = viewArray.centerY ≤ relatedView.topAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterYLessThanOrEqualToTopPlusConstant() {
        let constraints = viewArray.centerY ≤ relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayCenterYLessThanOrEqualToTopMinusConstant() {
        let constraints = viewArray.centerY ≤ relatedView.topAnchor .- 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterYLessThanOrEqualToTopMultiplyingConstant() {
        let constraints = viewArray.centerY ≤ relatedView.topAnchor .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToTopMultipliedByConstant() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToTopDividedByConstant() {
        let constraints = viewArray.centerY ≤ relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayCenterYLessThanOrEqualToTopWithPriority() {
        let constraints = viewArray.centerY ≤ relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualToTopWithPriorityLiteral() {
        let constraints = viewArray.centerY ≤ relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayCenterYLessThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterYLessThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY ≤ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY ≤ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterYLessThanOrEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYLessThanOrEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterYGreaterThanOrEqualToTop() {
        let constraints = viewArray.centerY ≥ relatedView.topAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterYGreaterThanOrEqualToTopPlusConstant() {
        let constraints = viewArray.centerY ≥ relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopMinusConstant() {
        let constraints = viewArray.centerY ≥ relatedView.topAnchor .- 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterYGreaterThanOrEqualToTopMultiplyingConstant() {
        let constraints = viewArray.centerY ≥ relatedView.topAnchor .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopMultipliedByConstant() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopDividedByConstant() {
        let constraints = viewArray.centerY ≥ relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayCenterYGreaterThanOrEqualToTopWithPriority() {
        let constraints = viewArray.centerY ≥ relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopWithPriorityLiteral() {
        let constraints = viewArray.centerY ≥ relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterYGreaterThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY ≥ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY ≥ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterYGreaterThanOrEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYGreaterThanOrEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testViewArrayCenterYEqualToTop() {
        let constraints = viewArray.centerY .= relatedView.topAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testViewArrayCenterYEqualToTopPlusConstant() {
        let constraints = viewArray.centerY .= relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10)
    }

    func testViewArrayCenterYEqualToTopMinusConstant() {
        let constraints = viewArray.centerY .= relatedView.topAnchor .- 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterYEqualToTopMultiplyingConstant() {
        let constraints = viewArray.centerY .= relatedView.topAnchor .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayCenterYEqualToTopMultipliedByConstant() {
        let constraints = viewArray.centerY .= 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayCenterYEqualToTopDividedByConstant() {
        let constraints = viewArray.centerY .= relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayCenterYEqualToTopWithPriority() {
        let constraints = viewArray.centerY .= relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, priority: .low)
    }

    func testViewArrayCenterYEqualToTopWithPriorityLiteral() {
        let constraints = viewArray.centerY .= relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, priority: 300)
    }

    func testViewArrayCenterYEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterYEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY .= (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY .= 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY .= 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY .= (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayCenterYEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY .= (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY .= 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY .= 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY .= (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerYCenterY <=> relatedViewCenterY
    // MARK: LessThanOrEqual

    func testViewArrayCenterYLessThanOrEqualToCenterY() {
        let constraints = viewArray.centerY ≤ relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterYLessThanOrEqualToCenterYPlusConstant() {
        let constraints = viewArray.centerY ≤ relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYMinusConstant() {
        let constraints = viewArray.centerY ≤ relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterYLessThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray.centerY ≤ relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYDividedByConstant() {
        let constraints = viewArray.centerY ≤ relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayCenterYLessThanOrEqualToCenterYWithPriority() {
        let constraints = viewArray.centerY ≤ relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray.centerY ≤ relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterYLessThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY ≤ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY ≤ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterYLessThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYLessThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterYGreaterThanOrEqualToCenterY() {
        let constraints = viewArray.centerY ≥ relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstant() {
        let constraints = viewArray.centerY ≥ relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYMinusConstant() {
        let constraints = viewArray.centerY ≥ relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterYGreaterThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray.centerY ≥ relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYDividedByConstant() {
        let constraints = viewArray.centerY ≥ relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayCenterYGreaterThanOrEqualToCenterYWithPriority() {
        let constraints = viewArray.centerY ≥ relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray.centerY ≥ relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY ≥ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY ≥ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testViewArrayCenterYEqualToCenterY() {
        let constraints = viewArray.centerY .= relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testViewArrayCenterYEqualToCenterYPlusConstant() {
        let constraints = viewArray.centerY .= relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10)
    }

    func testViewArrayCenterYEqualToCenterYMinusConstant() {
        let constraints = viewArray.centerY .= relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterYEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray.centerY .= relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray.centerY .= 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYEqualToCenterYDividedByConstant() {
        let constraints = viewArray.centerY .= relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayCenterYEqualToCenterYWithPriority() {
        let constraints = viewArray.centerY .= relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: .low)
    }

    func testViewArrayCenterYEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray.centerY .= relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 300)
    }

    func testViewArrayCenterYEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterYEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY .= (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY .= 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY .= 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY .= (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayCenterYEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY .= 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerYCenterY <=> relatedViewBottom
    // MARK: LessThanOrEqual

    func testViewArrayCenterYLessThanOrEqualToBottom() {
        let constraints = viewArray.centerY ≤ relatedView.bottomAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterYLessThanOrEqualToBottomPlusConstant() {
        let constraints = viewArray.centerY ≤ relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomMinusConstant() {
        let constraints = viewArray.centerY ≤ relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterYLessThanOrEqualToBottomMultiplyingConstant() {
        let constraints = viewArray.centerY ≤ relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomMultipliedByConstant() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomDividedByConstant() {
        let constraints = viewArray.centerY ≤ relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayCenterYLessThanOrEqualToBottomWithPriority() {
        let constraints = viewArray.centerY ≤ relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray.centerY ≤ relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayCenterYLessThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY ≤ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY ≤ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterYLessThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYLessThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≤ (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterYGreaterThanOrEqualToBottom() {
        let constraints = viewArray.centerY ≥ relatedView.bottomAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterYGreaterThanOrEqualToBottomPlusConstant() {
        let constraints = viewArray.centerY ≥ relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomMinusConstant() {
        let constraints = viewArray.centerY ≥ relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterYGreaterThanOrEqualToBottomMultiplyingConstant() {
        let constraints = viewArray.centerY ≥ relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomMultipliedByConstant() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomDividedByConstant() {
        let constraints = viewArray.centerY ≥ relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayCenterYGreaterThanOrEqualToBottomWithPriority() {
        let constraints = viewArray.centerY ≥ relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray.centerY ≥ relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayCenterYGreaterThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY ≥ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY ≥ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayCenterYGreaterThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYGreaterThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY ≥ (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testViewArrayCenterYEqualToBottom() {
        let constraints = viewArray.centerY .= relatedView.bottomAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testViewArrayCenterYEqualToBottomPlusConstant() {
        let constraints = viewArray.centerY .= relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10)
    }

    func testViewArrayCenterYEqualToBottomMinusConstant() {
        let constraints = viewArray.centerY .= relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterYEqualToBottomMultiplyingConstant() {
        let constraints = viewArray.centerY .= relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYEqualToBottomMultipliedByConstant() {
        let constraints = viewArray.centerY .= 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYEqualToBottomDividedByConstant() {
        let constraints = viewArray.centerY .= relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayCenterYEqualToBottomWithPriority() {
        let constraints = viewArray.centerY .= relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, priority: .low)
    }

    func testViewArrayCenterYEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray.centerY .= relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, priority: 300)
    }

    func testViewArrayCenterYEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayCenterYEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerY .= (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerY .= 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerY .= 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayCenterYEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.centerY .= (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayCenterYEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.centerY .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.centerY .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.centerY .= 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayCenterYEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.centerY .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayCenterYEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayCenterYEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerY .= (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.bottomBottom <=> relatedViewTop
    // MARK: LessThanOrEqual

    func testViewArrayBottomLessThanOrEqualToTop() {
        let constraints = viewArray.bottom ≤ relatedView.topAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayBottomLessThanOrEqualToTopPlusConstant() {
        let constraints = viewArray.bottom ≤ relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayBottomLessThanOrEqualToTopMinusConstant() {
        let constraints = viewArray.bottom ≤ relatedView.topAnchor .- 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayBottomLessThanOrEqualToTopMultiplyingConstant() {
        let constraints = viewArray.bottom ≤ relatedView.topAnchor .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToTopMultipliedByConstant() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToTopDividedByConstant() {
        let constraints = viewArray.bottom ≤ relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayBottomLessThanOrEqualToTopWithPriority() {
        let constraints = viewArray.bottom ≤ relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualToTopWithPriorityLiteral() {
        let constraints = viewArray.bottom ≤ relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayBottomLessThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayBottomLessThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom ≤ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom ≤ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayBottomLessThanOrEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomLessThanOrEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayBottomGreaterThanOrEqualToTop() {
        let constraints = viewArray.bottom ≥ relatedView.topAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayBottomGreaterThanOrEqualToTopPlusConstant() {
        let constraints = viewArray.bottom ≥ relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopMinusConstant() {
        let constraints = viewArray.bottom ≥ relatedView.topAnchor .- 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayBottomGreaterThanOrEqualToTopMultiplyingConstant() {
        let constraints = viewArray.bottom ≥ relatedView.topAnchor .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopMultipliedByConstant() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopDividedByConstant() {
        let constraints = viewArray.bottom ≥ relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayBottomGreaterThanOrEqualToTopWithPriority() {
        let constraints = viewArray.bottom ≥ relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopWithPriorityLiteral() {
        let constraints = viewArray.bottom ≥ relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayBottomGreaterThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom ≥ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom ≥ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayBottomGreaterThanOrEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomGreaterThanOrEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testViewArrayBottomEqualToTop() {
        let constraints = viewArray.bottom .= relatedView.topAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testViewArrayBottomEqualToTopPlusConstant() {
        let constraints = viewArray.bottom .= relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10)
    }

    func testViewArrayBottomEqualToTopMinusConstant() {
        let constraints = viewArray.bottom .= relatedView.topAnchor .- 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayBottomEqualToTopMultiplyingConstant() {
        let constraints = viewArray.bottom .= relatedView.topAnchor .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayBottomEqualToTopMultipliedByConstant() {
        let constraints = viewArray.bottom .= 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayBottomEqualToTopDividedByConstant() {
        let constraints = viewArray.bottom .= relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayBottomEqualToTopWithPriority() {
        let constraints = viewArray.bottom .= relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, priority: .low)
    }

    func testViewArrayBottomEqualToTopWithPriorityLiteral() {
        let constraints = viewArray.bottom .= relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, priority: 300)
    }

    func testViewArrayBottomEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayBottomEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom .= (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom .= 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom .= 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom .= (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayBottomEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom .= (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom .= 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom .= 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom .= (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.bottomBottom <=> relatedViewCenterY
    // MARK: LessThanOrEqual

    func testViewArrayBottomLessThanOrEqualToCenterY() {
        let constraints = viewArray.bottom ≤ relatedView.centerYAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayBottomLessThanOrEqualToCenterYPlusConstant() {
        let constraints = viewArray.bottom ≤ relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYMinusConstant() {
        let constraints = viewArray.bottom ≤ relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayBottomLessThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray.bottom ≤ relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYDividedByConstant() {
        let constraints = viewArray.bottom ≤ relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayBottomLessThanOrEqualToCenterYWithPriority() {
        let constraints = viewArray.bottom ≤ relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray.bottom ≤ relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayBottomLessThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom ≤ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom ≤ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayBottomLessThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomLessThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayBottomGreaterThanOrEqualToCenterY() {
        let constraints = viewArray.bottom ≥ relatedView.centerYAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayBottomGreaterThanOrEqualToCenterYPlusConstant() {
        let constraints = viewArray.bottom ≥ relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYMinusConstant() {
        let constraints = viewArray.bottom ≥ relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayBottomGreaterThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray.bottom ≥ relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYDividedByConstant() {
        let constraints = viewArray.bottom ≥ relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayBottomGreaterThanOrEqualToCenterYWithPriority() {
        let constraints = viewArray.bottom ≥ relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray.bottom ≥ relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayBottomGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom ≥ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom ≥ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayBottomGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testViewArrayBottomEqualToCenterY() {
        let constraints = viewArray.bottom .= relatedView.centerYAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testViewArrayBottomEqualToCenterYPlusConstant() {
        let constraints = viewArray.bottom .= relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10)
    }

    func testViewArrayBottomEqualToCenterYMinusConstant() {
        let constraints = viewArray.bottom .= relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayBottomEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray.bottom .= relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayBottomEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray.bottom .= 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayBottomEqualToCenterYDividedByConstant() {
        let constraints = viewArray.bottom .= relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayBottomEqualToCenterYWithPriority() {
        let constraints = viewArray.bottom .= relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, priority: .low)
    }

    func testViewArrayBottomEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray.bottom .= relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, priority: 300)
    }

    func testViewArrayBottomEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayBottomEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom .= (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom .= 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom .= 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom .= (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayBottomEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom .= 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.bottomBottom <=> relatedViewBottom
    // MARK: LessThanOrEqual

    func testViewArrayBottomLessThanOrEqualToBottom() {
        let constraints = viewArray.bottom ≤ relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayBottomLessThanOrEqualToBottomPlusConstant() {
        let constraints = viewArray.bottom ≤ relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayBottomLessThanOrEqualToBottomMinusConstant() {
        let constraints = viewArray.bottom ≤ relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayBottomLessThanOrEqualToBottomMultiplyingConstant() {
        let constraints = viewArray.bottom ≤ relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToBottomMultipliedByConstant() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToBottomDividedByConstant() {
        let constraints = viewArray.bottom ≤ relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayBottomLessThanOrEqualToBottomWithPriority() {
        let constraints = viewArray.bottom ≤ relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray.bottom ≤ relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayBottomLessThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayBottomLessThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom ≤ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom ≤ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayBottomLessThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomLessThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≤ (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testViewArrayBottomGreaterThanOrEqualToBottom() {
        let constraints = viewArray.bottom ≥ relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayBottomGreaterThanOrEqualToBottomPlusConstant() {
        let constraints = viewArray.bottom ≥ relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomMinusConstant() {
        let constraints = viewArray.bottom ≥ relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayBottomGreaterThanOrEqualToBottomMultiplyingConstant() {
        let constraints = viewArray.bottom ≥ relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomMultipliedByConstant() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomDividedByConstant() {
        let constraints = viewArray.bottom ≥ relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayBottomGreaterThanOrEqualToBottomWithPriority() {
        let constraints = viewArray.bottom ≥ relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray.bottom ≥ relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayBottomGreaterThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom ≥ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom ≥ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayBottomGreaterThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomGreaterThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom ≥ (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testViewArrayBottomEqualToBottom() {
        let constraints = viewArray.bottom .= relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testViewArrayBottomEqualToBottomPlusConstant() {
        let constraints = viewArray.bottom .= relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testViewArrayBottomEqualToBottomMinusConstant() {
        let constraints = viewArray.bottom .= relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayBottomEqualToBottomMultiplyingConstant() {
        let constraints = viewArray.bottom .= relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayBottomEqualToBottomMultipliedByConstant() {
        let constraints = viewArray.bottom .= 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayBottomEqualToBottomDividedByConstant() {
        let constraints = viewArray.bottom .= relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayBottomEqualToBottomWithPriority() {
        let constraints = viewArray.bottom .= relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testViewArrayBottomEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray.bottom .= relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testViewArrayBottomEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayBottomEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottom .= (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottom .= 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottom .= 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayBottomEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.bottom .= (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayBottomEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray.bottom .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray.bottom .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray.bottom .= 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayBottomEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray.bottom .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayBottomEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayBottomEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottom .= (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
// sourcery:end
}
