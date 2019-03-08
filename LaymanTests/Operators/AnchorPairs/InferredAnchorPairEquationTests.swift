//
//  InferredPairEquationTests.swift
//  Layman
//
//  Created by Brian Strobach on 2/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// swiftlint:disable file_length type_body_length

@testable import Layman
import XCTest

class InferredAnchorPairEquationTests: LaymanTestCase {

// sourcery:inline:auto:InferredAnchorPairEquationTests.InferredAnchorPairEquationTests

    // MARK: view1CenterXY <=> relatedViewCenterXY
    // MARK: Equal
    func testInferredView1EqualToCenterXY() {
        let constraints = view1 .= relatedView.centerXY
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testInferredView1EqualToCenterXYPlusConstant() {
        let constraints = view1 .= relatedView.centerXY .+ 10
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10)
    }

    func testInferredView1EqualToCenterXYMinusConstant() {
        let constraints = view1 .= relatedView.centerXY .- 10
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: -10)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1EqualToCenterXYMultiplyingConstant() {
        let constraints = view1 .= relatedView.centerXY .* 3
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testInferredView1EqualToCenterXYMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.centerXY
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredView1EqualToCenterXYMultiplyingPercent() {
        let constraints = view1 .= relatedView.centerXY .* 75%
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 0.75)
    }

