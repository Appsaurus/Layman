//
//  AnchorPairEquationTests.swift
//  SharedTests
//
//  Created by Brian Strobach on 1/3/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// swiftlint:disable file_length type_body_length

@testable import Layman
import XCTest

// sourcery: lhsItems = view1, lhsItems = viewArray
// sourcery: rhsAttributes = centerAnchors, rhsAttributes = horizontalEdgeAnchors, rhsAttributes = verticalEdgeAnchors, rhsAttributes = sizeAnchors
// sourcery: centerAnchors = centerX, centerAnchors = centerY
// sourcery: horizontalEdgeAnchors = leading, horizontalEdgeAnchors = trailing
// sourcery: verticalEdgeAnchors = top, verticalEdgeAnchors = bottom
// sourcery: sizeAnchors = width, sizeAnchors = height
class AnchorPairEquationTests: LaymanTestCase {

// sourcery:inline:auto:AnchorPairEquationTests.AnchorPairEquationTest

    // MARK: view1.centerAnchorsCenterAnchors <=> relatedViewCenterAnchors
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToCenterAnchors() {
        let constraints = view1.centerAnchors ≥ relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstant() {
        let constraints = view1.centerAnchors ≥ relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsMinusConstant() {
        let constraints = view1.centerAnchors ≥ relatedView.centerAnchors .- 10
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = view1.centerAnchors ≥ relatedView.centerAnchors .* 3
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToCenterAnchorsMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.centerAnchors .* 75%
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsDividedByConstant() {
        let constraints = view1.centerAnchors ≥ relatedView.centerAnchors ./ 2
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToCenterAnchorsWithPriority() {
        let constraints = view1.centerAnchors ≥ relatedView.centerAnchors ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = view1.centerAnchors ≥ relatedView.centerAnchors ~ 300
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = view1.centerAnchors ≥ relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal
    func testView1EqualToCenterAnchors() {
        let constraints = view1.centerAnchors .= relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testView1EqualToCenterAnchorsPlusConstant() {
        let constraints = view1.centerAnchors .= relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10)
    }

    func testView1EqualToCenterAnchorsMinusConstant() {
        let constraints = view1.centerAnchors .= relatedView.centerAnchors .- 10
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: -10)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1EqualToCenterAnchorsMultiplyingConstant() {
        let constraints = view1.centerAnchors .= relatedView.centerAnchors .* 3
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1EqualToCenterAnchorsMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToCenterAnchorsMultiplyingPercent() {
        let constraints = view1 .= relatedView.centerAnchors .* 75%
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 0.75)
    }

    func testView1EqualToCenterAnchorsMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 0.75)
    }

    func testView1EqualToCenterAnchorsDividedByConstant() {
        let constraints = view1.centerAnchors .= relatedView.centerAnchors ./ 2
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1EqualToCenterAnchorsWithPriority() {
        let constraints = view1.centerAnchors .= relatedView.centerAnchors ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, priority: .low)
    }

    func testView1EqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = view1.centerAnchors .= relatedView.centerAnchors ~ 300
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 300)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 300)
    }

