//
//  InferredPairEquationTests.swift
//  SharedTests
//
//  Created by Brian Strobach on 1/3/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// swiftlint:disable file_length type_body_length

@testable import UILayoutKit
import XCTest

// sourcery: inferredPairEquationTest
// sourcery: lhsItems = view1, lhsItems = viewArray
// sourcery: rhsAttributes = centerAnchors, rhsAttributes = horizontalEdgeAnchors, rhsAttributes = verticalEdgeAnchors
// sourcery: centerAnchors = centerX, centerAnchors = centerY
// sourcery: horizontalEdgeAnchors = leading, horizontalEdgeAnchors = trailing
// sourcery: verticalEdgeAnchors = top, verticalEdgeAnchors = bottom
class InferredPairEquationTests: UILayoutKitTestCase {


    func testXYAxesAnchors() {
        let constraints = view1 .= relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY)

    }
    func testArrayXYAxesAnchors() {
        let constraints = viewArray .= relatedView.centerAnchors
        constraints.map {$0.first}.assert(viewArray, .centerX, .equal, relatedView, .centerX)
        constraints.map {$0.second}.assert(viewArray, .centerY, .equal, relatedView, .centerY)
    }

    func testXYAxesAnchorsWithOffsetAndPriority() {
        let constraints = view1 .= relatedView.centerAnchors .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, priority: 749)
    }

    func testArrayXYAxesAnchorsWithOffsetAndPriority() {
        let constraints = viewArray .= relatedView.centerAnchors .+ 10 ~ .high .- 1
        constraints.map {$0.first}.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, priority: 749)
        constraints.map {$0.second}.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, priority: 749)

    }

    func testHorizontalAnchors() {
        let constraints = view1 .= relatedView.horizontalEdgeAnchors .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10, priority: 749)
    }

    func testArrayHorizontalAnchors() {
        let constraints = viewArray .= relatedView.horizontalEdgeAnchors .+ 10 ~ .high .- 1
        constraints.map {$0.first}.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, priority: 749)
        constraints.map {$0.second}.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10, priority: 749)
    }

    func testVerticalAnchors() {
        let constraints = view1 .= relatedView.verticalEdgeAnchors .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10, priority: 749)
    }

    func testArrayVerticalAnchors() {
        let constraints = viewArray .= relatedView.verticalEdgeAnchors .+ 10 ~ .high .- 1
        constraints.map {$0.first}.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.map {$0.second}.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10, priority: 749)
    }

    func testSizeAnchors() {
        let constraints = view1 .= relatedView.sizeAnchors .+ 10 ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, priority: 749)
    }

    func testArraySizeAnchors() {
        let constraints = viewArray .= relatedView.size .+ 10 ~ .high .- 1
        constraints.map {$0.first}.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, priority: 749)
        constraints.map {$0.second}.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, priority: 749)
    }

    func testSizeAnchorsWithConstants() {
        let constraints = view1 .= CGSize(width: 50, height: 100) ~ .high .- 1
        constraints.first.assert(view1, .width, .equal, constant: 50, priority: 749)
        constraints.second.assert(view1, .height, .equal, constant: 100, priority: 749)
    }

    func testArraySizeAnchorsWithConstants() {
        let constraints = viewArray .= CGSize(width: 50, height: 100) ~ .high .- 1
        constraints.map {$0.first}.assert(viewArray, .width, .equal, constant: 50, priority: 749)
        constraints.map {$0.second}.assert(viewArray, .height, .equal, constant: 100, priority: 749)
    }

    func testEdgeAnchors() {
        let constraints = view1 .= relatedView.edgeAnchors .+ 10 ~ .high .- 1
        constraints.top.assert(view1, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10, priority: 749)
    }

    func testArrayEdgeAnchors() {
        let constraints = viewArray .= relatedView.edgeAnchors .+ 10 ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10, priority: 749)
    }

    func testEdgeAnchorsWithInsets() {
        let insets = UIEdgeInsets(top: 10, left: 5, bottom: 15, right: 20)

        let constraints = view1 .= relatedView.edgeAnchors .+ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .equal, relatedView, .leading, constant: 5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -20, priority: 749)
    }

    func testArrayEdgeAnchorsWithInsets() {
        let insets = UIEdgeInsets(top: 10, left: 5, bottom: 15, right: 20)

        let constraints = viewArray .= relatedView.edgeAnchors .+ insets ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -20, priority: 749)
    }