    func testInferredView1EqualToCenterXYMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.centerXY
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 0.75)
    }

    func testInferredView1EqualToCenterXYDividedByConstant() {
        let constraints = view1 .= relatedView.centerXY ./ 2
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1EqualToCenterXYWithPriority() {
        let constraints = view1 .= relatedView.centerXY ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, priority: .low)
    }

    func testInferredView1EqualToCenterXYWithPriorityLiteral() {
        let constraints = view1 .= relatedView.centerXY ~ 300
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 300)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 300)
    }

    func testInferredView1EqualToCenterXYWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.centerXY ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1EqualToCenterXYPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.centerXY .+ 10) .* 3
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToCenterXYPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.centerXY .+ 10)
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToCenterXYMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.centerXY .+ 10
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredView1EqualToCenterXYPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.centerXY .+ 10) ./ 2
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1EqualToCenterXYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerXY .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToCenterXYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.centerXY .+ 10) ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToCenterXYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.centerXY .+ 10 ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToCenterXYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerXY .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1EqualToCenterXYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerXY .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToCenterXYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.centerXY .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToCenterXYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.centerXY .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToCenterXYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerXY .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredView1GreaterThanOrEqualToCenterXY() {
        let constraints = view1 ≥ relatedView.centerXY
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1GreaterThanOrEqualToCenterXYPlusConstant() {
        let constraints = view1 ≥ relatedView.centerXY .+ 10
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testInferredView1GreaterThanOrEqualToCenterXYMinusConstant() {
        let constraints = view1 ≥ relatedView.centerXY .- 10
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1GreaterThanOrEqualToCenterXYMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.centerXY .* 3
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToCenterXYMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerXY
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredView1GreaterThanOrEqualToCenterXYMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.centerXY .* 75%
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToCenterXYMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.centerXY
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToCenterXYDividedByConstant() {
        let constraints = view1 ≥ relatedView.centerXY ./ 2
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1GreaterThanOrEqualToCenterXYWithPriority() {
        let constraints = view1 ≥ relatedView.centerXY ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToCenterXYWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.centerXY ~ 300
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testInferredView1GreaterThanOrEqualToCenterXYWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.centerXY ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1GreaterThanOrEqualToCenterXYPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.centerXY .+ 10) .* 3
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToCenterXYPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.centerXY .+ 10)
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToCenterXYMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerXY .+ 10
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToCenterXYPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.centerXY .+ 10) ./ 2
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1GreaterThanOrEqualToCenterXYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerXY .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToCenterXYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.centerXY .+ 10) ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToCenterXYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.centerXY .+ 10 ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToCenterXYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerXY .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1GreaterThanOrEqualToCenterXYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerXY .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToCenterXYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.centerXY .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToCenterXYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.centerXY .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToCenterXYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerXY .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredView1LessThanOrEqualToCenterXY() {
        let constraints = view1 ≤ relatedView.centerXY
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1LessThanOrEqualToCenterXYPlusConstant() {
        let constraints = view1 ≤ relatedView.centerXY .+ 10
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testInferredView1LessThanOrEqualToCenterXYMinusConstant() {
        let constraints = view1 ≤ relatedView.centerXY .- 10
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1LessThanOrEqualToCenterXYMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.centerXY .* 3
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToCenterXYMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerXY
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredView1LessThanOrEqualToCenterXYMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.centerXY .* 75%
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToCenterXYMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.centerXY
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToCenterXYDividedByConstant() {
        let constraints = view1 ≤ relatedView.centerXY ./ 2
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1LessThanOrEqualToCenterXYWithPriority() {
        let constraints = view1 ≤ relatedView.centerXY ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testInferredView1LessThanOrEqualToCenterXYWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.centerXY ~ 300
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testInferredView1LessThanOrEqualToCenterXYWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.centerXY ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1LessThanOrEqualToCenterXYPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.centerXY .+ 10) .* 3
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToCenterXYPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.centerXY .+ 10)
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToCenterXYMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerXY .+ 10
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToCenterXYPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.centerXY .+ 10) ./ 2
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LessThanOrEqualToCenterXYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerXY .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToCenterXYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.centerXY .+ 10) ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToCenterXYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.centerXY .+ 10 ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToCenterXYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerXY .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LessThanOrEqualToCenterXYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerXY .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToCenterXYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.centerXY .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToCenterXYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.centerXY .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToCenterXYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerXY .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1HorizontalEdges <=> relatedViewHorizontalEdges
    // MARK: Equal
    func testInferredView1EqualToHorizontalEdges() {
        let constraints = view1 .= relatedView.horizontalEdges
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testInferredView1EqualToHorizontalEdgesPlusConstant() {
        let constraints = view1 .= relatedView.horizontalEdges .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10)
    }

    func testInferredView1EqualToHorizontalEdgesMinusConstant() {
        let constraints = view1 .= relatedView.horizontalEdges .- 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1EqualToHorizontalEdgesMultiplyingConstant() {
        let constraints = view1 .= relatedView.horizontalEdges .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testInferredView1EqualToHorizontalEdgesMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdges
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredView1EqualToHorizontalEdgesMultiplyingPercent() {
        let constraints = view1 .= relatedView.horizontalEdges .* 75%
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
    }

    func testInferredView1EqualToHorizontalEdgesMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.horizontalEdges
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
    }

    func testInferredView1EqualToHorizontalEdgesDividedByConstant() {
        let constraints = view1 .= relatedView.horizontalEdges ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1EqualToHorizontalEdgesWithPriority() {
        let constraints = view1 .= relatedView.horizontalEdges ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, priority: .low)
    }

    func testInferredView1EqualToHorizontalEdgesWithPriorityLiteral() {
        let constraints = view1 .= relatedView.horizontalEdges ~ 300
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 300)
    }

    func testInferredView1EqualToHorizontalEdgesWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.horizontalEdges ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1EqualToHorizontalEdgesPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.horizontalEdges .+ 10) .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToHorizontalEdgesPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.horizontalEdges .+ 10)
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToHorizontalEdgesMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdges .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredView1EqualToHorizontalEdgesPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.horizontalEdges .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1EqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.horizontalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.horizontalEdges .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdges .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToHorizontalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.horizontalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1EqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.horizontalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.horizontalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToHorizontalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.horizontalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredView1GreaterThanOrEqualToHorizontalEdges() {
        let constraints = view1 ≥ relatedView.horizontalEdges
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1GreaterThanOrEqualToHorizontalEdgesPlusConstant() {
        let constraints = view1 ≥ relatedView.horizontalEdges .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgesMinusConstant() {
        let constraints = view1 ≥ relatedView.horizontalEdges .- 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1GreaterThanOrEqualToHorizontalEdgesMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.horizontalEdges .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgesMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdges
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredView1GreaterThanOrEqualToHorizontalEdgesMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.horizontalEdges .* 75%
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgesMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.horizontalEdges
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgesDividedByConstant() {
        let constraints = view1 ≥ relatedView.horizontalEdges ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1GreaterThanOrEqualToHorizontalEdgesWithPriority() {
        let constraints = view1 ≥ relatedView.horizontalEdges ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgesWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.horizontalEdges ~ 300
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgesWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.horizontalEdges ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1GreaterThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.horizontalEdges .+ 10) .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.horizontalEdges .+ 10)
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdges .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgesPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.horizontalEdges .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1GreaterThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.horizontalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.horizontalEdges .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdges .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.horizontalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1GreaterThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.horizontalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.horizontalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.horizontalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredView1LessThanOrEqualToHorizontalEdges() {
        let constraints = view1 ≤ relatedView.horizontalEdges
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1LessThanOrEqualToHorizontalEdgesPlusConstant() {
        let constraints = view1 ≤ relatedView.horizontalEdges .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgesMinusConstant() {
        let constraints = view1 ≤ relatedView.horizontalEdges .- 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1LessThanOrEqualToHorizontalEdgesMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.horizontalEdges .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgesMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdges
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredView1LessThanOrEqualToHorizontalEdgesMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.horizontalEdges .* 75%
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgesMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.horizontalEdges
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgesDividedByConstant() {
        let constraints = view1 ≤ relatedView.horizontalEdges ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1LessThanOrEqualToHorizontalEdgesWithPriority() {
        let constraints = view1 ≤ relatedView.horizontalEdges ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgesWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.horizontalEdges ~ 300
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgesWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.horizontalEdges ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1LessThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.horizontalEdges .+ 10) .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.horizontalEdges .+ 10)
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdges .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgesPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.horizontalEdges .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LessThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.horizontalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.horizontalEdges .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdges .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.horizontalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LessThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.horizontalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.horizontalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.horizontalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1VerticalEdges <=> relatedViewVerticalEdges
    // MARK: Equal
    func testInferredView1EqualToVerticalEdges() {
        let constraints = view1 .= relatedView.verticalEdges
        constraints.first.assert(view1, .top, .equal, relatedView, .top)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testInferredView1EqualToVerticalEdgesPlusConstant() {
        let constraints = view1 .= relatedView.verticalEdges .+ 10
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testInferredView1EqualToVerticalEdgesMinusConstant() {
        let constraints = view1 .= relatedView.verticalEdges .- 10
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: -10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1EqualToVerticalEdgesMultiplyingConstant() {
        let constraints = view1 .= relatedView.verticalEdges .* 3
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1EqualToVerticalEdgesMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.verticalEdges
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredView1EqualToVerticalEdgesMultiplyingPercent() {
        let constraints = view1 .= relatedView.verticalEdges .* 75%
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1EqualToVerticalEdgesMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.verticalEdges
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1EqualToVerticalEdgesDividedByConstant() {
        let constraints = view1 .= relatedView.verticalEdges ./ 2
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1EqualToVerticalEdgesWithPriority() {
        let constraints = view1 .= relatedView.verticalEdges ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testInferredView1EqualToVerticalEdgesWithPriorityLiteral() {
        let constraints = view1 .= relatedView.verticalEdges ~ 300
        constraints.first.assert(view1, .top, .equal, relatedView, .top, priority: 300)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testInferredView1EqualToVerticalEdgesWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.verticalEdges ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1EqualToVerticalEdgesPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.verticalEdges .+ 10) .* 3
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToVerticalEdgesPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.verticalEdges .+ 10)
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToVerticalEdgesMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.verticalEdges .+ 10
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1EqualToVerticalEdgesPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.verticalEdges .+ 10) ./ 2
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1EqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.verticalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.verticalEdges .+ 10) ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.verticalEdges .+ 10 ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToVerticalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.verticalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1EqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.verticalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.verticalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.verticalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToVerticalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.verticalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredView1GreaterThanOrEqualToVerticalEdges() {
        let constraints = view1 ≥ relatedView.verticalEdges
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1GreaterThanOrEqualToVerticalEdgesPlusConstant() {
        let constraints = view1 ≥ relatedView.verticalEdges .+ 10
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgesMinusConstant() {
        let constraints = view1 ≥ relatedView.verticalEdges .- 10
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1GreaterThanOrEqualToVerticalEdgesMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.verticalEdges .* 3
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgesMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdges
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredView1GreaterThanOrEqualToVerticalEdgesMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.verticalEdges .* 75%
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgesMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.verticalEdges
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgesDividedByConstant() {
        let constraints = view1 ≥ relatedView.verticalEdges ./ 2
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1GreaterThanOrEqualToVerticalEdgesWithPriority() {
        let constraints = view1 ≥ relatedView.verticalEdges ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgesWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.verticalEdges ~ 300
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgesWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.verticalEdges ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1GreaterThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.verticalEdges .+ 10) .* 3
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.verticalEdges .+ 10)
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdges .+ 10
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgesPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.verticalEdges .+ 10) ./ 2
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1GreaterThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.verticalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.verticalEdges .+ 10) ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdges .+ 10 ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.verticalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1GreaterThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.verticalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.verticalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToVerticalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.verticalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredView1LessThanOrEqualToVerticalEdges() {
        let constraints = view1 ≤ relatedView.verticalEdges
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1LessThanOrEqualToVerticalEdgesPlusConstant() {
        let constraints = view1 ≤ relatedView.verticalEdges .+ 10
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgesMinusConstant() {
        let constraints = view1 ≤ relatedView.verticalEdges .- 10
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1LessThanOrEqualToVerticalEdgesMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.verticalEdges .* 3
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgesMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdges
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredView1LessThanOrEqualToVerticalEdgesMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.verticalEdges .* 75%
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgesMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.verticalEdges
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgesDividedByConstant() {
        let constraints = view1 ≤ relatedView.verticalEdges ./ 2
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1LessThanOrEqualToVerticalEdgesWithPriority() {
        let constraints = view1 ≤ relatedView.verticalEdges ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgesWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.verticalEdges ~ 300
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgesWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.verticalEdges ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1LessThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.verticalEdges .+ 10) .* 3
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.verticalEdges .+ 10)
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdges .+ 10
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgesPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.verticalEdges .+ 10) ./ 2
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LessThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.verticalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.verticalEdges .+ 10) ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdges .+ 10 ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.verticalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LessThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.verticalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.verticalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToVerticalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.verticalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1Size <=> relatedViewSize
    // MARK: Equal
    func testInferredView1EqualToSize() {
        let constraints = view1 .= relatedView.size
        constraints.first.assert(view1, .width, .equal, relatedView, .width)
        constraints.second.assert(view1, .height, .equal, relatedView, .height)
    }

    // MARK: Equal with constant
    func testInferredView1EqualToSizePlusConstant() {
        let constraints = view1 .= relatedView.size .+ 10
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10)
    }

    func testInferredView1EqualToSizeMinusConstant() {
        let constraints = view1 .= relatedView.size .- 10
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: -10)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1EqualToSizeMultiplyingConstant() {
        let constraints = view1 .= relatedView.size .* 3
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testInferredView1EqualToSizeMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.size
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredView1EqualToSizeMultiplyingPercent() {
        let constraints = view1 .= relatedView.size .* 75%
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 0.75)
    }

    func testInferredView1EqualToSizeMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.size
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 0.75)
    }

    func testInferredView1EqualToSizeDividedByConstant() {
        let constraints = view1 .= relatedView.size ./ 2
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1EqualToSizeWithPriority() {
        let constraints = view1 .= relatedView.size ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, priority: .low)
    }

    func testInferredView1EqualToSizeWithPriorityLiteral() {
        let constraints = view1 .= relatedView.size ~ 300
        constraints.first.assert(view1, .width, .equal, relatedView, .width, priority: 300)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, priority: 300)
    }

    func testInferredView1EqualToSizeWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.size ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1EqualToSizePlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.size .+ 10) .* 3
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToSizePlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.size .+ 10)
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToSizeMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.size .+ 10
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testInferredView1EqualToSizePlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.size .+ 10) ./ 2
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1EqualToSizePlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.size .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToSizePlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.size .+ 10) ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToSizeMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.size .+ 10 ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToSizePlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.size .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1EqualToSizePlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.size .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToSizePlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.size .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToSizeMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.size .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToSizePlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.size .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredView1GreaterThanOrEqualToSize() {
        let constraints = view1 ≥ relatedView.size
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1GreaterThanOrEqualToSizePlusConstant() {
        let constraints = view1 ≥ relatedView.size .+ 10
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testInferredView1GreaterThanOrEqualToSizeMinusConstant() {
        let constraints = view1 ≥ relatedView.size .- 10
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1GreaterThanOrEqualToSizeMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.size .* 3
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToSizeMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.size
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredView1GreaterThanOrEqualToSizeMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.size .* 75%
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToSizeMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.size
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToSizeDividedByConstant() {
        let constraints = view1 ≥ relatedView.size ./ 2
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1GreaterThanOrEqualToSizeWithPriority() {
        let constraints = view1 ≥ relatedView.size ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToSizeWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.size ~ 300
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testInferredView1GreaterThanOrEqualToSizeWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.size ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1GreaterThanOrEqualToSizePlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.size .+ 10) .* 3
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToSizePlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.size .+ 10)
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToSizeMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.size .+ 10
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToSizePlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.size .+ 10) ./ 2
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1GreaterThanOrEqualToSizePlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.size .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToSizePlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.size .+ 10) ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToSizeMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.size .+ 10 ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToSizePlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.size .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1GreaterThanOrEqualToSizePlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.size .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToSizePlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.size .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToSizeMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.size .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToSizePlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.size .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredView1LessThanOrEqualToSize() {
        let constraints = view1 ≤ relatedView.size
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1LessThanOrEqualToSizePlusConstant() {
        let constraints = view1 ≤ relatedView.size .+ 10
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testInferredView1LessThanOrEqualToSizeMinusConstant() {
        let constraints = view1 ≤ relatedView.size .- 10
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1LessThanOrEqualToSizeMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.size .* 3
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToSizeMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.size
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredView1LessThanOrEqualToSizeMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.size .* 75%
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToSizeMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.size
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToSizeDividedByConstant() {
        let constraints = view1 ≤ relatedView.size ./ 2
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1LessThanOrEqualToSizeWithPriority() {
        let constraints = view1 ≤ relatedView.size ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testInferredView1LessThanOrEqualToSizeWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.size ~ 300
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testInferredView1LessThanOrEqualToSizeWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.size ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1LessThanOrEqualToSizePlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.size .+ 10) .* 3
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToSizePlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.size .+ 10)
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToSizeMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.size .+ 10
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToSizePlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.size .+ 10) ./ 2
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LessThanOrEqualToSizePlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.size .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToSizePlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.size .+ 10) ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToSizeMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.size .+ 10 ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToSizePlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.size .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LessThanOrEqualToSizePlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.size .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToSizePlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.size .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToSizeMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.size .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToSizePlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.size .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1TopLeading <=> relatedViewTopLeading
    // MARK: Equal
    func testInferredView1EqualToTopLeading() {
        let constraints = view1 .= relatedView.topLeading
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading)
        constraints.second.assert(view1, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testInferredView1EqualToTopLeadingPlusConstant() {
        let constraints = view1 .= relatedView.topLeading .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10)
    }

    func testInferredView1EqualToTopLeadingMinusConstant() {
        let constraints = view1 .= relatedView.topLeading .- 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1EqualToTopLeadingMultiplyingConstant() {
        let constraints = view1 .= relatedView.topLeading .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testInferredView1EqualToTopLeadingMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.topLeading
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredView1EqualToTopLeadingMultiplyingPercent() {
        let constraints = view1 .= relatedView.topLeading .* 75%
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1EqualToTopLeadingMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.topLeading
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1EqualToTopLeadingDividedByConstant() {
        let constraints = view1 .= relatedView.topLeading ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1EqualToTopLeadingWithPriority() {
        let constraints = view1 .= relatedView.topLeading ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: .low)
    }

    func testInferredView1EqualToTopLeadingWithPriorityLiteral() {
        let constraints = view1 .= relatedView.topLeading ~ 300
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: 300)
    }

    func testInferredView1EqualToTopLeadingWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.topLeading ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1EqualToTopLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.topLeading .+ 10) .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToTopLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.topLeading .+ 10)
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToTopLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.topLeading .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1EqualToTopLeadingPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.topLeading .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1EqualToTopLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.topLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToTopLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.topLeading .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToTopLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.topLeading .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToTopLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.topLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1EqualToTopLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToTopLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.topLeading .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToTopLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.topLeading .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToTopLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredView1GreaterThanOrEqualToTopLeading() {
        let constraints = view1 ≥ relatedView.topLeading
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1GreaterThanOrEqualToTopLeadingPlusConstant() {
        let constraints = view1 ≥ relatedView.topLeading .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredView1GreaterThanOrEqualToTopLeadingMinusConstant() {
        let constraints = view1 ≥ relatedView.topLeading .- 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1GreaterThanOrEqualToTopLeadingMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.topLeading .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToTopLeadingMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topLeading
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredView1GreaterThanOrEqualToTopLeadingMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.topLeading .* 75%
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToTopLeadingMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.topLeading
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToTopLeadingDividedByConstant() {
        let constraints = view1 ≥ relatedView.topLeading ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1GreaterThanOrEqualToTopLeadingWithPriority() {
        let constraints = view1 ≥ relatedView.topLeading ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToTopLeadingWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.topLeading ~ 300
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredView1GreaterThanOrEqualToTopLeadingWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.topLeading ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1GreaterThanOrEqualToTopLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.topLeading .+ 10) .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToTopLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.topLeading .+ 10)
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToTopLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topLeading .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToTopLeadingPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.topLeading .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1GreaterThanOrEqualToTopLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToTopLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.topLeading .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToTopLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.topLeading .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToTopLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1GreaterThanOrEqualToTopLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToTopLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.topLeading .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToTopLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.topLeading .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToTopLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredView1LessThanOrEqualToTopLeading() {
        let constraints = view1 ≤ relatedView.topLeading
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1LessThanOrEqualToTopLeadingPlusConstant() {
        let constraints = view1 ≤ relatedView.topLeading .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredView1LessThanOrEqualToTopLeadingMinusConstant() {
        let constraints = view1 ≤ relatedView.topLeading .- 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1LessThanOrEqualToTopLeadingMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.topLeading .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToTopLeadingMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topLeading
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredView1LessThanOrEqualToTopLeadingMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.topLeading .* 75%
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToTopLeadingMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.topLeading
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToTopLeadingDividedByConstant() {
        let constraints = view1 ≤ relatedView.topLeading ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1LessThanOrEqualToTopLeadingWithPriority() {
        let constraints = view1 ≤ relatedView.topLeading ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredView1LessThanOrEqualToTopLeadingWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.topLeading ~ 300
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredView1LessThanOrEqualToTopLeadingWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.topLeading ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1LessThanOrEqualToTopLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.topLeading .+ 10) .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToTopLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.topLeading .+ 10)
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToTopLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topLeading .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToTopLeadingPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.topLeading .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LessThanOrEqualToTopLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToTopLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.topLeading .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToTopLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.topLeading .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToTopLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LessThanOrEqualToTopLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToTopLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.topLeading .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToTopLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.topLeading .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToTopLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1TopTrailing <=> relatedViewTopTrailing
    // MARK: Equal
    func testInferredView1EqualToTopTrailing() {
        let constraints = view1 .= relatedView.topTrailing
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing)
        constraints.second.assert(view1, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testInferredView1EqualToTopTrailingPlusConstant() {
        let constraints = view1 .= relatedView.topTrailing .+ 10
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10)
    }

    func testInferredView1EqualToTopTrailingMinusConstant() {
        let constraints = view1 .= relatedView.topTrailing .- 10
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1EqualToTopTrailingMultiplyingConstant() {
        let constraints = view1 .= relatedView.topTrailing .* 3
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testInferredView1EqualToTopTrailingMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.topTrailing
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredView1EqualToTopTrailingMultiplyingPercent() {
        let constraints = view1 .= relatedView.topTrailing .* 75%
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1EqualToTopTrailingMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.topTrailing
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1EqualToTopTrailingDividedByConstant() {
        let constraints = view1 .= relatedView.topTrailing ./ 2
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1EqualToTopTrailingWithPriority() {
        let constraints = view1 .= relatedView.topTrailing ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: .low)
    }

    func testInferredView1EqualToTopTrailingWithPriorityLiteral() {
        let constraints = view1 .= relatedView.topTrailing ~ 300
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 300)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: 300)
    }

    func testInferredView1EqualToTopTrailingWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.topTrailing ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1EqualToTopTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.topTrailing .+ 10) .* 3
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToTopTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.topTrailing .+ 10)
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToTopTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.topTrailing .+ 10
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1EqualToTopTrailingPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.topTrailing .+ 10) ./ 2
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1EqualToTopTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.topTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToTopTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.topTrailing .+ 10) ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToTopTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.topTrailing .+ 10 ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToTopTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.topTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1EqualToTopTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToTopTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.topTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToTopTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.topTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToTopTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredView1GreaterThanOrEqualToTopTrailing() {
        let constraints = view1 ≥ relatedView.topTrailing
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1GreaterThanOrEqualToTopTrailingPlusConstant() {
        let constraints = view1 ≥ relatedView.topTrailing .+ 10
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredView1GreaterThanOrEqualToTopTrailingMinusConstant() {
        let constraints = view1 ≥ relatedView.topTrailing .- 10
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1GreaterThanOrEqualToTopTrailingMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.topTrailing .* 3
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToTopTrailingMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topTrailing
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredView1GreaterThanOrEqualToTopTrailingMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.topTrailing .* 75%
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToTopTrailingMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.topTrailing
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToTopTrailingDividedByConstant() {
        let constraints = view1 ≥ relatedView.topTrailing ./ 2
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1GreaterThanOrEqualToTopTrailingWithPriority() {
        let constraints = view1 ≥ relatedView.topTrailing ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToTopTrailingWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.topTrailing ~ 300
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredView1GreaterThanOrEqualToTopTrailingWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.topTrailing ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1GreaterThanOrEqualToTopTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.topTrailing .+ 10) .* 3
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToTopTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.topTrailing .+ 10)
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToTopTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topTrailing .+ 10
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToTopTrailingPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.topTrailing .+ 10) ./ 2
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1GreaterThanOrEqualToTopTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToTopTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.topTrailing .+ 10) ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToTopTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.topTrailing .+ 10 ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToTopTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1GreaterThanOrEqualToTopTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToTopTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.topTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToTopTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.topTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToTopTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredView1LessThanOrEqualToTopTrailing() {
        let constraints = view1 ≤ relatedView.topTrailing
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1LessThanOrEqualToTopTrailingPlusConstant() {
        let constraints = view1 ≤ relatedView.topTrailing .+ 10
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredView1LessThanOrEqualToTopTrailingMinusConstant() {
        let constraints = view1 ≤ relatedView.topTrailing .- 10
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1LessThanOrEqualToTopTrailingMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.topTrailing .* 3
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToTopTrailingMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topTrailing
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredView1LessThanOrEqualToTopTrailingMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.topTrailing .* 75%
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToTopTrailingMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.topTrailing
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToTopTrailingDividedByConstant() {
        let constraints = view1 ≤ relatedView.topTrailing ./ 2
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1LessThanOrEqualToTopTrailingWithPriority() {
        let constraints = view1 ≤ relatedView.topTrailing ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredView1LessThanOrEqualToTopTrailingWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.topTrailing ~ 300
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredView1LessThanOrEqualToTopTrailingWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.topTrailing ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1LessThanOrEqualToTopTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.topTrailing .+ 10) .* 3
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToTopTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.topTrailing .+ 10)
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToTopTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topTrailing .+ 10
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToTopTrailingPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.topTrailing .+ 10) ./ 2
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LessThanOrEqualToTopTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToTopTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.topTrailing .+ 10) ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToTopTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.topTrailing .+ 10 ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToTopTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LessThanOrEqualToTopTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToTopTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.topTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToTopTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.topTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToTopTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1BottomLeading <=> relatedViewBottomLeading
    // MARK: Equal
    func testInferredView1EqualToBottomLeading() {
        let constraints = view1 .= relatedView.bottomLeading
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testInferredView1EqualToBottomLeadingPlusConstant() {
        let constraints = view1 .= relatedView.bottomLeading .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testInferredView1EqualToBottomLeadingMinusConstant() {
        let constraints = view1 .= relatedView.bottomLeading .- 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1EqualToBottomLeadingMultiplyingConstant() {
        let constraints = view1 .= relatedView.bottomLeading .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1EqualToBottomLeadingMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomLeading
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredView1EqualToBottomLeadingMultiplyingPercent() {
        let constraints = view1 .= relatedView.bottomLeading .* 75%
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1EqualToBottomLeadingMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.bottomLeading
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1EqualToBottomLeadingDividedByConstant() {
        let constraints = view1 .= relatedView.bottomLeading ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1EqualToBottomLeadingWithPriority() {
        let constraints = view1 .= relatedView.bottomLeading ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testInferredView1EqualToBottomLeadingWithPriorityLiteral() {
        let constraints = view1 .= relatedView.bottomLeading ~ 300
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testInferredView1EqualToBottomLeadingWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.bottomLeading ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1EqualToBottomLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.bottomLeading .+ 10) .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToBottomLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.bottomLeading .+ 10)
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToBottomLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomLeading .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1EqualToBottomLeadingPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.bottomLeading .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1EqualToBottomLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToBottomLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.bottomLeading .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToBottomLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.bottomLeading .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToBottomLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1EqualToBottomLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToBottomLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.bottomLeading .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToBottomLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.bottomLeading .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToBottomLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredView1GreaterThanOrEqualToBottomLeading() {
        let constraints = view1 ≥ relatedView.bottomLeading
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1GreaterThanOrEqualToBottomLeadingPlusConstant() {
        let constraints = view1 ≥ relatedView.bottomLeading .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeadingMinusConstant() {
        let constraints = view1 ≥ relatedView.bottomLeading .- 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1GreaterThanOrEqualToBottomLeadingMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.bottomLeading .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeadingMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomLeading
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredView1GreaterThanOrEqualToBottomLeadingMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.bottomLeading .* 75%
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeadingMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.bottomLeading
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeadingDividedByConstant() {
        let constraints = view1 ≥ relatedView.bottomLeading ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1GreaterThanOrEqualToBottomLeadingWithPriority() {
        let constraints = view1 ≥ relatedView.bottomLeading ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeadingWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.bottomLeading ~ 300
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeadingWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.bottomLeading ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1GreaterThanOrEqualToBottomLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.bottomLeading .+ 10) .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomLeading .+ 10)
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomLeading .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeadingPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.bottomLeading .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1GreaterThanOrEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomLeading .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.bottomLeading .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1GreaterThanOrEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomLeading .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.bottomLeading .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredView1LessThanOrEqualToBottomLeading() {
        let constraints = view1 ≤ relatedView.bottomLeading
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1LessThanOrEqualToBottomLeadingPlusConstant() {
        let constraints = view1 ≤ relatedView.bottomLeading .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredView1LessThanOrEqualToBottomLeadingMinusConstant() {
        let constraints = view1 ≤ relatedView.bottomLeading .- 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1LessThanOrEqualToBottomLeadingMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.bottomLeading .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToBottomLeadingMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomLeading
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredView1LessThanOrEqualToBottomLeadingMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.bottomLeading .* 75%
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToBottomLeadingMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.bottomLeading
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToBottomLeadingDividedByConstant() {
        let constraints = view1 ≤ relatedView.bottomLeading ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1LessThanOrEqualToBottomLeadingWithPriority() {
        let constraints = view1 ≤ relatedView.bottomLeading ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredView1LessThanOrEqualToBottomLeadingWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.bottomLeading ~ 300
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredView1LessThanOrEqualToBottomLeadingWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.bottomLeading ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1LessThanOrEqualToBottomLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.bottomLeading .+ 10) .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToBottomLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomLeading .+ 10)
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToBottomLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomLeading .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToBottomLeadingPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.bottomLeading .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LessThanOrEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomLeading .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.bottomLeading .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToBottomLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LessThanOrEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomLeading .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.bottomLeading .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToBottomLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1BottomTrailing <=> relatedViewBottomTrailing
    // MARK: Equal
    func testInferredView1EqualToBottomTrailing() {
        let constraints = view1 .= relatedView.bottomTrailing
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testInferredView1EqualToBottomTrailingPlusConstant() {
        let constraints = view1 .= relatedView.bottomTrailing .+ 10
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testInferredView1EqualToBottomTrailingMinusConstant() {
        let constraints = view1 .= relatedView.bottomTrailing .- 10
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1EqualToBottomTrailingMultiplyingConstant() {
        let constraints = view1 .= relatedView.bottomTrailing .* 3
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1EqualToBottomTrailingMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomTrailing
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredView1EqualToBottomTrailingMultiplyingPercent() {
        let constraints = view1 .= relatedView.bottomTrailing .* 75%
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1EqualToBottomTrailingMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.bottomTrailing
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1EqualToBottomTrailingDividedByConstant() {
        let constraints = view1 .= relatedView.bottomTrailing ./ 2
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1EqualToBottomTrailingWithPriority() {
        let constraints = view1 .= relatedView.bottomTrailing ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testInferredView1EqualToBottomTrailingWithPriorityLiteral() {
        let constraints = view1 .= relatedView.bottomTrailing ~ 300
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 300)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testInferredView1EqualToBottomTrailingWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.bottomTrailing ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1EqualToBottomTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.bottomTrailing .+ 10) .* 3
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToBottomTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.bottomTrailing .+ 10)
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToBottomTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomTrailing .+ 10
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1EqualToBottomTrailingPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.bottomTrailing .+ 10) ./ 2
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1EqualToBottomTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToBottomTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.bottomTrailing .+ 10) ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToBottomTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.bottomTrailing .+ 10 ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToBottomTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1EqualToBottomTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToBottomTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.bottomTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToBottomTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.bottomTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToBottomTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredView1GreaterThanOrEqualToBottomTrailing() {
        let constraints = view1 ≥ relatedView.bottomTrailing
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1GreaterThanOrEqualToBottomTrailingPlusConstant() {
        let constraints = view1 ≥ relatedView.bottomTrailing .+ 10
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredView1GreaterThanOrEqualToBottomTrailingMinusConstant() {
        let constraints = view1 ≥ relatedView.bottomTrailing .- 10
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1GreaterThanOrEqualToBottomTrailingMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.bottomTrailing .* 3
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToBottomTrailingMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomTrailing
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredView1GreaterThanOrEqualToBottomTrailingMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.bottomTrailing .* 75%
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToBottomTrailingMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.bottomTrailing
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToBottomTrailingDividedByConstant() {
        let constraints = view1 ≥ relatedView.bottomTrailing ./ 2
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1GreaterThanOrEqualToBottomTrailingWithPriority() {
        let constraints = view1 ≥ relatedView.bottomTrailing ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToBottomTrailingWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.bottomTrailing ~ 300
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredView1GreaterThanOrEqualToBottomTrailingWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.bottomTrailing ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1GreaterThanOrEqualToBottomTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.bottomTrailing .+ 10) .* 3
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToBottomTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomTrailing .+ 10)
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToBottomTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomTrailing .+ 10
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToBottomTrailingPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.bottomTrailing .+ 10) ./ 2
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1GreaterThanOrEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomTrailing .+ 10) ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.bottomTrailing .+ 10 ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToBottomTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1GreaterThanOrEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.bottomTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToBottomTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredView1LessThanOrEqualToBottomTrailing() {
        let constraints = view1 ≤ relatedView.bottomTrailing
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1LessThanOrEqualToBottomTrailingPlusConstant() {
        let constraints = view1 ≤ relatedView.bottomTrailing .+ 10
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredView1LessThanOrEqualToBottomTrailingMinusConstant() {
        let constraints = view1 ≤ relatedView.bottomTrailing .- 10
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1LessThanOrEqualToBottomTrailingMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.bottomTrailing .* 3
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToBottomTrailingMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomTrailing
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredView1LessThanOrEqualToBottomTrailingMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.bottomTrailing .* 75%
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToBottomTrailingMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.bottomTrailing
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToBottomTrailingDividedByConstant() {
        let constraints = view1 ≤ relatedView.bottomTrailing ./ 2
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1LessThanOrEqualToBottomTrailingWithPriority() {
        let constraints = view1 ≤ relatedView.bottomTrailing ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredView1LessThanOrEqualToBottomTrailingWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.bottomTrailing ~ 300
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredView1LessThanOrEqualToBottomTrailingWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.bottomTrailing ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1LessThanOrEqualToBottomTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.bottomTrailing .+ 10) .* 3
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToBottomTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomTrailing .+ 10)
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToBottomTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomTrailing .+ 10
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToBottomTrailingPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.bottomTrailing .+ 10) ./ 2
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LessThanOrEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomTrailing .+ 10) ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.bottomTrailing .+ 10 ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToBottomTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LessThanOrEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.bottomTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToBottomTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1TopLeft <=> relatedViewTopLeft
    // MARK: Equal
    func testInferredView1EqualToTopLeft() {
        let constraints = view1 .= relatedView.topLeft
        constraints.first.assert(view1, .left, .equal, relatedView, .left)
        constraints.second.assert(view1, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testInferredView1EqualToTopLeftPlusConstant() {
        let constraints = view1 .= relatedView.topLeft .+ 10
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10)
    }

    func testInferredView1EqualToTopLeftMinusConstant() {
        let constraints = view1 .= relatedView.topLeft .- 10
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: -10)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1EqualToTopLeftMultiplyingConstant() {
        let constraints = view1 .= relatedView.topLeft .* 3
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testInferredView1EqualToTopLeftMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.topLeft
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredView1EqualToTopLeftMultiplyingPercent() {
        let constraints = view1 .= relatedView.topLeft .* 75%
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1EqualToTopLeftMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.topLeft
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1EqualToTopLeftDividedByConstant() {
        let constraints = view1 .= relatedView.topLeft ./ 2
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1EqualToTopLeftWithPriority() {
        let constraints = view1 .= relatedView.topLeft ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: .low)
    }

    func testInferredView1EqualToTopLeftWithPriorityLiteral() {
        let constraints = view1 .= relatedView.topLeft ~ 300
        constraints.first.assert(view1, .left, .equal, relatedView, .left, priority: 300)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: 300)
    }

    func testInferredView1EqualToTopLeftWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.topLeft ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1EqualToTopLeftPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.topLeft .+ 10) .* 3
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToTopLeftPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.topLeft .+ 10)
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToTopLeftMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.topLeft .+ 10
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1EqualToTopLeftPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.topLeft .+ 10) ./ 2
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1EqualToTopLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.topLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToTopLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.topLeft .+ 10) ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToTopLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.topLeft .+ 10 ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToTopLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.topLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1EqualToTopLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToTopLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.topLeft .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToTopLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.topLeft .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToTopLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredView1GreaterThanOrEqualToTopLeft() {
        let constraints = view1 ≥ relatedView.topLeft
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1GreaterThanOrEqualToTopLeftPlusConstant() {
        let constraints = view1 ≥ relatedView.topLeft .+ 10
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredView1GreaterThanOrEqualToTopLeftMinusConstant() {
        let constraints = view1 ≥ relatedView.topLeft .- 10
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: -10)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1GreaterThanOrEqualToTopLeftMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.topLeft .* 3
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToTopLeftMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topLeft
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredView1GreaterThanOrEqualToTopLeftMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.topLeft .* 75%
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToTopLeftMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.topLeft
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToTopLeftDividedByConstant() {
        let constraints = view1 ≥ relatedView.topLeft ./ 2
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1GreaterThanOrEqualToTopLeftWithPriority() {
        let constraints = view1 ≥ relatedView.topLeft ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToTopLeftWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.topLeft ~ 300
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, priority: 300)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredView1GreaterThanOrEqualToTopLeftWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.topLeft ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1GreaterThanOrEqualToTopLeftPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.topLeft .+ 10) .* 3
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToTopLeftPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.topLeft .+ 10)
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToTopLeftMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topLeft .+ 10
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToTopLeftPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.topLeft .+ 10) ./ 2
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1GreaterThanOrEqualToTopLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToTopLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.topLeft .+ 10) ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToTopLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.topLeft .+ 10 ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToTopLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1GreaterThanOrEqualToTopLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToTopLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.topLeft .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToTopLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.topLeft .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToTopLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredView1LessThanOrEqualToTopLeft() {
        let constraints = view1 ≤ relatedView.topLeft
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1LessThanOrEqualToTopLeftPlusConstant() {
        let constraints = view1 ≤ relatedView.topLeft .+ 10
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredView1LessThanOrEqualToTopLeftMinusConstant() {
        let constraints = view1 ≤ relatedView.topLeft .- 10
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: -10)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1LessThanOrEqualToTopLeftMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.topLeft .* 3
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToTopLeftMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topLeft
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredView1LessThanOrEqualToTopLeftMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.topLeft .* 75%
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToTopLeftMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.topLeft
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToTopLeftDividedByConstant() {
        let constraints = view1 ≤ relatedView.topLeft ./ 2
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1LessThanOrEqualToTopLeftWithPriority() {
        let constraints = view1 ≤ relatedView.topLeft ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredView1LessThanOrEqualToTopLeftWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.topLeft ~ 300
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, priority: 300)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredView1LessThanOrEqualToTopLeftWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.topLeft ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1LessThanOrEqualToTopLeftPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.topLeft .+ 10) .* 3
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToTopLeftPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.topLeft .+ 10)
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToTopLeftMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topLeft .+ 10
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToTopLeftPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.topLeft .+ 10) ./ 2
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LessThanOrEqualToTopLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToTopLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.topLeft .+ 10) ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToTopLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.topLeft .+ 10 ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToTopLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LessThanOrEqualToTopLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToTopLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.topLeft .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToTopLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.topLeft .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToTopLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1TopRight <=> relatedViewTopRight
    // MARK: Equal
    func testInferredView1EqualToTopRight() {
        let constraints = view1 .= relatedView.topRight
        constraints.first.assert(view1, .right, .equal, relatedView, .right)
        constraints.second.assert(view1, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testInferredView1EqualToTopRightPlusConstant() {
        let constraints = view1 .= relatedView.topRight .+ 10
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10)
    }

    func testInferredView1EqualToTopRightMinusConstant() {
        let constraints = view1 .= relatedView.topRight .- 10
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: -10)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1EqualToTopRightMultiplyingConstant() {
        let constraints = view1 .= relatedView.topRight .* 3
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testInferredView1EqualToTopRightMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.topRight
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredView1EqualToTopRightMultiplyingPercent() {
        let constraints = view1 .= relatedView.topRight .* 75%
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1EqualToTopRightMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.topRight
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1EqualToTopRightDividedByConstant() {
        let constraints = view1 .= relatedView.topRight ./ 2
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1EqualToTopRightWithPriority() {
        let constraints = view1 .= relatedView.topRight ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: .low)
    }

    func testInferredView1EqualToTopRightWithPriorityLiteral() {
        let constraints = view1 .= relatedView.topRight ~ 300
        constraints.first.assert(view1, .right, .equal, relatedView, .right, priority: 300)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: 300)
    }

    func testInferredView1EqualToTopRightWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.topRight ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1EqualToTopRightPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.topRight .+ 10) .* 3
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToTopRightPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.topRight .+ 10)
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToTopRightMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.topRight .+ 10
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1EqualToTopRightPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.topRight .+ 10) ./ 2
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1EqualToTopRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.topRight .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToTopRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.topRight .+ 10) ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToTopRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.topRight .+ 10 ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToTopRightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.topRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1EqualToTopRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToTopRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.topRight .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToTopRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.topRight .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToTopRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredView1GreaterThanOrEqualToTopRight() {
        let constraints = view1 ≥ relatedView.topRight
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1GreaterThanOrEqualToTopRightPlusConstant() {
        let constraints = view1 ≥ relatedView.topRight .+ 10
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredView1GreaterThanOrEqualToTopRightMinusConstant() {
        let constraints = view1 ≥ relatedView.topRight .- 10
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: -10)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1GreaterThanOrEqualToTopRightMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.topRight .* 3
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToTopRightMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topRight
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredView1GreaterThanOrEqualToTopRightMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.topRight .* 75%
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToTopRightMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.topRight
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToTopRightDividedByConstant() {
        let constraints = view1 ≥ relatedView.topRight ./ 2
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1GreaterThanOrEqualToTopRightWithPriority() {
        let constraints = view1 ≥ relatedView.topRight ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToTopRightWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.topRight ~ 300
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, priority: 300)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredView1GreaterThanOrEqualToTopRightWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.topRight ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1GreaterThanOrEqualToTopRightPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.topRight .+ 10) .* 3
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToTopRightPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.topRight .+ 10)
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToTopRightMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topRight .+ 10
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToTopRightPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.topRight .+ 10) ./ 2
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1GreaterThanOrEqualToTopRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topRight .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToTopRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.topRight .+ 10) ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToTopRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.topRight .+ 10 ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToTopRightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1GreaterThanOrEqualToTopRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToTopRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.topRight .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToTopRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.topRight .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToTopRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredView1LessThanOrEqualToTopRight() {
        let constraints = view1 ≤ relatedView.topRight
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1LessThanOrEqualToTopRightPlusConstant() {
        let constraints = view1 ≤ relatedView.topRight .+ 10
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredView1LessThanOrEqualToTopRightMinusConstant() {
        let constraints = view1 ≤ relatedView.topRight .- 10
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: -10)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1LessThanOrEqualToTopRightMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.topRight .* 3
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToTopRightMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topRight
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredView1LessThanOrEqualToTopRightMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.topRight .* 75%
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToTopRightMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.topRight
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToTopRightDividedByConstant() {
        let constraints = view1 ≤ relatedView.topRight ./ 2
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1LessThanOrEqualToTopRightWithPriority() {
        let constraints = view1 ≤ relatedView.topRight ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredView1LessThanOrEqualToTopRightWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.topRight ~ 300
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, priority: 300)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredView1LessThanOrEqualToTopRightWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.topRight ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1LessThanOrEqualToTopRightPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.topRight .+ 10) .* 3
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToTopRightPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.topRight .+ 10)
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToTopRightMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topRight .+ 10
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToTopRightPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.topRight .+ 10) ./ 2
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LessThanOrEqualToTopRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topRight .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToTopRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.topRight .+ 10) ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToTopRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.topRight .+ 10 ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToTopRightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LessThanOrEqualToTopRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToTopRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.topRight .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToTopRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.topRight .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToTopRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1BottomLeft <=> relatedViewBottomLeft
    // MARK: Equal
    func testInferredView1EqualToBottomLeft() {
        let constraints = view1 .= relatedView.bottomLeft
        constraints.first.assert(view1, .left, .equal, relatedView, .left)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testInferredView1EqualToBottomLeftPlusConstant() {
        let constraints = view1 .= relatedView.bottomLeft .+ 10
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testInferredView1EqualToBottomLeftMinusConstant() {
        let constraints = view1 .= relatedView.bottomLeft .- 10
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: -10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1EqualToBottomLeftMultiplyingConstant() {
        let constraints = view1 .= relatedView.bottomLeft .* 3
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1EqualToBottomLeftMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomLeft
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredView1EqualToBottomLeftMultiplyingPercent() {
        let constraints = view1 .= relatedView.bottomLeft .* 75%
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1EqualToBottomLeftMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.bottomLeft
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1EqualToBottomLeftDividedByConstant() {
        let constraints = view1 .= relatedView.bottomLeft ./ 2
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1EqualToBottomLeftWithPriority() {
        let constraints = view1 .= relatedView.bottomLeft ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testInferredView1EqualToBottomLeftWithPriorityLiteral() {
        let constraints = view1 .= relatedView.bottomLeft ~ 300
        constraints.first.assert(view1, .left, .equal, relatedView, .left, priority: 300)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testInferredView1EqualToBottomLeftWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.bottomLeft ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1EqualToBottomLeftPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.bottomLeft .+ 10) .* 3
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToBottomLeftPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.bottomLeft .+ 10)
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToBottomLeftMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomLeft .+ 10
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1EqualToBottomLeftPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.bottomLeft .+ 10) ./ 2
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1EqualToBottomLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToBottomLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.bottomLeft .+ 10) ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToBottomLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.bottomLeft .+ 10 ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToBottomLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1EqualToBottomLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToBottomLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.bottomLeft .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToBottomLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.bottomLeft .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToBottomLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredView1GreaterThanOrEqualToBottomLeft() {
        let constraints = view1 ≥ relatedView.bottomLeft
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1GreaterThanOrEqualToBottomLeftPlusConstant() {
        let constraints = view1 ≥ relatedView.bottomLeft .+ 10
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeftMinusConstant() {
        let constraints = view1 ≥ relatedView.bottomLeft .- 10
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: -10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1GreaterThanOrEqualToBottomLeftMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.bottomLeft .* 3
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeftMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomLeft
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredView1GreaterThanOrEqualToBottomLeftMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.bottomLeft .* 75%
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeftMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.bottomLeft
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeftDividedByConstant() {
        let constraints = view1 ≥ relatedView.bottomLeft ./ 2
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1GreaterThanOrEqualToBottomLeftWithPriority() {
        let constraints = view1 ≥ relatedView.bottomLeft ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeftWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.bottomLeft ~ 300
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, priority: 300)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeftWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.bottomLeft ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1GreaterThanOrEqualToBottomLeftPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.bottomLeft .+ 10) .* 3
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeftPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomLeft .+ 10)
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeftMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomLeft .+ 10
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeftPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.bottomLeft .+ 10) ./ 2
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1GreaterThanOrEqualToBottomLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomLeft .+ 10) ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.bottomLeft .+ 10 ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1GreaterThanOrEqualToBottomLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomLeft .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.bottomLeft .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToBottomLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredView1LessThanOrEqualToBottomLeft() {
        let constraints = view1 ≤ relatedView.bottomLeft
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1LessThanOrEqualToBottomLeftPlusConstant() {
        let constraints = view1 ≤ relatedView.bottomLeft .+ 10
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredView1LessThanOrEqualToBottomLeftMinusConstant() {
        let constraints = view1 ≤ relatedView.bottomLeft .- 10
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: -10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1LessThanOrEqualToBottomLeftMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.bottomLeft .* 3
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToBottomLeftMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomLeft
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredView1LessThanOrEqualToBottomLeftMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.bottomLeft .* 75%
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToBottomLeftMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.bottomLeft
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToBottomLeftDividedByConstant() {
        let constraints = view1 ≤ relatedView.bottomLeft ./ 2
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1LessThanOrEqualToBottomLeftWithPriority() {
        let constraints = view1 ≤ relatedView.bottomLeft ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredView1LessThanOrEqualToBottomLeftWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.bottomLeft ~ 300
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, priority: 300)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredView1LessThanOrEqualToBottomLeftWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.bottomLeft ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1LessThanOrEqualToBottomLeftPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.bottomLeft .+ 10) .* 3
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToBottomLeftPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomLeft .+ 10)
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToBottomLeftMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomLeft .+ 10
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToBottomLeftPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.bottomLeft .+ 10) ./ 2
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LessThanOrEqualToBottomLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToBottomLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomLeft .+ 10) ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToBottomLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.bottomLeft .+ 10 ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToBottomLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LessThanOrEqualToBottomLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToBottomLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomLeft .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToBottomLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.bottomLeft .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToBottomLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1BottomRight <=> relatedViewBottomRight
    // MARK: Equal
    func testInferredView1EqualToBottomRight() {
        let constraints = view1 .= relatedView.bottomRight
        constraints.first.assert(view1, .right, .equal, relatedView, .right)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testInferredView1EqualToBottomRightPlusConstant() {
        let constraints = view1 .= relatedView.bottomRight .+ 10
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testInferredView1EqualToBottomRightMinusConstant() {
        let constraints = view1 .= relatedView.bottomRight .- 10
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: -10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1EqualToBottomRightMultiplyingConstant() {
        let constraints = view1 .= relatedView.bottomRight .* 3
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1EqualToBottomRightMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomRight
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredView1EqualToBottomRightMultiplyingPercent() {
        let constraints = view1 .= relatedView.bottomRight .* 75%
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1EqualToBottomRightMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.bottomRight
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1EqualToBottomRightDividedByConstant() {
        let constraints = view1 .= relatedView.bottomRight ./ 2
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1EqualToBottomRightWithPriority() {
        let constraints = view1 .= relatedView.bottomRight ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testInferredView1EqualToBottomRightWithPriorityLiteral() {
        let constraints = view1 .= relatedView.bottomRight ~ 300
        constraints.first.assert(view1, .right, .equal, relatedView, .right, priority: 300)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testInferredView1EqualToBottomRightWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.bottomRight ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1EqualToBottomRightPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.bottomRight .+ 10) .* 3
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToBottomRightPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.bottomRight .+ 10)
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1EqualToBottomRightMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomRight .+ 10
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1EqualToBottomRightPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.bottomRight .+ 10) ./ 2
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1EqualToBottomRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomRight .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToBottomRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.bottomRight .+ 10) ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToBottomRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.bottomRight .+ 10 ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1EqualToBottomRightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1EqualToBottomRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToBottomRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.bottomRight .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToBottomRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.bottomRight .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1EqualToBottomRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredView1GreaterThanOrEqualToBottomRight() {
        let constraints = view1 ≥ relatedView.bottomRight
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1GreaterThanOrEqualToBottomRightPlusConstant() {
        let constraints = view1 ≥ relatedView.bottomRight .+ 10
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredView1GreaterThanOrEqualToBottomRightMinusConstant() {
        let constraints = view1 ≥ relatedView.bottomRight .- 10
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: -10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1GreaterThanOrEqualToBottomRightMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.bottomRight .* 3
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToBottomRightMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomRight
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredView1GreaterThanOrEqualToBottomRightMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.bottomRight .* 75%
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToBottomRightMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.bottomRight
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1GreaterThanOrEqualToBottomRightDividedByConstant() {
        let constraints = view1 ≥ relatedView.bottomRight ./ 2
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1GreaterThanOrEqualToBottomRightWithPriority() {
        let constraints = view1 ≥ relatedView.bottomRight ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToBottomRightWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.bottomRight ~ 300
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, priority: 300)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredView1GreaterThanOrEqualToBottomRightWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.bottomRight ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1GreaterThanOrEqualToBottomRightPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.bottomRight .+ 10) .* 3
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToBottomRightPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomRight .+ 10)
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToBottomRightMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomRight .+ 10
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1GreaterThanOrEqualToBottomRightPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.bottomRight .+ 10) ./ 2
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1GreaterThanOrEqualToBottomRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomRight .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToBottomRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomRight .+ 10) ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToBottomRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.bottomRight .+ 10 ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1GreaterThanOrEqualToBottomRightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1GreaterThanOrEqualToBottomRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToBottomRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomRight .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToBottomRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.bottomRight .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1GreaterThanOrEqualToBottomRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredView1LessThanOrEqualToBottomRight() {
        let constraints = view1 ≤ relatedView.bottomRight
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1LessThanOrEqualToBottomRightPlusConstant() {
        let constraints = view1 ≤ relatedView.bottomRight .+ 10
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredView1LessThanOrEqualToBottomRightMinusConstant() {
        let constraints = view1 ≤ relatedView.bottomRight .- 10
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: -10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1LessThanOrEqualToBottomRightMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.bottomRight .* 3
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToBottomRightMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomRight
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredView1LessThanOrEqualToBottomRightMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.bottomRight .* 75%
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToBottomRightMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.bottomRight
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredView1LessThanOrEqualToBottomRightDividedByConstant() {
        let constraints = view1 ≤ relatedView.bottomRight ./ 2
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1LessThanOrEqualToBottomRightWithPriority() {
        let constraints = view1 ≤ relatedView.bottomRight ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredView1LessThanOrEqualToBottomRightWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.bottomRight ~ 300
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, priority: 300)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredView1LessThanOrEqualToBottomRightWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.bottomRight ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1LessThanOrEqualToBottomRightPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.bottomRight .+ 10) .* 3
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToBottomRightPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomRight .+ 10)
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToBottomRightMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomRight .+ 10
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1LessThanOrEqualToBottomRightPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.bottomRight .+ 10) ./ 2
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LessThanOrEqualToBottomRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomRight .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToBottomRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomRight .+ 10) ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToBottomRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.bottomRight .+ 10 ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LessThanOrEqualToBottomRightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LessThanOrEqualToBottomRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToBottomRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomRight .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToBottomRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.bottomRight .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LessThanOrEqualToBottomRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayCenterXY <=> relatedViewCenterXY
    // MARK: Equal
    func testInferredViewArrayEqualToCenterXY() {
        let constraints = viewArray .= relatedView.centerXY
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testInferredViewArrayEqualToCenterXYPlusConstant() {
        let constraints = viewArray .= relatedView.centerXY .+ 10
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10)
    }

    func testInferredViewArrayEqualToCenterXYMinusConstant() {
        let constraints = viewArray .= relatedView.centerXY .- 10
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: -10)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayEqualToCenterXYMultiplyingConstant() {
        let constraints = viewArray .= relatedView.centerXY .* 3
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testInferredViewArrayEqualToCenterXYMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerXY
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredViewArrayEqualToCenterXYMultiplyingPercent() {
        let constraints = viewArray .= relatedView.centerXY .* 75%
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToCenterXYMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.centerXY
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToCenterXYDividedByConstant() {
        let constraints = viewArray .= relatedView.centerXY ./ 2
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayEqualToCenterXYWithPriority() {
        let constraints = viewArray .= relatedView.centerXY ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: .low)
    }

    func testInferredViewArrayEqualToCenterXYWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.centerXY ~ 300
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 300)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 300)
    }

    func testInferredViewArrayEqualToCenterXYWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.centerXY ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayEqualToCenterXYPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.centerXY .+ 10) .* 3
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToCenterXYPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.centerXY .+ 10)
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToCenterXYMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerXY .+ 10
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayEqualToCenterXYPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.centerXY .+ 10) ./ 2
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayEqualToCenterXYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerXY .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToCenterXYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.centerXY .+ 10) ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToCenterXYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.centerXY .+ 10 ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToCenterXYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerXY .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayEqualToCenterXYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerXY .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToCenterXYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.centerXY .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToCenterXYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.centerXY .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToCenterXYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerXY .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredViewArrayGreaterThanOrEqualToCenterXY() {
        let constraints = viewArray ≥ relatedView.centerXY
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayGreaterThanOrEqualToCenterXYPlusConstant() {
        let constraints = viewArray ≥ relatedView.centerXY .+ 10
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterXYMinusConstant() {
        let constraints = viewArray ≥ relatedView.centerXY .- 10
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayGreaterThanOrEqualToCenterXYMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.centerXY .* 3
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterXYMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerXY
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredViewArrayGreaterThanOrEqualToCenterXYMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.centerXY .* 75%
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterXYMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.centerXY
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterXYDividedByConstant() {
        let constraints = viewArray ≥ relatedView.centerXY ./ 2
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayGreaterThanOrEqualToCenterXYWithPriority() {
        let constraints = viewArray ≥ relatedView.centerXY ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterXYWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.centerXY ~ 300
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterXYWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.centerXY ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayGreaterThanOrEqualToCenterXYPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.centerXY .+ 10) .* 3
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterXYPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerXY .+ 10)
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterXYMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerXY .+ 10
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterXYPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.centerXY .+ 10) ./ 2
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayGreaterThanOrEqualToCenterXYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerXY .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterXYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerXY .+ 10) ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterXYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.centerXY .+ 10 ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterXYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerXY .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayGreaterThanOrEqualToCenterXYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerXY .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterXYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerXY .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterXYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.centerXY .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToCenterXYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerXY .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredViewArrayLessThanOrEqualToCenterXY() {
        let constraints = viewArray ≤ relatedView.centerXY
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayLessThanOrEqualToCenterXYPlusConstant() {
        let constraints = viewArray ≤ relatedView.centerXY .+ 10
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testInferredViewArrayLessThanOrEqualToCenterXYMinusConstant() {
        let constraints = viewArray ≤ relatedView.centerXY .- 10
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayLessThanOrEqualToCenterXYMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.centerXY .* 3
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToCenterXYMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerXY
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredViewArrayLessThanOrEqualToCenterXYMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.centerXY .* 75%
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToCenterXYMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.centerXY
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToCenterXYDividedByConstant() {
        let constraints = viewArray ≤ relatedView.centerXY ./ 2
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayLessThanOrEqualToCenterXYWithPriority() {
        let constraints = viewArray ≤ relatedView.centerXY ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToCenterXYWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.centerXY ~ 300
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testInferredViewArrayLessThanOrEqualToCenterXYWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.centerXY ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLessThanOrEqualToCenterXYPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.centerXY .+ 10) .* 3
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToCenterXYPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerXY .+ 10)
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToCenterXYMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerXY .+ 10
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToCenterXYPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.centerXY .+ 10) ./ 2
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLessThanOrEqualToCenterXYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerXY .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToCenterXYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerXY .+ 10) ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToCenterXYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.centerXY .+ 10 ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToCenterXYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerXY .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLessThanOrEqualToCenterXYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerXY .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToCenterXYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerXY .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToCenterXYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.centerXY .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToCenterXYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerXY .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayHorizontalEdges <=> relatedViewHorizontalEdges
    // MARK: Equal
    func testInferredViewArrayEqualToHorizontalEdges() {
        let constraints = viewArray .= relatedView.horizontalEdges
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testInferredViewArrayEqualToHorizontalEdgesPlusConstant() {
        let constraints = viewArray .= relatedView.horizontalEdges .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10)
    }

    func testInferredViewArrayEqualToHorizontalEdgesMinusConstant() {
        let constraints = viewArray .= relatedView.horizontalEdges .- 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayEqualToHorizontalEdgesMultiplyingConstant() {
        let constraints = viewArray .= relatedView.horizontalEdges .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testInferredViewArrayEqualToHorizontalEdgesMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdges
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredViewArrayEqualToHorizontalEdgesMultiplyingPercent() {
        let constraints = viewArray .= relatedView.horizontalEdges .* 75%
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToHorizontalEdgesMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.horizontalEdges
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToHorizontalEdgesDividedByConstant() {
        let constraints = viewArray .= relatedView.horizontalEdges ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayEqualToHorizontalEdgesWithPriority() {
        let constraints = viewArray .= relatedView.horizontalEdges ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: .low)
    }

    func testInferredViewArrayEqualToHorizontalEdgesWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.horizontalEdges ~ 300
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 300)
    }

    func testInferredViewArrayEqualToHorizontalEdgesWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.horizontalEdges ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayEqualToHorizontalEdgesPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.horizontalEdges .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToHorizontalEdgesPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.horizontalEdges .+ 10)
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToHorizontalEdgesMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdges .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayEqualToHorizontalEdgesPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.horizontalEdges .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.horizontalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.horizontalEdges .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdges .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.horizontalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.horizontalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.horizontalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.horizontalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdges() {
        let constraints = viewArray ≥ relatedView.horizontalEdges
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstant() {
        let constraints = viewArray ≥ relatedView.horizontalEdges .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesMinusConstant() {
        let constraints = viewArray ≥ relatedView.horizontalEdges .- 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.horizontalEdges .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdges
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.horizontalEdges .* 75%
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.horizontalEdges
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesDividedByConstant() {
        let constraints = viewArray ≥ relatedView.horizontalEdges ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesWithPriority() {
        let constraints = viewArray ≥ relatedView.horizontalEdges ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.horizontalEdges ~ 300
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.horizontalEdges ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.horizontalEdges .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.horizontalEdges .+ 10)
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdges .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.horizontalEdges .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.horizontalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.horizontalEdges .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdges .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.horizontalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.horizontalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.horizontalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.horizontalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredViewArrayLessThanOrEqualToHorizontalEdges() {
        let constraints = viewArray ≤ relatedView.horizontalEdges
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesPlusConstant() {
        let constraints = viewArray ≤ relatedView.horizontalEdges .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesMinusConstant() {
        let constraints = viewArray ≤ relatedView.horizontalEdges .- 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.horizontalEdges .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdges
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.horizontalEdges .* 75%
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.horizontalEdges
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesDividedByConstant() {
        let constraints = viewArray ≤ relatedView.horizontalEdges ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesWithPriority() {
        let constraints = viewArray ≤ relatedView.horizontalEdges ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.horizontalEdges ~ 300
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.horizontalEdges ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.horizontalEdges .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.horizontalEdges .+ 10)
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdges .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.horizontalEdges .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.horizontalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.horizontalEdges .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdges .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.horizontalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.horizontalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.horizontalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.horizontalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayVerticalEdges <=> relatedViewVerticalEdges
    // MARK: Equal
    func testInferredViewArrayEqualToVerticalEdges() {
        let constraints = viewArray .= relatedView.verticalEdges
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testInferredViewArrayEqualToVerticalEdgesPlusConstant() {
        let constraints = viewArray .= relatedView.verticalEdges .+ 10
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayEqualToVerticalEdgesMinusConstant() {
        let constraints = viewArray .= relatedView.verticalEdges .- 10
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayEqualToVerticalEdgesMultiplyingConstant() {
        let constraints = viewArray .= relatedView.verticalEdges .* 3
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayEqualToVerticalEdgesMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdges
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredViewArrayEqualToVerticalEdgesMultiplyingPercent() {
        let constraints = viewArray .= relatedView.verticalEdges .* 75%
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToVerticalEdgesMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.verticalEdges
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToVerticalEdgesDividedByConstant() {
        let constraints = viewArray .= relatedView.verticalEdges ./ 2
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayEqualToVerticalEdgesWithPriority() {
        let constraints = viewArray .= relatedView.verticalEdges ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayEqualToVerticalEdgesWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.verticalEdges ~ 300
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, priority: 300)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayEqualToVerticalEdgesWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.verticalEdges ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayEqualToVerticalEdgesPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.verticalEdges .+ 10) .* 3
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToVerticalEdgesPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.verticalEdges .+ 10)
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToVerticalEdgesMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdges .+ 10
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayEqualToVerticalEdgesPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.verticalEdges .+ 10) ./ 2
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.verticalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.verticalEdges .+ 10) ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdges .+ 10 ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToVerticalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.verticalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.verticalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.verticalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToVerticalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.verticalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredViewArrayGreaterThanOrEqualToVerticalEdges() {
        let constraints = viewArray ≥ relatedView.verticalEdges
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstant() {
        let constraints = viewArray ≥ relatedView.verticalEdges .+ 10
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesMinusConstant() {
        let constraints = viewArray ≥ relatedView.verticalEdges .- 10
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.verticalEdges .* 3
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdges
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.verticalEdges .* 75%
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.verticalEdges
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesDividedByConstant() {
        let constraints = viewArray ≥ relatedView.verticalEdges ./ 2
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesWithPriority() {
        let constraints = viewArray ≥ relatedView.verticalEdges ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.verticalEdges ~ 300
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.verticalEdges ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.verticalEdges .+ 10) .* 3
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.verticalEdges .+ 10)
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdges .+ 10
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.verticalEdges .+ 10) ./ 2
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.verticalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.verticalEdges .+ 10) ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdges .+ 10 ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.verticalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.verticalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.verticalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.verticalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredViewArrayLessThanOrEqualToVerticalEdges() {
        let constraints = viewArray ≤ relatedView.verticalEdges
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayLessThanOrEqualToVerticalEdgesPlusConstant() {
        let constraints = viewArray ≤ relatedView.verticalEdges .+ 10
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgesMinusConstant() {
        let constraints = viewArray ≤ relatedView.verticalEdges .- 10
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayLessThanOrEqualToVerticalEdgesMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.verticalEdges .* 3
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgesMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdges
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredViewArrayLessThanOrEqualToVerticalEdgesMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.verticalEdges .* 75%
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgesMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.verticalEdges
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgesDividedByConstant() {
        let constraints = viewArray ≤ relatedView.verticalEdges ./ 2
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayLessThanOrEqualToVerticalEdgesWithPriority() {
        let constraints = viewArray ≤ relatedView.verticalEdges ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgesWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.verticalEdges ~ 300
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgesWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.verticalEdges ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLessThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.verticalEdges .+ 10) .* 3
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.verticalEdges .+ 10)
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdges .+ 10
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgesPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.verticalEdges .+ 10) ./ 2
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLessThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.verticalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.verticalEdges .+ 10) ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdges .+ 10 ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.verticalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLessThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.verticalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.verticalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToVerticalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.verticalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArraySize <=> relatedViewSize
    // MARK: Equal
    func testInferredViewArrayEqualToSize() {
        let constraints = viewArray .= relatedView.size
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height)
    }

    // MARK: Equal with constant
    func testInferredViewArrayEqualToSizePlusConstant() {
        let constraints = viewArray .= relatedView.size .+ 10
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10)
    }

    func testInferredViewArrayEqualToSizeMinusConstant() {
        let constraints = viewArray .= relatedView.size .- 10
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: -10)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayEqualToSizeMultiplyingConstant() {
        let constraints = viewArray .= relatedView.size .* 3
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testInferredViewArrayEqualToSizeMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.size
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredViewArrayEqualToSizeMultiplyingPercent() {
        let constraints = viewArray .= relatedView.size .* 75%
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToSizeMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.size
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToSizeDividedByConstant() {
        let constraints = viewArray .= relatedView.size ./ 2
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayEqualToSizeWithPriority() {
        let constraints = viewArray .= relatedView.size ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, priority: .low)
    }

    func testInferredViewArrayEqualToSizeWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.size ~ 300
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, priority: 300)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, priority: 300)
    }

    func testInferredViewArrayEqualToSizeWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.size ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayEqualToSizePlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.size .+ 10) .* 3
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToSizePlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.size .+ 10)
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToSizeMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.size .+ 10
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayEqualToSizePlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.size .+ 10) ./ 2
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayEqualToSizePlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.size .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToSizePlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.size .+ 10) ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToSizeMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.size .+ 10 ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToSizePlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.size .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayEqualToSizePlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.size .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToSizePlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.size .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToSizeMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.size .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToSizePlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.size .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredViewArrayGreaterThanOrEqualToSize() {
        let constraints = viewArray ≥ relatedView.size
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayGreaterThanOrEqualToSizePlusConstant() {
        let constraints = viewArray ≥ relatedView.size .+ 10
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeMinusConstant() {
        let constraints = viewArray ≥ relatedView.size .- 10
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayGreaterThanOrEqualToSizeMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.size .* 3
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.size
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredViewArrayGreaterThanOrEqualToSizeMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.size .* 75%
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.size
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeDividedByConstant() {
        let constraints = viewArray ≥ relatedView.size ./ 2
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayGreaterThanOrEqualToSizeWithPriority() {
        let constraints = viewArray ≥ relatedView.size ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.size ~ 300
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.size ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayGreaterThanOrEqualToSizePlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.size .+ 10) .* 3
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizePlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.size .+ 10)
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.size .+ 10
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizePlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.size .+ 10) ./ 2
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayGreaterThanOrEqualToSizePlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.size .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizePlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.size .+ 10) ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.size .+ 10 ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizePlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.size .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayGreaterThanOrEqualToSizePlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.size .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizePlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.size .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizeMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.size .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToSizePlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.size .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredViewArrayLessThanOrEqualToSize() {
        let constraints = viewArray ≤ relatedView.size
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayLessThanOrEqualToSizePlusConstant() {
        let constraints = viewArray ≤ relatedView.size .+ 10
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testInferredViewArrayLessThanOrEqualToSizeMinusConstant() {
        let constraints = viewArray ≤ relatedView.size .- 10
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayLessThanOrEqualToSizeMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.size .* 3
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToSizeMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.size
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredViewArrayLessThanOrEqualToSizeMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.size .* 75%
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToSizeMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.size
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToSizeDividedByConstant() {
        let constraints = viewArray ≤ relatedView.size ./ 2
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayLessThanOrEqualToSizeWithPriority() {
        let constraints = viewArray ≤ relatedView.size ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToSizeWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.size ~ 300
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testInferredViewArrayLessThanOrEqualToSizeWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.size ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLessThanOrEqualToSizePlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.size .+ 10) .* 3
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToSizePlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.size .+ 10)
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToSizeMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.size .+ 10
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToSizePlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.size .+ 10) ./ 2
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLessThanOrEqualToSizePlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.size .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToSizePlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.size .+ 10) ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToSizeMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.size .+ 10 ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToSizePlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.size .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLessThanOrEqualToSizePlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.size .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToSizePlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.size .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToSizeMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.size .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToSizePlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.size .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayTopLeading <=> relatedViewTopLeading
    // MARK: Equal
    func testInferredViewArrayEqualToTopLeading() {
        let constraints = viewArray .= relatedView.topLeading
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testInferredViewArrayEqualToTopLeadingPlusConstant() {
        let constraints = viewArray .= relatedView.topLeading .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
    }

    func testInferredViewArrayEqualToTopLeadingMinusConstant() {
        let constraints = viewArray .= relatedView.topLeading .- 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayEqualToTopLeadingMultiplyingConstant() {
        let constraints = viewArray .= relatedView.topLeading .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayEqualToTopLeadingMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.topLeading
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredViewArrayEqualToTopLeadingMultiplyingPercent() {
        let constraints = viewArray .= relatedView.topLeading .* 75%
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToTopLeadingMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.topLeading
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToTopLeadingDividedByConstant() {
        let constraints = viewArray .= relatedView.topLeading ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayEqualToTopLeadingWithPriority() {
        let constraints = viewArray .= relatedView.topLeading ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
    }

    func testInferredViewArrayEqualToTopLeadingWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.topLeading ~ 300
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: 300)
    }

    func testInferredViewArrayEqualToTopLeadingWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.topLeading ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayEqualToTopLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.topLeading .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToTopLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.topLeading .+ 10)
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToTopLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.topLeading .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayEqualToTopLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.topLeading .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayEqualToTopLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToTopLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.topLeading .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToTopLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.topLeading .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToTopLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayEqualToTopLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToTopLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.topLeading .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToTopLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.topLeading .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToTopLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredViewArrayGreaterThanOrEqualToTopLeading() {
        let constraints = viewArray ≥ relatedView.topLeading
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayGreaterThanOrEqualToTopLeadingPlusConstant() {
        let constraints = viewArray ≥ relatedView.topLeading .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeadingMinusConstant() {
        let constraints = viewArray ≥ relatedView.topLeading .- 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayGreaterThanOrEqualToTopLeadingMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.topLeading .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeadingMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topLeading
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredViewArrayGreaterThanOrEqualToTopLeadingMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.topLeading .* 75%
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeadingMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.topLeading
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeadingDividedByConstant() {
        let constraints = viewArray ≥ relatedView.topLeading ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayGreaterThanOrEqualToTopLeadingWithPriority() {
        let constraints = viewArray ≥ relatedView.topLeading ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeadingWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.topLeading ~ 300
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeadingWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.topLeading ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayGreaterThanOrEqualToTopLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.topLeading .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.topLeading .+ 10)
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topLeading .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.topLeading .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayGreaterThanOrEqualToTopLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.topLeading .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.topLeading .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayGreaterThanOrEqualToTopLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.topLeading .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.topLeading .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredViewArrayLessThanOrEqualToTopLeading() {
        let constraints = viewArray ≤ relatedView.topLeading
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayLessThanOrEqualToTopLeadingPlusConstant() {
        let constraints = viewArray ≤ relatedView.topLeading .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeadingMinusConstant() {
        let constraints = viewArray ≤ relatedView.topLeading .- 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayLessThanOrEqualToTopLeadingMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.topLeading .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeadingMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topLeading
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredViewArrayLessThanOrEqualToTopLeadingMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.topLeading .* 75%
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeadingMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.topLeading
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeadingDividedByConstant() {
        let constraints = viewArray ≤ relatedView.topLeading ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayLessThanOrEqualToTopLeadingWithPriority() {
        let constraints = viewArray ≤ relatedView.topLeading ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeadingWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.topLeading ~ 300
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeadingWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.topLeading ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLessThanOrEqualToTopLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.topLeading .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.topLeading .+ 10)
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topLeading .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.topLeading .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLessThanOrEqualToTopLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.topLeading .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.topLeading .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLessThanOrEqualToTopLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.topLeading .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.topLeading .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayTopTrailing <=> relatedViewTopTrailing
    // MARK: Equal
    func testInferredViewArrayEqualToTopTrailing() {
        let constraints = viewArray .= relatedView.topTrailing
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testInferredViewArrayEqualToTopTrailingPlusConstant() {
        let constraints = viewArray .= relatedView.topTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
    }

    func testInferredViewArrayEqualToTopTrailingMinusConstant() {
        let constraints = viewArray .= relatedView.topTrailing .- 10
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayEqualToTopTrailingMultiplyingConstant() {
        let constraints = viewArray .= relatedView.topTrailing .* 3
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayEqualToTopTrailingMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.topTrailing
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredViewArrayEqualToTopTrailingMultiplyingPercent() {
        let constraints = viewArray .= relatedView.topTrailing .* 75%
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToTopTrailingMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.topTrailing
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToTopTrailingDividedByConstant() {
        let constraints = viewArray .= relatedView.topTrailing ./ 2
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayEqualToTopTrailingWithPriority() {
        let constraints = viewArray .= relatedView.topTrailing ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
    }

    func testInferredViewArrayEqualToTopTrailingWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.topTrailing ~ 300
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 300)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: 300)
    }

    func testInferredViewArrayEqualToTopTrailingWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.topTrailing ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayEqualToTopTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.topTrailing .+ 10) .* 3
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToTopTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.topTrailing .+ 10)
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToTopTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.topTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayEqualToTopTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.topTrailing .+ 10) ./ 2
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayEqualToTopTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToTopTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.topTrailing .+ 10) ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToTopTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.topTrailing .+ 10 ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToTopTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayEqualToTopTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToTopTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.topTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToTopTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.topTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToTopTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredViewArrayGreaterThanOrEqualToTopTrailing() {
        let constraints = viewArray ≥ relatedView.topTrailing
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayGreaterThanOrEqualToTopTrailingPlusConstant() {
        let constraints = viewArray ≥ relatedView.topTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopTrailingMinusConstant() {
        let constraints = viewArray ≥ relatedView.topTrailing .- 10
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayGreaterThanOrEqualToTopTrailingMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.topTrailing .* 3
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopTrailingMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topTrailing
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredViewArrayGreaterThanOrEqualToTopTrailingMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.topTrailing .* 75%
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopTrailingMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.topTrailing
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopTrailingDividedByConstant() {
        let constraints = viewArray ≥ relatedView.topTrailing ./ 2
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayGreaterThanOrEqualToTopTrailingWithPriority() {
        let constraints = viewArray ≥ relatedView.topTrailing ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopTrailingWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.topTrailing ~ 300
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopTrailingWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.topTrailing ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayGreaterThanOrEqualToTopTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.topTrailing .+ 10) .* 3
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.topTrailing .+ 10)
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.topTrailing .+ 10) ./ 2
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayGreaterThanOrEqualToTopTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.topTrailing .+ 10) ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.topTrailing .+ 10 ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayGreaterThanOrEqualToTopTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.topTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.topTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredViewArrayLessThanOrEqualToTopTrailing() {
        let constraints = viewArray ≤ relatedView.topTrailing
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayLessThanOrEqualToTopTrailingPlusConstant() {
        let constraints = viewArray ≤ relatedView.topTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredViewArrayLessThanOrEqualToTopTrailingMinusConstant() {
        let constraints = viewArray ≤ relatedView.topTrailing .- 10
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayLessThanOrEqualToTopTrailingMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.topTrailing .* 3
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToTopTrailingMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topTrailing
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredViewArrayLessThanOrEqualToTopTrailingMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.topTrailing .* 75%
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToTopTrailingMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.topTrailing
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToTopTrailingDividedByConstant() {
        let constraints = viewArray ≤ relatedView.topTrailing ./ 2
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayLessThanOrEqualToTopTrailingWithPriority() {
        let constraints = viewArray ≤ relatedView.topTrailing ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToTopTrailingWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.topTrailing ~ 300
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredViewArrayLessThanOrEqualToTopTrailingWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.topTrailing ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLessThanOrEqualToTopTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.topTrailing .+ 10) .* 3
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToTopTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.topTrailing .+ 10)
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToTopTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToTopTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.topTrailing .+ 10) ./ 2
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLessThanOrEqualToTopTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToTopTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.topTrailing .+ 10) ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToTopTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.topTrailing .+ 10 ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToTopTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLessThanOrEqualToTopTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToTopTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.topTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToTopTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.topTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToTopTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayBottomLeading <=> relatedViewBottomLeading
    // MARK: Equal
    func testInferredViewArrayEqualToBottomLeading() {
        let constraints = viewArray .= relatedView.bottomLeading
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testInferredViewArrayEqualToBottomLeadingPlusConstant() {
        let constraints = viewArray .= relatedView.bottomLeading .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayEqualToBottomLeadingMinusConstant() {
        let constraints = viewArray .= relatedView.bottomLeading .- 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayEqualToBottomLeadingMultiplyingConstant() {
        let constraints = viewArray .= relatedView.bottomLeading .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayEqualToBottomLeadingMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomLeading
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredViewArrayEqualToBottomLeadingMultiplyingPercent() {
        let constraints = viewArray .= relatedView.bottomLeading .* 75%
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToBottomLeadingMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.bottomLeading
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToBottomLeadingDividedByConstant() {
        let constraints = viewArray .= relatedView.bottomLeading ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayEqualToBottomLeadingWithPriority() {
        let constraints = viewArray .= relatedView.bottomLeading ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayEqualToBottomLeadingWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.bottomLeading ~ 300
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayEqualToBottomLeadingWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.bottomLeading ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayEqualToBottomLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.bottomLeading .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToBottomLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.bottomLeading .+ 10)
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToBottomLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomLeading .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayEqualToBottomLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.bottomLeading .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.bottomLeading .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.bottomLeading .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToBottomLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.bottomLeading .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.bottomLeading .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToBottomLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredViewArrayGreaterThanOrEqualToBottomLeading() {
        let constraints = viewArray ≥ relatedView.bottomLeading
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingPlusConstant() {
        let constraints = viewArray ≥ relatedView.bottomLeading .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingMinusConstant() {
        let constraints = viewArray ≥ relatedView.bottomLeading .- 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.bottomLeading .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomLeading
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.bottomLeading .* 75%
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.bottomLeading
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingDividedByConstant() {
        let constraints = viewArray ≥ relatedView.bottomLeading ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingWithPriority() {
        let constraints = viewArray ≥ relatedView.bottomLeading ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.bottomLeading ~ 300
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.bottomLeading ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.bottomLeading .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomLeading .+ 10)
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomLeading .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.bottomLeading .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomLeading .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomLeading .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomLeading .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomLeading .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredViewArrayLessThanOrEqualToBottomLeading() {
        let constraints = viewArray ≤ relatedView.bottomLeading
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayLessThanOrEqualToBottomLeadingPlusConstant() {
        let constraints = viewArray ≤ relatedView.bottomLeading .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeadingMinusConstant() {
        let constraints = viewArray ≤ relatedView.bottomLeading .- 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayLessThanOrEqualToBottomLeadingMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.bottomLeading .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeadingMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomLeading
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredViewArrayLessThanOrEqualToBottomLeadingMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.bottomLeading .* 75%
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeadingMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.bottomLeading
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeadingDividedByConstant() {
        let constraints = viewArray ≤ relatedView.bottomLeading ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayLessThanOrEqualToBottomLeadingWithPriority() {
        let constraints = viewArray ≤ relatedView.bottomLeading ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeadingWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.bottomLeading ~ 300
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeadingWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.bottomLeading ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLessThanOrEqualToBottomLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.bottomLeading .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomLeading .+ 10)
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomLeading .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.bottomLeading .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLessThanOrEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomLeading .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomLeading .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLessThanOrEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomLeading .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomLeading .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayBottomTrailing <=> relatedViewBottomTrailing
    // MARK: Equal
    func testInferredViewArrayEqualToBottomTrailing() {
        let constraints = viewArray .= relatedView.bottomTrailing
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testInferredViewArrayEqualToBottomTrailingPlusConstant() {
        let constraints = viewArray .= relatedView.bottomTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayEqualToBottomTrailingMinusConstant() {
        let constraints = viewArray .= relatedView.bottomTrailing .- 10
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayEqualToBottomTrailingMultiplyingConstant() {
        let constraints = viewArray .= relatedView.bottomTrailing .* 3
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayEqualToBottomTrailingMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomTrailing
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredViewArrayEqualToBottomTrailingMultiplyingPercent() {
        let constraints = viewArray .= relatedView.bottomTrailing .* 75%
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToBottomTrailingMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.bottomTrailing
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToBottomTrailingDividedByConstant() {
        let constraints = viewArray .= relatedView.bottomTrailing ./ 2
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayEqualToBottomTrailingWithPriority() {
        let constraints = viewArray .= relatedView.bottomTrailing ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayEqualToBottomTrailingWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.bottomTrailing ~ 300
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 300)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayEqualToBottomTrailingWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.bottomTrailing ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayEqualToBottomTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.bottomTrailing .+ 10) .* 3
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToBottomTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.bottomTrailing .+ 10)
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToBottomTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayEqualToBottomTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.bottomTrailing .+ 10) ./ 2
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.bottomTrailing .+ 10) ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.bottomTrailing .+ 10 ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToBottomTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.bottomTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.bottomTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToBottomTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredViewArrayGreaterThanOrEqualToBottomTrailing() {
        let constraints = viewArray ≥ relatedView.bottomTrailing
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingPlusConstant() {
        let constraints = viewArray ≥ relatedView.bottomTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingMinusConstant() {
        let constraints = viewArray ≥ relatedView.bottomTrailing .- 10
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.bottomTrailing .* 3
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomTrailing
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.bottomTrailing .* 75%
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.bottomTrailing
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingDividedByConstant() {
        let constraints = viewArray ≥ relatedView.bottomTrailing ./ 2
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingWithPriority() {
        let constraints = viewArray ≥ relatedView.bottomTrailing ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.bottomTrailing ~ 300
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.bottomTrailing ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.bottomTrailing .+ 10) .* 3
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomTrailing .+ 10)
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.bottomTrailing .+ 10) ./ 2
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomTrailing .+ 10) ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomTrailing .+ 10 ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredViewArrayLessThanOrEqualToBottomTrailing() {
        let constraints = viewArray ≤ relatedView.bottomTrailing
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayLessThanOrEqualToBottomTrailingPlusConstant() {
        let constraints = viewArray ≤ relatedView.bottomTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayLessThanOrEqualToBottomTrailingMinusConstant() {
        let constraints = viewArray ≤ relatedView.bottomTrailing .- 10
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayLessThanOrEqualToBottomTrailingMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.bottomTrailing .* 3
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToBottomTrailingMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomTrailing
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredViewArrayLessThanOrEqualToBottomTrailingMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.bottomTrailing .* 75%
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToBottomTrailingMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.bottomTrailing
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToBottomTrailingDividedByConstant() {
        let constraints = viewArray ≤ relatedView.bottomTrailing ./ 2
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayLessThanOrEqualToBottomTrailingWithPriority() {
        let constraints = viewArray ≤ relatedView.bottomTrailing ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToBottomTrailingWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.bottomTrailing ~ 300
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayLessThanOrEqualToBottomTrailingWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.bottomTrailing ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLessThanOrEqualToBottomTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.bottomTrailing .+ 10) .* 3
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToBottomTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomTrailing .+ 10)
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToBottomTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToBottomTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.bottomTrailing .+ 10) ./ 2
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLessThanOrEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomTrailing .+ 10) ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomTrailing .+ 10 ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToBottomTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLessThanOrEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToBottomTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayTopLeft <=> relatedViewTopLeft
    // MARK: Equal
    func testInferredViewArrayEqualToTopLeft() {
        let constraints = viewArray .= relatedView.topLeft
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testInferredViewArrayEqualToTopLeftPlusConstant() {
        let constraints = viewArray .= relatedView.topLeft .+ 10
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
    }

    func testInferredViewArrayEqualToTopLeftMinusConstant() {
        let constraints = viewArray .= relatedView.topLeft .- 10
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: -10)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayEqualToTopLeftMultiplyingConstant() {
        let constraints = viewArray .= relatedView.topLeft .* 3
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayEqualToTopLeftMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.topLeft
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredViewArrayEqualToTopLeftMultiplyingPercent() {
        let constraints = viewArray .= relatedView.topLeft .* 75%
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToTopLeftMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.topLeft
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToTopLeftDividedByConstant() {
        let constraints = viewArray .= relatedView.topLeft ./ 2
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayEqualToTopLeftWithPriority() {
        let constraints = viewArray .= relatedView.topLeft ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
    }

    func testInferredViewArrayEqualToTopLeftWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.topLeft ~ 300
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, priority: 300)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: 300)
    }

    func testInferredViewArrayEqualToTopLeftWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.topLeft ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayEqualToTopLeftPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.topLeft .+ 10) .* 3
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToTopLeftPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.topLeft .+ 10)
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToTopLeftMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.topLeft .+ 10
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayEqualToTopLeftPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.topLeft .+ 10) ./ 2
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayEqualToTopLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToTopLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.topLeft .+ 10) ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToTopLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.topLeft .+ 10 ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToTopLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayEqualToTopLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToTopLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.topLeft .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToTopLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.topLeft .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToTopLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredViewArrayGreaterThanOrEqualToTopLeft() {
        let constraints = viewArray ≥ relatedView.topLeft
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayGreaterThanOrEqualToTopLeftPlusConstant() {
        let constraints = viewArray ≥ relatedView.topLeft .+ 10
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeftMinusConstant() {
        let constraints = viewArray ≥ relatedView.topLeft .- 10
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: -10)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayGreaterThanOrEqualToTopLeftMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.topLeft .* 3
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeftMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topLeft
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredViewArrayGreaterThanOrEqualToTopLeftMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.topLeft .* 75%
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeftMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.topLeft
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeftDividedByConstant() {
        let constraints = viewArray ≥ relatedView.topLeft ./ 2
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayGreaterThanOrEqualToTopLeftWithPriority() {
        let constraints = viewArray ≥ relatedView.topLeft ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeftWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.topLeft ~ 300
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, priority: 300)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeftWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.topLeft ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayGreaterThanOrEqualToTopLeftPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.topLeft .+ 10) .* 3
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeftPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.topLeft .+ 10)
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeftMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topLeft .+ 10
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeftPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.topLeft .+ 10) ./ 2
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayGreaterThanOrEqualToTopLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.topLeft .+ 10) ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.topLeft .+ 10 ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayGreaterThanOrEqualToTopLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.topLeft .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.topLeft .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredViewArrayLessThanOrEqualToTopLeft() {
        let constraints = viewArray ≤ relatedView.topLeft
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayLessThanOrEqualToTopLeftPlusConstant() {
        let constraints = viewArray ≤ relatedView.topLeft .+ 10
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeftMinusConstant() {
        let constraints = viewArray ≤ relatedView.topLeft .- 10
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: -10)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayLessThanOrEqualToTopLeftMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.topLeft .* 3
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeftMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topLeft
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredViewArrayLessThanOrEqualToTopLeftMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.topLeft .* 75%
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeftMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.topLeft
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeftDividedByConstant() {
        let constraints = viewArray ≤ relatedView.topLeft ./ 2
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayLessThanOrEqualToTopLeftWithPriority() {
        let constraints = viewArray ≤ relatedView.topLeft ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeftWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.topLeft ~ 300
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, priority: 300)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeftWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.topLeft ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLessThanOrEqualToTopLeftPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.topLeft .+ 10) .* 3
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeftPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.topLeft .+ 10)
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeftMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topLeft .+ 10
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeftPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.topLeft .+ 10) ./ 2
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLessThanOrEqualToTopLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.topLeft .+ 10) ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.topLeft .+ 10 ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLessThanOrEqualToTopLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.topLeft .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.topLeft .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToTopLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayTopRight <=> relatedViewTopRight
    // MARK: Equal
    func testInferredViewArrayEqualToTopRight() {
        let constraints = viewArray .= relatedView.topRight
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testInferredViewArrayEqualToTopRightPlusConstant() {
        let constraints = viewArray .= relatedView.topRight .+ 10
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
    }

    func testInferredViewArrayEqualToTopRightMinusConstant() {
        let constraints = viewArray .= relatedView.topRight .- 10
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: -10)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayEqualToTopRightMultiplyingConstant() {
        let constraints = viewArray .= relatedView.topRight .* 3
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayEqualToTopRightMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.topRight
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredViewArrayEqualToTopRightMultiplyingPercent() {
        let constraints = viewArray .= relatedView.topRight .* 75%
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToTopRightMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.topRight
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToTopRightDividedByConstant() {
        let constraints = viewArray .= relatedView.topRight ./ 2
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayEqualToTopRightWithPriority() {
        let constraints = viewArray .= relatedView.topRight ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
    }

    func testInferredViewArrayEqualToTopRightWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.topRight ~ 300
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, priority: 300)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: 300)
    }

    func testInferredViewArrayEqualToTopRightWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.topRight ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayEqualToTopRightPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.topRight .+ 10) .* 3
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToTopRightPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.topRight .+ 10)
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToTopRightMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.topRight .+ 10
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayEqualToTopRightPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.topRight .+ 10) ./ 2
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayEqualToTopRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topRight .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToTopRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.topRight .+ 10) ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToTopRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.topRight .+ 10 ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToTopRightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayEqualToTopRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToTopRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.topRight .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToTopRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.topRight .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToTopRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredViewArrayGreaterThanOrEqualToTopRight() {
        let constraints = viewArray ≥ relatedView.topRight
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayGreaterThanOrEqualToTopRightPlusConstant() {
        let constraints = viewArray ≥ relatedView.topRight .+ 10
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopRightMinusConstant() {
        let constraints = viewArray ≥ relatedView.topRight .- 10
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: -10)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayGreaterThanOrEqualToTopRightMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.topRight .* 3
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopRightMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topRight
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredViewArrayGreaterThanOrEqualToTopRightMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.topRight .* 75%
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopRightMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.topRight
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopRightDividedByConstant() {
        let constraints = viewArray ≥ relatedView.topRight ./ 2
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayGreaterThanOrEqualToTopRightWithPriority() {
        let constraints = viewArray ≥ relatedView.topRight ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopRightWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.topRight ~ 300
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, priority: 300)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopRightWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.topRight ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayGreaterThanOrEqualToTopRightPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.topRight .+ 10) .* 3
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopRightPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.topRight .+ 10)
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopRightMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topRight .+ 10
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopRightPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.topRight .+ 10) ./ 2
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayGreaterThanOrEqualToTopRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topRight .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.topRight .+ 10) ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.topRight .+ 10 ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopRightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayGreaterThanOrEqualToTopRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.topRight .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.topRight .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToTopRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredViewArrayLessThanOrEqualToTopRight() {
        let constraints = viewArray ≤ relatedView.topRight
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayLessThanOrEqualToTopRightPlusConstant() {
        let constraints = viewArray ≤ relatedView.topRight .+ 10
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredViewArrayLessThanOrEqualToTopRightMinusConstant() {
        let constraints = viewArray ≤ relatedView.topRight .- 10
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: -10)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayLessThanOrEqualToTopRightMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.topRight .* 3
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToTopRightMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topRight
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredViewArrayLessThanOrEqualToTopRightMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.topRight .* 75%
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToTopRightMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.topRight
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToTopRightDividedByConstant() {
        let constraints = viewArray ≤ relatedView.topRight ./ 2
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayLessThanOrEqualToTopRightWithPriority() {
        let constraints = viewArray ≤ relatedView.topRight ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToTopRightWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.topRight ~ 300
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, priority: 300)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredViewArrayLessThanOrEqualToTopRightWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.topRight ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLessThanOrEqualToTopRightPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.topRight .+ 10) .* 3
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToTopRightPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.topRight .+ 10)
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToTopRightMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topRight .+ 10
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToTopRightPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.topRight .+ 10) ./ 2
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLessThanOrEqualToTopRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topRight .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToTopRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.topRight .+ 10) ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToTopRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.topRight .+ 10 ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToTopRightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLessThanOrEqualToTopRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToTopRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.topRight .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToTopRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.topRight .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToTopRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayBottomLeft <=> relatedViewBottomLeft
    // MARK: Equal
    func testInferredViewArrayEqualToBottomLeft() {
        let constraints = viewArray .= relatedView.bottomLeft
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testInferredViewArrayEqualToBottomLeftPlusConstant() {
        let constraints = viewArray .= relatedView.bottomLeft .+ 10
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayEqualToBottomLeftMinusConstant() {
        let constraints = viewArray .= relatedView.bottomLeft .- 10
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: -10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayEqualToBottomLeftMultiplyingConstant() {
        let constraints = viewArray .= relatedView.bottomLeft .* 3
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayEqualToBottomLeftMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomLeft
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredViewArrayEqualToBottomLeftMultiplyingPercent() {
        let constraints = viewArray .= relatedView.bottomLeft .* 75%
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToBottomLeftMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.bottomLeft
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToBottomLeftDividedByConstant() {
        let constraints = viewArray .= relatedView.bottomLeft ./ 2
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayEqualToBottomLeftWithPriority() {
        let constraints = viewArray .= relatedView.bottomLeft ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayEqualToBottomLeftWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.bottomLeft ~ 300
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, priority: 300)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayEqualToBottomLeftWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.bottomLeft ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayEqualToBottomLeftPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.bottomLeft .+ 10) .* 3
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToBottomLeftPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.bottomLeft .+ 10)
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToBottomLeftMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomLeft .+ 10
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayEqualToBottomLeftPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.bottomLeft .+ 10) ./ 2
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayEqualToBottomLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToBottomLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.bottomLeft .+ 10) ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToBottomLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.bottomLeft .+ 10 ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToBottomLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayEqualToBottomLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToBottomLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.bottomLeft .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToBottomLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.bottomLeft .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToBottomLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredViewArrayGreaterThanOrEqualToBottomLeft() {
        let constraints = viewArray ≥ relatedView.bottomLeft
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayGreaterThanOrEqualToBottomLeftPlusConstant() {
        let constraints = viewArray ≥ relatedView.bottomLeft .+ 10
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeftMinusConstant() {
        let constraints = viewArray ≥ relatedView.bottomLeft .- 10
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: -10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayGreaterThanOrEqualToBottomLeftMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.bottomLeft .* 3
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeftMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomLeft
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredViewArrayGreaterThanOrEqualToBottomLeftMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.bottomLeft .* 75%
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeftMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.bottomLeft
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeftDividedByConstant() {
        let constraints = viewArray ≥ relatedView.bottomLeft ./ 2
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayGreaterThanOrEqualToBottomLeftWithPriority() {
        let constraints = viewArray ≥ relatedView.bottomLeft ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeftWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.bottomLeft ~ 300
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, priority: 300)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeftWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.bottomLeft ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayGreaterThanOrEqualToBottomLeftPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.bottomLeft .+ 10) .* 3
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeftPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomLeft .+ 10)
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeftMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomLeft .+ 10
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeftPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.bottomLeft .+ 10) ./ 2
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayGreaterThanOrEqualToBottomLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomLeft .+ 10) ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomLeft .+ 10 ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayGreaterThanOrEqualToBottomLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomLeft .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomLeft .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredViewArrayLessThanOrEqualToBottomLeft() {
        let constraints = viewArray ≤ relatedView.bottomLeft
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayLessThanOrEqualToBottomLeftPlusConstant() {
        let constraints = viewArray ≤ relatedView.bottomLeft .+ 10
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeftMinusConstant() {
        let constraints = viewArray ≤ relatedView.bottomLeft .- 10
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: -10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayLessThanOrEqualToBottomLeftMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.bottomLeft .* 3
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeftMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomLeft
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredViewArrayLessThanOrEqualToBottomLeftMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.bottomLeft .* 75%
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeftMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.bottomLeft
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeftDividedByConstant() {
        let constraints = viewArray ≤ relatedView.bottomLeft ./ 2
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayLessThanOrEqualToBottomLeftWithPriority() {
        let constraints = viewArray ≤ relatedView.bottomLeft ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeftWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.bottomLeft ~ 300
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, priority: 300)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeftWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.bottomLeft ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLessThanOrEqualToBottomLeftPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.bottomLeft .+ 10) .* 3
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeftPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomLeft .+ 10)
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeftMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomLeft .+ 10
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeftPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.bottomLeft .+ 10) ./ 2
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLessThanOrEqualToBottomLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomLeft .+ 10) ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomLeft .+ 10 ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLessThanOrEqualToBottomLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomLeft .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomLeft .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToBottomLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayBottomRight <=> relatedViewBottomRight
    // MARK: Equal
    func testInferredViewArrayEqualToBottomRight() {
        let constraints = viewArray .= relatedView.bottomRight
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testInferredViewArrayEqualToBottomRightPlusConstant() {
        let constraints = viewArray .= relatedView.bottomRight .+ 10
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayEqualToBottomRightMinusConstant() {
        let constraints = viewArray .= relatedView.bottomRight .- 10
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: -10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayEqualToBottomRightMultiplyingConstant() {
        let constraints = viewArray .= relatedView.bottomRight .* 3
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayEqualToBottomRightMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomRight
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testInferredViewArrayEqualToBottomRightMultiplyingPercent() {
        let constraints = viewArray .= relatedView.bottomRight .* 75%
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToBottomRightMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.bottomRight
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayEqualToBottomRightDividedByConstant() {
        let constraints = viewArray .= relatedView.bottomRight ./ 2
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayEqualToBottomRightWithPriority() {
        let constraints = viewArray .= relatedView.bottomRight ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayEqualToBottomRightWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.bottomRight ~ 300
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, priority: 300)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayEqualToBottomRightWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.bottomRight ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayEqualToBottomRightPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.bottomRight .+ 10) .* 3
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToBottomRightPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.bottomRight .+ 10)
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayEqualToBottomRightMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomRight .+ 10
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayEqualToBottomRightPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.bottomRight .+ 10) ./ 2
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayEqualToBottomRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomRight .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToBottomRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.bottomRight .+ 10) ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToBottomRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.bottomRight .+ 10 ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayEqualToBottomRightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayEqualToBottomRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToBottomRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.bottomRight .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToBottomRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.bottomRight .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayEqualToBottomRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testInferredViewArrayGreaterThanOrEqualToBottomRight() {
        let constraints = viewArray ≥ relatedView.bottomRight
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayGreaterThanOrEqualToBottomRightPlusConstant() {
        let constraints = viewArray ≥ relatedView.bottomRight .+ 10
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomRightMinusConstant() {
        let constraints = viewArray ≥ relatedView.bottomRight .- 10
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: -10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayGreaterThanOrEqualToBottomRightMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.bottomRight .* 3
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomRightMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomRight
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testInferredViewArrayGreaterThanOrEqualToBottomRightMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.bottomRight .* 75%
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomRightMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.bottomRight
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomRightDividedByConstant() {
        let constraints = viewArray ≥ relatedView.bottomRight ./ 2
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayGreaterThanOrEqualToBottomRightWithPriority() {
        let constraints = viewArray ≥ relatedView.bottomRight ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomRightWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.bottomRight ~ 300
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, priority: 300)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomRightWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.bottomRight ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayGreaterThanOrEqualToBottomRightPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.bottomRight .+ 10) .* 3
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomRightPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomRight .+ 10)
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomRightMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomRight .+ 10
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomRightPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.bottomRight .+ 10) ./ 2
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayGreaterThanOrEqualToBottomRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomRight .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomRight .+ 10) ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomRight .+ 10 ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomRightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayGreaterThanOrEqualToBottomRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomRight .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomRight .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayGreaterThanOrEqualToBottomRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testInferredViewArrayLessThanOrEqualToBottomRight() {
        let constraints = viewArray ≤ relatedView.bottomRight
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayLessThanOrEqualToBottomRightPlusConstant() {
        let constraints = viewArray ≤ relatedView.bottomRight .+ 10
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayLessThanOrEqualToBottomRightMinusConstant() {
        let constraints = viewArray ≤ relatedView.bottomRight .- 10
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: -10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayLessThanOrEqualToBottomRightMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.bottomRight .* 3
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToBottomRightMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomRight
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testInferredViewArrayLessThanOrEqualToBottomRightMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.bottomRight .* 75%
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToBottomRightMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.bottomRight
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testInferredViewArrayLessThanOrEqualToBottomRightDividedByConstant() {
        let constraints = viewArray ≤ relatedView.bottomRight ./ 2
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayLessThanOrEqualToBottomRightWithPriority() {
        let constraints = viewArray ≤ relatedView.bottomRight ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToBottomRightWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.bottomRight ~ 300
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, priority: 300)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayLessThanOrEqualToBottomRightWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.bottomRight ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLessThanOrEqualToBottomRightPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.bottomRight .+ 10) .* 3
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToBottomRightPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomRight .+ 10)
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToBottomRightMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomRight .+ 10
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLessThanOrEqualToBottomRightPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.bottomRight .+ 10) ./ 2
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLessThanOrEqualToBottomRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomRight .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToBottomRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomRight .+ 10) ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToBottomRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomRight .+ 10 ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLessThanOrEqualToBottomRightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLessThanOrEqualToBottomRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToBottomRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomRight .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToBottomRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomRight .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLessThanOrEqualToBottomRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
// sourcery:end
}
