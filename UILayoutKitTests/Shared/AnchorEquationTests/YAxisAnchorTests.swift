//
//  YAxisAnchorTests.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/24/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// swiftlint:disable file_length type_body_length

@testable import UILayoutKit
import XCTest

// sourcery: anchorEquationTest
// sourcery: lhsAttributes = top, lhsAttributes = centerY, lhsAttributes = bottom
// sourcery: rhsAttributes = top, rhsAttributes = centerY, rhsAttributes = bottom
// sourcery: lhsItem = view1
class YAxisAnchorTests: UILayoutKitTestCase {

// sourcery:inline:auto:YAxisAnchorTests.EquationTests
    // MARK: view1.topTop <=> relatedViewTop
    // MARK: LessThanOrEqual

    func testView1TopLessThanOrEqualToTop() {
        let constraints = view1.top ≤ relatedView.topAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testView1TopLessThanOrEqualToTopPlusConstant() {
        let constraints = view1.top ≤ relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1TopLessThanOrEqualToTopMinusConstant() {
        let constraints = view1.top ≤ relatedView.topAnchor .- 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TopLessThanOrEqualToTopMultiplyingConstant() {
        let constraints = view1.top ≤ relatedView.topAnchor .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToTopMultipliedByConstant() {
        let constraints = view1.top ≤ 3 .* relatedView.topAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToTopDividedByConstant() {
        let constraints = view1.top ≤ relatedView.topAnchor ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1TopLessThanOrEqualToTopWithPriority() {
        let constraints = view1.top ≤ relatedView.topAnchor ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1TopLessThanOrEqualToTopWithPriorityLiteral() {
        let constraints = view1.top ≤ relatedView.topAnchor ~ 300
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1TopLessThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = view1.top ≤ relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1TopLessThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1.top ≤ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1.top ≤ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1.top ≤ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1.top ≤ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1TopLessThanOrEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top ≤ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TopLessThanOrEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testView1TopEqualToTop() {
        let constraints = view1.top .= relatedView.topAnchor
        constraints.assert(view1, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testView1TopEqualToTopPlusConstant() {
        let constraints = view1.top .= relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10)
    }

    func testView1TopEqualToTopMinusConstant() {
        let constraints = view1.top .= relatedView.topAnchor .- 10
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TopEqualToTopMultiplyingConstant() {
        let constraints = view1.top .= relatedView.topAnchor .* 3
        constraints.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1TopEqualToTopMultipliedByConstant() {
        let constraints = view1.top .= 3 .* relatedView.topAnchor
        constraints.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1TopEqualToTopDividedByConstant() {
        let constraints = view1.top .= relatedView.topAnchor ./ 2
        constraints.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1TopEqualToTopWithPriority() {
        let constraints = view1.top .= relatedView.topAnchor ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, priority: .low)
    }

    func testView1TopEqualToTopWithPriorityLiteral() {
        let constraints = view1.top .= relatedView.topAnchor ~ 300
        constraints.assert(view1, .top, .equal, relatedView, .top, priority: 300)
    }

    func testView1TopEqualToTopWithPriorityArithmetic() {
        let constraints = view1.top .= relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1TopEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1.top .= (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1.top .= 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1.top .= 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1TopEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1.top .= (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1TopEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top .= (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top .= 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top .= 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top .= (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1TopEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top .= (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top .= 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top .= 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top .= (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1TopGreaterThanOrEqualToTop() {
        let constraints = view1.top ≥ relatedView.topAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1TopGreaterThanOrEqualToTopPlusConstant() {
        let constraints = view1.top ≥ relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1TopGreaterThanOrEqualToTopMinusConstant() {
        let constraints = view1.top ≥ relatedView.topAnchor .- 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TopGreaterThanOrEqualToTopMultiplyingConstant() {
        let constraints = view1.top ≥ relatedView.topAnchor .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToTopMultipliedByConstant() {
        let constraints = view1.top ≥ 3 .* relatedView.topAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToTopDividedByConstant() {
        let constraints = view1.top ≥ relatedView.topAnchor ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1TopGreaterThanOrEqualToTopWithPriority() {
        let constraints = view1.top ≥ relatedView.topAnchor ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1TopGreaterThanOrEqualToTopWithPriorityLiteral() {
        let constraints = view1.top ≥ relatedView.topAnchor ~ 300
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1TopGreaterThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = view1.top ≥ relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1TopGreaterThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1.top ≥ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1.top ≥ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1.top ≥ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1.top ≥ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1TopGreaterThanOrEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top ≥ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TopGreaterThanOrEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.topTop <=> relatedViewCenterY
    // MARK: LessThanOrEqual

    func testView1TopLessThanOrEqualToCenterY() {
        let constraints = view1.top ≤ relatedView.centerYAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testView1TopLessThanOrEqualToCenterYPlusConstant() {
        let constraints = view1.top ≤ relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1TopLessThanOrEqualToCenterYMinusConstant() {
        let constraints = view1.top ≤ relatedView.centerYAnchor .- 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TopLessThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = view1.top ≤ relatedView.centerYAnchor .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = view1.top ≤ 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToCenterYDividedByConstant() {
        let constraints = view1.top ≤ relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1TopLessThanOrEqualToCenterYWithPriority() {
        let constraints = view1.top ≤ relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1TopLessThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = view1.top ≤ relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1TopLessThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1.top ≤ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1TopLessThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.top ≤ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.top ≤ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.top ≤ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1.top ≤ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1TopLessThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TopLessThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testView1TopEqualToCenterY() {
        let constraints = view1.top .= relatedView.centerYAnchor
        constraints.assert(view1, .top, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testView1TopEqualToCenterYPlusConstant() {
        let constraints = view1.top .= relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10)
    }

    func testView1TopEqualToCenterYMinusConstant() {
        let constraints = view1.top .= relatedView.centerYAnchor .- 10
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TopEqualToCenterYMultiplyingConstant() {
        let constraints = view1.top .= relatedView.centerYAnchor .* 3
        constraints.assert(view1, .top, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1TopEqualToCenterYMultipliedByConstant() {
        let constraints = view1.top .= 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .top, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1TopEqualToCenterYDividedByConstant() {
        let constraints = view1.top .= relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .top, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1TopEqualToCenterYWithPriority() {
        let constraints = view1.top .= relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .centerY, priority: .low)
    }

    func testView1TopEqualToCenterYWithPriorityLiteral() {
        let constraints = view1.top .= relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .top, .equal, relatedView, .centerY, priority: 300)
    }

    func testView1TopEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1.top .= relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1TopEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.top .= (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.top .= 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.top .= 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1TopEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1.top .= (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1TopEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top .= 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1TopEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top .= (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top .= 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top .= 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top .= (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1TopGreaterThanOrEqualToCenterY() {
        let constraints = view1.top ≥ relatedView.centerYAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1TopGreaterThanOrEqualToCenterYPlusConstant() {
        let constraints = view1.top ≥ relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1TopGreaterThanOrEqualToCenterYMinusConstant() {
        let constraints = view1.top ≥ relatedView.centerYAnchor .- 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TopGreaterThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = view1.top ≥ relatedView.centerYAnchor .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = view1.top ≥ 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToCenterYDividedByConstant() {
        let constraints = view1.top ≥ relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1TopGreaterThanOrEqualToCenterYWithPriority() {
        let constraints = view1.top ≥ relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1TopGreaterThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = view1.top ≥ relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1TopGreaterThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1.top ≥ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1TopGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.top ≥ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.top ≥ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.top ≥ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1.top ≥ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1TopGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TopGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.topTop <=> relatedViewBottom
    // MARK: LessThanOrEqual

    func testView1TopLessThanOrEqualToBottom() {
        let constraints = view1.top ≤ relatedView.bottomAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testView1TopLessThanOrEqualToBottomPlusConstant() {
        let constraints = view1.top ≤ relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1TopLessThanOrEqualToBottomMinusConstant() {
        let constraints = view1.top ≤ relatedView.bottomAnchor .- 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TopLessThanOrEqualToBottomMultiplyingConstant() {
        let constraints = view1.top ≤ relatedView.bottomAnchor .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToBottomMultipliedByConstant() {
        let constraints = view1.top ≤ 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToBottomDividedByConstant() {
        let constraints = view1.top ≤ relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1TopLessThanOrEqualToBottomWithPriority() {
        let constraints = view1.top ≤ relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1TopLessThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = view1.top ≤ relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1TopLessThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = view1.top ≤ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1TopLessThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.top ≤ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.top ≤ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.top ≤ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1.top ≤ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1TopLessThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopLessThanOrEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TopLessThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopLessThanOrEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≤ (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testView1TopEqualToBottom() {
        let constraints = view1.top .= relatedView.bottomAnchor
        constraints.assert(view1, .top, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testView1TopEqualToBottomPlusConstant() {
        let constraints = view1.top .= relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10)
    }

    func testView1TopEqualToBottomMinusConstant() {
        let constraints = view1.top .= relatedView.bottomAnchor .- 10
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TopEqualToBottomMultiplyingConstant() {
        let constraints = view1.top .= relatedView.bottomAnchor .* 3
        constraints.assert(view1, .top, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1TopEqualToBottomMultipliedByConstant() {
        let constraints = view1.top .= 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .top, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1TopEqualToBottomDividedByConstant() {
        let constraints = view1.top .= relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .top, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1TopEqualToBottomWithPriority() {
        let constraints = view1.top .= relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .bottom, priority: .low)
    }

    func testView1TopEqualToBottomWithPriorityLiteral() {
        let constraints = view1.top .= relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .top, .equal, relatedView, .bottom, priority: 300)
    }

    func testView1TopEqualToBottomWithPriorityArithmetic() {
        let constraints = view1.top .= relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1TopEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.top .= (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.top .= 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.top .= 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1TopEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1.top .= (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1TopEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top .= 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1TopEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top .= (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top .= 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top .= 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top .= (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1TopGreaterThanOrEqualToBottom() {
        let constraints = view1.top ≥ relatedView.bottomAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1TopGreaterThanOrEqualToBottomPlusConstant() {
        let constraints = view1.top ≥ relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1TopGreaterThanOrEqualToBottomMinusConstant() {
        let constraints = view1.top ≥ relatedView.bottomAnchor .- 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TopGreaterThanOrEqualToBottomMultiplyingConstant() {
        let constraints = view1.top ≥ relatedView.bottomAnchor .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToBottomMultipliedByConstant() {
        let constraints = view1.top ≥ 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToBottomDividedByConstant() {
        let constraints = view1.top ≥ relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1TopGreaterThanOrEqualToBottomWithPriority() {
        let constraints = view1.top ≥ relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1TopGreaterThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = view1.top ≥ relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1TopGreaterThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = view1.top ≥ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1TopGreaterThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.top ≥ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.top ≥ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.top ≥ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1.top ≥ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1TopGreaterThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.top ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.top ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.top ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TopGreaterThanOrEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.top ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TopGreaterThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TopGreaterThanOrEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.top ≥ (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.centerYCenterY <=> relatedViewTop
    // MARK: LessThanOrEqual

    func testView1CenterYLessThanOrEqualToTop() {
        let constraints = view1.centerY ≤ relatedView.topAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testView1CenterYLessThanOrEqualToTopPlusConstant() {
        let constraints = view1.centerY ≤ relatedView.topAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1CenterYLessThanOrEqualToTopMinusConstant() {
        let constraints = view1.centerY ≤ relatedView.topAnchor .- 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterYLessThanOrEqualToTopMultiplyingConstant() {
        let constraints = view1.centerY ≤ relatedView.topAnchor .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToTopMultipliedByConstant() {
        let constraints = view1.centerY ≤ 3 .* relatedView.topAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToTopDividedByConstant() {
        let constraints = view1.centerY ≤ relatedView.topAnchor ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1CenterYLessThanOrEqualToTopWithPriority() {
        let constraints = view1.centerY ≤ relatedView.topAnchor ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1CenterYLessThanOrEqualToTopWithPriorityLiteral() {
        let constraints = view1.centerY ≤ relatedView.topAnchor ~ 300
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1CenterYLessThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1CenterYLessThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY ≤ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY ≤ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY ≤ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1.centerY ≤ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1CenterYLessThanOrEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY ≤ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterYLessThanOrEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testView1CenterYEqualToTop() {
        let constraints = view1.centerY .= relatedView.topAnchor
        constraints.assert(view1, .centerY, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testView1CenterYEqualToTopPlusConstant() {
        let constraints = view1.centerY .= relatedView.topAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10)
    }

    func testView1CenterYEqualToTopMinusConstant() {
        let constraints = view1.centerY .= relatedView.topAnchor .- 10
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterYEqualToTopMultiplyingConstant() {
        let constraints = view1.centerY .= relatedView.topAnchor .* 3
        constraints.assert(view1, .centerY, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1CenterYEqualToTopMultipliedByConstant() {
        let constraints = view1.centerY .= 3 .* relatedView.topAnchor
        constraints.assert(view1, .centerY, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1CenterYEqualToTopDividedByConstant() {
        let constraints = view1.centerY .= relatedView.topAnchor ./ 2
        constraints.assert(view1, .centerY, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1CenterYEqualToTopWithPriority() {
        let constraints = view1.centerY .= relatedView.topAnchor ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .top, priority: .low)
    }

    func testView1CenterYEqualToTopWithPriorityLiteral() {
        let constraints = view1.centerY .= relatedView.topAnchor ~ 300
        constraints.assert(view1, .centerY, .equal, relatedView, .top, priority: 300)
    }

    func testView1CenterYEqualToTopWithPriorityArithmetic() {
        let constraints = view1.centerY .= relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1CenterYEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY .= (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY .= 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY .= 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1CenterYEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1.centerY .= (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1CenterYEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY .= (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY .= 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY .= 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY .= (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1CenterYEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1CenterYGreaterThanOrEqualToTop() {
        let constraints = view1.centerY ≥ relatedView.topAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1CenterYGreaterThanOrEqualToTopPlusConstant() {
        let constraints = view1.centerY ≥ relatedView.topAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1CenterYGreaterThanOrEqualToTopMinusConstant() {
        let constraints = view1.centerY ≥ relatedView.topAnchor .- 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterYGreaterThanOrEqualToTopMultiplyingConstant() {
        let constraints = view1.centerY ≥ relatedView.topAnchor .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToTopMultipliedByConstant() {
        let constraints = view1.centerY ≥ 3 .* relatedView.topAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToTopDividedByConstant() {
        let constraints = view1.centerY ≥ relatedView.topAnchor ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1CenterYGreaterThanOrEqualToTopWithPriority() {
        let constraints = view1.centerY ≥ relatedView.topAnchor ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualToTopWithPriorityLiteral() {
        let constraints = view1.centerY ≥ relatedView.topAnchor ~ 300
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1CenterYGreaterThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1CenterYGreaterThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY ≥ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY ≥ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY ≥ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1.centerY ≥ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1CenterYGreaterThanOrEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY ≥ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterYGreaterThanOrEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.centerYCenterY <=> relatedViewCenterY
    // MARK: LessThanOrEqual

    func testView1CenterYLessThanOrEqualToCenterY() {
        let constraints = view1.centerY ≤ relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testView1CenterYLessThanOrEqualToCenterYPlusConstant() {
        let constraints = view1.centerY ≤ relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1CenterYLessThanOrEqualToCenterYMinusConstant() {
        let constraints = view1.centerY ≤ relatedView.centerYAnchor .- 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterYLessThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = view1.centerY ≤ relatedView.centerYAnchor .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = view1.centerY ≤ 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToCenterYDividedByConstant() {
        let constraints = view1.centerY ≤ relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1CenterYLessThanOrEqualToCenterYWithPriority() {
        let constraints = view1.centerY ≤ relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1CenterYLessThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = view1.centerY ≤ relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1CenterYLessThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1CenterYLessThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY ≤ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY ≤ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY ≤ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1.centerY ≤ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1CenterYLessThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterYLessThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testView1CenterYEqualToCenterY() {
        let constraints = view1.centerY .= relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testView1CenterYEqualToCenterYPlusConstant() {
        let constraints = view1.centerY .= relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10)
    }

    func testView1CenterYEqualToCenterYMinusConstant() {
        let constraints = view1.centerY .= relatedView.centerYAnchor .- 10
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterYEqualToCenterYMultiplyingConstant() {
        let constraints = view1.centerY .= relatedView.centerYAnchor .* 3
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1CenterYEqualToCenterYMultipliedByConstant() {
        let constraints = view1.centerY .= 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1CenterYEqualToCenterYDividedByConstant() {
        let constraints = view1.centerY .= relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1CenterYEqualToCenterYWithPriority() {
        let constraints = view1.centerY .= relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, priority: .low)
    }

    func testView1CenterYEqualToCenterYWithPriorityLiteral() {
        let constraints = view1.centerY .= relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 300)
    }

    func testView1CenterYEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1.centerY .= relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1CenterYEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY .= (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY .= 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY .= 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1CenterYEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1.centerY .= (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1CenterYEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY .= 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1CenterYEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1CenterYGreaterThanOrEqualToCenterY() {
        let constraints = view1.centerY ≥ relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1CenterYGreaterThanOrEqualToCenterYPlusConstant() {
        let constraints = view1.centerY ≥ relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYMinusConstant() {
        let constraints = view1.centerY ≥ relatedView.centerYAnchor .- 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterYGreaterThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = view1.centerY ≥ relatedView.centerYAnchor .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = view1.centerY ≥ 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYDividedByConstant() {
        let constraints = view1.centerY ≥ relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1CenterYGreaterThanOrEqualToCenterYWithPriority() {
        let constraints = view1.centerY ≥ relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = view1.centerY ≥ relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1CenterYGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY ≥ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY ≥ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY ≥ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1.centerY ≥ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1CenterYGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterYGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.centerYCenterY <=> relatedViewBottom
    // MARK: LessThanOrEqual

    func testView1CenterYLessThanOrEqualToBottom() {
        let constraints = view1.centerY ≤ relatedView.bottomAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testView1CenterYLessThanOrEqualToBottomPlusConstant() {
        let constraints = view1.centerY ≤ relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1CenterYLessThanOrEqualToBottomMinusConstant() {
        let constraints = view1.centerY ≤ relatedView.bottomAnchor .- 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterYLessThanOrEqualToBottomMultiplyingConstant() {
        let constraints = view1.centerY ≤ relatedView.bottomAnchor .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToBottomMultipliedByConstant() {
        let constraints = view1.centerY ≤ 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToBottomDividedByConstant() {
        let constraints = view1.centerY ≤ relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1CenterYLessThanOrEqualToBottomWithPriority() {
        let constraints = view1.centerY ≤ relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1CenterYLessThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = view1.centerY ≤ relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1CenterYLessThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1CenterYLessThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY ≤ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY ≤ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY ≤ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1.centerY ≤ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1CenterYLessThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYLessThanOrEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterYLessThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYLessThanOrEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≤ (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testView1CenterYEqualToBottom() {
        let constraints = view1.centerY .= relatedView.bottomAnchor
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testView1CenterYEqualToBottomPlusConstant() {
        let constraints = view1.centerY .= relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10)
    }

    func testView1CenterYEqualToBottomMinusConstant() {
        let constraints = view1.centerY .= relatedView.bottomAnchor .- 10
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterYEqualToBottomMultiplyingConstant() {
        let constraints = view1.centerY .= relatedView.bottomAnchor .* 3
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1CenterYEqualToBottomMultipliedByConstant() {
        let constraints = view1.centerY .= 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1CenterYEqualToBottomDividedByConstant() {
        let constraints = view1.centerY .= relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1CenterYEqualToBottomWithPriority() {
        let constraints = view1.centerY .= relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, priority: .low)
    }

    func testView1CenterYEqualToBottomWithPriorityLiteral() {
        let constraints = view1.centerY .= relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, priority: 300)
    }

    func testView1CenterYEqualToBottomWithPriorityArithmetic() {
        let constraints = view1.centerY .= relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1CenterYEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY .= (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY .= 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY .= 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1CenterYEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1.centerY .= (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1CenterYEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY .= 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1CenterYEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY .= (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1CenterYGreaterThanOrEqualToBottom() {
        let constraints = view1.centerY ≥ relatedView.bottomAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1CenterYGreaterThanOrEqualToBottomPlusConstant() {
        let constraints = view1.centerY ≥ relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1CenterYGreaterThanOrEqualToBottomMinusConstant() {
        let constraints = view1.centerY ≥ relatedView.bottomAnchor .- 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterYGreaterThanOrEqualToBottomMultiplyingConstant() {
        let constraints = view1.centerY ≥ relatedView.bottomAnchor .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToBottomMultipliedByConstant() {
        let constraints = view1.centerY ≥ 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToBottomDividedByConstant() {
        let constraints = view1.centerY ≥ relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1CenterYGreaterThanOrEqualToBottomWithPriority() {
        let constraints = view1.centerY ≥ relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = view1.centerY ≥ relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1CenterYGreaterThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1CenterYGreaterThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.centerY ≥ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.centerY ≥ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.centerY ≥ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1.centerY ≥ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1CenterYGreaterThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerY ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerY ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerY ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerY ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterYGreaterThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerY ≥ (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.bottomBottom <=> relatedViewTop
    // MARK: LessThanOrEqual

    func testView1BottomLessThanOrEqualToTop() {
        let constraints = view1.bottom ≤ relatedView.topAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testView1BottomLessThanOrEqualToTopPlusConstant() {
        let constraints = view1.bottom ≤ relatedView.topAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1BottomLessThanOrEqualToTopMinusConstant() {
        let constraints = view1.bottom ≤ relatedView.topAnchor .- 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1BottomLessThanOrEqualToTopMultiplyingConstant() {
        let constraints = view1.bottom ≤ relatedView.topAnchor .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToTopMultipliedByConstant() {
        let constraints = view1.bottom ≤ 3 .* relatedView.topAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToTopDividedByConstant() {
        let constraints = view1.bottom ≤ relatedView.topAnchor ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1BottomLessThanOrEqualToTopWithPriority() {
        let constraints = view1.bottom ≤ relatedView.topAnchor ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1BottomLessThanOrEqualToTopWithPriorityLiteral() {
        let constraints = view1.bottom ≤ relatedView.topAnchor ~ 300
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1BottomLessThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1BottomLessThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom ≤ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom ≤ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom ≤ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1.bottom ≤ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1BottomLessThanOrEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom ≤ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1BottomLessThanOrEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testView1BottomEqualToTop() {
        let constraints = view1.bottom .= relatedView.topAnchor
        constraints.assert(view1, .bottom, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testView1BottomEqualToTopPlusConstant() {
        let constraints = view1.bottom .= relatedView.topAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10)
    }

    func testView1BottomEqualToTopMinusConstant() {
        let constraints = view1.bottom .= relatedView.topAnchor .- 10
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1BottomEqualToTopMultiplyingConstant() {
        let constraints = view1.bottom .= relatedView.topAnchor .* 3
        constraints.assert(view1, .bottom, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1BottomEqualToTopMultipliedByConstant() {
        let constraints = view1.bottom .= 3 .* relatedView.topAnchor
        constraints.assert(view1, .bottom, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1BottomEqualToTopDividedByConstant() {
        let constraints = view1.bottom .= relatedView.topAnchor ./ 2
        constraints.assert(view1, .bottom, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1BottomEqualToTopWithPriority() {
        let constraints = view1.bottom .= relatedView.topAnchor ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .top, priority: .low)
    }

    func testView1BottomEqualToTopWithPriorityLiteral() {
        let constraints = view1.bottom .= relatedView.topAnchor ~ 300
        constraints.assert(view1, .bottom, .equal, relatedView, .top, priority: 300)
    }

    func testView1BottomEqualToTopWithPriorityArithmetic() {
        let constraints = view1.bottom .= relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1BottomEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom .= (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom .= 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom .= 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1BottomEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1.bottom .= (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1BottomEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom .= (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom .= 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom .= 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom .= (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1BottomEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1BottomGreaterThanOrEqualToTop() {
        let constraints = view1.bottom ≥ relatedView.topAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1BottomGreaterThanOrEqualToTopPlusConstant() {
        let constraints = view1.bottom ≥ relatedView.topAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1BottomGreaterThanOrEqualToTopMinusConstant() {
        let constraints = view1.bottom ≥ relatedView.topAnchor .- 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1BottomGreaterThanOrEqualToTopMultiplyingConstant() {
        let constraints = view1.bottom ≥ relatedView.topAnchor .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToTopMultipliedByConstant() {
        let constraints = view1.bottom ≥ 3 .* relatedView.topAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToTopDividedByConstant() {
        let constraints = view1.bottom ≥ relatedView.topAnchor ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1BottomGreaterThanOrEqualToTopWithPriority() {
        let constraints = view1.bottom ≥ relatedView.topAnchor ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualToTopWithPriorityLiteral() {
        let constraints = view1.bottom ≥ relatedView.topAnchor ~ 300
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1BottomGreaterThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1BottomGreaterThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom ≥ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom ≥ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom ≥ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1.bottom ≥ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1BottomGreaterThanOrEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom ≥ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1BottomGreaterThanOrEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.bottomBottom <=> relatedViewCenterY
    // MARK: LessThanOrEqual

    func testView1BottomLessThanOrEqualToCenterY() {
        let constraints = view1.bottom ≤ relatedView.centerYAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testView1BottomLessThanOrEqualToCenterYPlusConstant() {
        let constraints = view1.bottom ≤ relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1BottomLessThanOrEqualToCenterYMinusConstant() {
        let constraints = view1.bottom ≤ relatedView.centerYAnchor .- 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1BottomLessThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = view1.bottom ≤ relatedView.centerYAnchor .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = view1.bottom ≤ 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToCenterYDividedByConstant() {
        let constraints = view1.bottom ≤ relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1BottomLessThanOrEqualToCenterYWithPriority() {
        let constraints = view1.bottom ≤ relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1BottomLessThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = view1.bottom ≤ relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1BottomLessThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1BottomLessThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom ≤ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom ≤ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom ≤ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1.bottom ≤ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1BottomLessThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1BottomLessThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testView1BottomEqualToCenterY() {
        let constraints = view1.bottom .= relatedView.centerYAnchor
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testView1BottomEqualToCenterYPlusConstant() {
        let constraints = view1.bottom .= relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10)
    }

    func testView1BottomEqualToCenterYMinusConstant() {
        let constraints = view1.bottom .= relatedView.centerYAnchor .- 10
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1BottomEqualToCenterYMultiplyingConstant() {
        let constraints = view1.bottom .= relatedView.centerYAnchor .* 3
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1BottomEqualToCenterYMultipliedByConstant() {
        let constraints = view1.bottom .= 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1BottomEqualToCenterYDividedByConstant() {
        let constraints = view1.bottom .= relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1BottomEqualToCenterYWithPriority() {
        let constraints = view1.bottom .= relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, priority: .low)
    }

    func testView1BottomEqualToCenterYWithPriorityLiteral() {
        let constraints = view1.bottom .= relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, priority: 300)
    }

    func testView1BottomEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1.bottom .= relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1BottomEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom .= (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom .= 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom .= 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1BottomEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1.bottom .= (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1BottomEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom .= 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1BottomEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1BottomGreaterThanOrEqualToCenterY() {
        let constraints = view1.bottom ≥ relatedView.centerYAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1BottomGreaterThanOrEqualToCenterYPlusConstant() {
        let constraints = view1.bottom ≥ relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1BottomGreaterThanOrEqualToCenterYMinusConstant() {
        let constraints = view1.bottom ≥ relatedView.centerYAnchor .- 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1BottomGreaterThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = view1.bottom ≥ relatedView.centerYAnchor .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = view1.bottom ≥ 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToCenterYDividedByConstant() {
        let constraints = view1.bottom ≥ relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1BottomGreaterThanOrEqualToCenterYWithPriority() {
        let constraints = view1.bottom ≥ relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = view1.bottom ≥ relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1BottomGreaterThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1BottomGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom ≥ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom ≥ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom ≥ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1.bottom ≥ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1BottomGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1BottomGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.bottomBottom <=> relatedViewBottom
    // MARK: LessThanOrEqual

    func testView1BottomLessThanOrEqualToBottom() {
        let constraints = view1.bottom ≤ relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testView1BottomLessThanOrEqualToBottomPlusConstant() {
        let constraints = view1.bottom ≤ relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1BottomLessThanOrEqualToBottomMinusConstant() {
        let constraints = view1.bottom ≤ relatedView.bottomAnchor .- 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1BottomLessThanOrEqualToBottomMultiplyingConstant() {
        let constraints = view1.bottom ≤ relatedView.bottomAnchor .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToBottomMultipliedByConstant() {
        let constraints = view1.bottom ≤ 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToBottomDividedByConstant() {
        let constraints = view1.bottom ≤ relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1BottomLessThanOrEqualToBottomWithPriority() {
        let constraints = view1.bottom ≤ relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1BottomLessThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = view1.bottom ≤ relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1BottomLessThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1BottomLessThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom ≤ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom ≤ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom ≤ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1.bottom ≤ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1BottomLessThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomLessThanOrEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1BottomLessThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomLessThanOrEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≤ (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testView1BottomEqualToBottom() {
        let constraints = view1.bottom .= relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testView1BottomEqualToBottomPlusConstant() {
        let constraints = view1.bottom .= relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testView1BottomEqualToBottomMinusConstant() {
        let constraints = view1.bottom .= relatedView.bottomAnchor .- 10
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1BottomEqualToBottomMultiplyingConstant() {
        let constraints = view1.bottom .= relatedView.bottomAnchor .* 3
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1BottomEqualToBottomMultipliedByConstant() {
        let constraints = view1.bottom .= 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1BottomEqualToBottomDividedByConstant() {
        let constraints = view1.bottom .= relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1BottomEqualToBottomWithPriority() {
        let constraints = view1.bottom .= relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testView1BottomEqualToBottomWithPriorityLiteral() {
        let constraints = view1.bottom .= relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testView1BottomEqualToBottomWithPriorityArithmetic() {
        let constraints = view1.bottom .= relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1BottomEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom .= (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom .= 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom .= 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1BottomEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1.bottom .= (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1BottomEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom .= 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1BottomEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom .= (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1BottomGreaterThanOrEqualToBottom() {
        let constraints = view1.bottom ≥ relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1BottomGreaterThanOrEqualToBottomPlusConstant() {
        let constraints = view1.bottom ≥ relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1BottomGreaterThanOrEqualToBottomMinusConstant() {
        let constraints = view1.bottom ≥ relatedView.bottomAnchor .- 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1BottomGreaterThanOrEqualToBottomMultiplyingConstant() {
        let constraints = view1.bottom ≥ relatedView.bottomAnchor .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToBottomMultipliedByConstant() {
        let constraints = view1.bottom ≥ 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToBottomDividedByConstant() {
        let constraints = view1.bottom ≥ relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1BottomGreaterThanOrEqualToBottomWithPriority() {
        let constraints = view1.bottom ≥ relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = view1.bottom ≥ relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1BottomGreaterThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1BottomGreaterThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.bottom ≥ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.bottom ≥ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.bottom ≥ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1.bottom ≥ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1BottomGreaterThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.bottom ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.bottom ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.bottom ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.bottom ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1BottomGreaterThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.bottom ≥ (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
// sourcery:end
}
