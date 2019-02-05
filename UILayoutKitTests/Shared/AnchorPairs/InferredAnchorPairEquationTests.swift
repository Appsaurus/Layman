//
//  InferredPairEquationTests.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 2/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// swiftlint:disable file_length type_body_length

@testable import UILayoutKit
import XCTest

class InferredAnchorPairEquationTests: UILayoutKitTestCase {

// sourcery:inline:auto:InferredAnchorPairEquationTests.InferredAnchorPairEquationTests

    // MARK: view1CenterAnchors <=> relatedViewCenterAnchors
    // MARK: Equal
    func testInferredView1EqualToCenterAnchors() {
        let constraints = view1 .= relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testInferredView1EqualToCenterAnchorsPlusConstant() {
        let constraints = view1 .= relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, invertTrailing: true)
    }

    func testInferredView1EqualToCenterAnchorsMinusConstant() {
        let constraints = view1 .= relatedView.centerAnchors .- 10
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: -10)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testInferredView1EqualToCenterAnchorsMultiplyingConstant() {
        let constraints = view1 .= relatedView.centerAnchors .* 3
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToCenterAnchorsMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToCenterAnchorsDividedByConstant() {
        let constraints = view1 .= relatedView.centerAnchors ./ 2
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testInferredView1EqualToCenterAnchorsWithPriority() {
        let constraints = view1 .= relatedView.centerAnchors ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, priority: .low, invertTrailing: true)
    }

    func testInferredView1EqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = view1 .= relatedView.centerAnchors ~ 300
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 300)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 300, invertTrailing: true)
    }

    func testInferredView1EqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1EqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1EqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1EqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1EqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1EqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1EqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1EqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1EqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1EqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: LessThanOrEqual
    func testInferredView1LessThanOrEqualToCenterAnchors() {
        let constraints = view1 ≤ relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1LessThanOrEqualToCenterAnchorsPlusConstant() {
        let constraints = view1 ≤ relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToCenterAnchorsMinusConstant() {
        let constraints = view1 ≤ relatedView.centerAnchors .- 10
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1LessThanOrEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.centerAnchors .* 3
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToCenterAnchorsDividedByConstant() {
        let constraints = view1 ≤ relatedView.centerAnchors ./ 2
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1LessThanOrEqualToCenterAnchorsWithPriority() {
        let constraints = view1 ≤ relatedView.centerAnchors ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.centerAnchors ~ 300
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1LessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testInferredView1GreaterThanOrEqualToCenterAnchors() {
        let constraints = view1 ≥ relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1GreaterThanOrEqualToCenterAnchorsPlusConstant() {
        let constraints = view1 ≥ relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToCenterAnchorsMinusConstant() {
        let constraints = view1 ≥ relatedView.centerAnchors .- 10
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1GreaterThanOrEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.centerAnchors .* 3
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToCenterAnchorsDividedByConstant() {
        let constraints = view1 ≥ relatedView.centerAnchors ./ 2
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1GreaterThanOrEqualToCenterAnchorsWithPriority() {
        let constraints = view1 ≥ relatedView.centerAnchors ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.centerAnchors ~ 300
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1GreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1GreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1GreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: view1HorizontalEdgeAnchors <=> relatedViewHorizontalEdgeAnchors
    // MARK: Equal
    func testInferredView1EqualToHorizontalEdgeAnchors() {
        let constraints = view1 .= relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testInferredView1EqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = view1 .= relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, invertTrailing: true)
    }

    func testInferredView1EqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = view1 .= relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testInferredView1EqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1 .= relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = view1 .= relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testInferredView1EqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = view1 .= relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, priority: .low, invertTrailing: true)
    }

    func testInferredView1EqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1 .= relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 300, invertTrailing: true)
    }

    func testInferredView1EqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1EqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1EqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1EqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1EqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1EqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1EqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1EqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1EqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1EqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: LessThanOrEqual
    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchors() {
        let constraints = view1 ≤ relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = view1 ≤ relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = view1 ≤ relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = view1 ≤ relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = view1 ≤ relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchors() {
        let constraints = view1 ≥ relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = view1 ≥ relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = view1 ≥ relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = view1 ≥ relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = view1 ≥ relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: view1VerticalEdgeAnchors <=> relatedViewVerticalEdgeAnchors
    // MARK: Equal
    func testInferredView1EqualToVerticalEdgeAnchors() {
        let constraints = view1 .= relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .equal, relatedView, .top)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testInferredView1EqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = view1 .= relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, invertTrailing: true)
    }

    func testInferredView1EqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = view1 .= relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: -10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testInferredView1EqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1 .= relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = view1 .= relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testInferredView1EqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = view1 .= relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low, invertTrailing: true)
    }

    func testInferredView1EqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1 .= relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(view1, .top, .equal, relatedView, .top, priority: 300)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 300, invertTrailing: true)
    }

    func testInferredView1EqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1EqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1EqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1EqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1EqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1EqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1EqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1EqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1EqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1EqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: LessThanOrEqual
    func testInferredView1LessThanOrEqualToVerticalEdgeAnchors() {
        let constraints = view1 ≤ relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = view1 ≤ relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = view1 ≤ relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = view1 ≤ relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = view1 ≤ relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchors() {
        let constraints = view1 ≥ relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = view1 ≥ relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = view1 ≥ relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = view1 ≥ relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = view1 ≥ relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: view1SizeAnchors <=> relatedViewSizeAnchors
    // MARK: Equal
    func testInferredView1EqualToSizeAnchors() {
        let constraints = view1 .= relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .equal, relatedView, .width)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testInferredView1EqualToSizeAnchorsPlusConstant() {
        let constraints = view1 .= relatedView.sizeAnchors .+ 10
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, invertTrailing: true)
    }

    func testInferredView1EqualToSizeAnchorsMinusConstant() {
        let constraints = view1 .= relatedView.sizeAnchors .- 10
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: -10)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testInferredView1EqualToSizeAnchorsMultiplyingConstant() {
        let constraints = view1 .= relatedView.sizeAnchors .* 3
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToSizeAnchorsMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToSizeAnchorsDividedByConstant() {
        let constraints = view1 .= relatedView.sizeAnchors ./ 2
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testInferredView1EqualToSizeAnchorsWithPriority() {
        let constraints = view1 .= relatedView.sizeAnchors ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, priority: .low, invertTrailing: true)
    }

    func testInferredView1EqualToSizeAnchorsWithPriorityLiteral() {
        let constraints = view1 .= relatedView.sizeAnchors ~ 300
        constraints.first.assert(view1, .width, .equal, relatedView, .width, priority: 300)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, priority: 300, invertTrailing: true)
    }

    func testInferredView1EqualToSizeAnchorsWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.sizeAnchors ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1EqualToSizeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.sizeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToSizeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.sizeAnchors .+ 10)
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToSizeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.sizeAnchors .+ 10
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1EqualToSizeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.sizeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1EqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.sizeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1EqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.sizeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1EqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.sizeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1EqualToSizeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.sizeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1EqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.sizeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1EqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.sizeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1EqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.sizeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1EqualToSizeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.sizeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: LessThanOrEqual
    func testInferredView1LessThanOrEqualToSizeAnchors() {
        let constraints = view1 ≤ relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1LessThanOrEqualToSizeAnchorsPlusConstant() {
        let constraints = view1 ≤ relatedView.sizeAnchors .+ 10
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToSizeAnchorsMinusConstant() {
        let constraints = view1 ≤ relatedView.sizeAnchors .- 10
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1LessThanOrEqualToSizeAnchorsMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.sizeAnchors .* 3
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToSizeAnchorsMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToSizeAnchorsDividedByConstant() {
        let constraints = view1 ≤ relatedView.sizeAnchors ./ 2
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1LessThanOrEqualToSizeAnchorsWithPriority() {
        let constraints = view1 ≤ relatedView.sizeAnchors ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: .low, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToSizeAnchorsWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.sizeAnchors ~ 300
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 300, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToSizeAnchorsWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.sizeAnchors ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1LessThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.sizeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.sizeAnchors .+ 10)
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.sizeAnchors .+ 10
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToSizeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.sizeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LessThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.sizeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.sizeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.sizeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.sizeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LessThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.sizeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.sizeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.sizeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1LessThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.sizeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testInferredView1GreaterThanOrEqualToSizeAnchors() {
        let constraints = view1 ≥ relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1GreaterThanOrEqualToSizeAnchorsPlusConstant() {
        let constraints = view1 ≥ relatedView.sizeAnchors .+ 10
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToSizeAnchorsMinusConstant() {
        let constraints = view1 ≥ relatedView.sizeAnchors .- 10
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1GreaterThanOrEqualToSizeAnchorsMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.sizeAnchors .* 3
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToSizeAnchorsMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToSizeAnchorsDividedByConstant() {
        let constraints = view1 ≥ relatedView.sizeAnchors ./ 2
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1GreaterThanOrEqualToSizeAnchorsWithPriority() {
        let constraints = view1 ≥ relatedView.sizeAnchors ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: .low, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToSizeAnchorsWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.sizeAnchors ~ 300
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 300, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToSizeAnchorsWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.sizeAnchors ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1GreaterThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.sizeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.sizeAnchors .+ 10)
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.sizeAnchors .+ 10
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToSizeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.sizeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1GreaterThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.sizeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.sizeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.sizeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.sizeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1GreaterThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.sizeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.sizeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.sizeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1GreaterThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.sizeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: viewArrayCenterAnchors <=> relatedViewCenterAnchors
    // MARK: Equal
    func testInferredViewArrayEqualToCenterAnchors() {
        let constraints = viewArray .= relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testInferredViewArrayEqualToCenterAnchorsPlusConstant() {
        let constraints = viewArray .= relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayEqualToCenterAnchorsMinusConstant() {
        let constraints = viewArray .= relatedView.centerAnchors .- 10
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: -10)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = viewArray .= relatedView.centerAnchors .* 3
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToCenterAnchorsDividedByConstant() {
        let constraints = viewArray .= relatedView.centerAnchors ./ 2
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayEqualToCenterAnchorsWithPriority() {
        let constraints = viewArray .= relatedView.centerAnchors ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.centerAnchors ~ 300
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 300)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: LessThanOrEqual
    func testInferredViewArrayLessThanOrEqualToCenterAnchors() {
        let constraints = viewArray ≤ relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayLessThanOrEqualToCenterAnchorsPlusConstant() {
        let constraints = viewArray ≤ relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToCenterAnchorsMinusConstant() {
        let constraints = viewArray ≤ relatedView.centerAnchors .- 10
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayLessThanOrEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.centerAnchors .* 3
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToCenterAnchorsDividedByConstant() {
        let constraints = viewArray ≤ relatedView.centerAnchors ./ 2
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayLessThanOrEqualToCenterAnchorsWithPriority() {
        let constraints = viewArray ≤ relatedView.centerAnchors ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.centerAnchors ~ 300
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testInferredViewArrayGreaterThanOrEqualToCenterAnchors() {
        let constraints = viewArray ≥ relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstant() {
        let constraints = viewArray ≥ relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsMinusConstant() {
        let constraints = viewArray ≥ relatedView.centerAnchors .- 10
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.centerAnchors .* 3
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsDividedByConstant() {
        let constraints = viewArray ≥ relatedView.centerAnchors ./ 2
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsWithPriority() {
        let constraints = viewArray ≥ relatedView.centerAnchors ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.centerAnchors ~ 300
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: viewArrayHorizontalEdgeAnchors <=> relatedViewHorizontalEdgeAnchors
    // MARK: Equal
    func testInferredViewArrayEqualToHorizontalEdgeAnchors() {
        let constraints = viewArray .= relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testInferredViewArrayEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = viewArray .= relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = viewArray .= relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray .= relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray .= relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = viewArray .= relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: LessThanOrEqual
    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchors() {
        let constraints = viewArray ≤ relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = viewArray ≤ relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = viewArray ≤ relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray ≤ relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = viewArray ≤ relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchors() {
        let constraints = viewArray ≥ relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = viewArray ≥ relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = viewArray ≥ relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray ≥ relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = viewArray ≥ relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: viewArrayVerticalEdgeAnchors <=> relatedViewVerticalEdgeAnchors
    // MARK: Equal
    func testInferredViewArrayEqualToVerticalEdgeAnchors() {
        let constraints = viewArray .= relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testInferredViewArrayEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = viewArray .= relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = viewArray .= relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray .= relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray .= relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = viewArray .= relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, priority: 300)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: LessThanOrEqual
    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchors() {
        let constraints = viewArray ≤ relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = viewArray ≤ relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = viewArray ≤ relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray ≤ relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = viewArray ≤ relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchors() {
        let constraints = viewArray ≥ relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = viewArray ≥ relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = viewArray ≥ relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray ≥ relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = viewArray ≥ relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: viewArraySizeAnchors <=> relatedViewSizeAnchors
    // MARK: Equal
    func testInferredViewArrayEqualToSizeAnchors() {
        let constraints = viewArray .= relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testInferredViewArrayEqualToSizeAnchorsPlusConstant() {
        let constraints = viewArray .= relatedView.sizeAnchors .+ 10
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayEqualToSizeAnchorsMinusConstant() {
        let constraints = viewArray .= relatedView.sizeAnchors .- 10
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: -10)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayEqualToSizeAnchorsMultiplyingConstant() {
        let constraints = viewArray .= relatedView.sizeAnchors .* 3
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToSizeAnchorsMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToSizeAnchorsDividedByConstant() {
        let constraints = viewArray .= relatedView.sizeAnchors ./ 2
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayEqualToSizeAnchorsWithPriority() {
        let constraints = viewArray .= relatedView.sizeAnchors ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayEqualToSizeAnchorsWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.sizeAnchors ~ 300
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, priority: 300)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayEqualToSizeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.sizeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayEqualToSizeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.sizeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToSizeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.sizeAnchors .+ 10)
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToSizeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.sizeAnchors .+ 10
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayEqualToSizeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.sizeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.sizeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.sizeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.sizeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayEqualToSizeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.sizeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.sizeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.sizeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.sizeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayEqualToSizeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.sizeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: LessThanOrEqual
    func testInferredViewArrayLessThanOrEqualToSizeAnchors() {
        let constraints = viewArray ≤ relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayLessThanOrEqualToSizeAnchorsPlusConstant() {
        let constraints = viewArray ≤ relatedView.sizeAnchors .+ 10
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToSizeAnchorsMinusConstant() {
        let constraints = viewArray ≤ relatedView.sizeAnchors .- 10
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayLessThanOrEqualToSizeAnchorsMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.sizeAnchors .* 3
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToSizeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToSizeAnchorsDividedByConstant() {
        let constraints = viewArray ≤ relatedView.sizeAnchors ./ 2
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayLessThanOrEqualToSizeAnchorsWithPriority() {
        let constraints = viewArray ≤ relatedView.sizeAnchors ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToSizeAnchorsWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.sizeAnchors ~ 300
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToSizeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.sizeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLessThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.sizeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.sizeAnchors .+ 10)
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.sizeAnchors .+ 10
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToSizeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.sizeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLessThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.sizeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.sizeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.sizeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.sizeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLessThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.sizeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.sizeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.sizeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayLessThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.sizeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testInferredViewArrayGreaterThanOrEqualToSizeAnchors() {
        let constraints = viewArray ≥ relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstant() {
        let constraints = viewArray ≥ relatedView.sizeAnchors .+ 10
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsMinusConstant() {
        let constraints = viewArray ≥ relatedView.sizeAnchors .- 10
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.sizeAnchors .* 3
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsDividedByConstant() {
        let constraints = viewArray ≥ relatedView.sizeAnchors ./ 2
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsWithPriority() {
        let constraints = viewArray ≥ relatedView.sizeAnchors ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.sizeAnchors ~ 300
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.sizeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.sizeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.sizeAnchors .+ 10)
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.sizeAnchors .+ 10
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.sizeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.sizeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.sizeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.sizeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.sizeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.sizeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.sizeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.sizeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.sizeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
// sourcery:end
}
