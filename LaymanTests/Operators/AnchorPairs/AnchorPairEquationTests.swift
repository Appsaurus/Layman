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
// sourcery: rhsAttributes = centerXY, rhsAttributes = horizontalEdges, rhsAttributes = verticalEdges, rhsAttributes = size, rhsAttributes = topLeading, rhsAttributes = topTrailing, rhsAttributes = bottomLeading, rhsAttributes = bottomTrailing, rhsAttributes = topLeft, rhsAttributes = topRight, rhsAttributes = bottomLeft, rhsAttributes = bottomRight
// sourcery: centerXY = centerX, centerXY = centerY
// sourcery: horizontalEdges = leading, horizontalEdges = trailing
// sourcery: verticalEdges = top, verticalEdges = bottom
// sourcery: size = width, size = height
// sourcery: topLeading = leading, topLeading = top
// sourcery: topTrailing = trailing, topTrailing = top
// sourcery: bottomLeading = leading, bottomLeading = bottom
// sourcery: bottomTrailing = trailing, bottomTrailing = bottom
// sourcery: topLeft = left, topLeft = top
// sourcery: topRight = right, topRight = top
// sourcery: bottomLeft = left, bottomLeft = bottom
// sourcery: bottomRight = right, bottomRight = bottom
class AnchorPairEquationTests: LaymanTestCase {

// sourcery:inline:auto:AnchorPairEquationTests.AnchorPairEquationTest

    // MARK: view1.centerXYCenterXY <=> relatedViewCenterXY
    // MARK: Equal
    func testView1EqualToCenterXY() {
        let constraints = view1.centerXY .= relatedView.centerXY
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testView1EqualToCenterXYPlusConstant() {
        let constraints = view1.centerXY .= relatedView.centerXY .+ 10
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10)
    }

    func testView1EqualToCenterXYMinusConstant() {
        let constraints = view1.centerXY .= relatedView.centerXY .- 10
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: -10)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1EqualToCenterXYMultiplyingConstant() {
        let constraints = view1.centerXY .= relatedView.centerXY .* 3
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1EqualToCenterXYMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.centerXY
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToCenterXYMultiplyingPercent() {
        let constraints = view1 .= relatedView.centerXY .* 75%
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 0.75)
    }