// sourcery:inline:auto:ImpliedRelationTests.TemplateName
// sourcery:end

// sourcery:inline:auto:InferredPairEquationTests.InferredPairAnchorEquationTest
// MARK: view1CenterAnchors <=> relatedViewCenterAnchors
    // MARK: Equal
    func testInferredView1CenterAnchorsEqualToCenterAnchors() {
        let constraints = view1 .= relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testInferredView1CenterAnchorsEqualToCenterAnchorsPlusConstant() {
        let constraints = view1 .= relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsEqualToCenterAnchorsMinusConstant() {
        let constraints = view1 .= relatedView.centerAnchors .- 10
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: -10)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testInferredView1CenterAnchorsEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = view1 .= relatedView.centerAnchors .* 3
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsEqualToCenterAnchorsDividedByConstant() {
        let constraints = view1 .= relatedView.centerAnchors ./ 2
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testInferredView1CenterAnchorsEqualToCenterAnchorsWithPriority() {
        let constraints = view1 .= relatedView.centerAnchors ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, priority: .low, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = view1 .= relatedView.centerAnchors ~ 300
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 300)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 300, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1CenterAnchorsEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1CenterAnchorsEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterAnchorsEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: LessThanOrEqual
    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchors() {
        let constraints = view1 ≤ relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstant() {
        let constraints = view1 ≤ relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsMinusConstant() {
        let constraints = view1 ≤ relatedView.centerAnchors .- 10
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.centerAnchors .* 3
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsDividedByConstant() {
        let constraints = view1 ≤ relatedView.centerAnchors ./ 2
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsWithPriority() {
        let constraints = view1 ≤ relatedView.centerAnchors ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.centerAnchors ~ 300
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchors() {
        let constraints = view1 ≥ relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstant() {
        let constraints = view1 ≥ relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsMinusConstant() {
        let constraints = view1 ≥ relatedView.centerAnchors .- 10
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.centerAnchors .* 3
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsDividedByConstant() {
        let constraints = view1 ≥ relatedView.centerAnchors ./ 2
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsWithPriority() {
        let constraints = view1 ≥ relatedView.centerAnchors ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.centerAnchors ~ 300
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1CenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
// MARK: view1HorizontalEdgeAnchors <=> relatedViewHorizontalEdgeAnchors
    // MARK: Equal
    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchors() {
        let constraints = view1 .= relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = view1 .= relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = view1 .= relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1 .= relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = view1 .= relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = view1 .= relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, priority: .low, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1 .= relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 300, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: LessThanOrEqual
    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchors() {
        let constraints = view1 ≤ relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = view1 ≤ relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = view1 ≤ relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = view1 ≤ relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = view1 ≤ relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchors() {
        let constraints = view1 ≥ relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = view1 ≥ relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = view1 ≥ relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = view1 ≥ relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = view1 ≥ relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1HorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
// MARK: view1VerticalEdgeAnchors <=> relatedViewVerticalEdgeAnchors
    // MARK: Equal
    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchors() {
        let constraints = view1 .= relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .equal, relatedView, .top)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = view1 .= relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = view1 .= relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: -10)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1 .= relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = view1 .= relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = view1 .= relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1 .= relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(view1, .top, .equal, relatedView, .top, priority: 300)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 300, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: LessThanOrEqual
    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchors() {
        let constraints = view1 ≤ relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = view1 ≤ relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = view1 ≤ relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = view1 ≤ relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = view1 ≤ relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchors() {
        let constraints = view1 ≥ relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = view1 ≥ relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = view1 ≥ relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = view1 ≥ relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = view1 ≥ relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredView1VerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
// MARK: viewArrayCenterAnchors <=> relatedViewCenterAnchors
    // MARK: Equal
    func testInferredViewArrayCenterAnchorsEqualToCenterAnchors() {
        let constraints = viewArray .= relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsPlusConstant() {
        let constraints = viewArray .= relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsMinusConstant() {
        let constraints = viewArray .= relatedView.centerAnchors .- 10
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: -10)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = viewArray .= relatedView.centerAnchors .* 3
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsDividedByConstant() {
        let constraints = viewArray .= relatedView.centerAnchors ./ 2
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsWithPriority() {
        let constraints = viewArray .= relatedView.centerAnchors ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.centerAnchors ~ 300
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 300)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: LessThanOrEqual
    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchors() {
        let constraints = viewArray ≤ relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstant() {
        let constraints = viewArray ≤ relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsMinusConstant() {
        let constraints = viewArray ≤ relatedView.centerAnchors .- 10
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.centerAnchors .* 3
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsDividedByConstant() {
        let constraints = viewArray ≤ relatedView.centerAnchors ./ 2
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsWithPriority() {
        let constraints = viewArray ≤ relatedView.centerAnchors ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.centerAnchors ~ 300
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsLessThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchors() {
        let constraints = viewArray ≥ relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstant() {
        let constraints = viewArray ≥ relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsMinusConstant() {
        let constraints = viewArray ≥ relatedView.centerAnchors .- 10
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.centerAnchors .* 3
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsDividedByConstant() {
        let constraints = viewArray ≥ relatedView.centerAnchors ./ 2
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsWithPriority() {
        let constraints = viewArray ≥ relatedView.centerAnchors ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.centerAnchors ~ 300
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.centerAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerAnchors .+ 10)
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerAnchors .+ 10
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.centerAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.centerAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayCenterAnchorsGreaterThanOrEqualToCenterAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
// MARK: viewArrayHorizontalEdgeAnchors <=> relatedViewHorizontalEdgeAnchors
    // MARK: Equal
    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchors() {
        let constraints = viewArray .= relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = viewArray .= relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = viewArray .= relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray .= relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray .= relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = viewArray .= relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: LessThanOrEqual
    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchors() {
        let constraints = viewArray ≤ relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = viewArray ≤ relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = viewArray ≤ relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray ≤ relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = viewArray ≤ relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsLessThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchors() {
        let constraints = viewArray ≥ relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstant() {
        let constraints = viewArray ≥ relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsMinusConstant() {
        let constraints = viewArray ≥ relatedView.horizontalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.horizontalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdgeAnchors
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray ≥ relatedView.horizontalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsWithPriority() {
        let constraints = viewArray ≥ relatedView.horizontalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.horizontalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.horizontalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.horizontalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.horizontalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayHorizontalEdgeAnchorsGreaterThanOrEqualToHorizontalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.horizontalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
// MARK: viewArrayVerticalEdgeAnchors <=> relatedViewVerticalEdgeAnchors
    // MARK: Equal
    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchors() {
        let constraints = viewArray .= relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, invertTrailing: true)
    }

    // MARK: Equal with constant
    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = viewArray .= relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = viewArray .= relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10, invertTrailing: true)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray .= relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray .= relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = viewArray .= relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, priority: 300)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: LessThanOrEqual
    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchors() {
        let constraints = viewArray ≤ relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = viewArray ≤ relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = viewArray ≤ relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray ≤ relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = viewArray ≤ relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsLessThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
    // MARK: GreaterThanOrEqual
    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchors() {
        let constraints = viewArray ≥ relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstant() {
        let constraints = viewArray ≥ relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsMinusConstant() {
        let constraints = viewArray ≥ relatedView.verticalEdgeAnchors .- 10
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.verticalEdgeAnchors .* 3
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdgeAnchors
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsDividedByConstant() {
        let constraints = viewArray ≥ relatedView.verticalEdgeAnchors ./ 2
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsWithPriority() {
        let constraints = viewArray ≥ relatedView.verticalEdgeAnchors ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.verticalEdgeAnchors ~ 300
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.verticalEdgeAnchors ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10)
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3 ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10) ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10 ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2 ~ .low
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low, invertTrailing: true)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) .* 3  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.verticalEdgeAnchors .+ 10)  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.verticalEdgeAnchors .+ 10  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749, invertTrailing: true)
    }

    func testInferredViewArrayVerticalEdgeAnchorsGreaterThanOrEqualToVerticalEdgeAnchorsPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.verticalEdgeAnchors .+ 10) ./ 2  ~ .high .- 1
        constraints.first.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
        constraints.second.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749, invertTrailing: true)
    }
// sourcery:end
}