    func testView1EqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = view1.centerAnchors .= relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1EqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1EqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1EqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToCenterAnchors() {
        let constraints = view1.centerAnchors ≤ relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToCenterAnchorsPlusConstant() {
        let constraints = view1.centerAnchors ≤ relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1LessThanOrEqualToCenterAnchorsMinusConstant() {
        let constraints = view1.centerAnchors ≤ relatedView.centerAnchors .- 10
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = view1.centerAnchors ≤ relatedView.centerAnchors .* 3
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1LessThanOrEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToCenterAnchorsMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.centerAnchors .* 75%
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToCenterAnchorsMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToCenterAnchorsDividedByConstant() {
        let constraints = view1.centerAnchors ≤ relatedView.centerAnchors ./ 2
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToCenterAnchorsWithPriority() {
        let constraints = view1.centerAnchors ≤ relatedView.centerAnchors ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1LessThanOrEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = view1.centerAnchors ≤ relatedView.centerAnchors ~ 300
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1LessThanOrEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = view1.centerAnchors ≤ relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1LessThanOrEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.horizontalEdgeAnchorsHorizontalEdgeAnchors <=> relatedViewHorizontalEdgeAnchors
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToHorizontalEdgeAnchors() {
        let constraints = view1.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = view1.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = view1.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.horizontalEdgeAnchors .* 75%
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = view1.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = view1.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal
    func testView1EqualToHorizontalEdgeAnchors() {
        let constraints = view1.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testView1EqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = view1.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10)
    }

    func testView1EqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = view1.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1EqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testView1EqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToHorizontalEdgeAnchorsMultiplyingPercent() {
        let constraints = view1 .= relatedView.horizontalEdgeAnchors .* 75%
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
    }

    func testView1EqualToHorizontalEdgeAnchorsMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
    }

    func testView1EqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = view1.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1EqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = view1.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, priority: .low)
    }

    func testView1EqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 300)
    }