    func testView1EqualToCenterXYMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.centerXY
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 0.75)
    }

    func testView1EqualToCenterXYDividedByConstant() {
        let constraints = view1.centerXY .= relatedView.centerXY ./ 2
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1EqualToCenterXYWithPriority() {
        let constraints = view1.centerXY .= relatedView.centerXY ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, priority: .low)
    }

    func testView1EqualToCenterXYWithPriorityLiteral() {
        let constraints = view1.centerXY .= relatedView.centerXY ~ 300
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 300)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 300)
    }

    func testView1EqualToCenterXYWithPriorityArithmetic() {
        let constraints = view1.centerXY .= relatedView.centerXY ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToCenterXYPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.centerXY .+ 10) .* 3
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToCenterXYPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.centerXY .+ 10)
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToCenterXYMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.centerXY .+ 10
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1EqualToCenterXYPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.centerXY .+ 10) ./ 2
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToCenterXYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerXY .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToCenterXYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.centerXY .+ 10) ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToCenterXYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.centerXY .+ 10 ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1EqualToCenterXYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerXY .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToCenterXYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerXY .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToCenterXYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.centerXY .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToCenterXYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.centerXY .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1EqualToCenterXYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerXY .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToCenterXY() {
        let constraints = view1.centerXY ≥ relatedView.centerXY
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToCenterXYPlusConstant() {
        let constraints = view1.centerXY ≥ relatedView.centerXY .+ 10
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1GreaterThanOrEqualToCenterXYMinusConstant() {
        let constraints = view1.centerXY ≥ relatedView.centerXY .- 10
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToCenterXYMultiplyingConstant() {
        let constraints = view1.centerXY ≥ relatedView.centerXY .* 3
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToCenterXYMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerXY
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToCenterXYMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.centerXY .* 75%
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToCenterXYMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.centerXY
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToCenterXYDividedByConstant() {
        let constraints = view1.centerXY ≥ relatedView.centerXY ./ 2
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToCenterXYWithPriority() {
        let constraints = view1.centerXY ≥ relatedView.centerXY ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1GreaterThanOrEqualToCenterXYWithPriorityLiteral() {
        let constraints = view1.centerXY ≥ relatedView.centerXY ~ 300
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1GreaterThanOrEqualToCenterXYWithPriorityArithmetic() {
        let constraints = view1.centerXY ≥ relatedView.centerXY ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToCenterXYPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.centerXY .+ 10) .* 3
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToCenterXYPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.centerXY .+ 10)
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToCenterXYMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerXY .+ 10
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToCenterXYPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.centerXY .+ 10) ./ 2
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToCenterXYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerXY .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToCenterXYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.centerXY .+ 10) ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToCenterXYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.centerXY .+ 10 ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToCenterXYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerXY .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToCenterXYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerXY .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToCenterXYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.centerXY .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToCenterXYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.centerXY .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToCenterXYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerXY .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToCenterXY() {
        let constraints = view1.centerXY ≤ relatedView.centerXY
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToCenterXYPlusConstant() {
        let constraints = view1.centerXY ≤ relatedView.centerXY .+ 10
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1LessThanOrEqualToCenterXYMinusConstant() {
        let constraints = view1.centerXY ≤ relatedView.centerXY .- 10
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToCenterXYMultiplyingConstant() {
        let constraints = view1.centerXY ≤ relatedView.centerXY .* 3
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1LessThanOrEqualToCenterXYMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerXY
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToCenterXYMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.centerXY .* 75%
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToCenterXYMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.centerXY
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToCenterXYDividedByConstant() {
        let constraints = view1.centerXY ≤ relatedView.centerXY ./ 2
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToCenterXYWithPriority() {
        let constraints = view1.centerXY ≤ relatedView.centerXY ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1LessThanOrEqualToCenterXYWithPriorityLiteral() {
        let constraints = view1.centerXY ≤ relatedView.centerXY ~ 300
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1LessThanOrEqualToCenterXYWithPriorityArithmetic() {
        let constraints = view1.centerXY ≤ relatedView.centerXY ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToCenterXYPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.centerXY .+ 10) .* 3
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToCenterXYPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.centerXY .+ 10)
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToCenterXYMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerXY .+ 10
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testView1LessThanOrEqualToCenterXYPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.centerXY .+ 10) ./ 2
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToCenterXYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerXY .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToCenterXYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.centerXY .+ 10) ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToCenterXYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.centerXY .+ 10 ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToCenterXYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerXY .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToCenterXYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerXY .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToCenterXYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.centerXY .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToCenterXYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.centerXY .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToCenterXYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerXY .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.horizontalEdgesHorizontalEdges <=> relatedViewHorizontalEdges
    // MARK: Equal
    func testView1EqualToHorizontalEdges() {
        let constraints = view1.horizontalEdges .= relatedView.horizontalEdges
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testView1EqualToHorizontalEdgesPlusConstant() {
        let constraints = view1.horizontalEdges .= relatedView.horizontalEdges .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10)
    }

    func testView1EqualToHorizontalEdgesMinusConstant() {
        let constraints = view1.horizontalEdges .= relatedView.horizontalEdges .- 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1EqualToHorizontalEdgesMultiplyingConstant() {
        let constraints = view1.horizontalEdges .= relatedView.horizontalEdges .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testView1EqualToHorizontalEdgesMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdges
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToHorizontalEdgesMultiplyingPercent() {
        let constraints = view1 .= relatedView.horizontalEdges .* 75%
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
    }

    func testView1EqualToHorizontalEdgesMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.horizontalEdges
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
    }

    func testView1EqualToHorizontalEdgesDividedByConstant() {
        let constraints = view1.horizontalEdges .= relatedView.horizontalEdges ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1EqualToHorizontalEdgesWithPriority() {
        let constraints = view1.horizontalEdges .= relatedView.horizontalEdges ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, priority: .low)
    }

    func testView1EqualToHorizontalEdgesWithPriorityLiteral() {
        let constraints = view1.horizontalEdges .= relatedView.horizontalEdges ~ 300
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 300)
    }

    func testView1EqualToHorizontalEdgesWithPriorityArithmetic() {
        let constraints = view1.horizontalEdges .= relatedView.horizontalEdges ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToHorizontalEdgesPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.horizontalEdges .+ 10) .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToHorizontalEdgesPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.horizontalEdges .+ 10)
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToHorizontalEdgesMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdges .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testView1EqualToHorizontalEdgesPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.horizontalEdges .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.horizontalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.horizontalEdges .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdges .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1EqualToHorizontalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.horizontalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.horizontalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.horizontalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1EqualToHorizontalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.horizontalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToHorizontalEdges() {
        let constraints = view1.horizontalEdges ≥ relatedView.horizontalEdges
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToHorizontalEdgesPlusConstant() {
        let constraints = view1.horizontalEdges ≥ relatedView.horizontalEdges .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgesMinusConstant() {
        let constraints = view1.horizontalEdges ≥ relatedView.horizontalEdges .- 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToHorizontalEdgesMultiplyingConstant() {
        let constraints = view1.horizontalEdges ≥ relatedView.horizontalEdges .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgesMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdges
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToHorizontalEdgesMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.horizontalEdges .* 75%
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgesMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.horizontalEdges
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgesDividedByConstant() {
        let constraints = view1.horizontalEdges ≥ relatedView.horizontalEdges ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToHorizontalEdgesWithPriority() {
        let constraints = view1.horizontalEdges ≥ relatedView.horizontalEdges ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgesWithPriorityLiteral() {
        let constraints = view1.horizontalEdges ≥ relatedView.horizontalEdges ~ 300
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgesWithPriorityArithmetic() {
        let constraints = view1.horizontalEdges ≥ relatedView.horizontalEdges ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.horizontalEdges .+ 10) .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.horizontalEdges .+ 10)
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdges .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgesPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.horizontalEdges .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.horizontalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.horizontalEdges .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdges .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.horizontalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.horizontalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.horizontalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.horizontalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToHorizontalEdges() {
        let constraints = view1.horizontalEdges ≤ relatedView.horizontalEdges
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToHorizontalEdgesPlusConstant() {
        let constraints = view1.horizontalEdges ≤ relatedView.horizontalEdges .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testView1LessThanOrEqualToHorizontalEdgesMinusConstant() {
        let constraints = view1.horizontalEdges ≤ relatedView.horizontalEdges .- 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToHorizontalEdgesMultiplyingConstant() {
        let constraints = view1.horizontalEdges ≤ relatedView.horizontalEdges .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1LessThanOrEqualToHorizontalEdgesMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdges
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToHorizontalEdgesMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.horizontalEdges .* 75%
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToHorizontalEdgesMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.horizontalEdges
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToHorizontalEdgesDividedByConstant() {
        let constraints = view1.horizontalEdges ≤ relatedView.horizontalEdges ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToHorizontalEdgesWithPriority() {
        let constraints = view1.horizontalEdges ≤ relatedView.horizontalEdges ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testView1LessThanOrEqualToHorizontalEdgesWithPriorityLiteral() {
        let constraints = view1.horizontalEdges ≤ relatedView.horizontalEdges ~ 300
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testView1LessThanOrEqualToHorizontalEdgesWithPriorityArithmetic() {
        let constraints = view1.horizontalEdges ≤ relatedView.horizontalEdges ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.horizontalEdges .+ 10) .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.horizontalEdges .+ 10)
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdges .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testView1LessThanOrEqualToHorizontalEdgesPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.horizontalEdges .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.horizontalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.horizontalEdges .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdges .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.horizontalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.horizontalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.horizontalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.horizontalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.verticalEdgesVerticalEdges <=> relatedViewVerticalEdges
    // MARK: Equal
    func testView1EqualToVerticalEdges() {
        let constraints = view1.verticalEdges .= relatedView.verticalEdges
        constraints.first.assert(view1, .top, .equal, relatedView, .top)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testView1EqualToVerticalEdgesPlusConstant() {
        let constraints = view1.verticalEdges .= relatedView.verticalEdges .+ 10
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testView1EqualToVerticalEdgesMinusConstant() {
        let constraints = view1.verticalEdges .= relatedView.verticalEdges .- 10
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: -10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1EqualToVerticalEdgesMultiplyingConstant() {
        let constraints = view1.verticalEdges .= relatedView.verticalEdges .* 3
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1EqualToVerticalEdgesMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.verticalEdges
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToVerticalEdgesMultiplyingPercent() {
        let constraints = view1 .= relatedView.verticalEdges .* 75%
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1EqualToVerticalEdgesMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.verticalEdges
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1EqualToVerticalEdgesDividedByConstant() {
        let constraints = view1.verticalEdges .= relatedView.verticalEdges ./ 2
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1EqualToVerticalEdgesWithPriority() {
        let constraints = view1.verticalEdges .= relatedView.verticalEdges ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testView1EqualToVerticalEdgesWithPriorityLiteral() {
        let constraints = view1.verticalEdges .= relatedView.verticalEdges ~ 300
        constraints.first.assert(view1, .top, .equal, relatedView, .top, priority: 300)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testView1EqualToVerticalEdgesWithPriorityArithmetic() {
        let constraints = view1.verticalEdges .= relatedView.verticalEdges ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToVerticalEdgesPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.verticalEdges .+ 10) .* 3
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToVerticalEdgesPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.verticalEdges .+ 10)
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToVerticalEdgesMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.verticalEdges .+ 10
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1EqualToVerticalEdgesPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.verticalEdges .+ 10) ./ 2
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.verticalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.verticalEdges .+ 10) ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.verticalEdges .+ 10 ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1EqualToVerticalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.verticalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.verticalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.verticalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.verticalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1EqualToVerticalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.verticalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToVerticalEdges() {
        let constraints = view1.verticalEdges ≥ relatedView.verticalEdges
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToVerticalEdgesPlusConstant() {
        let constraints = view1.verticalEdges ≥ relatedView.verticalEdges .+ 10
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1GreaterThanOrEqualToVerticalEdgesMinusConstant() {
        let constraints = view1.verticalEdges ≥ relatedView.verticalEdges .- 10
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToVerticalEdgesMultiplyingConstant() {
        let constraints = view1.verticalEdges ≥ relatedView.verticalEdges .* 3
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToVerticalEdgesMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdges
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToVerticalEdgesMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.verticalEdges .* 75%
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToVerticalEdgesMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.verticalEdges
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToVerticalEdgesDividedByConstant() {
        let constraints = view1.verticalEdges ≥ relatedView.verticalEdges ./ 2
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToVerticalEdgesWithPriority() {
        let constraints = view1.verticalEdges ≥ relatedView.verticalEdges ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1GreaterThanOrEqualToVerticalEdgesWithPriorityLiteral() {
        let constraints = view1.verticalEdges ≥ relatedView.verticalEdges ~ 300
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1GreaterThanOrEqualToVerticalEdgesWithPriorityArithmetic() {
        let constraints = view1.verticalEdges ≥ relatedView.verticalEdges ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.verticalEdges .+ 10) .* 3
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.verticalEdges .+ 10)
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdges .+ 10
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToVerticalEdgesPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.verticalEdges .+ 10) ./ 2
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.verticalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.verticalEdges .+ 10) ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdges .+ 10 ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToVerticalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.verticalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.verticalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.verticalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToVerticalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.verticalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToVerticalEdges() {
        let constraints = view1.verticalEdges ≤ relatedView.verticalEdges
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToVerticalEdgesPlusConstant() {
        let constraints = view1.verticalEdges ≤ relatedView.verticalEdges .+ 10
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1LessThanOrEqualToVerticalEdgesMinusConstant() {
        let constraints = view1.verticalEdges ≤ relatedView.verticalEdges .- 10
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToVerticalEdgesMultiplyingConstant() {
        let constraints = view1.verticalEdges ≤ relatedView.verticalEdges .* 3
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1LessThanOrEqualToVerticalEdgesMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdges
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToVerticalEdgesMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.verticalEdges .* 75%
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToVerticalEdgesMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.verticalEdges
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToVerticalEdgesDividedByConstant() {
        let constraints = view1.verticalEdges ≤ relatedView.verticalEdges ./ 2
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToVerticalEdgesWithPriority() {
        let constraints = view1.verticalEdges ≤ relatedView.verticalEdges ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1LessThanOrEqualToVerticalEdgesWithPriorityLiteral() {
        let constraints = view1.verticalEdges ≤ relatedView.verticalEdges ~ 300
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1LessThanOrEqualToVerticalEdgesWithPriorityArithmetic() {
        let constraints = view1.verticalEdges ≤ relatedView.verticalEdges ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.verticalEdges .+ 10) .* 3
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.verticalEdges .+ 10)
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdges .+ 10
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1LessThanOrEqualToVerticalEdgesPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.verticalEdges .+ 10) ./ 2
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.verticalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.verticalEdges .+ 10) ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdges .+ 10 ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToVerticalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.verticalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.verticalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.verticalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToVerticalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.verticalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.sizeSize <=> relatedViewSize
    // MARK: Equal
    func testView1EqualToSize() {
        let constraints = view1.size .= relatedView.size
        constraints.first.assert(view1, .width, .equal, relatedView, .width)
        constraints.second.assert(view1, .height, .equal, relatedView, .height)
    }

    // MARK: Equal with constant
    func testView1EqualToSizePlusConstant() {
        let constraints = view1.size .= relatedView.size .+ 10
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10)
    }

    func testView1EqualToSizeMinusConstant() {
        let constraints = view1.size .= relatedView.size .- 10
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: -10)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1EqualToSizeMultiplyingConstant() {
        let constraints = view1.size .= relatedView.size .* 3
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testView1EqualToSizeMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.size
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToSizeMultiplyingPercent() {
        let constraints = view1 .= relatedView.size .* 75%
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 0.75)
    }

    func testView1EqualToSizeMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.size
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 0.75)
    }

    func testView1EqualToSizeDividedByConstant() {
        let constraints = view1.size .= relatedView.size ./ 2
        constraints.first.assert(view1, .width, .equal, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1EqualToSizeWithPriority() {
        let constraints = view1.size .= relatedView.size ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, priority: .low)
    }

    func testView1EqualToSizeWithPriorityLiteral() {
        let constraints = view1.size .= relatedView.size ~ 300
        constraints.first.assert(view1, .width, .equal, relatedView, .width, priority: 300)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, priority: 300)
    }

    func testView1EqualToSizeWithPriorityArithmetic() {
        let constraints = view1.size .= relatedView.size ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToSizePlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.size .+ 10) .* 3
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToSizePlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.size .+ 10)
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToSizeMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.size .+ 10
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testView1EqualToSizePlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.size .+ 10) ./ 2
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToSizePlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.size .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToSizePlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.size .+ 10) ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToSizeMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.size .+ 10 ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1EqualToSizePlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.size .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToSizePlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.size .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToSizePlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.size .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToSizeMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.size .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1EqualToSizePlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.size .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToSize() {
        let constraints = view1.size ≥ relatedView.size
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToSizePlusConstant() {
        let constraints = view1.size ≥ relatedView.size .+ 10
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testView1GreaterThanOrEqualToSizeMinusConstant() {
        let constraints = view1.size ≥ relatedView.size .- 10
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToSizeMultiplyingConstant() {
        let constraints = view1.size ≥ relatedView.size .* 3
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToSizeMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.size
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToSizeMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.size .* 75%
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToSizeMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.size
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToSizeDividedByConstant() {
        let constraints = view1.size ≥ relatedView.size ./ 2
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToSizeWithPriority() {
        let constraints = view1.size ≥ relatedView.size ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testView1GreaterThanOrEqualToSizeWithPriorityLiteral() {
        let constraints = view1.size ≥ relatedView.size ~ 300
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testView1GreaterThanOrEqualToSizeWithPriorityArithmetic() {
        let constraints = view1.size ≥ relatedView.size ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToSizePlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.size .+ 10) .* 3
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToSizePlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.size .+ 10)
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToSizeMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.size .+ 10
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToSizePlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.size .+ 10) ./ 2
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToSizePlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.size .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToSizePlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.size .+ 10) ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToSizeMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.size .+ 10 ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToSizePlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.size .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToSizePlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.size .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToSizePlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.size .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToSizeMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.size .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToSizePlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.size .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToSize() {
        let constraints = view1.size ≤ relatedView.size
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToSizePlusConstant() {
        let constraints = view1.size ≤ relatedView.size .+ 10
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testView1LessThanOrEqualToSizeMinusConstant() {
        let constraints = view1.size ≤ relatedView.size .- 10
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToSizeMultiplyingConstant() {
        let constraints = view1.size ≤ relatedView.size .* 3
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1LessThanOrEqualToSizeMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.size
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToSizeMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.size .* 75%
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToSizeMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.size
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToSizeDividedByConstant() {
        let constraints = view1.size ≤ relatedView.size ./ 2
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToSizeWithPriority() {
        let constraints = view1.size ≤ relatedView.size ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testView1LessThanOrEqualToSizeWithPriorityLiteral() {
        let constraints = view1.size ≤ relatedView.size ~ 300
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testView1LessThanOrEqualToSizeWithPriorityArithmetic() {
        let constraints = view1.size ≤ relatedView.size ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToSizePlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.size .+ 10) .* 3
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToSizePlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.size .+ 10)
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToSizeMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.size .+ 10
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testView1LessThanOrEqualToSizePlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.size .+ 10) ./ 2
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToSizePlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.size .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToSizePlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.size .+ 10) ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToSizeMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.size .+ 10 ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToSizePlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.size .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToSizePlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.size .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToSizePlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.size .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToSizeMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.size .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToSizePlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.size .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.topLeadingTopLeading <=> relatedViewTopLeading
    // MARK: Equal
    func testView1EqualToTopLeading() {
        let constraints = view1.topLeading .= relatedView.topLeading
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading)
        constraints.second.assert(view1, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testView1EqualToTopLeadingPlusConstant() {
        let constraints = view1.topLeading .= relatedView.topLeading .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10)
    }

    func testView1EqualToTopLeadingMinusConstant() {
        let constraints = view1.topLeading .= relatedView.topLeading .- 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1EqualToTopLeadingMultiplyingConstant() {
        let constraints = view1.topLeading .= relatedView.topLeading .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1EqualToTopLeadingMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.topLeading
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToTopLeadingMultiplyingPercent() {
        let constraints = view1 .= relatedView.topLeading .* 75%
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testView1EqualToTopLeadingMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.topLeading
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testView1EqualToTopLeadingDividedByConstant() {
        let constraints = view1.topLeading .= relatedView.topLeading ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1EqualToTopLeadingWithPriority() {
        let constraints = view1.topLeading .= relatedView.topLeading ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: .low)
    }

    func testView1EqualToTopLeadingWithPriorityLiteral() {
        let constraints = view1.topLeading .= relatedView.topLeading ~ 300
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: 300)
    }

    func testView1EqualToTopLeadingWithPriorityArithmetic() {
        let constraints = view1.topLeading .= relatedView.topLeading ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToTopLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.topLeading .+ 10) .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToTopLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.topLeading .+ 10)
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToTopLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.topLeading .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1EqualToTopLeadingPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.topLeading .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToTopLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.topLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToTopLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.topLeading .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToTopLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.topLeading .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1EqualToTopLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.topLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToTopLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToTopLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.topLeading .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToTopLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.topLeading .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1EqualToTopLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToTopLeading() {
        let constraints = view1.topLeading ≥ relatedView.topLeading
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToTopLeadingPlusConstant() {
        let constraints = view1.topLeading ≥ relatedView.topLeading .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1GreaterThanOrEqualToTopLeadingMinusConstant() {
        let constraints = view1.topLeading ≥ relatedView.topLeading .- 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToTopLeadingMultiplyingConstant() {
        let constraints = view1.topLeading ≥ relatedView.topLeading .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToTopLeadingMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topLeading
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToTopLeadingMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.topLeading .* 75%
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToTopLeadingMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.topLeading
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToTopLeadingDividedByConstant() {
        let constraints = view1.topLeading ≥ relatedView.topLeading ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToTopLeadingWithPriority() {
        let constraints = view1.topLeading ≥ relatedView.topLeading ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1GreaterThanOrEqualToTopLeadingWithPriorityLiteral() {
        let constraints = view1.topLeading ≥ relatedView.topLeading ~ 300
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1GreaterThanOrEqualToTopLeadingWithPriorityArithmetic() {
        let constraints = view1.topLeading ≥ relatedView.topLeading ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToTopLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.topLeading .+ 10) .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToTopLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.topLeading .+ 10)
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToTopLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topLeading .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToTopLeadingPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.topLeading .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToTopLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToTopLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.topLeading .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToTopLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.topLeading .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToTopLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToTopLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToTopLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.topLeading .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToTopLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.topLeading .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToTopLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToTopLeading() {
        let constraints = view1.topLeading ≤ relatedView.topLeading
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToTopLeadingPlusConstant() {
        let constraints = view1.topLeading ≤ relatedView.topLeading .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1LessThanOrEqualToTopLeadingMinusConstant() {
        let constraints = view1.topLeading ≤ relatedView.topLeading .- 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToTopLeadingMultiplyingConstant() {
        let constraints = view1.topLeading ≤ relatedView.topLeading .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1LessThanOrEqualToTopLeadingMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topLeading
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToTopLeadingMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.topLeading .* 75%
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToTopLeadingMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.topLeading
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToTopLeadingDividedByConstant() {
        let constraints = view1.topLeading ≤ relatedView.topLeading ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToTopLeadingWithPriority() {
        let constraints = view1.topLeading ≤ relatedView.topLeading ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1LessThanOrEqualToTopLeadingWithPriorityLiteral() {
        let constraints = view1.topLeading ≤ relatedView.topLeading ~ 300
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1LessThanOrEqualToTopLeadingWithPriorityArithmetic() {
        let constraints = view1.topLeading ≤ relatedView.topLeading ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToTopLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.topLeading .+ 10) .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToTopLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.topLeading .+ 10)
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToTopLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topLeading .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1LessThanOrEqualToTopLeadingPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.topLeading .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToTopLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToTopLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.topLeading .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToTopLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.topLeading .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToTopLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToTopLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToTopLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.topLeading .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToTopLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.topLeading .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToTopLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.topTrailingTopTrailing <=> relatedViewTopTrailing
    // MARK: Equal
    func testView1EqualToTopTrailing() {
        let constraints = view1.topTrailing .= relatedView.topTrailing
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing)
        constraints.second.assert(view1, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testView1EqualToTopTrailingPlusConstant() {
        let constraints = view1.topTrailing .= relatedView.topTrailing .+ 10
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10)
    }

    func testView1EqualToTopTrailingMinusConstant() {
        let constraints = view1.topTrailing .= relatedView.topTrailing .- 10
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1EqualToTopTrailingMultiplyingConstant() {
        let constraints = view1.topTrailing .= relatedView.topTrailing .* 3
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1EqualToTopTrailingMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.topTrailing
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToTopTrailingMultiplyingPercent() {
        let constraints = view1 .= relatedView.topTrailing .* 75%
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testView1EqualToTopTrailingMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.topTrailing
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testView1EqualToTopTrailingDividedByConstant() {
        let constraints = view1.topTrailing .= relatedView.topTrailing ./ 2
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1EqualToTopTrailingWithPriority() {
        let constraints = view1.topTrailing .= relatedView.topTrailing ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: .low)
    }

    func testView1EqualToTopTrailingWithPriorityLiteral() {
        let constraints = view1.topTrailing .= relatedView.topTrailing ~ 300
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 300)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: 300)
    }

    func testView1EqualToTopTrailingWithPriorityArithmetic() {
        let constraints = view1.topTrailing .= relatedView.topTrailing ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToTopTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.topTrailing .+ 10) .* 3
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToTopTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.topTrailing .+ 10)
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToTopTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.topTrailing .+ 10
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1EqualToTopTrailingPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.topTrailing .+ 10) ./ 2
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToTopTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.topTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToTopTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.topTrailing .+ 10) ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToTopTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.topTrailing .+ 10 ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1EqualToTopTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.topTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToTopTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToTopTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.topTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToTopTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.topTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1EqualToTopTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToTopTrailing() {
        let constraints = view1.topTrailing ≥ relatedView.topTrailing
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToTopTrailingPlusConstant() {
        let constraints = view1.topTrailing ≥ relatedView.topTrailing .+ 10
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1GreaterThanOrEqualToTopTrailingMinusConstant() {
        let constraints = view1.topTrailing ≥ relatedView.topTrailing .- 10
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToTopTrailingMultiplyingConstant() {
        let constraints = view1.topTrailing ≥ relatedView.topTrailing .* 3
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToTopTrailingMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topTrailing
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToTopTrailingMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.topTrailing .* 75%
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToTopTrailingMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.topTrailing
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToTopTrailingDividedByConstant() {
        let constraints = view1.topTrailing ≥ relatedView.topTrailing ./ 2
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToTopTrailingWithPriority() {
        let constraints = view1.topTrailing ≥ relatedView.topTrailing ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1GreaterThanOrEqualToTopTrailingWithPriorityLiteral() {
        let constraints = view1.topTrailing ≥ relatedView.topTrailing ~ 300
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1GreaterThanOrEqualToTopTrailingWithPriorityArithmetic() {
        let constraints = view1.topTrailing ≥ relatedView.topTrailing ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToTopTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.topTrailing .+ 10) .* 3
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToTopTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.topTrailing .+ 10)
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToTopTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topTrailing .+ 10
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToTopTrailingPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.topTrailing .+ 10) ./ 2
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToTopTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToTopTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.topTrailing .+ 10) ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToTopTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.topTrailing .+ 10 ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToTopTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToTopTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToTopTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.topTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToTopTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.topTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToTopTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToTopTrailing() {
        let constraints = view1.topTrailing ≤ relatedView.topTrailing
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToTopTrailingPlusConstant() {
        let constraints = view1.topTrailing ≤ relatedView.topTrailing .+ 10
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1LessThanOrEqualToTopTrailingMinusConstant() {
        let constraints = view1.topTrailing ≤ relatedView.topTrailing .- 10
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToTopTrailingMultiplyingConstant() {
        let constraints = view1.topTrailing ≤ relatedView.topTrailing .* 3
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1LessThanOrEqualToTopTrailingMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topTrailing
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToTopTrailingMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.topTrailing .* 75%
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToTopTrailingMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.topTrailing
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToTopTrailingDividedByConstant() {
        let constraints = view1.topTrailing ≤ relatedView.topTrailing ./ 2
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToTopTrailingWithPriority() {
        let constraints = view1.topTrailing ≤ relatedView.topTrailing ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1LessThanOrEqualToTopTrailingWithPriorityLiteral() {
        let constraints = view1.topTrailing ≤ relatedView.topTrailing ~ 300
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1LessThanOrEqualToTopTrailingWithPriorityArithmetic() {
        let constraints = view1.topTrailing ≤ relatedView.topTrailing ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToTopTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.topTrailing .+ 10) .* 3
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToTopTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.topTrailing .+ 10)
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToTopTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topTrailing .+ 10
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1LessThanOrEqualToTopTrailingPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.topTrailing .+ 10) ./ 2
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToTopTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToTopTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.topTrailing .+ 10) ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToTopTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.topTrailing .+ 10 ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToTopTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToTopTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToTopTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.topTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToTopTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.topTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToTopTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.bottomLeadingBottomLeading <=> relatedViewBottomLeading
    // MARK: Equal
    func testView1EqualToBottomLeading() {
        let constraints = view1.bottomLeading .= relatedView.bottomLeading
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testView1EqualToBottomLeadingPlusConstant() {
        let constraints = view1.bottomLeading .= relatedView.bottomLeading .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testView1EqualToBottomLeadingMinusConstant() {
        let constraints = view1.bottomLeading .= relatedView.bottomLeading .- 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1EqualToBottomLeadingMultiplyingConstant() {
        let constraints = view1.bottomLeading .= relatedView.bottomLeading .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1EqualToBottomLeadingMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomLeading
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToBottomLeadingMultiplyingPercent() {
        let constraints = view1 .= relatedView.bottomLeading .* 75%
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1EqualToBottomLeadingMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.bottomLeading
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1EqualToBottomLeadingDividedByConstant() {
        let constraints = view1.bottomLeading .= relatedView.bottomLeading ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1EqualToBottomLeadingWithPriority() {
        let constraints = view1.bottomLeading .= relatedView.bottomLeading ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testView1EqualToBottomLeadingWithPriorityLiteral() {
        let constraints = view1.bottomLeading .= relatedView.bottomLeading ~ 300
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testView1EqualToBottomLeadingWithPriorityArithmetic() {
        let constraints = view1.bottomLeading .= relatedView.bottomLeading ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToBottomLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.bottomLeading .+ 10) .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToBottomLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.bottomLeading .+ 10)
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToBottomLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomLeading .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1EqualToBottomLeadingPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.bottomLeading .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToBottomLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToBottomLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.bottomLeading .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToBottomLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.bottomLeading .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1EqualToBottomLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToBottomLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToBottomLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.bottomLeading .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToBottomLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.bottomLeading .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1EqualToBottomLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToBottomLeading() {
        let constraints = view1.bottomLeading ≥ relatedView.bottomLeading
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToBottomLeadingPlusConstant() {
        let constraints = view1.bottomLeading ≥ relatedView.bottomLeading .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1GreaterThanOrEqualToBottomLeadingMinusConstant() {
        let constraints = view1.bottomLeading ≥ relatedView.bottomLeading .- 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToBottomLeadingMultiplyingConstant() {
        let constraints = view1.bottomLeading ≥ relatedView.bottomLeading .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToBottomLeadingMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomLeading
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToBottomLeadingMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.bottomLeading .* 75%
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToBottomLeadingMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.bottomLeading
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToBottomLeadingDividedByConstant() {
        let constraints = view1.bottomLeading ≥ relatedView.bottomLeading ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToBottomLeadingWithPriority() {
        let constraints = view1.bottomLeading ≥ relatedView.bottomLeading ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1GreaterThanOrEqualToBottomLeadingWithPriorityLiteral() {
        let constraints = view1.bottomLeading ≥ relatedView.bottomLeading ~ 300
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1GreaterThanOrEqualToBottomLeadingWithPriorityArithmetic() {
        let constraints = view1.bottomLeading ≥ relatedView.bottomLeading ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToBottomLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.bottomLeading .+ 10) .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToBottomLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomLeading .+ 10)
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToBottomLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomLeading .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToBottomLeadingPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.bottomLeading .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomLeading .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.bottomLeading .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToBottomLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomLeading .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.bottomLeading .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToBottomLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToBottomLeading() {
        let constraints = view1.bottomLeading ≤ relatedView.bottomLeading
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToBottomLeadingPlusConstant() {
        let constraints = view1.bottomLeading ≤ relatedView.bottomLeading .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1LessThanOrEqualToBottomLeadingMinusConstant() {
        let constraints = view1.bottomLeading ≤ relatedView.bottomLeading .- 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToBottomLeadingMultiplyingConstant() {
        let constraints = view1.bottomLeading ≤ relatedView.bottomLeading .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1LessThanOrEqualToBottomLeadingMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomLeading
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToBottomLeadingMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.bottomLeading .* 75%
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToBottomLeadingMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.bottomLeading
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToBottomLeadingDividedByConstant() {
        let constraints = view1.bottomLeading ≤ relatedView.bottomLeading ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToBottomLeadingWithPriority() {
        let constraints = view1.bottomLeading ≤ relatedView.bottomLeading ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1LessThanOrEqualToBottomLeadingWithPriorityLiteral() {
        let constraints = view1.bottomLeading ≤ relatedView.bottomLeading ~ 300
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1LessThanOrEqualToBottomLeadingWithPriorityArithmetic() {
        let constraints = view1.bottomLeading ≤ relatedView.bottomLeading ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToBottomLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.bottomLeading .+ 10) .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToBottomLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomLeading .+ 10)
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToBottomLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomLeading .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1LessThanOrEqualToBottomLeadingPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.bottomLeading .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomLeading .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.bottomLeading .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToBottomLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomLeading .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.bottomLeading .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToBottomLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.bottomTrailingBottomTrailing <=> relatedViewBottomTrailing
    // MARK: Equal
    func testView1EqualToBottomTrailing() {
        let constraints = view1.bottomTrailing .= relatedView.bottomTrailing
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testView1EqualToBottomTrailingPlusConstant() {
        let constraints = view1.bottomTrailing .= relatedView.bottomTrailing .+ 10
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testView1EqualToBottomTrailingMinusConstant() {
        let constraints = view1.bottomTrailing .= relatedView.bottomTrailing .- 10
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1EqualToBottomTrailingMultiplyingConstant() {
        let constraints = view1.bottomTrailing .= relatedView.bottomTrailing .* 3
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1EqualToBottomTrailingMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomTrailing
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToBottomTrailingMultiplyingPercent() {
        let constraints = view1 .= relatedView.bottomTrailing .* 75%
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1EqualToBottomTrailingMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.bottomTrailing
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1EqualToBottomTrailingDividedByConstant() {
        let constraints = view1.bottomTrailing .= relatedView.bottomTrailing ./ 2
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1EqualToBottomTrailingWithPriority() {
        let constraints = view1.bottomTrailing .= relatedView.bottomTrailing ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testView1EqualToBottomTrailingWithPriorityLiteral() {
        let constraints = view1.bottomTrailing .= relatedView.bottomTrailing ~ 300
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 300)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testView1EqualToBottomTrailingWithPriorityArithmetic() {
        let constraints = view1.bottomTrailing .= relatedView.bottomTrailing ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToBottomTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.bottomTrailing .+ 10) .* 3
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToBottomTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.bottomTrailing .+ 10)
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToBottomTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomTrailing .+ 10
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1EqualToBottomTrailingPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.bottomTrailing .+ 10) ./ 2
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToBottomTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToBottomTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.bottomTrailing .+ 10) ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToBottomTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.bottomTrailing .+ 10 ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1EqualToBottomTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToBottomTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToBottomTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.bottomTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToBottomTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.bottomTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1EqualToBottomTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToBottomTrailing() {
        let constraints = view1.bottomTrailing ≥ relatedView.bottomTrailing
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToBottomTrailingPlusConstant() {
        let constraints = view1.bottomTrailing ≥ relatedView.bottomTrailing .+ 10
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1GreaterThanOrEqualToBottomTrailingMinusConstant() {
        let constraints = view1.bottomTrailing ≥ relatedView.bottomTrailing .- 10
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToBottomTrailingMultiplyingConstant() {
        let constraints = view1.bottomTrailing ≥ relatedView.bottomTrailing .* 3
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToBottomTrailingMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomTrailing
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToBottomTrailingMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.bottomTrailing .* 75%
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToBottomTrailingMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.bottomTrailing
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToBottomTrailingDividedByConstant() {
        let constraints = view1.bottomTrailing ≥ relatedView.bottomTrailing ./ 2
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToBottomTrailingWithPriority() {
        let constraints = view1.bottomTrailing ≥ relatedView.bottomTrailing ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1GreaterThanOrEqualToBottomTrailingWithPriorityLiteral() {
        let constraints = view1.bottomTrailing ≥ relatedView.bottomTrailing ~ 300
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1GreaterThanOrEqualToBottomTrailingWithPriorityArithmetic() {
        let constraints = view1.bottomTrailing ≥ relatedView.bottomTrailing ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToBottomTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.bottomTrailing .+ 10) .* 3
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToBottomTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomTrailing .+ 10)
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToBottomTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomTrailing .+ 10
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToBottomTrailingPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.bottomTrailing .+ 10) ./ 2
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomTrailing .+ 10) ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.bottomTrailing .+ 10 ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToBottomTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.bottomTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToBottomTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToBottomTrailing() {
        let constraints = view1.bottomTrailing ≤ relatedView.bottomTrailing
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToBottomTrailingPlusConstant() {
        let constraints = view1.bottomTrailing ≤ relatedView.bottomTrailing .+ 10
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1LessThanOrEqualToBottomTrailingMinusConstant() {
        let constraints = view1.bottomTrailing ≤ relatedView.bottomTrailing .- 10
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToBottomTrailingMultiplyingConstant() {
        let constraints = view1.bottomTrailing ≤ relatedView.bottomTrailing .* 3
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1LessThanOrEqualToBottomTrailingMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomTrailing
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToBottomTrailingMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.bottomTrailing .* 75%
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToBottomTrailingMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.bottomTrailing
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToBottomTrailingDividedByConstant() {
        let constraints = view1.bottomTrailing ≤ relatedView.bottomTrailing ./ 2
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToBottomTrailingWithPriority() {
        let constraints = view1.bottomTrailing ≤ relatedView.bottomTrailing ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1LessThanOrEqualToBottomTrailingWithPriorityLiteral() {
        let constraints = view1.bottomTrailing ≤ relatedView.bottomTrailing ~ 300
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1LessThanOrEqualToBottomTrailingWithPriorityArithmetic() {
        let constraints = view1.bottomTrailing ≤ relatedView.bottomTrailing ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToBottomTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.bottomTrailing .+ 10) .* 3
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToBottomTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomTrailing .+ 10)
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToBottomTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomTrailing .+ 10
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1LessThanOrEqualToBottomTrailingPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.bottomTrailing .+ 10) ./ 2
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomTrailing .+ 10) ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.bottomTrailing .+ 10 ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToBottomTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.bottomTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToBottomTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.topLeftTopLeft <=> relatedViewTopLeft
    // MARK: Equal
    func testView1EqualToTopLeft() {
        let constraints = view1.topLeft .= relatedView.topLeft
        constraints.first.assert(view1, .left, .equal, relatedView, .left)
        constraints.second.assert(view1, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testView1EqualToTopLeftPlusConstant() {
        let constraints = view1.topLeft .= relatedView.topLeft .+ 10
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10)
    }

    func testView1EqualToTopLeftMinusConstant() {
        let constraints = view1.topLeft .= relatedView.topLeft .- 10
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: -10)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1EqualToTopLeftMultiplyingConstant() {
        let constraints = view1.topLeft .= relatedView.topLeft .* 3
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1EqualToTopLeftMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.topLeft
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToTopLeftMultiplyingPercent() {
        let constraints = view1 .= relatedView.topLeft .* 75%
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testView1EqualToTopLeftMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.topLeft
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testView1EqualToTopLeftDividedByConstant() {
        let constraints = view1.topLeft .= relatedView.topLeft ./ 2
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1EqualToTopLeftWithPriority() {
        let constraints = view1.topLeft .= relatedView.topLeft ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: .low)
    }

    func testView1EqualToTopLeftWithPriorityLiteral() {
        let constraints = view1.topLeft .= relatedView.topLeft ~ 300
        constraints.first.assert(view1, .left, .equal, relatedView, .left, priority: 300)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: 300)
    }

    func testView1EqualToTopLeftWithPriorityArithmetic() {
        let constraints = view1.topLeft .= relatedView.topLeft ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToTopLeftPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.topLeft .+ 10) .* 3
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToTopLeftPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.topLeft .+ 10)
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToTopLeftMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.topLeft .+ 10
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1EqualToTopLeftPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.topLeft .+ 10) ./ 2
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToTopLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.topLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToTopLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.topLeft .+ 10) ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToTopLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.topLeft .+ 10 ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1EqualToTopLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.topLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToTopLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToTopLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.topLeft .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToTopLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.topLeft .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1EqualToTopLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToTopLeft() {
        let constraints = view1.topLeft ≥ relatedView.topLeft
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToTopLeftPlusConstant() {
        let constraints = view1.topLeft ≥ relatedView.topLeft .+ 10
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1GreaterThanOrEqualToTopLeftMinusConstant() {
        let constraints = view1.topLeft ≥ relatedView.topLeft .- 10
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: -10)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToTopLeftMultiplyingConstant() {
        let constraints = view1.topLeft ≥ relatedView.topLeft .* 3
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToTopLeftMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topLeft
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToTopLeftMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.topLeft .* 75%
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToTopLeftMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.topLeft
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToTopLeftDividedByConstant() {
        let constraints = view1.topLeft ≥ relatedView.topLeft ./ 2
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToTopLeftWithPriority() {
        let constraints = view1.topLeft ≥ relatedView.topLeft ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1GreaterThanOrEqualToTopLeftWithPriorityLiteral() {
        let constraints = view1.topLeft ≥ relatedView.topLeft ~ 300
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, priority: 300)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1GreaterThanOrEqualToTopLeftWithPriorityArithmetic() {
        let constraints = view1.topLeft ≥ relatedView.topLeft ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToTopLeftPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.topLeft .+ 10) .* 3
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToTopLeftPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.topLeft .+ 10)
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToTopLeftMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topLeft .+ 10
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToTopLeftPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.topLeft .+ 10) ./ 2
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToTopLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToTopLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.topLeft .+ 10) ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToTopLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.topLeft .+ 10 ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToTopLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToTopLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToTopLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.topLeft .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToTopLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.topLeft .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToTopLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToTopLeft() {
        let constraints = view1.topLeft ≤ relatedView.topLeft
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToTopLeftPlusConstant() {
        let constraints = view1.topLeft ≤ relatedView.topLeft .+ 10
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1LessThanOrEqualToTopLeftMinusConstant() {
        let constraints = view1.topLeft ≤ relatedView.topLeft .- 10
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: -10)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToTopLeftMultiplyingConstant() {
        let constraints = view1.topLeft ≤ relatedView.topLeft .* 3
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1LessThanOrEqualToTopLeftMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topLeft
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToTopLeftMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.topLeft .* 75%
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToTopLeftMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.topLeft
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToTopLeftDividedByConstant() {
        let constraints = view1.topLeft ≤ relatedView.topLeft ./ 2
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToTopLeftWithPriority() {
        let constraints = view1.topLeft ≤ relatedView.topLeft ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1LessThanOrEqualToTopLeftWithPriorityLiteral() {
        let constraints = view1.topLeft ≤ relatedView.topLeft ~ 300
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, priority: 300)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1LessThanOrEqualToTopLeftWithPriorityArithmetic() {
        let constraints = view1.topLeft ≤ relatedView.topLeft ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToTopLeftPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.topLeft .+ 10) .* 3
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToTopLeftPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.topLeft .+ 10)
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToTopLeftMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topLeft .+ 10
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1LessThanOrEqualToTopLeftPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.topLeft .+ 10) ./ 2
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToTopLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToTopLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.topLeft .+ 10) ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToTopLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.topLeft .+ 10 ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToTopLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToTopLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToTopLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.topLeft .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToTopLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.topLeft .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToTopLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.topRightTopRight <=> relatedViewTopRight
    // MARK: Equal
    func testView1EqualToTopRight() {
        let constraints = view1.topRight .= relatedView.topRight
        constraints.first.assert(view1, .right, .equal, relatedView, .right)
        constraints.second.assert(view1, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testView1EqualToTopRightPlusConstant() {
        let constraints = view1.topRight .= relatedView.topRight .+ 10
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10)
    }

    func testView1EqualToTopRightMinusConstant() {
        let constraints = view1.topRight .= relatedView.topRight .- 10
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: -10)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1EqualToTopRightMultiplyingConstant() {
        let constraints = view1.topRight .= relatedView.topRight .* 3
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1EqualToTopRightMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.topRight
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToTopRightMultiplyingPercent() {
        let constraints = view1 .= relatedView.topRight .* 75%
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testView1EqualToTopRightMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.topRight
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testView1EqualToTopRightDividedByConstant() {
        let constraints = view1.topRight .= relatedView.topRight ./ 2
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1EqualToTopRightWithPriority() {
        let constraints = view1.topRight .= relatedView.topRight ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: .low)
    }

    func testView1EqualToTopRightWithPriorityLiteral() {
        let constraints = view1.topRight .= relatedView.topRight ~ 300
        constraints.first.assert(view1, .right, .equal, relatedView, .right, priority: 300)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: 300)
    }

    func testView1EqualToTopRightWithPriorityArithmetic() {
        let constraints = view1.topRight .= relatedView.topRight ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToTopRightPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.topRight .+ 10) .* 3
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToTopRightPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.topRight .+ 10)
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToTopRightMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.topRight .+ 10
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1EqualToTopRightPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.topRight .+ 10) ./ 2
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToTopRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.topRight .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToTopRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.topRight .+ 10) ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToTopRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.topRight .+ 10 ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1EqualToTopRightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.topRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToTopRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToTopRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.topRight .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToTopRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.topRight .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1EqualToTopRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToTopRight() {
        let constraints = view1.topRight ≥ relatedView.topRight
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToTopRightPlusConstant() {
        let constraints = view1.topRight ≥ relatedView.topRight .+ 10
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1GreaterThanOrEqualToTopRightMinusConstant() {
        let constraints = view1.topRight ≥ relatedView.topRight .- 10
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: -10)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToTopRightMultiplyingConstant() {
        let constraints = view1.topRight ≥ relatedView.topRight .* 3
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToTopRightMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topRight
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToTopRightMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.topRight .* 75%
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToTopRightMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.topRight
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToTopRightDividedByConstant() {
        let constraints = view1.topRight ≥ relatedView.topRight ./ 2
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToTopRightWithPriority() {
        let constraints = view1.topRight ≥ relatedView.topRight ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1GreaterThanOrEqualToTopRightWithPriorityLiteral() {
        let constraints = view1.topRight ≥ relatedView.topRight ~ 300
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, priority: 300)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1GreaterThanOrEqualToTopRightWithPriorityArithmetic() {
        let constraints = view1.topRight ≥ relatedView.topRight ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToTopRightPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.topRight .+ 10) .* 3
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToTopRightPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.topRight .+ 10)
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToTopRightMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topRight .+ 10
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToTopRightPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.topRight .+ 10) ./ 2
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToTopRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topRight .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToTopRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.topRight .+ 10) ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToTopRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.topRight .+ 10 ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToTopRightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToTopRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToTopRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.topRight .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToTopRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.topRight .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToTopRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToTopRight() {
        let constraints = view1.topRight ≤ relatedView.topRight
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToTopRightPlusConstant() {
        let constraints = view1.topRight ≤ relatedView.topRight .+ 10
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1LessThanOrEqualToTopRightMinusConstant() {
        let constraints = view1.topRight ≤ relatedView.topRight .- 10
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: -10)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToTopRightMultiplyingConstant() {
        let constraints = view1.topRight ≤ relatedView.topRight .* 3
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1LessThanOrEqualToTopRightMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topRight
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToTopRightMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.topRight .* 75%
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToTopRightMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.topRight
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToTopRightDividedByConstant() {
        let constraints = view1.topRight ≤ relatedView.topRight ./ 2
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToTopRightWithPriority() {
        let constraints = view1.topRight ≤ relatedView.topRight ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1LessThanOrEqualToTopRightWithPriorityLiteral() {
        let constraints = view1.topRight ≤ relatedView.topRight ~ 300
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, priority: 300)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1LessThanOrEqualToTopRightWithPriorityArithmetic() {
        let constraints = view1.topRight ≤ relatedView.topRight ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToTopRightPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.topRight .+ 10) .* 3
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToTopRightPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.topRight .+ 10)
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToTopRightMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topRight .+ 10
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testView1LessThanOrEqualToTopRightPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.topRight .+ 10) ./ 2
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToTopRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topRight .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToTopRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.topRight .+ 10) ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToTopRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.topRight .+ 10 ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToTopRightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToTopRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToTopRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.topRight .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToTopRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.topRight .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToTopRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.bottomLeftBottomLeft <=> relatedViewBottomLeft
    // MARK: Equal
    func testView1EqualToBottomLeft() {
        let constraints = view1.bottomLeft .= relatedView.bottomLeft
        constraints.first.assert(view1, .left, .equal, relatedView, .left)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testView1EqualToBottomLeftPlusConstant() {
        let constraints = view1.bottomLeft .= relatedView.bottomLeft .+ 10
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testView1EqualToBottomLeftMinusConstant() {
        let constraints = view1.bottomLeft .= relatedView.bottomLeft .- 10
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: -10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1EqualToBottomLeftMultiplyingConstant() {
        let constraints = view1.bottomLeft .= relatedView.bottomLeft .* 3
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1EqualToBottomLeftMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomLeft
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToBottomLeftMultiplyingPercent() {
        let constraints = view1 .= relatedView.bottomLeft .* 75%
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1EqualToBottomLeftMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.bottomLeft
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1EqualToBottomLeftDividedByConstant() {
        let constraints = view1.bottomLeft .= relatedView.bottomLeft ./ 2
        constraints.first.assert(view1, .left, .equal, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1EqualToBottomLeftWithPriority() {
        let constraints = view1.bottomLeft .= relatedView.bottomLeft ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testView1EqualToBottomLeftWithPriorityLiteral() {
        let constraints = view1.bottomLeft .= relatedView.bottomLeft ~ 300
        constraints.first.assert(view1, .left, .equal, relatedView, .left, priority: 300)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testView1EqualToBottomLeftWithPriorityArithmetic() {
        let constraints = view1.bottomLeft .= relatedView.bottomLeft ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToBottomLeftPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.bottomLeft .+ 10) .* 3
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToBottomLeftPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.bottomLeft .+ 10)
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToBottomLeftMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomLeft .+ 10
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1EqualToBottomLeftPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.bottomLeft .+ 10) ./ 2
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToBottomLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToBottomLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.bottomLeft .+ 10) ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToBottomLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.bottomLeft .+ 10 ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1EqualToBottomLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToBottomLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToBottomLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.bottomLeft .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToBottomLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.bottomLeft .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1EqualToBottomLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToBottomLeft() {
        let constraints = view1.bottomLeft ≥ relatedView.bottomLeft
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToBottomLeftPlusConstant() {
        let constraints = view1.bottomLeft ≥ relatedView.bottomLeft .+ 10
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1GreaterThanOrEqualToBottomLeftMinusConstant() {
        let constraints = view1.bottomLeft ≥ relatedView.bottomLeft .- 10
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: -10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToBottomLeftMultiplyingConstant() {
        let constraints = view1.bottomLeft ≥ relatedView.bottomLeft .* 3
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToBottomLeftMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomLeft
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToBottomLeftMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.bottomLeft .* 75%
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToBottomLeftMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.bottomLeft
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToBottomLeftDividedByConstant() {
        let constraints = view1.bottomLeft ≥ relatedView.bottomLeft ./ 2
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToBottomLeftWithPriority() {
        let constraints = view1.bottomLeft ≥ relatedView.bottomLeft ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1GreaterThanOrEqualToBottomLeftWithPriorityLiteral() {
        let constraints = view1.bottomLeft ≥ relatedView.bottomLeft ~ 300
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, priority: 300)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1GreaterThanOrEqualToBottomLeftWithPriorityArithmetic() {
        let constraints = view1.bottomLeft ≥ relatedView.bottomLeft ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToBottomLeftPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.bottomLeft .+ 10) .* 3
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToBottomLeftPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomLeft .+ 10)
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToBottomLeftMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomLeft .+ 10
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToBottomLeftPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.bottomLeft .+ 10) ./ 2
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToBottomLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToBottomLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomLeft .+ 10) ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToBottomLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.bottomLeft .+ 10 ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToBottomLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToBottomLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToBottomLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomLeft .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToBottomLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.bottomLeft .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToBottomLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToBottomLeft() {
        let constraints = view1.bottomLeft ≤ relatedView.bottomLeft
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToBottomLeftPlusConstant() {
        let constraints = view1.bottomLeft ≤ relatedView.bottomLeft .+ 10
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1LessThanOrEqualToBottomLeftMinusConstant() {
        let constraints = view1.bottomLeft ≤ relatedView.bottomLeft .- 10
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: -10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToBottomLeftMultiplyingConstant() {
        let constraints = view1.bottomLeft ≤ relatedView.bottomLeft .* 3
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1LessThanOrEqualToBottomLeftMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomLeft
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToBottomLeftMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.bottomLeft .* 75%
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToBottomLeftMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.bottomLeft
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToBottomLeftDividedByConstant() {
        let constraints = view1.bottomLeft ≤ relatedView.bottomLeft ./ 2
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToBottomLeftWithPriority() {
        let constraints = view1.bottomLeft ≤ relatedView.bottomLeft ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1LessThanOrEqualToBottomLeftWithPriorityLiteral() {
        let constraints = view1.bottomLeft ≤ relatedView.bottomLeft ~ 300
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, priority: 300)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1LessThanOrEqualToBottomLeftWithPriorityArithmetic() {
        let constraints = view1.bottomLeft ≤ relatedView.bottomLeft ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToBottomLeftPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.bottomLeft .+ 10) .* 3
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToBottomLeftPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomLeft .+ 10)
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToBottomLeftMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomLeft .+ 10
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1LessThanOrEqualToBottomLeftPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.bottomLeft .+ 10) ./ 2
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToBottomLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToBottomLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomLeft .+ 10) ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToBottomLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.bottomLeft .+ 10 ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToBottomLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToBottomLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToBottomLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomLeft .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToBottomLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.bottomLeft .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToBottomLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.bottomRightBottomRight <=> relatedViewBottomRight
    // MARK: Equal
    func testView1EqualToBottomRight() {
        let constraints = view1.bottomRight .= relatedView.bottomRight
        constraints.first.assert(view1, .right, .equal, relatedView, .right)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testView1EqualToBottomRightPlusConstant() {
        let constraints = view1.bottomRight .= relatedView.bottomRight .+ 10
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testView1EqualToBottomRightMinusConstant() {
        let constraints = view1.bottomRight .= relatedView.bottomRight .- 10
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: -10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1EqualToBottomRightMultiplyingConstant() {
        let constraints = view1.bottomRight .= relatedView.bottomRight .* 3
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1EqualToBottomRightMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomRight
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testView1EqualToBottomRightMultiplyingPercent() {
        let constraints = view1 .= relatedView.bottomRight .* 75%
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1EqualToBottomRightMultipliedByPercent() {
        let constraints = view1 .= 75% .* relatedView.bottomRight
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1EqualToBottomRightDividedByConstant() {
        let constraints = view1.bottomRight .= relatedView.bottomRight ./ 2
        constraints.first.assert(view1, .right, .equal, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1EqualToBottomRightWithPriority() {
        let constraints = view1.bottomRight .= relatedView.bottomRight ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testView1EqualToBottomRightWithPriorityLiteral() {
        let constraints = view1.bottomRight .= relatedView.bottomRight ~ 300
        constraints.first.assert(view1, .right, .equal, relatedView, .right, priority: 300)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testView1EqualToBottomRightWithPriorityArithmetic() {
        let constraints = view1.bottomRight .= relatedView.bottomRight ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1EqualToBottomRightPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.bottomRight .+ 10) .* 3
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToBottomRightPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.bottomRight .+ 10)
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1EqualToBottomRightMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomRight .+ 10
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1EqualToBottomRightPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.bottomRight .+ 10) ./ 2
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1EqualToBottomRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomRight .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToBottomRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.bottomRight .+ 10) ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1EqualToBottomRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.bottomRight .+ 10 ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1EqualToBottomRightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1EqualToBottomRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToBottomRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.bottomRight .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1EqualToBottomRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.bottomRight .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1EqualToBottomRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testView1GreaterThanOrEqualToBottomRight() {
        let constraints = view1.bottomRight ≥ relatedView.bottomRight
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1GreaterThanOrEqualToBottomRightPlusConstant() {
        let constraints = view1.bottomRight ≥ relatedView.bottomRight .+ 10
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1GreaterThanOrEqualToBottomRightMinusConstant() {
        let constraints = view1.bottomRight ≥ relatedView.bottomRight .- 10
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: -10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1GreaterThanOrEqualToBottomRightMultiplyingConstant() {
        let constraints = view1.bottomRight ≥ relatedView.bottomRight .* 3
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToBottomRightMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomRight
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testView1GreaterThanOrEqualToBottomRightMultiplyingPercent() {
        let constraints = view1 ≥ relatedView.bottomRight .* 75%
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToBottomRightMultipliedByPercent() {
        let constraints = view1 ≥ 75% .* relatedView.bottomRight
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1GreaterThanOrEqualToBottomRightDividedByConstant() {
        let constraints = view1.bottomRight ≥ relatedView.bottomRight ./ 2
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1GreaterThanOrEqualToBottomRightWithPriority() {
        let constraints = view1.bottomRight ≥ relatedView.bottomRight ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1GreaterThanOrEqualToBottomRightWithPriorityLiteral() {
        let constraints = view1.bottomRight ≥ relatedView.bottomRight ~ 300
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, priority: 300)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1GreaterThanOrEqualToBottomRightWithPriorityArithmetic() {
        let constraints = view1.bottomRight ≥ relatedView.bottomRight ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1GreaterThanOrEqualToBottomRightPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.bottomRight .+ 10) .* 3
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToBottomRightPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomRight .+ 10)
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToBottomRightMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomRight .+ 10
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1GreaterThanOrEqualToBottomRightPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.bottomRight .+ 10) ./ 2
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1GreaterThanOrEqualToBottomRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomRight .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToBottomRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomRight .+ 10) ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToBottomRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.bottomRight .+ 10 ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1GreaterThanOrEqualToBottomRightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1GreaterThanOrEqualToBottomRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToBottomRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomRight .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToBottomRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.bottomRight .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1GreaterThanOrEqualToBottomRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testView1LessThanOrEqualToBottomRight() {
        let constraints = view1.bottomRight ≤ relatedView.bottomRight
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LessThanOrEqualToBottomRightPlusConstant() {
        let constraints = view1.bottomRight ≤ relatedView.bottomRight .+ 10
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1LessThanOrEqualToBottomRightMinusConstant() {
        let constraints = view1.bottomRight ≤ relatedView.bottomRight .- 10
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: -10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LessThanOrEqualToBottomRightMultiplyingConstant() {
        let constraints = view1.bottomRight ≤ relatedView.bottomRight .* 3
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1LessThanOrEqualToBottomRightMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomRight
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testView1LessThanOrEqualToBottomRightMultiplyingPercent() {
        let constraints = view1 ≤ relatedView.bottomRight .* 75%
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToBottomRightMultipliedByPercent() {
        let constraints = view1 ≤ 75% .* relatedView.bottomRight
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testView1LessThanOrEqualToBottomRightDividedByConstant() {
        let constraints = view1.bottomRight ≤ relatedView.bottomRight ./ 2
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LessThanOrEqualToBottomRightWithPriority() {
        let constraints = view1.bottomRight ≤ relatedView.bottomRight ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1LessThanOrEqualToBottomRightWithPriorityLiteral() {
        let constraints = view1.bottomRight ≤ relatedView.bottomRight ~ 300
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, priority: 300)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1LessThanOrEqualToBottomRightWithPriorityArithmetic() {
        let constraints = view1.bottomRight ≤ relatedView.bottomRight ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LessThanOrEqualToBottomRightPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.bottomRight .+ 10) .* 3
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToBottomRightPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomRight .+ 10)
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1LessThanOrEqualToBottomRightMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomRight .+ 10
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testView1LessThanOrEqualToBottomRightPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.bottomRight .+ 10) ./ 2
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LessThanOrEqualToBottomRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomRight .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToBottomRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomRight .+ 10) ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToBottomRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.bottomRight .+ 10 ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LessThanOrEqualToBottomRightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LessThanOrEqualToBottomRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToBottomRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomRight .+ 10) ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToBottomRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.bottomRight .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LessThanOrEqualToBottomRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(view1, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.centerXYCenterXY <=> relatedViewCenterXY
    // MARK: Equal
    func testViewArrayEqualToCenterXY() {
        let constraints = viewArray.centerXY .= relatedView.centerXY
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToCenterXYPlusConstant() {
        let constraints = viewArray.centerXY .= relatedView.centerXY .+ 10
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10)
    }

    func testViewArrayEqualToCenterXYMinusConstant() {
        let constraints = viewArray.centerXY .= relatedView.centerXY .- 10
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: -10)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToCenterXYMultiplyingConstant() {
        let constraints = viewArray.centerXY .= relatedView.centerXY .* 3
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayEqualToCenterXYMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerXY
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToCenterXYMultiplyingPercent() {
        let constraints = viewArray .= relatedView.centerXY .* 75%
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 0.75)
    }

    func testViewArrayEqualToCenterXYMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.centerXY
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 0.75)
    }

    func testViewArrayEqualToCenterXYDividedByConstant() {
        let constraints = viewArray.centerXY .= relatedView.centerXY ./ 2
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToCenterXYWithPriority() {
        let constraints = viewArray.centerXY .= relatedView.centerXY ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: .low)
    }

    func testViewArrayEqualToCenterXYWithPriorityLiteral() {
        let constraints = viewArray.centerXY .= relatedView.centerXY ~ 300
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 300)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 300)
    }

    func testViewArrayEqualToCenterXYWithPriorityArithmetic() {
        let constraints = viewArray.centerXY .= relatedView.centerXY ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToCenterXYPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.centerXY .+ 10) .* 3
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToCenterXYPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.centerXY .+ 10)
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToCenterXYMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerXY .+ 10
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayEqualToCenterXYPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.centerXY .+ 10) ./ 2
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToCenterXYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerXY .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToCenterXYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.centerXY .+ 10) ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToCenterXYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.centerXY .+ 10 ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToCenterXYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerXY .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToCenterXYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerXY .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToCenterXYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.centerXY .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToCenterXYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.centerXY .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToCenterXYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerXY .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToCenterXY() {
        let constraints = viewArray.centerXY ≥ relatedView.centerXY
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToCenterXYPlusConstant() {
        let constraints = viewArray.centerXY ≥ relatedView.centerXY .+ 10
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayGreaterThanOrEqualToCenterXYMinusConstant() {
        let constraints = viewArray.centerXY ≥ relatedView.centerXY .- 10
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToCenterXYMultiplyingConstant() {
        let constraints = viewArray.centerXY ≥ relatedView.centerXY .* 3
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToCenterXYMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerXY
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToCenterXYMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.centerXY .* 75%
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToCenterXYMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.centerXY
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToCenterXYDividedByConstant() {
        let constraints = viewArray.centerXY ≥ relatedView.centerXY ./ 2
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToCenterXYWithPriority() {
        let constraints = viewArray.centerXY ≥ relatedView.centerXY ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToCenterXYWithPriorityLiteral() {
        let constraints = viewArray.centerXY ≥ relatedView.centerXY ~ 300
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayGreaterThanOrEqualToCenterXYWithPriorityArithmetic() {
        let constraints = viewArray.centerXY ≥ relatedView.centerXY ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToCenterXYPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.centerXY .+ 10) .* 3
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToCenterXYPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerXY .+ 10)
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToCenterXYMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerXY .+ 10
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToCenterXYPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.centerXY .+ 10) ./ 2
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToCenterXYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerXY .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToCenterXYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerXY .+ 10) ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToCenterXYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.centerXY .+ 10 ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToCenterXYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerXY .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToCenterXYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerXY .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToCenterXYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerXY .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToCenterXYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.centerXY .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToCenterXYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerXY .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToCenterXY() {
        let constraints = viewArray.centerXY ≤ relatedView.centerXY
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToCenterXYPlusConstant() {
        let constraints = viewArray.centerXY ≤ relatedView.centerXY .+ 10
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayLessThanOrEqualToCenterXYMinusConstant() {
        let constraints = viewArray.centerXY ≤ relatedView.centerXY .- 10
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToCenterXYMultiplyingConstant() {
        let constraints = viewArray.centerXY ≤ relatedView.centerXY .* 3
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToCenterXYMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerXY
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToCenterXYMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.centerXY .* 75%
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToCenterXYMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.centerXY
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 0.75)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToCenterXYDividedByConstant() {
        let constraints = viewArray.centerXY ≤ relatedView.centerXY ./ 2
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToCenterXYWithPriority() {
        let constraints = viewArray.centerXY ≤ relatedView.centerXY ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayLessThanOrEqualToCenterXYWithPriorityLiteral() {
        let constraints = viewArray.centerXY ≤ relatedView.centerXY ~ 300
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayLessThanOrEqualToCenterXYWithPriorityArithmetic() {
        let constraints = viewArray.centerXY ≤ relatedView.centerXY ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToCenterXYPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.centerXY .+ 10) .* 3
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToCenterXYPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerXY .+ 10)
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToCenterXYMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerXY .+ 10
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToCenterXYPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.centerXY .+ 10) ./ 2
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToCenterXYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerXY .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToCenterXYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerXY .+ 10) ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToCenterXYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.centerXY .+ 10 ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToCenterXYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerXY .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToCenterXYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerXY .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToCenterXYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerXY .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToCenterXYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.centerXY .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToCenterXYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerXY .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.horizontalEdgesHorizontalEdges <=> relatedViewHorizontalEdges
    // MARK: Equal
    func testViewArrayEqualToHorizontalEdges() {
        let constraints = viewArray.horizontalEdges .= relatedView.horizontalEdges
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToHorizontalEdgesPlusConstant() {
        let constraints = viewArray.horizontalEdges .= relatedView.horizontalEdges .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10)
    }

    func testViewArrayEqualToHorizontalEdgesMinusConstant() {
        let constraints = viewArray.horizontalEdges .= relatedView.horizontalEdges .- 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToHorizontalEdgesMultiplyingConstant() {
        let constraints = viewArray.horizontalEdges .= relatedView.horizontalEdges .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayEqualToHorizontalEdgesMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdges
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToHorizontalEdgesMultiplyingPercent() {
        let constraints = viewArray .= relatedView.horizontalEdges .* 75%
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
    }

    func testViewArrayEqualToHorizontalEdgesMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.horizontalEdges
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
    }

    func testViewArrayEqualToHorizontalEdgesDividedByConstant() {
        let constraints = viewArray.horizontalEdges .= relatedView.horizontalEdges ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToHorizontalEdgesWithPriority() {
        let constraints = viewArray.horizontalEdges .= relatedView.horizontalEdges ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: .low)
    }

    func testViewArrayEqualToHorizontalEdgesWithPriorityLiteral() {
        let constraints = viewArray.horizontalEdges .= relatedView.horizontalEdges ~ 300
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 300)
    }

    func testViewArrayEqualToHorizontalEdgesWithPriorityArithmetic() {
        let constraints = viewArray.horizontalEdges .= relatedView.horizontalEdges ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToHorizontalEdgesPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.horizontalEdges .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToHorizontalEdgesPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.horizontalEdges .+ 10)
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToHorizontalEdgesMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdges .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayEqualToHorizontalEdgesPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.horizontalEdges .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.horizontalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.horizontalEdges .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdges .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.horizontalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.horizontalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.horizontalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.horizontalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToHorizontalEdges() {
        let constraints = viewArray.horizontalEdges ≥ relatedView.horizontalEdges
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstant() {
        let constraints = viewArray.horizontalEdges ≥ relatedView.horizontalEdges .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgesMinusConstant() {
        let constraints = viewArray.horizontalEdges ≥ relatedView.horizontalEdges .- 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToHorizontalEdgesMultiplyingConstant() {
        let constraints = viewArray.horizontalEdges ≥ relatedView.horizontalEdges .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgesMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdges
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToHorizontalEdgesMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.horizontalEdges .* 75%
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgesMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.horizontalEdges
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgesDividedByConstant() {
        let constraints = viewArray.horizontalEdges ≥ relatedView.horizontalEdges ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToHorizontalEdgesWithPriority() {
        let constraints = viewArray.horizontalEdges ≥ relatedView.horizontalEdges ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgesWithPriorityLiteral() {
        let constraints = viewArray.horizontalEdges ≥ relatedView.horizontalEdges ~ 300
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgesWithPriorityArithmetic() {
        let constraints = viewArray.horizontalEdges ≥ relatedView.horizontalEdges ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.horizontalEdges .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.horizontalEdges .+ 10)
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdges .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.horizontalEdges .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.horizontalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.horizontalEdges .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdges .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.horizontalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.horizontalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.horizontalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.horizontalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToHorizontalEdges() {
        let constraints = viewArray.horizontalEdges ≤ relatedView.horizontalEdges
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToHorizontalEdgesPlusConstant() {
        let constraints = viewArray.horizontalEdges ≤ relatedView.horizontalEdges .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgesMinusConstant() {
        let constraints = viewArray.horizontalEdges ≤ relatedView.horizontalEdges .- 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToHorizontalEdgesMultiplyingConstant() {
        let constraints = viewArray.horizontalEdges ≤ relatedView.horizontalEdges .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgesMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdges
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToHorizontalEdgesMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.horizontalEdges .* 75%
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgesMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.horizontalEdges
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgesDividedByConstant() {
        let constraints = viewArray.horizontalEdges ≤ relatedView.horizontalEdges ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToHorizontalEdgesWithPriority() {
        let constraints = viewArray.horizontalEdges ≤ relatedView.horizontalEdges ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgesWithPriorityLiteral() {
        let constraints = viewArray.horizontalEdges ≤ relatedView.horizontalEdges ~ 300
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgesWithPriorityArithmetic() {
        let constraints = viewArray.horizontalEdges ≤ relatedView.horizontalEdges ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.horizontalEdges .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.horizontalEdges .+ 10)
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdges .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgesPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.horizontalEdges .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.horizontalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.horizontalEdges .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdges .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.horizontalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToHorizontalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.horizontalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.horizontalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToHorizontalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.horizontalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.verticalEdgesVerticalEdges <=> relatedViewVerticalEdges
    // MARK: Equal
    func testViewArrayEqualToVerticalEdges() {
        let constraints = viewArray.verticalEdges .= relatedView.verticalEdges
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToVerticalEdgesPlusConstant() {
        let constraints = viewArray.verticalEdges .= relatedView.verticalEdges .+ 10
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testViewArrayEqualToVerticalEdgesMinusConstant() {
        let constraints = viewArray.verticalEdges .= relatedView.verticalEdges .- 10
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToVerticalEdgesMultiplyingConstant() {
        let constraints = viewArray.verticalEdges .= relatedView.verticalEdges .* 3
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayEqualToVerticalEdgesMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdges
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToVerticalEdgesMultiplyingPercent() {
        let constraints = viewArray .= relatedView.verticalEdges .* 75%
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayEqualToVerticalEdgesMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.verticalEdges
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayEqualToVerticalEdgesDividedByConstant() {
        let constraints = viewArray.verticalEdges .= relatedView.verticalEdges ./ 2
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToVerticalEdgesWithPriority() {
        let constraints = viewArray.verticalEdges .= relatedView.verticalEdges ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testViewArrayEqualToVerticalEdgesWithPriorityLiteral() {
        let constraints = viewArray.verticalEdges .= relatedView.verticalEdges ~ 300
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, priority: 300)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testViewArrayEqualToVerticalEdgesWithPriorityArithmetic() {
        let constraints = viewArray.verticalEdges .= relatedView.verticalEdges ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToVerticalEdgesPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.verticalEdges .+ 10) .* 3
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToVerticalEdgesPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.verticalEdges .+ 10)
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToVerticalEdgesMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdges .+ 10
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayEqualToVerticalEdgesPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.verticalEdges .+ 10) ./ 2
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.verticalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.verticalEdges .+ 10) ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdges .+ 10 ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToVerticalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.verticalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.verticalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.verticalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToVerticalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.verticalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToVerticalEdges() {
        let constraints = viewArray.verticalEdges ≥ relatedView.verticalEdges
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstant() {
        let constraints = viewArray.verticalEdges ≥ relatedView.verticalEdges .+ 10
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgesMinusConstant() {
        let constraints = viewArray.verticalEdges ≥ relatedView.verticalEdges .- 10
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToVerticalEdgesMultiplyingConstant() {
        let constraints = viewArray.verticalEdges ≥ relatedView.verticalEdges .* 3
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgesMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdges
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToVerticalEdgesMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.verticalEdges .* 75%
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgesMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.verticalEdges
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgesDividedByConstant() {
        let constraints = viewArray.verticalEdges ≥ relatedView.verticalEdges ./ 2
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToVerticalEdgesWithPriority() {
        let constraints = viewArray.verticalEdges ≥ relatedView.verticalEdges ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgesWithPriorityLiteral() {
        let constraints = viewArray.verticalEdges ≥ relatedView.verticalEdges ~ 300
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgesWithPriorityArithmetic() {
        let constraints = viewArray.verticalEdges ≥ relatedView.verticalEdges ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.verticalEdges .+ 10) .* 3
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.verticalEdges .+ 10)
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdges .+ 10
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.verticalEdges .+ 10) ./ 2
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.verticalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.verticalEdges .+ 10) ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdges .+ 10 ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.verticalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.verticalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.verticalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToVerticalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.verticalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToVerticalEdges() {
        let constraints = viewArray.verticalEdges ≤ relatedView.verticalEdges
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToVerticalEdgesPlusConstant() {
        let constraints = viewArray.verticalEdges ≤ relatedView.verticalEdges .+ 10
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgesMinusConstant() {
        let constraints = viewArray.verticalEdges ≤ relatedView.verticalEdges .- 10
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToVerticalEdgesMultiplyingConstant() {
        let constraints = viewArray.verticalEdges ≤ relatedView.verticalEdges .* 3
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgesMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdges
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToVerticalEdgesMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.verticalEdges .* 75%
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgesMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.verticalEdges
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgesDividedByConstant() {
        let constraints = viewArray.verticalEdges ≤ relatedView.verticalEdges ./ 2
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToVerticalEdgesWithPriority() {
        let constraints = viewArray.verticalEdges ≤ relatedView.verticalEdges ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgesWithPriorityLiteral() {
        let constraints = viewArray.verticalEdges ≤ relatedView.verticalEdges ~ 300
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgesWithPriorityArithmetic() {
        let constraints = viewArray.verticalEdges ≤ relatedView.verticalEdges ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.verticalEdges .+ 10) .* 3
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.verticalEdges .+ 10)
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdges .+ 10
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgesPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.verticalEdges .+ 10) ./ 2
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.verticalEdges .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.verticalEdges .+ 10) ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdges .+ 10 ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgesPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.verticalEdges .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToVerticalEdgesPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.verticalEdges .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgesPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.verticalEdges .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgesMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdges .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToVerticalEdgesPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.verticalEdges .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.sizeSize <=> relatedViewSize
    // MARK: Equal
    func testViewArrayEqualToSize() {
        let constraints = viewArray.size .= relatedView.size
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToSizePlusConstant() {
        let constraints = viewArray.size .= relatedView.size .+ 10
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10)
    }

    func testViewArrayEqualToSizeMinusConstant() {
        let constraints = viewArray.size .= relatedView.size .- 10
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: -10)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToSizeMultiplyingConstant() {
        let constraints = viewArray.size .= relatedView.size .* 3
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testViewArrayEqualToSizeMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.size
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToSizeMultiplyingPercent() {
        let constraints = viewArray .= relatedView.size .* 75%
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 0.75)
    }

    func testViewArrayEqualToSizeMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.size
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 0.75)
    }

    func testViewArrayEqualToSizeDividedByConstant() {
        let constraints = viewArray.size .= relatedView.size ./ 2
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToSizeWithPriority() {
        let constraints = viewArray.size .= relatedView.size ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, priority: .low)
    }

    func testViewArrayEqualToSizeWithPriorityLiteral() {
        let constraints = viewArray.size .= relatedView.size ~ 300
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, priority: 300)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, priority: 300)
    }

    func testViewArrayEqualToSizeWithPriorityArithmetic() {
        let constraints = viewArray.size .= relatedView.size ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToSizePlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.size .+ 10) .* 3
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToSizePlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.size .+ 10)
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToSizeMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.size .+ 10
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayEqualToSizePlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.size .+ 10) ./ 2
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToSizePlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.size .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToSizePlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.size .+ 10) ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToSizeMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.size .+ 10 ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToSizePlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.size .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToSizePlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.size .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToSizePlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.size .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToSizeMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.size .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToSizePlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.size .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToSize() {
        let constraints = viewArray.size ≥ relatedView.size
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToSizePlusConstant() {
        let constraints = viewArray.size ≥ relatedView.size .+ 10
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testViewArrayGreaterThanOrEqualToSizeMinusConstant() {
        let constraints = viewArray.size ≥ relatedView.size .- 10
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToSizeMultiplyingConstant() {
        let constraints = viewArray.size ≥ relatedView.size .* 3
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToSizeMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.size
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToSizeMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.size .* 75%
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToSizeMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.size
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToSizeDividedByConstant() {
        let constraints = viewArray.size ≥ relatedView.size ./ 2
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToSizeWithPriority() {
        let constraints = viewArray.size ≥ relatedView.size ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToSizeWithPriorityLiteral() {
        let constraints = viewArray.size ≥ relatedView.size ~ 300
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testViewArrayGreaterThanOrEqualToSizeWithPriorityArithmetic() {
        let constraints = viewArray.size ≥ relatedView.size ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToSizePlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.size .+ 10) .* 3
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToSizePlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.size .+ 10)
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToSizeMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.size .+ 10
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToSizePlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.size .+ 10) ./ 2
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToSizePlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.size .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToSizePlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.size .+ 10) ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToSizeMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.size .+ 10 ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToSizePlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.size .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToSizePlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.size .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToSizePlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.size .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToSizeMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.size .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToSizePlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.size .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToSize() {
        let constraints = viewArray.size ≤ relatedView.size
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToSizePlusConstant() {
        let constraints = viewArray.size ≤ relatedView.size .+ 10
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testViewArrayLessThanOrEqualToSizeMinusConstant() {
        let constraints = viewArray.size ≤ relatedView.size .- 10
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToSizeMultiplyingConstant() {
        let constraints = viewArray.size ≤ relatedView.size .* 3
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToSizeMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.size
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToSizeMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.size .* 75%
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToSizeMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.size
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 0.75)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToSizeDividedByConstant() {
        let constraints = viewArray.size ≤ relatedView.size ./ 2
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToSizeWithPriority() {
        let constraints = viewArray.size ≤ relatedView.size ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testViewArrayLessThanOrEqualToSizeWithPriorityLiteral() {
        let constraints = viewArray.size ≤ relatedView.size ~ 300
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: 300)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testViewArrayLessThanOrEqualToSizeWithPriorityArithmetic() {
        let constraints = viewArray.size ≤ relatedView.size ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToSizePlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.size .+ 10) .* 3
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToSizePlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.size .+ 10)
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToSizeMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.size .+ 10
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToSizePlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.size .+ 10) ./ 2
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToSizePlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.size .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToSizePlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.size .+ 10) ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToSizeMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.size .+ 10 ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToSizePlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.size .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToSizePlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.size .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToSizePlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.size .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToSizeMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.size .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToSizePlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.size .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.topLeadingTopLeading <=> relatedViewTopLeading
    // MARK: Equal
    func testViewArrayEqualToTopLeading() {
        let constraints = viewArray.topLeading .= relatedView.topLeading
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToTopLeadingPlusConstant() {
        let constraints = viewArray.topLeading .= relatedView.topLeading .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
    }

    func testViewArrayEqualToTopLeadingMinusConstant() {
        let constraints = viewArray.topLeading .= relatedView.topLeading .- 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToTopLeadingMultiplyingConstant() {
        let constraints = viewArray.topLeading .= relatedView.topLeading .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayEqualToTopLeadingMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.topLeading
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToTopLeadingMultiplyingPercent() {
        let constraints = viewArray .= relatedView.topLeading .* 75%
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayEqualToTopLeadingMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.topLeading
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayEqualToTopLeadingDividedByConstant() {
        let constraints = viewArray.topLeading .= relatedView.topLeading ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToTopLeadingWithPriority() {
        let constraints = viewArray.topLeading .= relatedView.topLeading ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
    }

    func testViewArrayEqualToTopLeadingWithPriorityLiteral() {
        let constraints = viewArray.topLeading .= relatedView.topLeading ~ 300
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: 300)
    }

    func testViewArrayEqualToTopLeadingWithPriorityArithmetic() {
        let constraints = viewArray.topLeading .= relatedView.topLeading ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToTopLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.topLeading .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToTopLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.topLeading .+ 10)
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToTopLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.topLeading .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayEqualToTopLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.topLeading .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToTopLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToTopLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.topLeading .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToTopLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.topLeading .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToTopLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToTopLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToTopLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.topLeading .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToTopLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.topLeading .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToTopLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToTopLeading() {
        let constraints = viewArray.topLeading ≥ relatedView.topLeading
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToTopLeadingPlusConstant() {
        let constraints = viewArray.topLeading ≥ relatedView.topLeading .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayGreaterThanOrEqualToTopLeadingMinusConstant() {
        let constraints = viewArray.topLeading ≥ relatedView.topLeading .- 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToTopLeadingMultiplyingConstant() {
        let constraints = viewArray.topLeading ≥ relatedView.topLeading .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToTopLeadingMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topLeading
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToTopLeadingMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.topLeading .* 75%
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToTopLeadingMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.topLeading
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToTopLeadingDividedByConstant() {
        let constraints = viewArray.topLeading ≥ relatedView.topLeading ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToTopLeadingWithPriority() {
        let constraints = viewArray.topLeading ≥ relatedView.topLeading ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToTopLeadingWithPriorityLiteral() {
        let constraints = viewArray.topLeading ≥ relatedView.topLeading ~ 300
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayGreaterThanOrEqualToTopLeadingWithPriorityArithmetic() {
        let constraints = viewArray.topLeading ≥ relatedView.topLeading ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToTopLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.topLeading .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToTopLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.topLeading .+ 10)
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToTopLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topLeading .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToTopLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.topLeading .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToTopLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToTopLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.topLeading .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToTopLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.topLeading .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToTopLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToTopLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToTopLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.topLeading .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToTopLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.topLeading .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToTopLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToTopLeading() {
        let constraints = viewArray.topLeading ≤ relatedView.topLeading
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToTopLeadingPlusConstant() {
        let constraints = viewArray.topLeading ≤ relatedView.topLeading .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayLessThanOrEqualToTopLeadingMinusConstant() {
        let constraints = viewArray.topLeading ≤ relatedView.topLeading .- 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToTopLeadingMultiplyingConstant() {
        let constraints = viewArray.topLeading ≤ relatedView.topLeading .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToTopLeadingMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topLeading
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToTopLeadingMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.topLeading .* 75%
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToTopLeadingMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.topLeading
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToTopLeadingDividedByConstant() {
        let constraints = viewArray.topLeading ≤ relatedView.topLeading ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToTopLeadingWithPriority() {
        let constraints = viewArray.topLeading ≤ relatedView.topLeading ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayLessThanOrEqualToTopLeadingWithPriorityLiteral() {
        let constraints = viewArray.topLeading ≤ relatedView.topLeading ~ 300
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayLessThanOrEqualToTopLeadingWithPriorityArithmetic() {
        let constraints = viewArray.topLeading ≤ relatedView.topLeading ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToTopLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.topLeading .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToTopLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.topLeading .+ 10)
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToTopLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topLeading .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToTopLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.topLeading .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToTopLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToTopLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.topLeading .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToTopLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.topLeading .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToTopLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToTopLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToTopLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.topLeading .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToTopLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.topLeading .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToTopLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.topTrailingTopTrailing <=> relatedViewTopTrailing
    // MARK: Equal
    func testViewArrayEqualToTopTrailing() {
        let constraints = viewArray.topTrailing .= relatedView.topTrailing
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToTopTrailingPlusConstant() {
        let constraints = viewArray.topTrailing .= relatedView.topTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
    }

    func testViewArrayEqualToTopTrailingMinusConstant() {
        let constraints = viewArray.topTrailing .= relatedView.topTrailing .- 10
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToTopTrailingMultiplyingConstant() {
        let constraints = viewArray.topTrailing .= relatedView.topTrailing .* 3
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayEqualToTopTrailingMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.topTrailing
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToTopTrailingMultiplyingPercent() {
        let constraints = viewArray .= relatedView.topTrailing .* 75%
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayEqualToTopTrailingMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.topTrailing
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayEqualToTopTrailingDividedByConstant() {
        let constraints = viewArray.topTrailing .= relatedView.topTrailing ./ 2
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToTopTrailingWithPriority() {
        let constraints = viewArray.topTrailing .= relatedView.topTrailing ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
    }

    func testViewArrayEqualToTopTrailingWithPriorityLiteral() {
        let constraints = viewArray.topTrailing .= relatedView.topTrailing ~ 300
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 300)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: 300)
    }

    func testViewArrayEqualToTopTrailingWithPriorityArithmetic() {
        let constraints = viewArray.topTrailing .= relatedView.topTrailing ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToTopTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.topTrailing .+ 10) .* 3
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToTopTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.topTrailing .+ 10)
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToTopTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.topTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayEqualToTopTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.topTrailing .+ 10) ./ 2
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToTopTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToTopTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.topTrailing .+ 10) ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToTopTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.topTrailing .+ 10 ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToTopTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToTopTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToTopTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.topTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToTopTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.topTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToTopTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToTopTrailing() {
        let constraints = viewArray.topTrailing ≥ relatedView.topTrailing
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToTopTrailingPlusConstant() {
        let constraints = viewArray.topTrailing ≥ relatedView.topTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayGreaterThanOrEqualToTopTrailingMinusConstant() {
        let constraints = viewArray.topTrailing ≥ relatedView.topTrailing .- 10
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToTopTrailingMultiplyingConstant() {
        let constraints = viewArray.topTrailing ≥ relatedView.topTrailing .* 3
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToTopTrailingMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topTrailing
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToTopTrailingMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.topTrailing .* 75%
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToTopTrailingMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.topTrailing
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToTopTrailingDividedByConstant() {
        let constraints = viewArray.topTrailing ≥ relatedView.topTrailing ./ 2
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToTopTrailingWithPriority() {
        let constraints = viewArray.topTrailing ≥ relatedView.topTrailing ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToTopTrailingWithPriorityLiteral() {
        let constraints = viewArray.topTrailing ≥ relatedView.topTrailing ~ 300
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayGreaterThanOrEqualToTopTrailingWithPriorityArithmetic() {
        let constraints = viewArray.topTrailing ≥ relatedView.topTrailing ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToTopTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.topTrailing .+ 10) .* 3
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToTopTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.topTrailing .+ 10)
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToTopTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToTopTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.topTrailing .+ 10) ./ 2
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToTopTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToTopTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.topTrailing .+ 10) ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToTopTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.topTrailing .+ 10 ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToTopTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToTopTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToTopTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.topTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToTopTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.topTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToTopTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToTopTrailing() {
        let constraints = viewArray.topTrailing ≤ relatedView.topTrailing
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToTopTrailingPlusConstant() {
        let constraints = viewArray.topTrailing ≤ relatedView.topTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayLessThanOrEqualToTopTrailingMinusConstant() {
        let constraints = viewArray.topTrailing ≤ relatedView.topTrailing .- 10
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToTopTrailingMultiplyingConstant() {
        let constraints = viewArray.topTrailing ≤ relatedView.topTrailing .* 3
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToTopTrailingMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topTrailing
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToTopTrailingMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.topTrailing .* 75%
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToTopTrailingMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.topTrailing
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToTopTrailingDividedByConstant() {
        let constraints = viewArray.topTrailing ≤ relatedView.topTrailing ./ 2
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToTopTrailingWithPriority() {
        let constraints = viewArray.topTrailing ≤ relatedView.topTrailing ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayLessThanOrEqualToTopTrailingWithPriorityLiteral() {
        let constraints = viewArray.topTrailing ≤ relatedView.topTrailing ~ 300
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayLessThanOrEqualToTopTrailingWithPriorityArithmetic() {
        let constraints = viewArray.topTrailing ≤ relatedView.topTrailing ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToTopTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.topTrailing .+ 10) .* 3
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToTopTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.topTrailing .+ 10)
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToTopTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToTopTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.topTrailing .+ 10) ./ 2
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToTopTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToTopTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.topTrailing .+ 10) ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToTopTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.topTrailing .+ 10 ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToTopTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToTopTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToTopTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.topTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToTopTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.topTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToTopTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.bottomLeadingBottomLeading <=> relatedViewBottomLeading
    // MARK: Equal
    func testViewArrayEqualToBottomLeading() {
        let constraints = viewArray.bottomLeading .= relatedView.bottomLeading
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToBottomLeadingPlusConstant() {
        let constraints = viewArray.bottomLeading .= relatedView.bottomLeading .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testViewArrayEqualToBottomLeadingMinusConstant() {
        let constraints = viewArray.bottomLeading .= relatedView.bottomLeading .- 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToBottomLeadingMultiplyingConstant() {
        let constraints = viewArray.bottomLeading .= relatedView.bottomLeading .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayEqualToBottomLeadingMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomLeading
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToBottomLeadingMultiplyingPercent() {
        let constraints = viewArray .= relatedView.bottomLeading .* 75%
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayEqualToBottomLeadingMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.bottomLeading
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayEqualToBottomLeadingDividedByConstant() {
        let constraints = viewArray.bottomLeading .= relatedView.bottomLeading ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToBottomLeadingWithPriority() {
        let constraints = viewArray.bottomLeading .= relatedView.bottomLeading ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testViewArrayEqualToBottomLeadingWithPriorityLiteral() {
        let constraints = viewArray.bottomLeading .= relatedView.bottomLeading ~ 300
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testViewArrayEqualToBottomLeadingWithPriorityArithmetic() {
        let constraints = viewArray.bottomLeading .= relatedView.bottomLeading ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToBottomLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.bottomLeading .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToBottomLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.bottomLeading .+ 10)
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToBottomLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomLeading .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayEqualToBottomLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.bottomLeading .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.bottomLeading .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.bottomLeading .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToBottomLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.bottomLeading .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.bottomLeading .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToBottomLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToBottomLeading() {
        let constraints = viewArray.bottomLeading ≥ relatedView.bottomLeading
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToBottomLeadingPlusConstant() {
        let constraints = viewArray.bottomLeading ≥ relatedView.bottomLeading .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeadingMinusConstant() {
        let constraints = viewArray.bottomLeading ≥ relatedView.bottomLeading .- 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToBottomLeadingMultiplyingConstant() {
        let constraints = viewArray.bottomLeading ≥ relatedView.bottomLeading .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeadingMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomLeading
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToBottomLeadingMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.bottomLeading .* 75%
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeadingMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.bottomLeading
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeadingDividedByConstant() {
        let constraints = viewArray.bottomLeading ≥ relatedView.bottomLeading ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToBottomLeadingWithPriority() {
        let constraints = viewArray.bottomLeading ≥ relatedView.bottomLeading ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeadingWithPriorityLiteral() {
        let constraints = viewArray.bottomLeading ≥ relatedView.bottomLeading ~ 300
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeadingWithPriorityArithmetic() {
        let constraints = viewArray.bottomLeading ≥ relatedView.bottomLeading ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToBottomLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.bottomLeading .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomLeading .+ 10)
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomLeading .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.bottomLeading .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomLeading .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomLeading .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomLeading .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomLeading .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToBottomLeading() {
        let constraints = viewArray.bottomLeading ≤ relatedView.bottomLeading
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToBottomLeadingPlusConstant() {
        let constraints = viewArray.bottomLeading ≤ relatedView.bottomLeading .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayLessThanOrEqualToBottomLeadingMinusConstant() {
        let constraints = viewArray.bottomLeading ≤ relatedView.bottomLeading .- 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToBottomLeadingMultiplyingConstant() {
        let constraints = viewArray.bottomLeading ≤ relatedView.bottomLeading .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToBottomLeadingMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomLeading
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToBottomLeadingMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.bottomLeading .* 75%
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToBottomLeadingMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.bottomLeading
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToBottomLeadingDividedByConstant() {
        let constraints = viewArray.bottomLeading ≤ relatedView.bottomLeading ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToBottomLeadingWithPriority() {
        let constraints = viewArray.bottomLeading ≤ relatedView.bottomLeading ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayLessThanOrEqualToBottomLeadingWithPriorityLiteral() {
        let constraints = viewArray.bottomLeading ≤ relatedView.bottomLeading ~ 300
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayLessThanOrEqualToBottomLeadingWithPriorityArithmetic() {
        let constraints = viewArray.bottomLeading ≤ relatedView.bottomLeading ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToBottomLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.bottomLeading .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToBottomLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomLeading .+ 10)
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToBottomLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomLeading .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToBottomLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.bottomLeading .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomLeading .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomLeading .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomLeading .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToBottomLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomLeading .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToBottomLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomLeading .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToBottomLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomLeading .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToBottomLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomLeading .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToBottomLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomLeading .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.bottomTrailingBottomTrailing <=> relatedViewBottomTrailing
    // MARK: Equal
    func testViewArrayEqualToBottomTrailing() {
        let constraints = viewArray.bottomTrailing .= relatedView.bottomTrailing
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToBottomTrailingPlusConstant() {
        let constraints = viewArray.bottomTrailing .= relatedView.bottomTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testViewArrayEqualToBottomTrailingMinusConstant() {
        let constraints = viewArray.bottomTrailing .= relatedView.bottomTrailing .- 10
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToBottomTrailingMultiplyingConstant() {
        let constraints = viewArray.bottomTrailing .= relatedView.bottomTrailing .* 3
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayEqualToBottomTrailingMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomTrailing
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToBottomTrailingMultiplyingPercent() {
        let constraints = viewArray .= relatedView.bottomTrailing .* 75%
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayEqualToBottomTrailingMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.bottomTrailing
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayEqualToBottomTrailingDividedByConstant() {
        let constraints = viewArray.bottomTrailing .= relatedView.bottomTrailing ./ 2
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToBottomTrailingWithPriority() {
        let constraints = viewArray.bottomTrailing .= relatedView.bottomTrailing ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testViewArrayEqualToBottomTrailingWithPriorityLiteral() {
        let constraints = viewArray.bottomTrailing .= relatedView.bottomTrailing ~ 300
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 300)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testViewArrayEqualToBottomTrailingWithPriorityArithmetic() {
        let constraints = viewArray.bottomTrailing .= relatedView.bottomTrailing ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToBottomTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.bottomTrailing .+ 10) .* 3
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToBottomTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.bottomTrailing .+ 10)
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToBottomTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayEqualToBottomTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.bottomTrailing .+ 10) ./ 2
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.bottomTrailing .+ 10) ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.bottomTrailing .+ 10 ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToBottomTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.bottomTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.bottomTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToBottomTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToBottomTrailing() {
        let constraints = viewArray.bottomTrailing ≥ relatedView.bottomTrailing
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToBottomTrailingPlusConstant() {
        let constraints = viewArray.bottomTrailing ≥ relatedView.bottomTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayGreaterThanOrEqualToBottomTrailingMinusConstant() {
        let constraints = viewArray.bottomTrailing ≥ relatedView.bottomTrailing .- 10
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToBottomTrailingMultiplyingConstant() {
        let constraints = viewArray.bottomTrailing ≥ relatedView.bottomTrailing .* 3
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToBottomTrailingMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomTrailing
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToBottomTrailingMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.bottomTrailing .* 75%
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToBottomTrailingMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.bottomTrailing
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToBottomTrailingDividedByConstant() {
        let constraints = viewArray.bottomTrailing ≥ relatedView.bottomTrailing ./ 2
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToBottomTrailingWithPriority() {
        let constraints = viewArray.bottomTrailing ≥ relatedView.bottomTrailing ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToBottomTrailingWithPriorityLiteral() {
        let constraints = viewArray.bottomTrailing ≥ relatedView.bottomTrailing ~ 300
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayGreaterThanOrEqualToBottomTrailingWithPriorityArithmetic() {
        let constraints = viewArray.bottomTrailing ≥ relatedView.bottomTrailing ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToBottomTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.bottomTrailing .+ 10) .* 3
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToBottomTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomTrailing .+ 10)
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToBottomTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToBottomTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.bottomTrailing .+ 10) ./ 2
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomTrailing .+ 10) ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomTrailing .+ 10 ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToBottomTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToBottomTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToBottomTrailing() {
        let constraints = viewArray.bottomTrailing ≤ relatedView.bottomTrailing
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToBottomTrailingPlusConstant() {
        let constraints = viewArray.bottomTrailing ≤ relatedView.bottomTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayLessThanOrEqualToBottomTrailingMinusConstant() {
        let constraints = viewArray.bottomTrailing ≤ relatedView.bottomTrailing .- 10
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToBottomTrailingMultiplyingConstant() {
        let constraints = viewArray.bottomTrailing ≤ relatedView.bottomTrailing .* 3
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToBottomTrailingMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomTrailing
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToBottomTrailingMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.bottomTrailing .* 75%
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToBottomTrailingMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.bottomTrailing
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToBottomTrailingDividedByConstant() {
        let constraints = viewArray.bottomTrailing ≤ relatedView.bottomTrailing ./ 2
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToBottomTrailingWithPriority() {
        let constraints = viewArray.bottomTrailing ≤ relatedView.bottomTrailing ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayLessThanOrEqualToBottomTrailingWithPriorityLiteral() {
        let constraints = viewArray.bottomTrailing ≤ relatedView.bottomTrailing ~ 300
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayLessThanOrEqualToBottomTrailingWithPriorityArithmetic() {
        let constraints = viewArray.bottomTrailing ≤ relatedView.bottomTrailing ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToBottomTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.bottomTrailing .+ 10) .* 3
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToBottomTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomTrailing .+ 10)
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToBottomTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomTrailing .+ 10
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToBottomTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.bottomTrailing .+ 10) ./ 2
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomTrailing .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomTrailing .+ 10) ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomTrailing .+ 10 ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToBottomTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomTrailing .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToBottomTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomTrailing .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToBottomTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomTrailing .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToBottomTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomTrailing .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToBottomTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomTrailing .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.topLeftTopLeft <=> relatedViewTopLeft
    // MARK: Equal
    func testViewArrayEqualToTopLeft() {
        let constraints = viewArray.topLeft .= relatedView.topLeft
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToTopLeftPlusConstant() {
        let constraints = viewArray.topLeft .= relatedView.topLeft .+ 10
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
    }

    func testViewArrayEqualToTopLeftMinusConstant() {
        let constraints = viewArray.topLeft .= relatedView.topLeft .- 10
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: -10)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToTopLeftMultiplyingConstant() {
        let constraints = viewArray.topLeft .= relatedView.topLeft .* 3
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayEqualToTopLeftMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.topLeft
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToTopLeftMultiplyingPercent() {
        let constraints = viewArray .= relatedView.topLeft .* 75%
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayEqualToTopLeftMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.topLeft
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayEqualToTopLeftDividedByConstant() {
        let constraints = viewArray.topLeft .= relatedView.topLeft ./ 2
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToTopLeftWithPriority() {
        let constraints = viewArray.topLeft .= relatedView.topLeft ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
    }

    func testViewArrayEqualToTopLeftWithPriorityLiteral() {
        let constraints = viewArray.topLeft .= relatedView.topLeft ~ 300
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, priority: 300)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: 300)
    }

    func testViewArrayEqualToTopLeftWithPriorityArithmetic() {
        let constraints = viewArray.topLeft .= relatedView.topLeft ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToTopLeftPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.topLeft .+ 10) .* 3
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToTopLeftPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.topLeft .+ 10)
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToTopLeftMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.topLeft .+ 10
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayEqualToTopLeftPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.topLeft .+ 10) ./ 2
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToTopLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToTopLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.topLeft .+ 10) ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToTopLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.topLeft .+ 10 ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToTopLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToTopLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToTopLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.topLeft .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToTopLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.topLeft .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToTopLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToTopLeft() {
        let constraints = viewArray.topLeft ≥ relatedView.topLeft
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToTopLeftPlusConstant() {
        let constraints = viewArray.topLeft ≥ relatedView.topLeft .+ 10
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayGreaterThanOrEqualToTopLeftMinusConstant() {
        let constraints = viewArray.topLeft ≥ relatedView.topLeft .- 10
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: -10)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToTopLeftMultiplyingConstant() {
        let constraints = viewArray.topLeft ≥ relatedView.topLeft .* 3
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToTopLeftMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topLeft
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToTopLeftMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.topLeft .* 75%
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToTopLeftMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.topLeft
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToTopLeftDividedByConstant() {
        let constraints = viewArray.topLeft ≥ relatedView.topLeft ./ 2
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToTopLeftWithPriority() {
        let constraints = viewArray.topLeft ≥ relatedView.topLeft ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToTopLeftWithPriorityLiteral() {
        let constraints = viewArray.topLeft ≥ relatedView.topLeft ~ 300
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, priority: 300)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayGreaterThanOrEqualToTopLeftWithPriorityArithmetic() {
        let constraints = viewArray.topLeft ≥ relatedView.topLeft ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToTopLeftPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.topLeft .+ 10) .* 3
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToTopLeftPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.topLeft .+ 10)
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToTopLeftMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topLeft .+ 10
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToTopLeftPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.topLeft .+ 10) ./ 2
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToTopLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToTopLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.topLeft .+ 10) ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToTopLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.topLeft .+ 10 ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToTopLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToTopLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToTopLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.topLeft .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToTopLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.topLeft .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToTopLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToTopLeft() {
        let constraints = viewArray.topLeft ≤ relatedView.topLeft
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToTopLeftPlusConstant() {
        let constraints = viewArray.topLeft ≤ relatedView.topLeft .+ 10
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayLessThanOrEqualToTopLeftMinusConstant() {
        let constraints = viewArray.topLeft ≤ relatedView.topLeft .- 10
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: -10)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToTopLeftMultiplyingConstant() {
        let constraints = viewArray.topLeft ≤ relatedView.topLeft .* 3
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToTopLeftMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topLeft
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToTopLeftMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.topLeft .* 75%
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToTopLeftMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.topLeft
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToTopLeftDividedByConstant() {
        let constraints = viewArray.topLeft ≤ relatedView.topLeft ./ 2
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToTopLeftWithPriority() {
        let constraints = viewArray.topLeft ≤ relatedView.topLeft ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayLessThanOrEqualToTopLeftWithPriorityLiteral() {
        let constraints = viewArray.topLeft ≤ relatedView.topLeft ~ 300
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, priority: 300)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayLessThanOrEqualToTopLeftWithPriorityArithmetic() {
        let constraints = viewArray.topLeft ≤ relatedView.topLeft ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToTopLeftPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.topLeft .+ 10) .* 3
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToTopLeftPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.topLeft .+ 10)
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToTopLeftMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topLeft .+ 10
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToTopLeftPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.topLeft .+ 10) ./ 2
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToTopLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToTopLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.topLeft .+ 10) ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToTopLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.topLeft .+ 10 ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToTopLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToTopLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToTopLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.topLeft .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToTopLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.topLeft .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToTopLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.topRightTopRight <=> relatedViewTopRight
    // MARK: Equal
    func testViewArrayEqualToTopRight() {
        let constraints = viewArray.topRight .= relatedView.topRight
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToTopRightPlusConstant() {
        let constraints = viewArray.topRight .= relatedView.topRight .+ 10
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
    }

    func testViewArrayEqualToTopRightMinusConstant() {
        let constraints = viewArray.topRight .= relatedView.topRight .- 10
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: -10)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToTopRightMultiplyingConstant() {
        let constraints = viewArray.topRight .= relatedView.topRight .* 3
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayEqualToTopRightMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.topRight
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToTopRightMultiplyingPercent() {
        let constraints = viewArray .= relatedView.topRight .* 75%
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayEqualToTopRightMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.topRight
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayEqualToTopRightDividedByConstant() {
        let constraints = viewArray.topRight .= relatedView.topRight ./ 2
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToTopRightWithPriority() {
        let constraints = viewArray.topRight .= relatedView.topRight ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
    }

    func testViewArrayEqualToTopRightWithPriorityLiteral() {
        let constraints = viewArray.topRight .= relatedView.topRight ~ 300
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, priority: 300)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: 300)
    }

    func testViewArrayEqualToTopRightWithPriorityArithmetic() {
        let constraints = viewArray.topRight .= relatedView.topRight ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToTopRightPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.topRight .+ 10) .* 3
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToTopRightPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.topRight .+ 10)
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToTopRightMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.topRight .+ 10
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayEqualToTopRightPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.topRight .+ 10) ./ 2
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToTopRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topRight .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToTopRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.topRight .+ 10) ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToTopRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.topRight .+ 10 ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToTopRightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToTopRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToTopRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.topRight .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToTopRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.topRight .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToTopRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToTopRight() {
        let constraints = viewArray.topRight ≥ relatedView.topRight
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToTopRightPlusConstant() {
        let constraints = viewArray.topRight ≥ relatedView.topRight .+ 10
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayGreaterThanOrEqualToTopRightMinusConstant() {
        let constraints = viewArray.topRight ≥ relatedView.topRight .- 10
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: -10)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToTopRightMultiplyingConstant() {
        let constraints = viewArray.topRight ≥ relatedView.topRight .* 3
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToTopRightMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topRight
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToTopRightMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.topRight .* 75%
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToTopRightMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.topRight
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToTopRightDividedByConstant() {
        let constraints = viewArray.topRight ≥ relatedView.topRight ./ 2
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToTopRightWithPriority() {
        let constraints = viewArray.topRight ≥ relatedView.topRight ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToTopRightWithPriorityLiteral() {
        let constraints = viewArray.topRight ≥ relatedView.topRight ~ 300
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, priority: 300)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayGreaterThanOrEqualToTopRightWithPriorityArithmetic() {
        let constraints = viewArray.topRight ≥ relatedView.topRight ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToTopRightPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.topRight .+ 10) .* 3
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToTopRightPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.topRight .+ 10)
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToTopRightMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topRight .+ 10
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToTopRightPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.topRight .+ 10) ./ 2
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToTopRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topRight .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToTopRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.topRight .+ 10) ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToTopRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.topRight .+ 10 ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToTopRightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToTopRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToTopRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.topRight .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToTopRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.topRight .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToTopRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToTopRight() {
        let constraints = viewArray.topRight ≤ relatedView.topRight
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToTopRightPlusConstant() {
        let constraints = viewArray.topRight ≤ relatedView.topRight .+ 10
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayLessThanOrEqualToTopRightMinusConstant() {
        let constraints = viewArray.topRight ≤ relatedView.topRight .- 10
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: -10)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToTopRightMultiplyingConstant() {
        let constraints = viewArray.topRight ≤ relatedView.topRight .* 3
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToTopRightMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topRight
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToTopRightMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.topRight .* 75%
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToTopRightMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.topRight
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToTopRightDividedByConstant() {
        let constraints = viewArray.topRight ≤ relatedView.topRight ./ 2
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToTopRightWithPriority() {
        let constraints = viewArray.topRight ≤ relatedView.topRight ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayLessThanOrEqualToTopRightWithPriorityLiteral() {
        let constraints = viewArray.topRight ≤ relatedView.topRight ~ 300
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, priority: 300)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayLessThanOrEqualToTopRightWithPriorityArithmetic() {
        let constraints = viewArray.topRight ≤ relatedView.topRight ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToTopRightPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.topRight .+ 10) .* 3
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToTopRightPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.topRight .+ 10)
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToTopRightMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topRight .+ 10
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToTopRightPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.topRight .+ 10) ./ 2
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToTopRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topRight .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToTopRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.topRight .+ 10) ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToTopRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.topRight .+ 10 ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToTopRightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToTopRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToTopRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.topRight .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToTopRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.topRight .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToTopRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.bottomLeftBottomLeft <=> relatedViewBottomLeft
    // MARK: Equal
    func testViewArrayEqualToBottomLeft() {
        let constraints = viewArray.bottomLeft .= relatedView.bottomLeft
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToBottomLeftPlusConstant() {
        let constraints = viewArray.bottomLeft .= relatedView.bottomLeft .+ 10
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testViewArrayEqualToBottomLeftMinusConstant() {
        let constraints = viewArray.bottomLeft .= relatedView.bottomLeft .- 10
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: -10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToBottomLeftMultiplyingConstant() {
        let constraints = viewArray.bottomLeft .= relatedView.bottomLeft .* 3
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayEqualToBottomLeftMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomLeft
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToBottomLeftMultiplyingPercent() {
        let constraints = viewArray .= relatedView.bottomLeft .* 75%
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayEqualToBottomLeftMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.bottomLeft
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayEqualToBottomLeftDividedByConstant() {
        let constraints = viewArray.bottomLeft .= relatedView.bottomLeft ./ 2
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToBottomLeftWithPriority() {
        let constraints = viewArray.bottomLeft .= relatedView.bottomLeft ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testViewArrayEqualToBottomLeftWithPriorityLiteral() {
        let constraints = viewArray.bottomLeft .= relatedView.bottomLeft ~ 300
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, priority: 300)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testViewArrayEqualToBottomLeftWithPriorityArithmetic() {
        let constraints = viewArray.bottomLeft .= relatedView.bottomLeft ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToBottomLeftPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.bottomLeft .+ 10) .* 3
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToBottomLeftPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.bottomLeft .+ 10)
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToBottomLeftMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomLeft .+ 10
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayEqualToBottomLeftPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.bottomLeft .+ 10) ./ 2
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToBottomLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToBottomLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.bottomLeft .+ 10) ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToBottomLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.bottomLeft .+ 10 ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToBottomLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToBottomLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToBottomLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.bottomLeft .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToBottomLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.bottomLeft .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToBottomLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .equal, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToBottomLeft() {
        let constraints = viewArray.bottomLeft ≥ relatedView.bottomLeft
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToBottomLeftPlusConstant() {
        let constraints = viewArray.bottomLeft ≥ relatedView.bottomLeft .+ 10
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeftMinusConstant() {
        let constraints = viewArray.bottomLeft ≥ relatedView.bottomLeft .- 10
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: -10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToBottomLeftMultiplyingConstant() {
        let constraints = viewArray.bottomLeft ≥ relatedView.bottomLeft .* 3
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeftMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomLeft
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToBottomLeftMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.bottomLeft .* 75%
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeftMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.bottomLeft
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeftDividedByConstant() {
        let constraints = viewArray.bottomLeft ≥ relatedView.bottomLeft ./ 2
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToBottomLeftWithPriority() {
        let constraints = viewArray.bottomLeft ≥ relatedView.bottomLeft ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeftWithPriorityLiteral() {
        let constraints = viewArray.bottomLeft ≥ relatedView.bottomLeft ~ 300
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, priority: 300)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeftWithPriorityArithmetic() {
        let constraints = viewArray.bottomLeft ≥ relatedView.bottomLeft ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToBottomLeftPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.bottomLeft .+ 10) .* 3
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeftPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomLeft .+ 10)
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeftMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomLeft .+ 10
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeftPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.bottomLeft .+ 10) ./ 2
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToBottomLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomLeft .+ 10) ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomLeft .+ 10 ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToBottomLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomLeft .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomLeft .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToBottomLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .greaterThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToBottomLeft() {
        let constraints = viewArray.bottomLeft ≤ relatedView.bottomLeft
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToBottomLeftPlusConstant() {
        let constraints = viewArray.bottomLeft ≤ relatedView.bottomLeft .+ 10
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayLessThanOrEqualToBottomLeftMinusConstant() {
        let constraints = viewArray.bottomLeft ≤ relatedView.bottomLeft .- 10
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: -10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToBottomLeftMultiplyingConstant() {
        let constraints = viewArray.bottomLeft ≤ relatedView.bottomLeft .* 3
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToBottomLeftMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomLeft
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToBottomLeftMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.bottomLeft .* 75%
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToBottomLeftMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.bottomLeft
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToBottomLeftDividedByConstant() {
        let constraints = viewArray.bottomLeft ≤ relatedView.bottomLeft ./ 2
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToBottomLeftWithPriority() {
        let constraints = viewArray.bottomLeft ≤ relatedView.bottomLeft ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayLessThanOrEqualToBottomLeftWithPriorityLiteral() {
        let constraints = viewArray.bottomLeft ≤ relatedView.bottomLeft ~ 300
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, priority: 300)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayLessThanOrEqualToBottomLeftWithPriorityArithmetic() {
        let constraints = viewArray.bottomLeft ≤ relatedView.bottomLeft ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToBottomLeftPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.bottomLeft .+ 10) .* 3
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToBottomLeftPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomLeft .+ 10)
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToBottomLeftMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomLeft .+ 10
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToBottomLeftPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.bottomLeft .+ 10) ./ 2
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToBottomLeftPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomLeft .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToBottomLeftPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomLeft .+ 10) ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToBottomLeftMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomLeft .+ 10 ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToBottomLeftPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomLeft .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToBottomLeftPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomLeft .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToBottomLeftPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomLeft .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToBottomLeftMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomLeft .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToBottomLeftPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomLeft .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .left, .lessThanOrEqual, relatedView, .left, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArray.bottomRightBottomRight <=> relatedViewBottomRight
    // MARK: Equal
    func testViewArrayEqualToBottomRight() {
        let constraints = viewArray.bottomRight .= relatedView.bottomRight
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testViewArrayEqualToBottomRightPlusConstant() {
        let constraints = viewArray.bottomRight .= relatedView.bottomRight .+ 10
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testViewArrayEqualToBottomRightMinusConstant() {
        let constraints = viewArray.bottomRight .= relatedView.bottomRight .- 10
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: -10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayEqualToBottomRightMultiplyingConstant() {
        let constraints = viewArray.bottomRight .= relatedView.bottomRight .* 3
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayEqualToBottomRightMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomRight
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    // MARK: Equal with percentage multiplier
    func testViewArrayEqualToBottomRightMultiplyingPercent() {
        let constraints = viewArray .= relatedView.bottomRight .* 75%
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayEqualToBottomRightMultipliedByPercent() {
        let constraints = viewArray .= 75% .* relatedView.bottomRight
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayEqualToBottomRightDividedByConstant() {
        let constraints = viewArray.bottomRight .= relatedView.bottomRight ./ 2
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testViewArrayEqualToBottomRightWithPriority() {
        let constraints = viewArray.bottomRight .= relatedView.bottomRight ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testViewArrayEqualToBottomRightWithPriorityLiteral() {
        let constraints = viewArray.bottomRight .= relatedView.bottomRight ~ 300
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, priority: 300)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testViewArrayEqualToBottomRightWithPriorityArithmetic() {
        let constraints = viewArray.bottomRight .= relatedView.bottomRight ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testViewArrayEqualToBottomRightPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.bottomRight .+ 10) .* 3
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToBottomRightPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.bottomRight .+ 10)
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayEqualToBottomRightMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomRight .+ 10
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayEqualToBottomRightPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.bottomRight .+ 10) ./ 2
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testViewArrayEqualToBottomRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomRight .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToBottomRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.bottomRight .+ 10) ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToBottomRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.bottomRight .+ 10 ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayEqualToBottomRightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testViewArrayEqualToBottomRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToBottomRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.bottomRight .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToBottomRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.bottomRight .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayEqualToBottomRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .equal, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual
    func testViewArrayGreaterThanOrEqualToBottomRight() {
        let constraints = viewArray.bottomRight ≥ relatedView.bottomRight
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayGreaterThanOrEqualToBottomRightPlusConstant() {
        let constraints = viewArray.bottomRight ≥ relatedView.bottomRight .+ 10
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayGreaterThanOrEqualToBottomRightMinusConstant() {
        let constraints = viewArray.bottomRight ≥ relatedView.bottomRight .- 10
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: -10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayGreaterThanOrEqualToBottomRightMultiplyingConstant() {
        let constraints = viewArray.bottomRight ≥ relatedView.bottomRight .* 3
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToBottomRightMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomRight
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: GreaterThanOrEqual with percentage multiplier
    func testViewArrayGreaterThanOrEqualToBottomRightMultiplyingPercent() {
        let constraints = viewArray ≥ relatedView.bottomRight .* 75%
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToBottomRightMultipliedByPercent() {
        let constraints = viewArray ≥ 75% .* relatedView.bottomRight
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayGreaterThanOrEqualToBottomRightDividedByConstant() {
        let constraints = viewArray.bottomRight ≥ relatedView.bottomRight ./ 2
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testViewArrayGreaterThanOrEqualToBottomRightWithPriority() {
        let constraints = viewArray.bottomRight ≥ relatedView.bottomRight ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToBottomRightWithPriorityLiteral() {
        let constraints = viewArray.bottomRight ≥ relatedView.bottomRight ~ 300
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, priority: 300)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayGreaterThanOrEqualToBottomRightWithPriorityArithmetic() {
        let constraints = viewArray.bottomRight ≥ relatedView.bottomRight ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testViewArrayGreaterThanOrEqualToBottomRightPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.bottomRight .+ 10) .* 3
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToBottomRightPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomRight .+ 10)
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToBottomRightMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomRight .+ 10
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayGreaterThanOrEqualToBottomRightPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.bottomRight .+ 10) ./ 2
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testViewArrayGreaterThanOrEqualToBottomRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomRight .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToBottomRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomRight .+ 10) ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToBottomRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomRight .+ 10 ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayGreaterThanOrEqualToBottomRightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayGreaterThanOrEqualToBottomRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToBottomRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomRight .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToBottomRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomRight .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayGreaterThanOrEqualToBottomRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .greaterThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual
    func testViewArrayLessThanOrEqualToBottomRight() {
        let constraints = viewArray.bottomRight ≤ relatedView.bottomRight
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayLessThanOrEqualToBottomRightPlusConstant() {
        let constraints = viewArray.bottomRight ≤ relatedView.bottomRight .+ 10
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayLessThanOrEqualToBottomRightMinusConstant() {
        let constraints = viewArray.bottomRight ≤ relatedView.bottomRight .- 10
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: -10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayLessThanOrEqualToBottomRightMultiplyingConstant() {
        let constraints = viewArray.bottomRight ≤ relatedView.bottomRight .* 3
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToBottomRightMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomRight
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    // MARK: LessThanOrEqual with percentage multiplier
    func testViewArrayLessThanOrEqualToBottomRightMultiplyingPercent() {
        let constraints = viewArray ≤ relatedView.bottomRight .* 75%
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToBottomRightMultipliedByPercent() {
        let constraints = viewArray ≤ 75% .* relatedView.bottomRight
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 0.75)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 0.75)
    }

    func testViewArrayLessThanOrEqualToBottomRightDividedByConstant() {
        let constraints = viewArray.bottomRight ≤ relatedView.bottomRight ./ 2
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testViewArrayLessThanOrEqualToBottomRightWithPriority() {
        let constraints = viewArray.bottomRight ≤ relatedView.bottomRight ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayLessThanOrEqualToBottomRightWithPriorityLiteral() {
        let constraints = viewArray.bottomRight ≤ relatedView.bottomRight ~ 300
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, priority: 300)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayLessThanOrEqualToBottomRightWithPriorityArithmetic() {
        let constraints = viewArray.bottomRight ≤ relatedView.bottomRight ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testViewArrayLessThanOrEqualToBottomRightPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.bottomRight .+ 10) .* 3
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToBottomRightPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomRight .+ 10)
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToBottomRightMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomRight .+ 10
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testViewArrayLessThanOrEqualToBottomRightPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.bottomRight .+ 10) ./ 2
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testViewArrayLessThanOrEqualToBottomRightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomRight .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToBottomRightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomRight .+ 10) ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToBottomRightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomRight .+ 10 ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testViewArrayLessThanOrEqualToBottomRightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomRight .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testViewArrayLessThanOrEqualToBottomRightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomRight .+ 10) .* 3 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToBottomRightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomRight .+ 10) ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToBottomRightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomRight .+ 10 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testViewArrayLessThanOrEqualToBottomRightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomRight .+ 10) ./ 2 ~ .high .- 1
        constraints.first.assert(viewArray, .right, .lessThanOrEqual, relatedView, .right, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
// sourcery:end
}
