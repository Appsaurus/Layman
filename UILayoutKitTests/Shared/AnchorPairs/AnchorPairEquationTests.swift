//
//  AnchorPairEquationTests.swift
//  SharedTests
//
//  Created by Brian Strobach on 1/3/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// swiftlint:disable file_length type_body_length

@testable import UILayoutKit
import XCTest

// sourcery: lhsItems = view1, lhsItems = viewArray
// sourcery: rhsAttributes = centerAnchors, rhsAttributes = horizontalEdgeAnchors, rhsAttributes = verticalEdgeAnchors, rhsAttributes = sizeAnchors
// sourcery: centerAnchors = centerX, centerAnchors = centerY
// sourcery: horizontalEdgeAnchors = leading, horizontalEdgeAnchors = trailing
// sourcery: verticalEdgeAnchors = top, verticalEdgeAnchors = bottom
// sourcery: sizeAnchors = width, sizeAnchors = height
class AnchorPairEquationTests: UILayoutKitTestCase {

// sourcery:inline:auto:AnchorPairEquationTests.AnchorPairEquationTest

    // MARK: view1.centerAnchorsCenterAnchors <=> relatedViewCenterAnchors
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToCenterAnchors() {
        let constraints = view1.centerAnchors ≤ relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToCenterAnchorsPlusConstant() {
        let constraints = view1.centerAnchors ≤ relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, invertTrailing: true)
    }