    func testView1EqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testView1EqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1EqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1EqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToHorizontalEdgeAnchors() {
        let constraints = view1.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = view1.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = view1.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToHorizontalEdgeAnchorsMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.horizontalEdgeAnchors .* 75%
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = view1.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = view1.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.verticalEdgeAnchorsVerticalEdgeAnchors <=> relatedViewVerticalEdgeAnchors
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToVerticalEdgeAnchors() {
        let constraints = view1.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = view1.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = view1.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.verticalEdgeAnchors .* 75%
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = view1.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = view1.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal
    func testView1EqualToVerticalEdgeAnchors() {
        let constraints = view1.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .equal, relatedView, .top)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testView1EqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = view1.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testView1EqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = view1.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: -10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1EqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1EqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToVerticalEdgeAnchorsMultiplyingPercent() {
        let constraints = view1 .= relatedView.verticalEdgeAnchors .* 75%
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1EqualToVerticalEdgeAnchorsMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1EqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = view1.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1EqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = view1.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testView1EqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(view1, .top, .equal, relatedView, .top, priority: 300)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testView1EqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1EqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1EqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1EqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToVerticalEdgeAnchors() {
        let constraints = view1.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = view1.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = view1.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToVerticalEdgeAnchorsMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.verticalEdgeAnchors .* 75%
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = view1.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = view1.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.sizeAnchorsSizeAnchors <=> relatedViewSizeAnchors
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToSizeAnchors() {
        let constraints = view1.sizeAnchors ≥ relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstant() {
        let constraints = view1.sizeAnchors ≥ relatedView.sizeAnchors .+ 10
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsMinusConstant() {
        let constraints = view1.sizeAnchors ≥ relatedView.sizeAnchors .- 10
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToSizeAnchorsMultiplyingConstant() {
        let constraints = view1.sizeAnchors ≥ relatedView.sizeAnchors .* 3
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToSizeAnchorsMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.sizeAnchors .* 75%
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsDividedByConstant() {
        let constraints = view1.sizeAnchors ≥ relatedView.sizeAnchors ./ 2
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToSizeAnchorsWithPriority() {
        let constraints = view1.sizeAnchors ≥ relatedView.sizeAnchors ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsWithPriorityLiteral() {
        let constraints = view1.sizeAnchors ≥ relatedView.sizeAnchors ~ 300
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsWithPriorityArithmetic() {
        let constraints = view1.sizeAnchors ≥ relatedView.sizeAnchors ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.sizeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.sizeAnchors .+ 10)
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.sizeAnchors .+ 10
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.sizeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.sizeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.sizeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.sizeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.sizeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.sizeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.sizeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.sizeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.sizeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal
    func testView1EqualToSizeAnchors() {
        let constraints = view1.sizeAnchors .= relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .equal, relatedView, .width)
        constraints.second.assert(view1, .height, .equal, relatedView, .height)
    }

    // MARK: Equal with constant
    func testView1EqualToSizeAnchorsPlusConstant() {
        let constraints = view1.sizeAnchors .= relatedView.sizeAnchors .+ 10
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10)
    }

    func testView1EqualToSizeAnchorsMinusConstant() {
        let constraints = view1.sizeAnchors .= relatedView.sizeAnchors .- 10
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: -10)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1EqualToSizeAnchorsMultiplyingConstant() {
        let constraints = view1.sizeAnchors .= relatedView.sizeAnchors .* 3
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testView1EqualToSizeAnchorsMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToSizeAnchorsMultiplyingPercent() {
        let constraints = view1 .= relatedView.sizeAnchors .* 75%
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 0.75)
    }

    func testView1EqualToSizeAnchorsMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 0.75)
    }

    func testView1EqualToSizeAnchorsDividedByConstant() {
        let constraints = view1.sizeAnchors .= relatedView.sizeAnchors ./ 2
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1EqualToSizeAnchorsWithPriority() {
        let constraints = view1.sizeAnchors .= relatedView.sizeAnchors ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, priority: .low)
    }

    func testView1EqualToSizeAnchorsWithPriorityLiteral() {
        let constraints = view1.sizeAnchors .= relatedView.sizeAnchors ~ 300
        constraints.first.assert(view1, .width, .equal, relatedView, .width, priority: 300)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, priority: 300)
    }

    func testView1EqualToSizeAnchorsWithPriorityArithmetic() {
        let constraints = view1.sizeAnchors .= relatedView.sizeAnchors ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToSizeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.sizeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToSizeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.sizeAnchors .+ 10)
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToSizeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.sizeAnchors .+ 10
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testView1EqualToSizeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.sizeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.sizeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.sizeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.sizeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1EqualToSizeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.sizeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.sizeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.sizeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.sizeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1EqualToSizeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.sizeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToSizeAnchors() {
        let constraints = view1.sizeAnchors ≤ relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToSizeAnchorsPlusConstant() {
        let constraints = view1.sizeAnchors ≤ relatedView.sizeAnchors .+ 10
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testView1LessThanOrEqualToSizeAnchorsMinusConstant() {
        let constraints = view1.sizeAnchors ≤ relatedView.sizeAnchors .- 10
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToSizeAnchorsMultiplyingConstant() {
        let constraints = view1.sizeAnchors ≤ relatedView.sizeAnchors .* 3
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1LessThanOrEqualToSizeAnchorsMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToSizeAnchorsMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.sizeAnchors .* 75%
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToSizeAnchorsMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.sizeAnchors
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToSizeAnchorsDividedByConstant() {
        let constraints = view1.sizeAnchors ≤ relatedView.sizeAnchors ./ 2
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToSizeAnchorsWithPriority() {
        let constraints = view1.sizeAnchors ≤ relatedView.sizeAnchors ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testView1LessThanOrEqualToSizeAnchorsWithPriorityLiteral() {
        let constraints = view1.sizeAnchors ≤ relatedView.sizeAnchors ~ 300
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testView1LessThanOrEqualToSizeAnchorsWithPriorityArithmetic() {
        let constraints = view1.sizeAnchors ≤ relatedView.sizeAnchors ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.sizeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.sizeAnchors .+ 10)
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.sizeAnchors .+ 10
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testView1LessThanOrEqualToSizeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.sizeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.sizeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.sizeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.sizeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.sizeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.sizeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.sizeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.sizeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.sizeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerAnchorsCenterAnchors <=> relatedViewCenterAnchors
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToCenterAnchors() {
        let constraints = viewArray.centerAnchors ≥ relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstant() {
        let constraints = viewArray.centerAnchors ≥ relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsMinusConstant() {
        let constraints = viewArray.centerAnchors ≥ relatedView.centerAnchors .- 10
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = viewArray.centerAnchors ≥ relatedView.centerAnchors .* 3
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToCenterAnchorsMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.centerAnchors .* 75%
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsDividedByConstant() {
        let constraints = viewArray.centerAnchors ≥ relatedView.centerAnchors ./ 2
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToCenterAnchorsWithPriority() {
        let constraints = viewArray.centerAnchors ≥ relatedView.centerAnchors ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = viewArray.centerAnchors ≥ relatedView.centerAnchors ~ 300
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.centerAnchors ≥ relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal
    func testViewArrayEqualToCenterAnchors() {
        let constraints = viewArray.centerAnchors .= relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToCenterAnchorsPlusConstant() {
        let constraints = viewArray.centerAnchors .= relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10)
    }

    func testViewArrayEqualToCenterAnchorsMinusConstant() {
        let constraints = viewArray.centerAnchors .= relatedView.centerAnchors .- 10
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: -10)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = viewArray.centerAnchors .= relatedView.centerAnchors .* 3
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToCenterAnchorsMultiplyingPercent() {
        let constraints = viewArray .= relatedView.centerAnchors .* 75%
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 0.75)
    }

    func testViewArrayEqualToCenterAnchorsMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 0.75)
    }

    func testViewArrayEqualToCenterAnchorsDividedByConstant() {
        let constraints = viewArray.centerAnchors .= relatedView.centerAnchors ./ 2
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToCenterAnchorsWithPriority() {
        let constraints = viewArray.centerAnchors .= relatedView.centerAnchors ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: .low)
    }

    func testViewArrayEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = viewArray.centerAnchors .= relatedView.centerAnchors ~ 300
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 300)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 300)
    }

    func testViewArrayEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.centerAnchors .= relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToCenterAnchors() {
        let constraints = viewArray.centerAnchors ≤ relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstant() {
        let constraints = viewArray.centerAnchors ≤ relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsMinusConstant() {
        let constraints = viewArray.centerAnchors ≤ relatedView.centerAnchors .- 10
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = viewArray.centerAnchors ≤ relatedView.centerAnchors .* 3
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToCenterAnchorsMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.centerAnchors .* 75%
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsDividedByConstant() {
        let constraints = viewArray.centerAnchors ≤ relatedView.centerAnchors ./ 2
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToCenterAnchorsWithPriority() {
        let constraints = viewArray.centerAnchors ≤ relatedView.centerAnchors ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = viewArray.centerAnchors ≤ relatedView.centerAnchors ~ 300
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.centerAnchors ≤ relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.horizontalEdgeAnchorsHorizontalEdgeAnchors <=> relatedViewHorizontalEdgeAnchors
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchors() {
        let constraints = viewArray.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = viewArray.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = viewArray.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.horizontalEdgeAnchors .* 75%
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = viewArray.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.horizontalEdgeAnchors ≥ relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal
    func testViewArrayEqualToHorizontalEdgeAnchors() {
        let constraints = viewArray.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = viewArray.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = viewArray.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToHorizontalEdgeAnchorsMultiplyingPercent() {
        let constraints = viewArray .= relatedView.horizontalEdgeAnchors .* 75%
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = viewArray.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: .low)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 300)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchors() {
        let constraints = viewArray.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = viewArray.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = viewArray.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.horizontalEdgeAnchors .* 75%
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = viewArray.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.horizontalEdgeAnchors ≤ relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.verticalEdgeAnchorsVerticalEdgeAnchors <=> relatedViewVerticalEdgeAnchors
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchors() {
        let constraints = viewArray.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = viewArray.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = viewArray.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.verticalEdgeAnchors .* 75%
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = viewArray.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.verticalEdgeAnchors ≥ relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal
    func testViewArrayEqualToVerticalEdgeAnchors() {
        let constraints = viewArray.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = viewArray.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = viewArray.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToVerticalEdgeAnchorsMultiplyingPercent() {
        let constraints = viewArray .= relatedView.verticalEdgeAnchors .* 75%
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = viewArray.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, priority: 300)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToVerticalEdgeAnchors() {
        let constraints = viewArray.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = viewArray.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = viewArray.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.verticalEdgeAnchors .* 75%
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = viewArray.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.verticalEdgeAnchors ≤ relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.sizeAnchorsSizeAnchors <=> relatedViewSizeAnchors
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToSizeAnchors() {
        let constraints = viewArray.sizeAnchors ≥ relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstant() {
        let constraints = viewArray.sizeAnchors ≥ relatedView.sizeAnchors .+ 10
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsMinusConstant() {
        let constraints = viewArray.sizeAnchors ≥ relatedView.sizeAnchors .- 10
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToSizeAnchorsMultiplyingConstant() {
        let constraints = viewArray.sizeAnchors ≥ relatedView.sizeAnchors .* 3
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToSizeAnchorsMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.sizeAnchors .* 75%
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsDividedByConstant() {
        let constraints = viewArray.sizeAnchors ≥ relatedView.sizeAnchors ./ 2
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToSizeAnchorsWithPriority() {
        let constraints = viewArray.sizeAnchors ≥ relatedView.sizeAnchors ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsWithPriorityLiteral() {
        let constraints = viewArray.sizeAnchors ≥ relatedView.sizeAnchors ~ 300
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.sizeAnchors ≥ relatedView.sizeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.sizeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.sizeAnchors .+ 10)
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.sizeAnchors .+ 10
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.sizeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.sizeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.sizeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.sizeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.sizeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.sizeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.sizeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.sizeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.sizeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal
    func testViewArrayEqualToSizeAnchors() {
        let constraints = viewArray.sizeAnchors .= relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToSizeAnchorsPlusConstant() {
        let constraints = viewArray.sizeAnchors .= relatedView.sizeAnchors .+ 10
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10)
    }

    func testViewArrayEqualToSizeAnchorsMinusConstant() {
        let constraints = viewArray.sizeAnchors .= relatedView.sizeAnchors .- 10
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: -10)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToSizeAnchorsMultiplyingConstant() {
        let constraints = viewArray.sizeAnchors .= relatedView.sizeAnchors .* 3
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testViewArrayEqualToSizeAnchorsMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToSizeAnchorsMultiplyingPercent() {
        let constraints = viewArray .= relatedView.sizeAnchors .* 75%
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 0.75)
    }

    func testViewArrayEqualToSizeAnchorsMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 0.75)
    }

    func testViewArrayEqualToSizeAnchorsDividedByConstant() {
        let constraints = viewArray.sizeAnchors .= relatedView.sizeAnchors ./ 2
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToSizeAnchorsWithPriority() {
        let constraints = viewArray.sizeAnchors .= relatedView.sizeAnchors ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, priority: .low)
    }

    func testViewArrayEqualToSizeAnchorsWithPriorityLiteral() {
        let constraints = viewArray.sizeAnchors .= relatedView.sizeAnchors ~ 300
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, priority: 300)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, priority: 300)
    }

    func testViewArrayEqualToSizeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.sizeAnchors .= relatedView.sizeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToSizeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.sizeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToSizeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.sizeAnchors .+ 10)
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToSizeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.sizeAnchors .+ 10
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayEqualToSizeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.sizeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.sizeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.sizeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.sizeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToSizeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.sizeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.sizeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.sizeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.sizeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToSizeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.sizeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToSizeAnchors() {
        let constraints = viewArray.sizeAnchors ≤ relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstant() {
        let constraints = viewArray.sizeAnchors ≤ relatedView.sizeAnchors .+ 10
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsMinusConstant() {
        let constraints = viewArray.sizeAnchors ≤ relatedView.sizeAnchors .- 10
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToSizeAnchorsMultiplyingConstant() {
        let constraints = viewArray.sizeAnchors ≤ relatedView.sizeAnchors .* 3
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToSizeAnchorsMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.sizeAnchors .* 75%
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.sizeAnchors
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsDividedByConstant() {
        let constraints = viewArray.sizeAnchors ≤ relatedView.sizeAnchors ./ 2
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToSizeAnchorsWithPriority() {
        let constraints = viewArray.sizeAnchors ≤ relatedView.sizeAnchors ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsWithPriorityLiteral() {
        let constraints = viewArray.sizeAnchors ≤ relatedView.sizeAnchors ~ 300
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray.sizeAnchors ≤ relatedView.sizeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.sizeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.sizeAnchors .+ 10)
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.sizeAnchors .+ 10
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.sizeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.sizeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.sizeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.sizeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.sizeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.sizeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.sizeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.sizeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToSizeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.sizeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
// sourcery:end
}