    func testView1LessThanOrEqualToCenterAnchorsMinusConstant() {
        let constraints = view1.centerAnchors ≤ relatedView.centerAnchors .- 10
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = view1.centerAnchors ≤ relatedView.centerAnchors .* 3
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testView1LessThanOrEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToCenterAnchorsMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.centerAnchors .* 75%
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 0.75, invertTrailing: true)
    }

    func testView1LessThanOrEqualToCenterAnchorsMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 0.75, invertTrailing: true)
    }

    func testView1LessThanOrEqualToCenterAnchorsDividedByConstant() {
        let constraints = view1.centerAnchors ≤ relatedView.centerAnchors ./ 2
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToCenterAnchorsWithPriority() {
        let constraints = view1.centerAnchors ≤ relatedView.centerAnchors ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low, invertTrailing: true)
    }

    func testView1LessThanOrEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = view1.centerAnchors ≤ relatedView.centerAnchors ~ 300
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300, invertTrailing: true)
    }

    func testView1LessThanOrEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = view1.centerAnchors ≤ relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1LessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1LessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testView1LessThanOrEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1LessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1LessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1LessThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1LessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1LessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1LessThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: Equal
    func testView1EqualToCenterAnchors() {
        let constraints = view1.centerAnchors .= relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testView1EqualToCenterAnchorsPlusConstant() {
        let constraints = view1.centerAnchors .= relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, invertTrailing: true)
    }

    func testView1EqualToCenterAnchorsMinusConstant() {
        let constraints = view1.centerAnchors .= relatedView.centerAnchors .- 10
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: -10)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testView1EqualToCenterAnchorsMultiplyingConstant() {
        let constraints = view1.centerAnchors .= relatedView.centerAnchors .* 3
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testView1EqualToCenterAnchorsMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToCenterAnchorsMultiplyingPercent() {
        let constraints = view1 .= relatedView.centerAnchors .* 75%
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 0.75, invertTrailing: true)
    }

    func testView1EqualToCenterAnchorsMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 0.75, invertTrailing: true)
    }

    func testView1EqualToCenterAnchorsDividedByConstant() {
        let constraints = view1.centerAnchors .= relatedView.centerAnchors ./ 2
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testView1EqualToCenterAnchorsWithPriority() {
        let constraints = view1.centerAnchors .= relatedView.centerAnchors ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, priority: .low, invertTrailing: true)
    }

    func testView1EqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = view1.centerAnchors .= relatedView.centerAnchors ~ 300
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 300)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 300, invertTrailing: true)
    }

    func testView1EqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = view1.centerAnchors .= relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1EqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1EqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testView1EqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1EqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1EqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1EqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1EqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1EqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1EqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToCenterAnchors() {
        let constraints = view1.centerAnchors ≥ relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstant() {
        let constraints = view1.centerAnchors ≥ relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsMinusConstant() {
        let constraints = view1.centerAnchors ≥ relatedView.centerAnchors .- 10
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = view1.centerAnchors ≥ relatedView.centerAnchors .* 3
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToCenterAnchorsMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.centerAnchors .* 75%
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 0.75, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 0.75, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsDividedByConstant() {
        let constraints = view1.centerAnchors ≥ relatedView.centerAnchors ./ 2
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToCenterAnchorsWithPriority() {
        let constraints = view1.centerAnchors ≥ relatedView.centerAnchors ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = view1.centerAnchors ≥ relatedView.centerAnchors ~ 300
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = view1.centerAnchors ≥ relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: view1.horizontalEdgeAnchorsHorizontalEdgeAnchors <=> relatedViewHorizontalEdgeAnchors
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToHorizontalEdgeAnchors() {
        let constraints = view1.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = view1.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, invertTrailing: true)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = view1.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToHorizontalEdgeAnchorsMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.horizontalEdgeAnchors .* 75%
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75, invertTrailing: true)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75, invertTrailing: true)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = view1.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = view1.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low, invertTrailing: true)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300, invertTrailing: true)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: Equal
    func testView1EqualToHorizontalEdgeAnchors() {
        let constraints = view1.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testView1EqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = view1.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, invertTrailing: true)
    }

    func testView1EqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = view1.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testView1EqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testView1EqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToHorizontalEdgeAnchorsMultiplyingPercent() {
        let constraints = view1 .= relatedView.horizontalEdgeAnchors .* 75%
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 0.75, invertTrailing: true)
    }

    func testView1EqualToHorizontalEdgeAnchorsMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 0.75, invertTrailing: true)
    }

    func testView1EqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = view1.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testView1EqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = view1.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, priority: .low, invertTrailing: true)
    }

    func testView1EqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 300, invertTrailing: true)
    }

    func testView1EqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1EqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1EqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testView1EqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1EqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1EqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1EqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1EqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1EqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1EqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToHorizontalEdgeAnchors() {
        let constraints = view1.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = view1.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = view1.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.horizontalEdgeAnchors .* 75%
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = view1.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = view1.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: view1.verticalEdgeAnchorsVerticalEdgeAnchors <=> relatedViewVerticalEdgeAnchors
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToVerticalEdgeAnchors() {
        let constraints = view1.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = view1.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, invertTrailing: true)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = view1.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToVerticalEdgeAnchorsMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.verticalEdgeAnchors .* 75%
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75, invertTrailing: true)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75, invertTrailing: true)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = view1.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = view1.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low, invertTrailing: true)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300, invertTrailing: true)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: Equal
    func testView1EqualToVerticalEdgeAnchors() {
        let constraints = view1.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .equal, relatedView, .top)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testView1EqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = view1.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, invertTrailing: true)
    }

    func testView1EqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = view1.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: -10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testView1EqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testView1EqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToVerticalEdgeAnchorsMultiplyingPercent() {
        let constraints = view1 .= relatedView.verticalEdgeAnchors .* 75%
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75, invertTrailing: true)
    }

    func testView1EqualToVerticalEdgeAnchorsMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75, invertTrailing: true)
    }

    func testView1EqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = view1.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testView1EqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = view1.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low, invertTrailing: true)
    }

    func testView1EqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(view1, .top, .equal, relatedView, .top, priority: 300)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 300, invertTrailing: true)
    }

    func testView1EqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1EqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1EqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testView1EqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1EqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1EqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1EqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1EqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1EqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1EqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToVerticalEdgeAnchors() {
        let constraints = view1.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = view1.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = view1.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.verticalEdgeAnchors .* 75%
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = view1.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = view1.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: view1.sizeAnchorsSizeAnchors <=> relatedViewSizeAnchors
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToSizeAnchors() {
        let constraints = view1.sizeAnchors ≤ relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToSizeAnchorsPlusConstant() {
        let constraints = view1.sizeAnchors ≤ relatedView.sizeAnchors .+ 10
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, invertTrailing: true)
    }

    func testView1LessThanOrEqualToSizeAnchorsMinusConstant() {
        let constraints = view1.sizeAnchors ≤ relatedView.sizeAnchors .- 10
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToSizeAnchorsMultiplyingConstant() {
        let constraints = view1.sizeAnchors ≤ relatedView.sizeAnchors .* 3
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    func testView1LessThanOrEqualToSizeAnchorsMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToSizeAnchorsMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.sizeAnchors .* 75%
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 0.75, invertTrailing: true)
    }

    func testView1LessThanOrEqualToSizeAnchorsMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 0.75, invertTrailing: true)
    }

    func testView1LessThanOrEqualToSizeAnchorsDividedByConstant() {
        let constraints = view1.sizeAnchors ≤ relatedView.sizeAnchors ./ 2
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToSizeAnchorsWithPriority() {
        let constraints = view1.sizeAnchors ≤ relatedView.sizeAnchors ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: .low, invertTrailing: true)
    }

    func testView1LessThanOrEqualToSizeAnchorsWithPriorityLiteral() {
        let constraints = view1.sizeAnchors ≤ relatedView.sizeAnchors ~ 300
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 300, invertTrailing: true)
    }

    func testView1LessThanOrEqualToSizeAnchorsWithPriorityArithmetic() {
        let constraints = view1.sizeAnchors ≤ relatedView.sizeAnchors ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.sizeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1LessThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.sizeAnchors .+ 10)
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1LessThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.sizeAnchors .+ 10
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testView1LessThanOrEqualToSizeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.sizeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.sizeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1LessThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.sizeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1LessThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.sizeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1LessThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.sizeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.sizeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1LessThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.sizeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1LessThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.sizeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1LessThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.sizeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: Equal
    func testView1EqualToSizeAnchors() {
        let constraints = view1.sizeAnchors .= relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .equal, relatedView, .width)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testView1EqualToSizeAnchorsPlusConstant() {
        let constraints = view1.sizeAnchors .= relatedView.sizeAnchors .+ 10
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, invertTrailing: true)
    }

    func testView1EqualToSizeAnchorsMinusConstant() {
        let constraints = view1.sizeAnchors .= relatedView.sizeAnchors .- 10
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: -10)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testView1EqualToSizeAnchorsMultiplyingConstant() {
        let constraints = view1.sizeAnchors .= relatedView.sizeAnchors .* 3
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    func testView1EqualToSizeAnchorsMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToSizeAnchorsMultiplyingPercent() {
        let constraints = view1 .= relatedView.sizeAnchors .* 75%
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 0.75, invertTrailing: true)
    }

    func testView1EqualToSizeAnchorsMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 0.75, invertTrailing: true)
    }

    func testView1EqualToSizeAnchorsDividedByConstant() {
        let constraints = view1.sizeAnchors .= relatedView.sizeAnchors ./ 2
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testView1EqualToSizeAnchorsWithPriority() {
        let constraints = view1.sizeAnchors .= relatedView.sizeAnchors ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, priority: .low, invertTrailing: true)
    }

    func testView1EqualToSizeAnchorsWithPriorityLiteral() {
        let constraints = view1.sizeAnchors .= relatedView.sizeAnchors ~ 300
        constraints.first.assert(view1, .width, .equal, relatedView, .width, priority: 300)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, priority: 300, invertTrailing: true)
    }

    func testView1EqualToSizeAnchorsWithPriorityArithmetic() {
        let constraints = view1.sizeAnchors .= relatedView.sizeAnchors ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToSizeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.sizeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1EqualToSizeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.sizeAnchors .+ 10)
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1EqualToSizeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.sizeAnchors .+ 10
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testView1EqualToSizeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.sizeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.sizeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1EqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.sizeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1EqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.sizeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1EqualToSizeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.sizeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.sizeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1EqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.sizeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1EqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.sizeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1EqualToSizeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.sizeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToSizeAnchors() {
        let constraints = view1.sizeAnchors ≥ relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstant() {
        let constraints = view1.sizeAnchors ≥ relatedView.sizeAnchors .+ 10
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsMinusConstant() {
        let constraints = view1.sizeAnchors ≥ relatedView.sizeAnchors .- 10
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToSizeAnchorsMultiplyingConstant() {
        let constraints = view1.sizeAnchors ≥ relatedView.sizeAnchors .* 3
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToSizeAnchorsMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.sizeAnchors .* 75%
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 0.75, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 0.75, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsDividedByConstant() {
        let constraints = view1.sizeAnchors ≥ relatedView.sizeAnchors ./ 2
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToSizeAnchorsWithPriority() {
        let constraints = view1.sizeAnchors ≥ relatedView.sizeAnchors ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: .low, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsWithPriorityLiteral() {
        let constraints = view1.sizeAnchors ≥ relatedView.sizeAnchors ~ 300
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 300, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsWithPriorityArithmetic() {
        let constraints = view1.sizeAnchors ≥ relatedView.sizeAnchors ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.sizeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.sizeAnchors .+ 10)
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.sizeAnchors .+ 10
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.sizeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.sizeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.sizeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.sizeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.sizeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.sizeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.sizeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.sizeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.sizeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: viewArray.centerAnchorsCenterAnchors <=> relatedViewCenterAnchors
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToCenterAnchors() {
        let constraints = viewArray.centerAnchors ≤ relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstant() {
        let constraints = viewArray.centerAnchors ≤ relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsMinusConstant() {
        let constraints = viewArray.centerAnchors ≤ relatedView.centerAnchors .- 10
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = viewArray.centerAnchors ≤ relatedView.centerAnchors .* 3
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToCenterAnchorsMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.centerAnchors .* 75%
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsDividedByConstant() {
        let constraints = viewArray.centerAnchors ≤ relatedView.centerAnchors ./ 2
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToCenterAnchorsWithPriority() {
        let constraints = viewArray.centerAnchors ≤ relatedView.centerAnchors ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = viewArray.centerAnchors ≤ relatedView.centerAnchors ~ 300
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.centerAnchors ≤ relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: Equal
    func testViewArrayEqualToCenterAnchors() {
        let constraints = viewArray.centerAnchors .= relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToCenterAnchorsPlusConstant() {
        let constraints = viewArray.centerAnchors .= relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, invertTrailing: true)
    }

    func testViewArrayEqualToCenterAnchorsMinusConstant() {
        let constraints = viewArray.centerAnchors .= relatedView.centerAnchors .- 10
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: -10)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = viewArray.centerAnchors .= relatedView.centerAnchors .* 3
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToCenterAnchorsMultiplyingPercent() {
        let constraints = viewArray .= relatedView.centerAnchors .* 75%
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayEqualToCenterAnchorsMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayEqualToCenterAnchorsDividedByConstant() {
        let constraints = viewArray.centerAnchors .= relatedView.centerAnchors ./ 2
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToCenterAnchorsWithPriority() {
        let constraints = viewArray.centerAnchors .= relatedView.centerAnchors ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: .low, invertTrailing: true)
    }

    func testViewArrayEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = viewArray.centerAnchors .= relatedView.centerAnchors ~ 300
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 300)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 300, invertTrailing: true)
    }

    func testViewArrayEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.centerAnchors .= relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToCenterAnchors() {
        let constraints = viewArray.centerAnchors ≥ relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstant() {
        let constraints = viewArray.centerAnchors ≥ relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsMinusConstant() {
        let constraints = viewArray.centerAnchors ≥ relatedView.centerAnchors .- 10
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = viewArray.centerAnchors ≥ relatedView.centerAnchors .* 3
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToCenterAnchorsMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.centerAnchors .* 75%
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsDividedByConstant() {
        let constraints = viewArray.centerAnchors ≥ relatedView.centerAnchors ./ 2
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToCenterAnchorsWithPriority() {
        let constraints = viewArray.centerAnchors ≥ relatedView.centerAnchors ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = viewArray.centerAnchors ≥ relatedView.centerAnchors ~ 300
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.centerAnchors ≥ relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: viewArray.horizontalEdgeAnchorsHorizontalEdgeAnchors <=> relatedViewHorizontalEdgeAnchors
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchors() {
        let constraints = viewArray.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = viewArray.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = viewArray.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.horizontalEdgeAnchors .* 75%
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = viewArray.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: Equal
    func testViewArrayEqualToHorizontalEdgeAnchors() {
        let constraints = viewArray.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = viewArray.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, invertTrailing: true)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = viewArray.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToHorizontalEdgeAnchorsMultiplyingPercent() {
        let constraints = viewArray .= relatedView.horizontalEdgeAnchors .* 75%
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = viewArray.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: .low, invertTrailing: true)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 300, invertTrailing: true)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchors() {
        let constraints = viewArray.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = viewArray.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = viewArray.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.horizontalEdgeAnchors .* 75%
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = viewArray.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: viewArray.verticalEdgeAnchorsVerticalEdgeAnchors <=> relatedViewVerticalEdgeAnchors
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToVerticalEdgeAnchors() {
        let constraints = viewArray.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = viewArray.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = viewArray.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.verticalEdgeAnchors .* 75%
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = viewArray.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: Equal
    func testViewArrayEqualToVerticalEdgeAnchors() {
        let constraints = viewArray.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = viewArray.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, invertTrailing: true)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = viewArray.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToVerticalEdgeAnchorsMultiplyingPercent() {
        let constraints = viewArray .= relatedView.verticalEdgeAnchors .* 75%
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = viewArray.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low, invertTrailing: true)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, priority: 300)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 300, invertTrailing: true)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchors() {
        let constraints = viewArray.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = viewArray.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = viewArray.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.verticalEdgeAnchors .* 75%
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = viewArray.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: viewArray.sizeAnchorsSizeAnchors <=> relatedViewSizeAnchors
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToSizeAnchors() {
        let constraints = viewArray.sizeAnchors ≤ relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstant() {
        let constraints = viewArray.sizeAnchors ≤ relatedView.sizeAnchors .+ 10
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsMinusConstant() {
        let constraints = viewArray.sizeAnchors ≤ relatedView.sizeAnchors .- 10
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToSizeAnchorsMultiplyingConstant() {
        let constraints = viewArray.sizeAnchors ≤ relatedView.sizeAnchors .* 3
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToSizeAnchorsMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.sizeAnchors .* 75%
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsDividedByConstant() {
        let constraints = viewArray.sizeAnchors ≤ relatedView.sizeAnchors ./ 2
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToSizeAnchorsWithPriority() {
        let constraints = viewArray.sizeAnchors ≤ relatedView.sizeAnchors ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: .low, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsWithPriorityLiteral() {
        let constraints = viewArray.sizeAnchors ≤ relatedView.sizeAnchors ~ 300
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: 300, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.sizeAnchors ≤ relatedView.sizeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.sizeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.sizeAnchors .+ 10)
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.sizeAnchors .+ 10
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.sizeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.sizeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.sizeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.sizeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.sizeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.sizeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.sizeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.sizeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.sizeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: Equal
    func testViewArrayEqualToSizeAnchors() {
        let constraints = viewArray.sizeAnchors .= relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToSizeAnchorsPlusConstant() {
        let constraints = viewArray.sizeAnchors .= relatedView.sizeAnchors .+ 10
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, invertTrailing: true)
    }

    func testViewArrayEqualToSizeAnchorsMinusConstant() {
        let constraints = viewArray.sizeAnchors .= relatedView.sizeAnchors .- 10
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: -10)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToSizeAnchorsMultiplyingConstant() {
        let constraints = viewArray.sizeAnchors .= relatedView.sizeAnchors .* 3
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayEqualToSizeAnchorsMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToSizeAnchorsMultiplyingPercent() {
        let constraints = viewArray .= relatedView.sizeAnchors .* 75%
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayEqualToSizeAnchorsMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayEqualToSizeAnchorsDividedByConstant() {
        let constraints = viewArray.sizeAnchors .= relatedView.sizeAnchors ./ 2
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToSizeAnchorsWithPriority() {
        let constraints = viewArray.sizeAnchors .= relatedView.sizeAnchors ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, priority: .low, invertTrailing: true)
    }

    func testViewArrayEqualToSizeAnchorsWithPriorityLiteral() {
        let constraints = viewArray.sizeAnchors .= relatedView.sizeAnchors ~ 300
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, priority: 300)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, priority: 300, invertTrailing: true)
    }

    func testViewArrayEqualToSizeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.sizeAnchors .= relatedView.sizeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToSizeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.sizeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayEqualToSizeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.sizeAnchors .+ 10)
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayEqualToSizeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.sizeAnchors .+ 10
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayEqualToSizeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.sizeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.sizeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.sizeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.sizeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayEqualToSizeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.sizeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.sizeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.sizeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.sizeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayEqualToSizeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.sizeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToSizeAnchors() {
        let constraints = viewArray.sizeAnchors ≥ relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstant() {
        let constraints = viewArray.sizeAnchors ≥ relatedView.sizeAnchors .+ 10
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsMinusConstant() {
        let constraints = viewArray.sizeAnchors ≥ relatedView.sizeAnchors .- 10
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToSizeAnchorsMultiplyingConstant() {
        let constraints = viewArray.sizeAnchors ≥ relatedView.sizeAnchors .* 3
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToSizeAnchorsMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.sizeAnchors .* 75%
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 0.75, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsDividedByConstant() {
        let constraints = viewArray.sizeAnchors ≥ relatedView.sizeAnchors ./ 2
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToSizeAnchorsWithPriority() {
        let constraints = viewArray.sizeAnchors ≥ relatedView.sizeAnchors ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: .low, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsWithPriorityLiteral() {
        let constraints = viewArray.sizeAnchors ≥ relatedView.sizeAnchors ~ 300
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: 300, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.sizeAnchors ≥ relatedView.sizeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.sizeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.sizeAnchors .+ 10)
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.sizeAnchors .+ 10
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.sizeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.sizeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.sizeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.sizeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.sizeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.sizeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.sizeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.sizeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.sizeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
// sourcery:end
}
