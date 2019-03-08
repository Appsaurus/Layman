//
//  InferredAnchorEquationTests.swift
//  Layman
//
//  Created by Brian Strobach on 1/29/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// swiftlint:disable file_length type_body_length
@testable import Layman
import XCTest

// sourcery: lhsItems = view1, lhsItems = viewArray
// sourcery: rhsAttributes = leading, rhsAttributes = centerX, rhsAttributes = trailing, rhsAttributes = top, rhsAttributes = centerY, rhsAttributes = bottom, rhsAttributes = width, rhsAttributes = height
class InferredAnchorEquationTests: LaymanTestCase {

// sourcery:inline:auto:InferredAnchorEquationTests.InferredAnchorEquationTests
    // MARK: view1Leading <=> relatedViewLeading
    // MARK: Equal

    func testInferredView1LeadingEqualTorelatedViewLeading() {
        let constraints = view1 .= relatedView.leadingAnchor
        constraints.assert(view1, .leading, .equal, relatedView, .leading)
    }

    func testInferredView1LeadingEqualTorelatedViewLeadingInversedInference() {
        let constraints = view1.leadingAnchor .= relatedView
        constraints.assert(view1, .leading, .equal, relatedView, .leading)
    }
    // MARK: Equal with constant
    func testInferredView1LeadingEqualTorelatedViewLeadingPlusConstant() {
        let constraints = view1 .= relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10)
    }

    func testInferredView1LeadingEqualTorelatedViewLeadingMinusConstant() {
        let constraints = view1 .= relatedView.leadingAnchor .- 10
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1LeadingEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = view1 .= relatedView.leadingAnchor .* 3
        constraints.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    func testInferredView1LeadingEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.leadingAnchor
        constraints.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    func testInferredView1LeadingEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = view1 .= relatedView.leadingAnchor ./ 2
        constraints.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1LeadingEqualTorelatedViewLeadingWithPriority() {
        let constraints = view1 .= relatedView.leadingAnchor ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .leading, priority: .low)
    }

    func testInferredView1LeadingEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = view1 .= relatedView.leadingAnchor ~ 300
        constraints.assert(view1, .leading, .equal, relatedView, .leading, priority: 300)
    }

    func testInferredView1LeadingEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1LeadingEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LeadingEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LeadingEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testInferredView1LeadingEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1LeadingEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1LeadingEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeading() {
        let constraints = view1 ≥ relatedView.leadingAnchor
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingInversedInference() {
        let constraints = view1.leadingAnchor ≥ relatedView
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstant() {
        let constraints = view1 ≥ relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingMinusConstant() {
        let constraints = view1 ≥ relatedView.leadingAnchor .- 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.leadingAnchor .* 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.leadingAnchor
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = view1 ≥ relatedView.leadingAnchor ./ 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingWithPriority() {
        let constraints = view1 ≥ relatedView.leadingAnchor ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.leadingAnchor ~ 300
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeading() {
        let constraints = view1 ≤ relatedView.leadingAnchor
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingInversedInference() {
        let constraints = view1.leadingAnchor ≤ relatedView
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstant() {
        let constraints = view1 ≤ relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingMinusConstant() {
        let constraints = view1 ≤ relatedView.leadingAnchor .- 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.leadingAnchor .* 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.leadingAnchor
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = view1 ≤ relatedView.leadingAnchor ./ 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingWithPriority() {
        let constraints = view1 ≤ relatedView.leadingAnchor ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.leadingAnchor ~ 300
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1Leading <=> relatedViewArrayLeading
    // MARK: Equal

    func testInferredView1LeadingEqualTorelatedViewArrayLeading() {
        let constraints = view1 .= relatedViewArray.leadingAnchor
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading)
    }

    func testInferredView1LeadingEqualTorelatedViewArrayLeadingInversedInference() {
        let constraints = view1.leadingAnchor .= relatedViewArray
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading)
    }
    // MARK: Equal with constant
    func testInferredView1LeadingEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = view1 .= relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10)
    }

    func testInferredView1LeadingEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = view1 .= relatedViewArray.leadingAnchor .- 10
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1LeadingEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = view1 .= relatedViewArray.leadingAnchor .* 3
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, multiplier: 3)
    }

    func testInferredView1LeadingEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedViewArray.leadingAnchor
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, multiplier: 3)
    }

    func testInferredView1LeadingEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = view1 .= relatedViewArray.leadingAnchor ./ 2
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1LeadingEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = view1 .= relatedViewArray.leadingAnchor ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, priority: .low)
    }

    func testInferredView1LeadingEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = view1 .= relatedViewArray.leadingAnchor ~ 300
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, priority: 300)
    }

    func testInferredView1LeadingEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = view1 .= relatedViewArray.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1LeadingEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedViewArray.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LeadingEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedViewArray.leadingAnchor .+ 10)
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LeadingEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testInferredView1LeadingEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedViewArray.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1LeadingEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1LeadingEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeading() {
        let constraints = view1 ≥ relatedViewArray.leadingAnchor
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingInversedInference() {
        let constraints = view1.leadingAnchor ≥ relatedViewArray
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = view1 ≥ relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = view1 ≥ relatedViewArray.leadingAnchor .- 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = view1 ≥ relatedViewArray.leadingAnchor .* 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedViewArray.leadingAnchor
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = view1 ≥ relatedViewArray.leadingAnchor ./ 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = view1 ≥ relatedViewArray.leadingAnchor ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, priority: .low)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = view1 ≥ relatedViewArray.leadingAnchor ~ 300
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, priority: 300)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedViewArray.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedViewArray.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.leadingAnchor .+ 10)
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedViewArray.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeading() {
        let constraints = view1 ≤ relatedViewArray.leadingAnchor
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingInversedInference() {
        let constraints = view1.leadingAnchor ≤ relatedViewArray
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = view1 ≤ relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = view1 ≤ relatedViewArray.leadingAnchor .- 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = view1 ≤ relatedViewArray.leadingAnchor .* 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedViewArray.leadingAnchor
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = view1 ≤ relatedViewArray.leadingAnchor ./ 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = view1 ≤ relatedViewArray.leadingAnchor ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, priority: .low)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = view1 ≤ relatedViewArray.leadingAnchor ~ 300
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, priority: 300)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedViewArray.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedViewArray.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.leadingAnchor .+ 10)
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedViewArray.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1CenterX <=> relatedViewCenterX
    // MARK: Equal

    func testInferredView1CenterXEqualTorelatedViewCenterX() {
        let constraints = view1 .= relatedView.centerXAnchor
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX)
    }

    func testInferredView1CenterXEqualTorelatedViewCenterXInversedInference() {
        let constraints = view1.centerXAnchor .= relatedView
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX)
    }
    // MARK: Equal with constant
    func testInferredView1CenterXEqualTorelatedViewCenterXPlusConstant() {
        let constraints = view1 .= relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10)
    }

    func testInferredView1CenterXEqualTorelatedViewCenterXMinusConstant() {
        let constraints = view1 .= relatedView.centerXAnchor .- 10
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1CenterXEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = view1 .= relatedView.centerXAnchor .* 3
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testInferredView1CenterXEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.centerXAnchor
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testInferredView1CenterXEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = view1 .= relatedView.centerXAnchor ./ 2
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1CenterXEqualTorelatedViewCenterXWithPriority() {
        let constraints = view1 .= relatedView.centerXAnchor ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, priority: .low)
    }

    func testInferredView1CenterXEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = view1 .= relatedView.centerXAnchor ~ 300
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 300)
    }

    func testInferredView1CenterXEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1CenterXEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterXEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterXEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testInferredView1CenterXEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1CenterXEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterXEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterX() {
        let constraints = view1 ≥ relatedView.centerXAnchor
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXInversedInference() {
        let constraints = view1.centerXAnchor ≥ relatedView
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstant() {
        let constraints = view1 ≥ relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXMinusConstant() {
        let constraints = view1 ≥ relatedView.centerXAnchor .- 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.centerXAnchor .* 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerXAnchor
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = view1 ≥ relatedView.centerXAnchor ./ 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXWithPriority() {
        let constraints = view1 ≥ relatedView.centerXAnchor ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.centerXAnchor ~ 300
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterX() {
        let constraints = view1 ≤ relatedView.centerXAnchor
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXInversedInference() {
        let constraints = view1.centerXAnchor ≤ relatedView
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstant() {
        let constraints = view1 ≤ relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXMinusConstant() {
        let constraints = view1 ≤ relatedView.centerXAnchor .- 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.centerXAnchor .* 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerXAnchor
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = view1 ≤ relatedView.centerXAnchor ./ 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXWithPriority() {
        let constraints = view1 ≤ relatedView.centerXAnchor ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.centerXAnchor ~ 300
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1CenterX <=> relatedViewArrayCenterX
    // MARK: Equal

    func testInferredView1CenterXEqualTorelatedViewArrayCenterX() {
        let constraints = view1 .= relatedViewArray.centerXAnchor
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX)
    }

    func testInferredView1CenterXEqualTorelatedViewArrayCenterXInversedInference() {
        let constraints = view1.centerXAnchor .= relatedViewArray
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX)
    }
    // MARK: Equal with constant
    func testInferredView1CenterXEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = view1 .= relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10)
    }

    func testInferredView1CenterXEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = view1 .= relatedViewArray.centerXAnchor .- 10
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1CenterXEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = view1 .= relatedViewArray.centerXAnchor .* 3
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, multiplier: 3)
    }

    func testInferredView1CenterXEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedViewArray.centerXAnchor
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, multiplier: 3)
    }

    func testInferredView1CenterXEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = view1 .= relatedViewArray.centerXAnchor ./ 2
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1CenterXEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = view1 .= relatedViewArray.centerXAnchor ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, priority: .low)
    }

    func testInferredView1CenterXEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = view1 .= relatedViewArray.centerXAnchor ~ 300
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, priority: 300)
    }

    func testInferredView1CenterXEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = view1 .= relatedViewArray.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1CenterXEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedViewArray.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterXEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedViewArray.centerXAnchor .+ 10)
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterXEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testInferredView1CenterXEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedViewArray.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1CenterXEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterXEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterX() {
        let constraints = view1 ≥ relatedViewArray.centerXAnchor
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXInversedInference() {
        let constraints = view1.centerXAnchor ≥ relatedViewArray
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = view1 ≥ relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = view1 ≥ relatedViewArray.centerXAnchor .- 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = view1 ≥ relatedViewArray.centerXAnchor .* 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedViewArray.centerXAnchor
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = view1 ≥ relatedViewArray.centerXAnchor ./ 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = view1 ≥ relatedViewArray.centerXAnchor ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, priority: .low)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = view1 ≥ relatedViewArray.centerXAnchor ~ 300
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, priority: 300)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedViewArray.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedViewArray.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.centerXAnchor .+ 10)
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedViewArray.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterX() {
        let constraints = view1 ≤ relatedViewArray.centerXAnchor
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXInversedInference() {
        let constraints = view1.centerXAnchor ≤ relatedViewArray
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = view1 ≤ relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = view1 ≤ relatedViewArray.centerXAnchor .- 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = view1 ≤ relatedViewArray.centerXAnchor .* 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedViewArray.centerXAnchor
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = view1 ≤ relatedViewArray.centerXAnchor ./ 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = view1 ≤ relatedViewArray.centerXAnchor ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, priority: .low)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = view1 ≤ relatedViewArray.centerXAnchor ~ 300
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, priority: 300)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedViewArray.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedViewArray.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.centerXAnchor .+ 10)
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedViewArray.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1Trailing <=> relatedViewTrailing
    // MARK: Equal

    func testInferredView1TrailingEqualTorelatedViewTrailing() {
        let constraints = view1 .= relatedView.trailingAnchor
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing)
    }

    func testInferredView1TrailingEqualTorelatedViewTrailingInversedInference() {
        let constraints = view1.trailingAnchor .= relatedView
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing)
    }
    // MARK: Equal with constant
    func testInferredView1TrailingEqualTorelatedViewTrailingPlusConstant() {
        let constraints = view1 .= relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10)
    }

    func testInferredView1TrailingEqualTorelatedViewTrailingMinusConstant() {
        let constraints = view1 .= relatedView.trailingAnchor .- 10
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1TrailingEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = view1 .= relatedView.trailingAnchor .* 3
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testInferredView1TrailingEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.trailingAnchor
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testInferredView1TrailingEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = view1 .= relatedView.trailingAnchor ./ 2
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1TrailingEqualTorelatedViewTrailingWithPriority() {
        let constraints = view1 .= relatedView.trailingAnchor ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, priority: .low)
    }

    func testInferredView1TrailingEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = view1 .= relatedView.trailingAnchor ~ 300
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 300)
    }

    func testInferredView1TrailingEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1TrailingEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TrailingEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TrailingEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredView1TrailingEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1TrailingEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1TrailingEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailing() {
        let constraints = view1 ≥ relatedView.trailingAnchor
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingInversedInference() {
        let constraints = view1.trailingAnchor ≥ relatedView
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstant() {
        let constraints = view1 ≥ relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingMinusConstant() {
        let constraints = view1 ≥ relatedView.trailingAnchor .- 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.trailingAnchor .* 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.trailingAnchor
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = view1 ≥ relatedView.trailingAnchor ./ 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingWithPriority() {
        let constraints = view1 ≥ relatedView.trailingAnchor ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.trailingAnchor ~ 300
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailing() {
        let constraints = view1 ≤ relatedView.trailingAnchor
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingInversedInference() {
        let constraints = view1.trailingAnchor ≤ relatedView
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstant() {
        let constraints = view1 ≤ relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingMinusConstant() {
        let constraints = view1 ≤ relatedView.trailingAnchor .- 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.trailingAnchor .* 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.trailingAnchor
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = view1 ≤ relatedView.trailingAnchor ./ 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingWithPriority() {
        let constraints = view1 ≤ relatedView.trailingAnchor ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.trailingAnchor ~ 300
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1Trailing <=> relatedViewArrayTrailing
    // MARK: Equal

    func testInferredView1TrailingEqualTorelatedViewArrayTrailing() {
        let constraints = view1 .= relatedViewArray.trailingAnchor
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing)
    }

    func testInferredView1TrailingEqualTorelatedViewArrayTrailingInversedInference() {
        let constraints = view1.trailingAnchor .= relatedViewArray
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing)
    }
    // MARK: Equal with constant
    func testInferredView1TrailingEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = view1 .= relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10)
    }

    func testInferredView1TrailingEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = view1 .= relatedViewArray.trailingAnchor .- 10
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1TrailingEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = view1 .= relatedViewArray.trailingAnchor .* 3
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, multiplier: 3)
    }

    func testInferredView1TrailingEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedViewArray.trailingAnchor
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, multiplier: 3)
    }

    func testInferredView1TrailingEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = view1 .= relatedViewArray.trailingAnchor ./ 2
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1TrailingEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = view1 .= relatedViewArray.trailingAnchor ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, priority: .low)
    }

    func testInferredView1TrailingEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = view1 .= relatedViewArray.trailingAnchor ~ 300
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, priority: 300)
    }

    func testInferredView1TrailingEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = view1 .= relatedViewArray.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1TrailingEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedViewArray.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TrailingEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedViewArray.trailingAnchor .+ 10)
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TrailingEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredView1TrailingEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedViewArray.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1TrailingEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1TrailingEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailing() {
        let constraints = view1 ≥ relatedViewArray.trailingAnchor
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingInversedInference() {
        let constraints = view1.trailingAnchor ≥ relatedViewArray
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = view1 ≥ relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = view1 ≥ relatedViewArray.trailingAnchor .- 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = view1 ≥ relatedViewArray.trailingAnchor .* 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedViewArray.trailingAnchor
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = view1 ≥ relatedViewArray.trailingAnchor ./ 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = view1 ≥ relatedViewArray.trailingAnchor ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, priority: .low)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = view1 ≥ relatedViewArray.trailingAnchor ~ 300
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, priority: 300)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedViewArray.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedViewArray.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.trailingAnchor .+ 10)
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedViewArray.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailing() {
        let constraints = view1 ≤ relatedViewArray.trailingAnchor
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingInversedInference() {
        let constraints = view1.trailingAnchor ≤ relatedViewArray
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = view1 ≤ relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = view1 ≤ relatedViewArray.trailingAnchor .- 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = view1 ≤ relatedViewArray.trailingAnchor .* 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedViewArray.trailingAnchor
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = view1 ≤ relatedViewArray.trailingAnchor ./ 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = view1 ≤ relatedViewArray.trailingAnchor ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, priority: .low)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = view1 ≤ relatedViewArray.trailingAnchor ~ 300
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, priority: 300)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedViewArray.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedViewArray.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.trailingAnchor .+ 10)
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedViewArray.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1Top <=> relatedViewTop
    // MARK: Equal

    func testInferredView1TopEqualTorelatedViewTop() {
        let constraints = view1 .= relatedView.topAnchor
        constraints.assert(view1, .top, .equal, relatedView, .top)
    }

    func testInferredView1TopEqualTorelatedViewTopInversedInference() {
        let constraints = view1.topAnchor .= relatedView
        constraints.assert(view1, .top, .equal, relatedView, .top)
    }
    // MARK: Equal with constant
    func testInferredView1TopEqualTorelatedViewTopPlusConstant() {
        let constraints = view1 .= relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10)
    }

    func testInferredView1TopEqualTorelatedViewTopMinusConstant() {
        let constraints = view1 .= relatedView.topAnchor .- 10
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1TopEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = view1 .= relatedView.topAnchor .* 3
        constraints.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testInferredView1TopEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.topAnchor
        constraints.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testInferredView1TopEqualTorelatedViewTopDividedByConstant() {
        let constraints = view1 .= relatedView.topAnchor ./ 2
        constraints.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1TopEqualTorelatedViewTopWithPriority() {
        let constraints = view1 .= relatedView.topAnchor ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, priority: .low)
    }

    func testInferredView1TopEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = view1 .= relatedView.topAnchor ~ 300
        constraints.assert(view1, .top, .equal, relatedView, .top, priority: 300)
    }

    func testInferredView1TopEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1TopEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TopEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TopEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1TopEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1TopEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TopEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TopEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1TopEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1TopEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TopEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TopEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1TopEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1TopGreaterThanOrEqualTorelatedViewTop() {
        let constraints = view1 ≥ relatedView.topAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopInversedInference() {
        let constraints = view1.topAnchor ≥ relatedView
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopPlusConstant() {
        let constraints = view1 ≥ relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopMinusConstant() {
        let constraints = view1 ≥ relatedView.topAnchor .- 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.topAnchor .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopDividedByConstant() {
        let constraints = view1 ≥ relatedView.topAnchor ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopWithPriority() {
        let constraints = view1 ≥ relatedView.topAnchor ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.topAnchor ~ 300
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1TopLessThanOrEqualTorelatedViewTop() {
        let constraints = view1 ≤ relatedView.topAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewTopInversedInference() {
        let constraints = view1.topAnchor ≤ relatedView
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredView1TopLessThanOrEqualTorelatedViewTopPlusConstant() {
        let constraints = view1 ≤ relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewTopMinusConstant() {
        let constraints = view1 ≤ relatedView.topAnchor .- 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1TopLessThanOrEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.topAnchor .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewTopDividedByConstant() {
        let constraints = view1 ≤ relatedView.topAnchor ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1TopLessThanOrEqualTorelatedViewTopWithPriority() {
        let constraints = view1 ≤ relatedView.topAnchor ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.topAnchor ~ 300
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1TopLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1TopLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1TopLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1Top <=> relatedViewArrayTop
    // MARK: Equal

    func testInferredView1TopEqualTorelatedViewArrayTop() {
        let constraints = view1 .= relatedViewArray.topAnchor
        constraints.assert(view1, .top, .equal, relatedViewArray, .top)
    }

    func testInferredView1TopEqualTorelatedViewArrayTopInversedInference() {
        let constraints = view1.topAnchor .= relatedViewArray
        constraints.assert(view1, .top, .equal, relatedViewArray, .top)
    }
    // MARK: Equal with constant
    func testInferredView1TopEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = view1 .= relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10)
    }

    func testInferredView1TopEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = view1 .= relatedViewArray.topAnchor .- 10
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1TopEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = view1 .= relatedViewArray.topAnchor .* 3
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, multiplier: 3)
    }

    func testInferredView1TopEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedViewArray.topAnchor
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, multiplier: 3)
    }

    func testInferredView1TopEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = view1 .= relatedViewArray.topAnchor ./ 2
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1TopEqualTorelatedViewArrayTopWithPriority() {
        let constraints = view1 .= relatedViewArray.topAnchor ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, priority: .low)
    }

    func testInferredView1TopEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = view1 .= relatedViewArray.topAnchor ~ 300
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, priority: 300)
    }

    func testInferredView1TopEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = view1 .= relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1TopEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TopEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TopEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1TopEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1TopEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TopEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TopEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1TopEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1TopEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TopEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TopEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1TopEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTop() {
        let constraints = view1 ≥ relatedViewArray.topAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopInversedInference() {
        let constraints = view1.topAnchor ≥ relatedViewArray
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = view1 ≥ relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = view1 ≥ relatedViewArray.topAnchor .- 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = view1 ≥ relatedViewArray.topAnchor .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedViewArray.topAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = view1 ≥ relatedViewArray.topAnchor ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopWithPriority() {
        let constraints = view1 ≥ relatedViewArray.topAnchor ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, priority: .low)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = view1 ≥ relatedViewArray.topAnchor ~ 300
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, priority: 300)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1TopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTop() {
        let constraints = view1 ≤ relatedViewArray.topAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopInversedInference() {
        let constraints = view1.topAnchor ≤ relatedViewArray
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = view1 ≤ relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = view1 ≤ relatedViewArray.topAnchor .- 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = view1 ≤ relatedViewArray.topAnchor .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedViewArray.topAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = view1 ≤ relatedViewArray.topAnchor ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopWithPriority() {
        let constraints = view1 ≤ relatedViewArray.topAnchor ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, priority: .low)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = view1 ≤ relatedViewArray.topAnchor ~ 300
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, priority: 300)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1TopLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1CenterY <=> relatedViewCenterY
    // MARK: Equal

    func testInferredView1CenterYEqualTorelatedViewCenterY() {
        let constraints = view1 .= relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY)
    }

    func testInferredView1CenterYEqualTorelatedViewCenterYInversedInference() {
        let constraints = view1.centerYAnchor .= relatedView
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY)
    }
    // MARK: Equal with constant
    func testInferredView1CenterYEqualTorelatedViewCenterYPlusConstant() {
        let constraints = view1 .= relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10)
    }

    func testInferredView1CenterYEqualTorelatedViewCenterYMinusConstant() {
        let constraints = view1 .= relatedView.centerYAnchor .- 10
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1CenterYEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = view1 .= relatedView.centerYAnchor .* 3
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testInferredView1CenterYEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testInferredView1CenterYEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = view1 .= relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1CenterYEqualTorelatedViewCenterYWithPriority() {
        let constraints = view1 .= relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, priority: .low)
    }

    func testInferredView1CenterYEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = view1 .= relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 300)
    }

    func testInferredView1CenterYEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1CenterYEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterYEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterYEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredView1CenterYEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1CenterYEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterYEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterY() {
        let constraints = view1 ≥ relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYInversedInference() {
        let constraints = view1.centerYAnchor ≥ relatedView
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstant() {
        let constraints = view1 ≥ relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYMinusConstant() {
        let constraints = view1 ≥ relatedView.centerYAnchor .- 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.centerYAnchor .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = view1 ≥ relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYWithPriority() {
        let constraints = view1 ≥ relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterY() {
        let constraints = view1 ≤ relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYInversedInference() {
        let constraints = view1.centerYAnchor ≤ relatedView
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstant() {
        let constraints = view1 ≤ relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYMinusConstant() {
        let constraints = view1 ≤ relatedView.centerYAnchor .- 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.centerYAnchor .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = view1 ≤ relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYWithPriority() {
        let constraints = view1 ≤ relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1CenterY <=> relatedViewArrayCenterY
    // MARK: Equal

    func testInferredView1CenterYEqualTorelatedViewArrayCenterY() {
        let constraints = view1 .= relatedViewArray.centerYAnchor
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY)
    }

    func testInferredView1CenterYEqualTorelatedViewArrayCenterYInversedInference() {
        let constraints = view1.centerYAnchor .= relatedViewArray
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY)
    }
    // MARK: Equal with constant
    func testInferredView1CenterYEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = view1 .= relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10)
    }

    func testInferredView1CenterYEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = view1 .= relatedViewArray.centerYAnchor .- 10
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1CenterYEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = view1 .= relatedViewArray.centerYAnchor .* 3
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, multiplier: 3)
    }

    func testInferredView1CenterYEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedViewArray.centerYAnchor
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, multiplier: 3)
    }

    func testInferredView1CenterYEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = view1 .= relatedViewArray.centerYAnchor ./ 2
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1CenterYEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = view1 .= relatedViewArray.centerYAnchor ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, priority: .low)
    }

    func testInferredView1CenterYEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = view1 .= relatedViewArray.centerYAnchor ~ 300
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, priority: 300)
    }

    func testInferredView1CenterYEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = view1 .= relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1CenterYEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterYEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterYEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredView1CenterYEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1CenterYEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterYEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterY() {
        let constraints = view1 ≥ relatedViewArray.centerYAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYInversedInference() {
        let constraints = view1.centerYAnchor ≥ relatedViewArray
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = view1 ≥ relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = view1 ≥ relatedViewArray.centerYAnchor .- 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = view1 ≥ relatedViewArray.centerYAnchor .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedViewArray.centerYAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = view1 ≥ relatedViewArray.centerYAnchor ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = view1 ≥ relatedViewArray.centerYAnchor ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, priority: .low)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = view1 ≥ relatedViewArray.centerYAnchor ~ 300
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, priority: 300)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterY() {
        let constraints = view1 ≤ relatedViewArray.centerYAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYInversedInference() {
        let constraints = view1.centerYAnchor ≤ relatedViewArray
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = view1 ≤ relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = view1 ≤ relatedViewArray.centerYAnchor .- 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = view1 ≤ relatedViewArray.centerYAnchor .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedViewArray.centerYAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = view1 ≤ relatedViewArray.centerYAnchor ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = view1 ≤ relatedViewArray.centerYAnchor ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, priority: .low)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = view1 ≤ relatedViewArray.centerYAnchor ~ 300
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, priority: 300)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1Bottom <=> relatedViewBottom
    // MARK: Equal

    func testInferredView1BottomEqualTorelatedViewBottom() {
        let constraints = view1 .= relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom)
    }

    func testInferredView1BottomEqualTorelatedViewBottomInversedInference() {
        let constraints = view1.bottomAnchor .= relatedView
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom)
    }
    // MARK: Equal with constant
    func testInferredView1BottomEqualTorelatedViewBottomPlusConstant() {
        let constraints = view1 .= relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testInferredView1BottomEqualTorelatedViewBottomMinusConstant() {
        let constraints = view1 .= relatedView.bottomAnchor .- 10
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1BottomEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = view1 .= relatedView.bottomAnchor .* 3
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1BottomEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1BottomEqualTorelatedViewBottomDividedByConstant() {
        let constraints = view1 .= relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1BottomEqualTorelatedViewBottomWithPriority() {
        let constraints = view1 .= relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testInferredView1BottomEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = view1 .= relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testInferredView1BottomEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1BottomEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1BottomEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1BottomEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1BottomEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1BottomEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1BottomEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottom() {
        let constraints = view1 ≥ relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomInversedInference() {
        let constraints = view1.bottomAnchor ≥ relatedView
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstant() {
        let constraints = view1 ≥ relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomMinusConstant() {
        let constraints = view1 ≥ relatedView.bottomAnchor .- 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.bottomAnchor .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomDividedByConstant() {
        let constraints = view1 ≥ relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomWithPriority() {
        let constraints = view1 ≥ relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1BottomLessThanOrEqualTorelatedViewBottom() {
        let constraints = view1 ≤ relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomInversedInference() {
        let constraints = view1.bottomAnchor ≤ relatedView
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomPlusConstant() {
        let constraints = view1 ≤ relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomMinusConstant() {
        let constraints = view1 ≤ relatedView.bottomAnchor .- 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.bottomAnchor .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomDividedByConstant() {
        let constraints = view1 ≤ relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomWithPriority() {
        let constraints = view1 ≤ relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1Bottom <=> relatedViewArrayBottom
    // MARK: Equal

    func testInferredView1BottomEqualTorelatedViewArrayBottom() {
        let constraints = view1 .= relatedViewArray.bottomAnchor
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom)
    }

    func testInferredView1BottomEqualTorelatedViewArrayBottomInversedInference() {
        let constraints = view1.bottomAnchor .= relatedViewArray
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom)
    }
    // MARK: Equal with constant
    func testInferredView1BottomEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = view1 .= relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10)
    }

    func testInferredView1BottomEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = view1 .= relatedViewArray.bottomAnchor .- 10
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1BottomEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = view1 .= relatedViewArray.bottomAnchor .* 3
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, multiplier: 3)
    }

    func testInferredView1BottomEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedViewArray.bottomAnchor
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, multiplier: 3)
    }

    func testInferredView1BottomEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = view1 .= relatedViewArray.bottomAnchor ./ 2
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1BottomEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = view1 .= relatedViewArray.bottomAnchor ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, priority: .low)
    }

    func testInferredView1BottomEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = view1 .= relatedViewArray.bottomAnchor ~ 300
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, priority: 300)
    }

    func testInferredView1BottomEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = view1 .= relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1BottomEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1BottomEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1BottomEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1BottomEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1BottomEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1BottomEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottom() {
        let constraints = view1 ≥ relatedViewArray.bottomAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomInversedInference() {
        let constraints = view1.bottomAnchor ≥ relatedViewArray
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = view1 ≥ relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = view1 ≥ relatedViewArray.bottomAnchor .- 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = view1 ≥ relatedViewArray.bottomAnchor .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedViewArray.bottomAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = view1 ≥ relatedViewArray.bottomAnchor ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = view1 ≥ relatedViewArray.bottomAnchor ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, priority: .low)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = view1 ≥ relatedViewArray.bottomAnchor ~ 300
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, priority: 300)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottom() {
        let constraints = view1 ≤ relatedViewArray.bottomAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomInversedInference() {
        let constraints = view1.bottomAnchor ≤ relatedViewArray
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = view1 ≤ relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = view1 ≤ relatedViewArray.bottomAnchor .- 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = view1 ≤ relatedViewArray.bottomAnchor .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedViewArray.bottomAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = view1 ≤ relatedViewArray.bottomAnchor ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = view1 ≤ relatedViewArray.bottomAnchor ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, priority: .low)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = view1 ≤ relatedViewArray.bottomAnchor ~ 300
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, priority: 300)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1Width <=> relatedViewWidth
    // MARK: Equal

    func testInferredView1WidthEqualTorelatedViewWidth() {
        let constraints = view1 .= relatedView.widthAnchor
        constraints.assert(view1, .width, .equal, relatedView, .width)
    }

    func testInferredView1WidthEqualTorelatedViewWidthInversedInference() {
        let constraints = view1.widthAnchor .= relatedView
        constraints.assert(view1, .width, .equal, relatedView, .width)
    }
    // MARK: Equal with constant
    func testInferredView1WidthEqualTorelatedViewWidthPlusConstant() {
        let constraints = view1 .= relatedView.widthAnchor .+ 10
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10)
    }

    func testInferredView1WidthEqualTorelatedViewWidthMinusConstant() {
        let constraints = view1 .= relatedView.widthAnchor .- 10
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1WidthEqualTorelatedViewWidthMultiplyingConstant() {
        let constraints = view1 .= relatedView.widthAnchor .* 3
        constraints.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
    }

    func testInferredView1WidthEqualTorelatedViewWidthMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.widthAnchor
        constraints.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
    }

    func testInferredView1WidthEqualTorelatedViewWidthDividedByConstant() {
        let constraints = view1 .= relatedView.widthAnchor ./ 2
        constraints.assert(view1, .width, .equal, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1WidthEqualTorelatedViewWidthWithPriority() {
        let constraints = view1 .= relatedView.widthAnchor ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, priority: .low)
    }

    func testInferredView1WidthEqualTorelatedViewWidthWithPriorityLiteral() {
        let constraints = view1 .= relatedView.widthAnchor ~ 300
        constraints.assert(view1, .width, .equal, relatedView, .width, priority: 300)
    }

    func testInferredView1WidthEqualTorelatedViewWidthWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.widthAnchor ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1WidthEqualTorelatedViewWidthPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1WidthEqualTorelatedViewWidthPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1WidthEqualTorelatedViewWidthMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testInferredView1WidthEqualTorelatedViewWidthPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1WidthEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1WidthEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidth() {
        let constraints = view1 ≥ relatedView.widthAnchor
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthInversedInference() {
        let constraints = view1.widthAnchor ≥ relatedView
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstant() {
        let constraints = view1 ≥ relatedView.widthAnchor .+ 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthMinusConstant() {
        let constraints = view1 ≥ relatedView.widthAnchor .- 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.widthAnchor .* 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.widthAnchor
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthDividedByConstant() {
        let constraints = view1 ≥ relatedView.widthAnchor ./ 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthWithPriority() {
        let constraints = view1 ≥ relatedView.widthAnchor ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.widthAnchor ~ 300
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 300)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1WidthLessThanOrEqualTorelatedViewWidth() {
        let constraints = view1 ≤ relatedView.widthAnchor
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthInversedInference() {
        let constraints = view1.widthAnchor ≤ relatedView
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthPlusConstant() {
        let constraints = view1 ≤ relatedView.widthAnchor .+ 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthMinusConstant() {
        let constraints = view1 ≤ relatedView.widthAnchor .- 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.widthAnchor .* 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.widthAnchor
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthDividedByConstant() {
        let constraints = view1 ≤ relatedView.widthAnchor ./ 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthWithPriority() {
        let constraints = view1 ≤ relatedView.widthAnchor ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.widthAnchor ~ 300
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 300)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1Width <=> relatedViewArrayWidth
    // MARK: Equal

    func testInferredView1WidthEqualTorelatedViewArrayWidth() {
        let constraints = view1 .= relatedViewArray.widthAnchor
        constraints.assert(view1, .width, .equal, relatedViewArray, .width)
    }

    func testInferredView1WidthEqualTorelatedViewArrayWidthInversedInference() {
        let constraints = view1.widthAnchor .= relatedViewArray
        constraints.assert(view1, .width, .equal, relatedViewArray, .width)
    }
    // MARK: Equal with constant
    func testInferredView1WidthEqualTorelatedViewArrayWidthPlusConstant() {
        let constraints = view1 .= relatedViewArray.widthAnchor .+ 10
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10)
    }

    func testInferredView1WidthEqualTorelatedViewArrayWidthMinusConstant() {
        let constraints = view1 .= relatedViewArray.widthAnchor .- 10
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1WidthEqualTorelatedViewArrayWidthMultiplyingConstant() {
        let constraints = view1 .= relatedViewArray.widthAnchor .* 3
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, multiplier: 3)
    }

    func testInferredView1WidthEqualTorelatedViewArrayWidthMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedViewArray.widthAnchor
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, multiplier: 3)
    }

    func testInferredView1WidthEqualTorelatedViewArrayWidthDividedByConstant() {
        let constraints = view1 .= relatedViewArray.widthAnchor ./ 2
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1WidthEqualTorelatedViewArrayWidthWithPriority() {
        let constraints = view1 .= relatedViewArray.widthAnchor ~ .low
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, priority: .low)
    }

    func testInferredView1WidthEqualTorelatedViewArrayWidthWithPriorityLiteral() {
        let constraints = view1 .= relatedViewArray.widthAnchor ~ 300
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, priority: 300)
    }

    func testInferredView1WidthEqualTorelatedViewArrayWidthWithPriorityArithmetic() {
        let constraints = view1 .= relatedViewArray.widthAnchor ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1WidthEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedViewArray.widthAnchor .+ 10) .* 3
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1WidthEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedViewArray.widthAnchor .+ 10)
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1WidthEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedViewArray.widthAnchor .+ 10
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10, multiplier: 3)
    }

    func testInferredView1WidthEqualTorelatedViewArrayWidthPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedViewArray.widthAnchor .+ 10) ./ 2
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1WidthEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .low
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedViewArray.widthAnchor .+ 10 ~ .low
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1WidthEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedViewArray.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidth() {
        let constraints = view1 ≥ relatedViewArray.widthAnchor
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthInversedInference() {
        let constraints = view1.widthAnchor ≥ relatedViewArray
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstant() {
        let constraints = view1 ≥ relatedViewArray.widthAnchor .+ 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthMinusConstant() {
        let constraints = view1 ≥ relatedViewArray.widthAnchor .- 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthMultiplyingConstant() {
        let constraints = view1 ≥ relatedViewArray.widthAnchor .* 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedViewArray.widthAnchor
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthDividedByConstant() {
        let constraints = view1 ≥ relatedViewArray.widthAnchor ./ 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthWithPriority() {
        let constraints = view1 ≥ relatedViewArray.widthAnchor ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, priority: .low)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthWithPriorityLiteral() {
        let constraints = view1 ≥ relatedViewArray.widthAnchor ~ 300
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, priority: 300)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedViewArray.widthAnchor ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedViewArray.widthAnchor .+ 10) .* 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.widthAnchor .+ 10)
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedViewArray.widthAnchor .+ 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedViewArray.widthAnchor .+ 10) ./ 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedViewArray.widthAnchor .+ 10 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedViewArray.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidth() {
        let constraints = view1 ≤ relatedViewArray.widthAnchor
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthInversedInference() {
        let constraints = view1.widthAnchor ≤ relatedViewArray
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstant() {
        let constraints = view1 ≤ relatedViewArray.widthAnchor .+ 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthMinusConstant() {
        let constraints = view1 ≤ relatedViewArray.widthAnchor .- 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthMultiplyingConstant() {
        let constraints = view1 ≤ relatedViewArray.widthAnchor .* 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedViewArray.widthAnchor
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthDividedByConstant() {
        let constraints = view1 ≤ relatedViewArray.widthAnchor ./ 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthWithPriority() {
        let constraints = view1 ≤ relatedViewArray.widthAnchor ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, priority: .low)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthWithPriorityLiteral() {
        let constraints = view1 ≤ relatedViewArray.widthAnchor ~ 300
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, priority: 300)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedViewArray.widthAnchor ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedViewArray.widthAnchor .+ 10) .* 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.widthAnchor .+ 10)
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedViewArray.widthAnchor .+ 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedViewArray.widthAnchor .+ 10) ./ 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedViewArray.widthAnchor .+ 10 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedViewArray.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1Height <=> relatedViewHeight
    // MARK: Equal

    func testInferredView1HeightEqualTorelatedViewHeight() {
        let constraints = view1 .= relatedView.heightAnchor
        constraints.assert(view1, .height, .equal, relatedView, .height)
    }

    func testInferredView1HeightEqualTorelatedViewHeightInversedInference() {
        let constraints = view1.heightAnchor .= relatedView
        constraints.assert(view1, .height, .equal, relatedView, .height)
    }
    // MARK: Equal with constant
    func testInferredView1HeightEqualTorelatedViewHeightPlusConstant() {
        let constraints = view1 .= relatedView.heightAnchor .+ 10
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10)
    }

    func testInferredView1HeightEqualTorelatedViewHeightMinusConstant() {
        let constraints = view1 .= relatedView.heightAnchor .- 10
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1HeightEqualTorelatedViewHeightMultiplyingConstant() {
        let constraints = view1 .= relatedView.heightAnchor .* 3
        constraints.assert(view1, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testInferredView1HeightEqualTorelatedViewHeightMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.heightAnchor
        constraints.assert(view1, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testInferredView1HeightEqualTorelatedViewHeightDividedByConstant() {
        let constraints = view1 .= relatedView.heightAnchor ./ 2
        constraints.assert(view1, .height, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1HeightEqualTorelatedViewHeightWithPriority() {
        let constraints = view1 .= relatedView.heightAnchor ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, priority: .low)
    }

    func testInferredView1HeightEqualTorelatedViewHeightWithPriorityLiteral() {
        let constraints = view1 .= relatedView.heightAnchor ~ 300
        constraints.assert(view1, .height, .equal, relatedView, .height, priority: 300)
    }

    func testInferredView1HeightEqualTorelatedViewHeightWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.heightAnchor ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1HeightEqualTorelatedViewHeightPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1HeightEqualTorelatedViewHeightPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1HeightEqualTorelatedViewHeightMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testInferredView1HeightEqualTorelatedViewHeightPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1HeightEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1HeightEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeight() {
        let constraints = view1 ≥ relatedView.heightAnchor
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightInversedInference() {
        let constraints = view1.heightAnchor ≥ relatedView
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstant() {
        let constraints = view1 ≥ relatedView.heightAnchor .+ 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightMinusConstant() {
        let constraints = view1 ≥ relatedView.heightAnchor .- 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.heightAnchor .* 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.heightAnchor
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightDividedByConstant() {
        let constraints = view1 ≥ relatedView.heightAnchor ./ 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightWithPriority() {
        let constraints = view1 ≥ relatedView.heightAnchor ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.heightAnchor ~ 300
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1HeightLessThanOrEqualTorelatedViewHeight() {
        let constraints = view1 ≤ relatedView.heightAnchor
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightInversedInference() {
        let constraints = view1.heightAnchor ≤ relatedView
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightPlusConstant() {
        let constraints = view1 ≤ relatedView.heightAnchor .+ 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightMinusConstant() {
        let constraints = view1 ≤ relatedView.heightAnchor .- 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.heightAnchor .* 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.heightAnchor
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightDividedByConstant() {
        let constraints = view1 ≤ relatedView.heightAnchor ./ 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightWithPriority() {
        let constraints = view1 ≤ relatedView.heightAnchor ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.heightAnchor ~ 300
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1Height <=> relatedViewArrayHeight
    // MARK: Equal

    func testInferredView1HeightEqualTorelatedViewArrayHeight() {
        let constraints = view1 .= relatedViewArray.heightAnchor
        constraints.assert(view1, .height, .equal, relatedViewArray, .height)
    }

    func testInferredView1HeightEqualTorelatedViewArrayHeightInversedInference() {
        let constraints = view1.heightAnchor .= relatedViewArray
        constraints.assert(view1, .height, .equal, relatedViewArray, .height)
    }
    // MARK: Equal with constant
    func testInferredView1HeightEqualTorelatedViewArrayHeightPlusConstant() {
        let constraints = view1 .= relatedViewArray.heightAnchor .+ 10
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10)
    }

    func testInferredView1HeightEqualTorelatedViewArrayHeightMinusConstant() {
        let constraints = view1 .= relatedViewArray.heightAnchor .- 10
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1HeightEqualTorelatedViewArrayHeightMultiplyingConstant() {
        let constraints = view1 .= relatedViewArray.heightAnchor .* 3
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, multiplier: 3)
    }

    func testInferredView1HeightEqualTorelatedViewArrayHeightMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedViewArray.heightAnchor
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, multiplier: 3)
    }

    func testInferredView1HeightEqualTorelatedViewArrayHeightDividedByConstant() {
        let constraints = view1 .= relatedViewArray.heightAnchor ./ 2
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1HeightEqualTorelatedViewArrayHeightWithPriority() {
        let constraints = view1 .= relatedViewArray.heightAnchor ~ .low
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, priority: .low)
    }

    func testInferredView1HeightEqualTorelatedViewArrayHeightWithPriorityLiteral() {
        let constraints = view1 .= relatedViewArray.heightAnchor ~ 300
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, priority: 300)
    }

    func testInferredView1HeightEqualTorelatedViewArrayHeightWithPriorityArithmetic() {
        let constraints = view1 .= relatedViewArray.heightAnchor ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1HeightEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedViewArray.heightAnchor .+ 10) .* 3
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1HeightEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedViewArray.heightAnchor .+ 10)
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1HeightEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedViewArray.heightAnchor .+ 10
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10, multiplier: 3)
    }

    func testInferredView1HeightEqualTorelatedViewArrayHeightPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedViewArray.heightAnchor .+ 10) ./ 2
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1HeightEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .low
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedViewArray.heightAnchor .+ 10 ~ .low
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1HeightEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedViewArray.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeight() {
        let constraints = view1 ≥ relatedViewArray.heightAnchor
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightInversedInference() {
        let constraints = view1.heightAnchor ≥ relatedViewArray
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstant() {
        let constraints = view1 ≥ relatedViewArray.heightAnchor .+ 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightMinusConstant() {
        let constraints = view1 ≥ relatedViewArray.heightAnchor .- 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightMultiplyingConstant() {
        let constraints = view1 ≥ relatedViewArray.heightAnchor .* 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedViewArray.heightAnchor
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightDividedByConstant() {
        let constraints = view1 ≥ relatedViewArray.heightAnchor ./ 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightWithPriority() {
        let constraints = view1 ≥ relatedViewArray.heightAnchor ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, priority: .low)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightWithPriorityLiteral() {
        let constraints = view1 ≥ relatedViewArray.heightAnchor ~ 300
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, priority: 300)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedViewArray.heightAnchor ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedViewArray.heightAnchor .+ 10) .* 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.heightAnchor .+ 10)
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedViewArray.heightAnchor .+ 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedViewArray.heightAnchor .+ 10) ./ 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedViewArray.heightAnchor .+ 10 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedViewArray.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeight() {
        let constraints = view1 ≤ relatedViewArray.heightAnchor
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightInversedInference() {
        let constraints = view1.heightAnchor ≤ relatedViewArray
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstant() {
        let constraints = view1 ≤ relatedViewArray.heightAnchor .+ 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightMinusConstant() {
        let constraints = view1 ≤ relatedViewArray.heightAnchor .- 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightMultiplyingConstant() {
        let constraints = view1 ≤ relatedViewArray.heightAnchor .* 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedViewArray.heightAnchor
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightDividedByConstant() {
        let constraints = view1 ≤ relatedViewArray.heightAnchor ./ 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightWithPriority() {
        let constraints = view1 ≤ relatedViewArray.heightAnchor ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, priority: .low)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightWithPriorityLiteral() {
        let constraints = view1 ≤ relatedViewArray.heightAnchor ~ 300
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, priority: 300)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedViewArray.heightAnchor ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedViewArray.heightAnchor .+ 10) .* 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.heightAnchor .+ 10)
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedViewArray.heightAnchor .+ 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedViewArray.heightAnchor .+ 10) ./ 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedViewArray.heightAnchor .+ 10 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedViewArray.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayLeading <=> relatedViewLeading
    // MARK: Equal

    func testInferredViewArrayLeadingEqualTorelatedViewLeading() {
        let constraints = viewArray .= relatedView.leadingAnchor
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewLeadingInversedInference() {
        let constraints = viewArray.leadingAnchor .= relatedView
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading)
    }
    // MARK: Equal with constant
    func testInferredViewArrayLeadingEqualTorelatedViewLeadingPlusConstant() {
        let constraints = viewArray .= relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewLeadingMinusConstant() {
        let constraints = viewArray .= relatedView.leadingAnchor .- 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayLeadingEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = viewArray .= relatedView.leadingAnchor .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.leadingAnchor
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = viewArray .= relatedView.leadingAnchor ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayLeadingEqualTorelatedViewLeadingWithPriority() {
        let constraints = viewArray .= relatedView.leadingAnchor ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, priority: .low)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.leadingAnchor ~ 300
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 300)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayLeadingEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayLeadingEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLeadingEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeading() {
        let constraints = viewArray ≥ relatedView.leadingAnchor
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingInversedInference() {
        let constraints = viewArray.leadingAnchor ≥ relatedView
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstant() {
        let constraints = viewArray ≥ relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingMinusConstant() {
        let constraints = viewArray ≥ relatedView.leadingAnchor .- 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.leadingAnchor .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.leadingAnchor
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = viewArray ≥ relatedView.leadingAnchor ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingWithPriority() {
        let constraints = viewArray ≥ relatedView.leadingAnchor ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.leadingAnchor ~ 300
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeading() {
        let constraints = viewArray ≤ relatedView.leadingAnchor
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingInversedInference() {
        let constraints = viewArray.leadingAnchor ≤ relatedView
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstant() {
        let constraints = viewArray ≤ relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingMinusConstant() {
        let constraints = viewArray ≤ relatedView.leadingAnchor .- 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.leadingAnchor .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.leadingAnchor
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = viewArray ≤ relatedView.leadingAnchor ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingWithPriority() {
        let constraints = viewArray ≤ relatedView.leadingAnchor ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.leadingAnchor ~ 300
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayLeading <=> relatedViewArrayLeading
    // MARK: Equal

    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeading() {
        let constraints = viewArray .= relatedViewArray.leadingAnchor
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingInversedInference() {
        let constraints = viewArray.leadingAnchor .= relatedViewArray
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading)
    }
    // MARK: Equal with constant
    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = viewArray .= relatedViewArray.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = viewArray .= relatedViewArray.leadingAnchor .- 10
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = viewArray .= relatedViewArray.leadingAnchor .* 3
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, multiplier: 3)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedViewArray.leadingAnchor
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, multiplier: 3)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = viewArray .= relatedViewArray.leadingAnchor ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = viewArray .= relatedViewArray.leadingAnchor ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, priority: .low)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = viewArray .= relatedViewArray.leadingAnchor ~ 300
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, priority: 300)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = viewArray .= relatedViewArray.leadingAnchor ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedViewArray.leadingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedViewArray.leadingAnchor .+ 10)
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedViewArray.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedViewArray.leadingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeading() {
        let constraints = viewArray ≥ relatedViewArray.leadingAnchor
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingInversedInference() {
        let constraints = viewArray.leadingAnchor ≥ relatedViewArray
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = viewArray ≥ relatedViewArray.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = viewArray ≥ relatedViewArray.leadingAnchor .- 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = viewArray ≥ relatedViewArray.leadingAnchor .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.leadingAnchor
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = viewArray ≥ relatedViewArray.leadingAnchor ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = viewArray ≥ relatedViewArray.leadingAnchor ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, priority: .low)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedViewArray.leadingAnchor ~ 300
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, priority: 300)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedViewArray.leadingAnchor ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedViewArray.leadingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.leadingAnchor .+ 10)
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedViewArray.leadingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeading() {
        let constraints = viewArray ≤ relatedViewArray.leadingAnchor
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingInversedInference() {
        let constraints = viewArray.leadingAnchor ≤ relatedViewArray
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = viewArray ≤ relatedViewArray.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = viewArray ≤ relatedViewArray.leadingAnchor .- 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = viewArray ≤ relatedViewArray.leadingAnchor .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.leadingAnchor
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = viewArray ≤ relatedViewArray.leadingAnchor ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = viewArray ≤ relatedViewArray.leadingAnchor ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, priority: .low)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedViewArray.leadingAnchor ~ 300
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, priority: 300)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedViewArray.leadingAnchor ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedViewArray.leadingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.leadingAnchor .+ 10)
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedViewArray.leadingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayCenterX <=> relatedViewCenterX
    // MARK: Equal

    func testInferredViewArrayCenterXEqualTorelatedViewCenterX() {
        let constraints = viewArray .= relatedView.centerXAnchor
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewCenterXInversedInference() {
        let constraints = viewArray.centerXAnchor .= relatedView
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX)
    }
    // MARK: Equal with constant
    func testInferredViewArrayCenterXEqualTorelatedViewCenterXPlusConstant() {
        let constraints = viewArray .= relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewCenterXMinusConstant() {
        let constraints = viewArray .= relatedView.centerXAnchor .- 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayCenterXEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = viewArray .= relatedView.centerXAnchor .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerXAnchor
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = viewArray .= relatedView.centerXAnchor ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayCenterXEqualTorelatedViewCenterXWithPriority() {
        let constraints = viewArray .= relatedView.centerXAnchor ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: .low)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.centerXAnchor ~ 300
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 300)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayCenterXEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayCenterXEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterXEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterX() {
        let constraints = viewArray ≥ relatedView.centerXAnchor
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXInversedInference() {
        let constraints = viewArray.centerXAnchor ≥ relatedView
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstant() {
        let constraints = viewArray ≥ relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXMinusConstant() {
        let constraints = viewArray ≥ relatedView.centerXAnchor .- 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.centerXAnchor .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerXAnchor
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = viewArray ≥ relatedView.centerXAnchor ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXWithPriority() {
        let constraints = viewArray ≥ relatedView.centerXAnchor ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.centerXAnchor ~ 300
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterX() {
        let constraints = viewArray ≤ relatedView.centerXAnchor
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXInversedInference() {
        let constraints = viewArray.centerXAnchor ≤ relatedView
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstant() {
        let constraints = viewArray ≤ relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXMinusConstant() {
        let constraints = viewArray ≤ relatedView.centerXAnchor .- 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.centerXAnchor .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerXAnchor
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = viewArray ≤ relatedView.centerXAnchor ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXWithPriority() {
        let constraints = viewArray ≤ relatedView.centerXAnchor ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.centerXAnchor ~ 300
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayCenterX <=> relatedViewArrayCenterX
    // MARK: Equal

    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterX() {
        let constraints = viewArray .= relatedViewArray.centerXAnchor
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXInversedInference() {
        let constraints = viewArray.centerXAnchor .= relatedViewArray
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX)
    }
    // MARK: Equal with constant
    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = viewArray .= relatedViewArray.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = viewArray .= relatedViewArray.centerXAnchor .- 10
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = viewArray .= relatedViewArray.centerXAnchor .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, multiplier: 3)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedViewArray.centerXAnchor
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, multiplier: 3)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = viewArray .= relatedViewArray.centerXAnchor ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = viewArray .= relatedViewArray.centerXAnchor ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, priority: .low)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = viewArray .= relatedViewArray.centerXAnchor ~ 300
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, priority: 300)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = viewArray .= relatedViewArray.centerXAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedViewArray.centerXAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedViewArray.centerXAnchor .+ 10)
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedViewArray.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedViewArray.centerXAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterX() {
        let constraints = viewArray ≥ relatedViewArray.centerXAnchor
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXInversedInference() {
        let constraints = viewArray.centerXAnchor ≥ relatedViewArray
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = viewArray ≥ relatedViewArray.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = viewArray ≥ relatedViewArray.centerXAnchor .- 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = viewArray ≥ relatedViewArray.centerXAnchor .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.centerXAnchor
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = viewArray ≥ relatedViewArray.centerXAnchor ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = viewArray ≥ relatedViewArray.centerXAnchor ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, priority: .low)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedViewArray.centerXAnchor ~ 300
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, priority: 300)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedViewArray.centerXAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedViewArray.centerXAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.centerXAnchor .+ 10)
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedViewArray.centerXAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterX() {
        let constraints = viewArray ≤ relatedViewArray.centerXAnchor
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXInversedInference() {
        let constraints = viewArray.centerXAnchor ≤ relatedViewArray
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = viewArray ≤ relatedViewArray.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = viewArray ≤ relatedViewArray.centerXAnchor .- 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = viewArray ≤ relatedViewArray.centerXAnchor .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.centerXAnchor
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = viewArray ≤ relatedViewArray.centerXAnchor ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = viewArray ≤ relatedViewArray.centerXAnchor ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, priority: .low)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedViewArray.centerXAnchor ~ 300
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, priority: 300)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedViewArray.centerXAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedViewArray.centerXAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.centerXAnchor .+ 10)
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedViewArray.centerXAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayTrailing <=> relatedViewTrailing
    // MARK: Equal

    func testInferredViewArrayTrailingEqualTorelatedViewTrailing() {
        let constraints = viewArray .= relatedView.trailingAnchor
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewTrailingInversedInference() {
        let constraints = viewArray.trailingAnchor .= relatedView
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing)
    }
    // MARK: Equal with constant
    func testInferredViewArrayTrailingEqualTorelatedViewTrailingPlusConstant() {
        let constraints = viewArray .= relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewTrailingMinusConstant() {
        let constraints = viewArray .= relatedView.trailingAnchor .- 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayTrailingEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = viewArray .= relatedView.trailingAnchor .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.trailingAnchor
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = viewArray .= relatedView.trailingAnchor ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayTrailingEqualTorelatedViewTrailingWithPriority() {
        let constraints = viewArray .= relatedView.trailingAnchor ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: .low)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.trailingAnchor ~ 300
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 300)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayTrailingEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayTrailingEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayTrailingEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailing() {
        let constraints = viewArray ≥ relatedView.trailingAnchor
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingInversedInference() {
        let constraints = viewArray.trailingAnchor ≥ relatedView
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstant() {
        let constraints = viewArray ≥ relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingMinusConstant() {
        let constraints = viewArray ≥ relatedView.trailingAnchor .- 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.trailingAnchor .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.trailingAnchor
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = viewArray ≥ relatedView.trailingAnchor ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingWithPriority() {
        let constraints = viewArray ≥ relatedView.trailingAnchor ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.trailingAnchor ~ 300
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailing() {
        let constraints = viewArray ≤ relatedView.trailingAnchor
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingInversedInference() {
        let constraints = viewArray.trailingAnchor ≤ relatedView
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstant() {
        let constraints = viewArray ≤ relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingMinusConstant() {
        let constraints = viewArray ≤ relatedView.trailingAnchor .- 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.trailingAnchor .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.trailingAnchor
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = viewArray ≤ relatedView.trailingAnchor ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingWithPriority() {
        let constraints = viewArray ≤ relatedView.trailingAnchor ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.trailingAnchor ~ 300
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayTrailing <=> relatedViewArrayTrailing
    // MARK: Equal

    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailing() {
        let constraints = viewArray .= relatedViewArray.trailingAnchor
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingInversedInference() {
        let constraints = viewArray.trailingAnchor .= relatedViewArray
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing)
    }
    // MARK: Equal with constant
    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = viewArray .= relatedViewArray.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = viewArray .= relatedViewArray.trailingAnchor .- 10
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = viewArray .= relatedViewArray.trailingAnchor .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, multiplier: 3)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedViewArray.trailingAnchor
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, multiplier: 3)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = viewArray .= relatedViewArray.trailingAnchor ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = viewArray .= relatedViewArray.trailingAnchor ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, priority: .low)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = viewArray .= relatedViewArray.trailingAnchor ~ 300
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, priority: 300)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = viewArray .= relatedViewArray.trailingAnchor ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedViewArray.trailingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedViewArray.trailingAnchor .+ 10)
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedViewArray.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedViewArray.trailingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailing() {
        let constraints = viewArray ≥ relatedViewArray.trailingAnchor
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingInversedInference() {
        let constraints = viewArray.trailingAnchor ≥ relatedViewArray
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = viewArray ≥ relatedViewArray.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = viewArray ≥ relatedViewArray.trailingAnchor .- 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = viewArray ≥ relatedViewArray.trailingAnchor .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.trailingAnchor
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = viewArray ≥ relatedViewArray.trailingAnchor ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = viewArray ≥ relatedViewArray.trailingAnchor ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, priority: .low)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedViewArray.trailingAnchor ~ 300
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, priority: 300)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedViewArray.trailingAnchor ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedViewArray.trailingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.trailingAnchor .+ 10)
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedViewArray.trailingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailing() {
        let constraints = viewArray ≤ relatedViewArray.trailingAnchor
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingInversedInference() {
        let constraints = viewArray.trailingAnchor ≤ relatedViewArray
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = viewArray ≤ relatedViewArray.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = viewArray ≤ relatedViewArray.trailingAnchor .- 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = viewArray ≤ relatedViewArray.trailingAnchor .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.trailingAnchor
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = viewArray ≤ relatedViewArray.trailingAnchor ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = viewArray ≤ relatedViewArray.trailingAnchor ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, priority: .low)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedViewArray.trailingAnchor ~ 300
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, priority: 300)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedViewArray.trailingAnchor ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedViewArray.trailingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.trailingAnchor .+ 10)
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedViewArray.trailingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayTop <=> relatedViewTop
    // MARK: Equal

    func testInferredViewArrayTopEqualTorelatedViewTop() {
        let constraints = viewArray .= relatedView.topAnchor
        constraints.assert(viewArray, .top, .equal, relatedView, .top)
    }

    func testInferredViewArrayTopEqualTorelatedViewTopInversedInference() {
        let constraints = viewArray.topAnchor .= relatedView
        constraints.assert(viewArray, .top, .equal, relatedView, .top)
    }
    // MARK: Equal with constant
    func testInferredViewArrayTopEqualTorelatedViewTopPlusConstant() {
        let constraints = viewArray .= relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
    }

    func testInferredViewArrayTopEqualTorelatedViewTopMinusConstant() {
        let constraints = viewArray .= relatedView.topAnchor .- 10
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayTopEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = viewArray .= relatedView.topAnchor .* 3
        constraints.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayTopEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayTopEqualTorelatedViewTopDividedByConstant() {
        let constraints = viewArray .= relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayTopEqualTorelatedViewTopWithPriority() {
        let constraints = viewArray .= relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
    }

    func testInferredViewArrayTopEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .top, .equal, relatedView, .top, priority: 300)
    }

    func testInferredViewArrayTopEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayTopEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTopEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTopEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayTopEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayTopEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayTopEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTop() {
        let constraints = viewArray ≥ relatedView.topAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopInversedInference() {
        let constraints = viewArray.topAnchor ≥ relatedView
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstant() {
        let constraints = viewArray ≥ relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopMinusConstant() {
        let constraints = viewArray ≥ relatedView.topAnchor .- 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.topAnchor .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopDividedByConstant() {
        let constraints = viewArray ≥ relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopWithPriority() {
        let constraints = viewArray ≥ relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTop() {
        let constraints = viewArray ≤ relatedView.topAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopInversedInference() {
        let constraints = viewArray.topAnchor ≤ relatedView
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstant() {
        let constraints = viewArray ≤ relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopMinusConstant() {
        let constraints = viewArray ≤ relatedView.topAnchor .- 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.topAnchor .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopDividedByConstant() {
        let constraints = viewArray ≤ relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopWithPriority() {
        let constraints = viewArray ≤ relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayTop <=> relatedViewArrayTop
    // MARK: Equal

    func testInferredViewArrayTopEqualTorelatedViewArrayTop() {
        let constraints = viewArray .= relatedViewArray.topAnchor
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top)
    }

    func testInferredViewArrayTopEqualTorelatedViewArrayTopInversedInference() {
        let constraints = viewArray.topAnchor .= relatedViewArray
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top)
    }
    // MARK: Equal with constant
    func testInferredViewArrayTopEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = viewArray .= relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10)
    }

    func testInferredViewArrayTopEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = viewArray .= relatedViewArray.topAnchor .- 10
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayTopEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = viewArray .= relatedViewArray.topAnchor .* 3
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, multiplier: 3)
    }

    func testInferredViewArrayTopEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedViewArray.topAnchor
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, multiplier: 3)
    }

    func testInferredViewArrayTopEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = viewArray .= relatedViewArray.topAnchor ./ 2
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayTopEqualTorelatedViewArrayTopWithPriority() {
        let constraints = viewArray .= relatedViewArray.topAnchor ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, priority: .low)
    }

    func testInferredViewArrayTopEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = viewArray .= relatedViewArray.topAnchor ~ 300
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, priority: 300)
    }

    func testInferredViewArrayTopEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = viewArray .= relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayTopEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTopEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTopEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayTopEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayTopEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayTopEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTop() {
        let constraints = viewArray ≥ relatedViewArray.topAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopInversedInference() {
        let constraints = viewArray.topAnchor ≥ relatedViewArray
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = viewArray ≥ relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = viewArray ≥ relatedViewArray.topAnchor .- 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = viewArray ≥ relatedViewArray.topAnchor .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.topAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = viewArray ≥ relatedViewArray.topAnchor ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopWithPriority() {
        let constraints = viewArray ≥ relatedViewArray.topAnchor ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, priority: .low)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedViewArray.topAnchor ~ 300
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, priority: 300)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopGreaterThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTop() {
        let constraints = viewArray ≤ relatedViewArray.topAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopInversedInference() {
        let constraints = viewArray.topAnchor ≤ relatedViewArray
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstant() {
        let constraints = viewArray ≤ relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopMinusConstant() {
        let constraints = viewArray ≤ relatedViewArray.topAnchor .- 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopMultiplyingConstant() {
        let constraints = viewArray ≤ relatedViewArray.topAnchor .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.topAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, multiplier: 3)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopDividedByConstant() {
        let constraints = viewArray ≤ relatedViewArray.topAnchor ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopWithPriority() {
        let constraints = viewArray ≤ relatedViewArray.topAnchor ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, priority: .low)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedViewArray.topAnchor ~ 300
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, priority: 300)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedViewArray.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedViewArray.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.topAnchor .+ 10)
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.topAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedViewArray.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedViewArray.topAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.topAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.topAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopLessThanOrEqualTorelatedViewArrayTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedViewArray.topAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedViewArray, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayCenterY <=> relatedViewCenterY
    // MARK: Equal

    func testInferredViewArrayCenterYEqualTorelatedViewCenterY() {
        let constraints = viewArray .= relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewCenterYInversedInference() {
        let constraints = viewArray.centerYAnchor .= relatedView
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY)
    }
    // MARK: Equal with constant
    func testInferredViewArrayCenterYEqualTorelatedViewCenterYPlusConstant() {
        let constraints = viewArray .= relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewCenterYMinusConstant() {
        let constraints = viewArray .= relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayCenterYEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = viewArray .= relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = viewArray .= relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayCenterYEqualTorelatedViewCenterYWithPriority() {
        let constraints = viewArray .= relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: .low)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 300)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayCenterYEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayCenterYEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterYEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterY() {
        let constraints = viewArray ≥ relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYInversedInference() {
        let constraints = viewArray.centerYAnchor ≥ relatedView
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstant() {
        let constraints = viewArray ≥ relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYMinusConstant() {
        let constraints = viewArray ≥ relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = viewArray ≥ relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYWithPriority() {
        let constraints = viewArray ≥ relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterY() {
        let constraints = viewArray ≤ relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYInversedInference() {
        let constraints = viewArray.centerYAnchor ≤ relatedView
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstant() {
        let constraints = viewArray ≤ relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYMinusConstant() {
        let constraints = viewArray ≤ relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYDividedByConstant() {
        let constraints = viewArray ≤ relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYWithPriority() {
        let constraints = viewArray ≤ relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayCenterY <=> relatedViewArrayCenterY
    // MARK: Equal

    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterY() {
        let constraints = viewArray .= relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYInversedInference() {
        let constraints = viewArray.centerYAnchor .= relatedViewArray
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY)
    }
    // MARK: Equal with constant
    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = viewArray .= relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = viewArray .= relatedViewArray.centerYAnchor .- 10
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = viewArray .= relatedViewArray.centerYAnchor .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, multiplier: 3)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, multiplier: 3)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = viewArray .= relatedViewArray.centerYAnchor ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = viewArray .= relatedViewArray.centerYAnchor ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, priority: .low)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = viewArray .= relatedViewArray.centerYAnchor ~ 300
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, priority: 300)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = viewArray .= relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterY() {
        let constraints = viewArray ≥ relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYInversedInference() {
        let constraints = viewArray.centerYAnchor ≥ relatedViewArray
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = viewArray ≥ relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = viewArray ≥ relatedViewArray.centerYAnchor .- 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = viewArray ≥ relatedViewArray.centerYAnchor .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = viewArray ≥ relatedViewArray.centerYAnchor ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = viewArray ≥ relatedViewArray.centerYAnchor ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, priority: .low)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedViewArray.centerYAnchor ~ 300
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, priority: 300)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterY() {
        let constraints = viewArray ≤ relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYInversedInference() {
        let constraints = viewArray.centerYAnchor ≤ relatedViewArray
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstant() {
        let constraints = viewArray ≤ relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYMinusConstant() {
        let constraints = viewArray ≤ relatedViewArray.centerYAnchor .- 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYMultiplyingConstant() {
        let constraints = viewArray ≤ relatedViewArray.centerYAnchor .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.centerYAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 3)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYDividedByConstant() {
        let constraints = viewArray ≤ relatedViewArray.centerYAnchor ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYWithPriority() {
        let constraints = viewArray ≤ relatedViewArray.centerYAnchor ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, priority: .low)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedViewArray.centerYAnchor ~ 300
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, priority: 300)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedViewArray.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedViewArray.centerYAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.centerYAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.centerYAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYLessThanOrEqualTorelatedViewArrayCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedViewArray.centerYAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedViewArray, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayBottom <=> relatedViewBottom
    // MARK: Equal

    func testInferredViewArrayBottomEqualTorelatedViewBottom() {
        let constraints = viewArray .= relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom)
    }

    func testInferredViewArrayBottomEqualTorelatedViewBottomInversedInference() {
        let constraints = viewArray.bottomAnchor .= relatedView
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom)
    }
    // MARK: Equal with constant
    func testInferredViewArrayBottomEqualTorelatedViewBottomPlusConstant() {
        let constraints = viewArray .= relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayBottomEqualTorelatedViewBottomMinusConstant() {
        let constraints = viewArray .= relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayBottomEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = viewArray .= relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayBottomEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayBottomEqualTorelatedViewBottomDividedByConstant() {
        let constraints = viewArray .= relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayBottomEqualTorelatedViewBottomWithPriority() {
        let constraints = viewArray .= relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayBottomEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayBottomEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayBottomEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayBottomEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayBottomEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayBottomEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayBottomEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayBottomEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottom() {
        let constraints = viewArray ≥ relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomInversedInference() {
        let constraints = viewArray.bottomAnchor ≥ relatedView
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstant() {
        let constraints = viewArray ≥ relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomMinusConstant() {
        let constraints = viewArray ≥ relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomDividedByConstant() {
        let constraints = viewArray ≥ relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomWithPriority() {
        let constraints = viewArray ≥ relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottom() {
        let constraints = viewArray ≤ relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomInversedInference() {
        let constraints = viewArray.bottomAnchor ≤ relatedView
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstant() {
        let constraints = viewArray ≤ relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomMinusConstant() {
        let constraints = viewArray ≤ relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomDividedByConstant() {
        let constraints = viewArray ≤ relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomWithPriority() {
        let constraints = viewArray ≤ relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayBottom <=> relatedViewArrayBottom
    // MARK: Equal

    func testInferredViewArrayBottomEqualTorelatedViewArrayBottom() {
        let constraints = viewArray .= relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom)
    }

    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomInversedInference() {
        let constraints = viewArray.bottomAnchor .= relatedViewArray
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom)
    }
    // MARK: Equal with constant
    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = viewArray .= relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10)
    }

    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = viewArray .= relatedViewArray.bottomAnchor .- 10
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = viewArray .= relatedViewArray.bottomAnchor .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, multiplier: 3)
    }

    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, multiplier: 3)
    }

    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = viewArray .= relatedViewArray.bottomAnchor ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = viewArray .= relatedViewArray.bottomAnchor ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, priority: .low)
    }

    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = viewArray .= relatedViewArray.bottomAnchor ~ 300
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, priority: 300)
    }

    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = viewArray .= relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottom() {
        let constraints = viewArray ≥ relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomInversedInference() {
        let constraints = viewArray.bottomAnchor ≥ relatedViewArray
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = viewArray ≥ relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = viewArray ≥ relatedViewArray.bottomAnchor .- 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = viewArray ≥ relatedViewArray.bottomAnchor .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = viewArray ≥ relatedViewArray.bottomAnchor ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = viewArray ≥ relatedViewArray.bottomAnchor ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, priority: .low)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedViewArray.bottomAnchor ~ 300
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, priority: 300)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottom() {
        let constraints = viewArray ≤ relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomInversedInference() {
        let constraints = viewArray.bottomAnchor ≤ relatedViewArray
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstant() {
        let constraints = viewArray ≤ relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomMinusConstant() {
        let constraints = viewArray ≤ relatedViewArray.bottomAnchor .- 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomMultiplyingConstant() {
        let constraints = viewArray ≤ relatedViewArray.bottomAnchor .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.bottomAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 3)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomDividedByConstant() {
        let constraints = viewArray ≤ relatedViewArray.bottomAnchor ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomWithPriority() {
        let constraints = viewArray ≤ relatedViewArray.bottomAnchor ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, priority: .low)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedViewArray.bottomAnchor ~ 300
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, priority: 300)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedViewArray.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedViewArray.bottomAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.bottomAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.bottomAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomLessThanOrEqualTorelatedViewArrayBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedViewArray.bottomAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedViewArray, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayWidth <=> relatedViewWidth
    // MARK: Equal

    func testInferredViewArrayWidthEqualTorelatedViewWidth() {
        let constraints = viewArray .= relatedView.widthAnchor
        constraints.assert(viewArray, .width, .equal, relatedView, .width)
    }

    func testInferredViewArrayWidthEqualTorelatedViewWidthInversedInference() {
        let constraints = viewArray.widthAnchor .= relatedView
        constraints.assert(viewArray, .width, .equal, relatedView, .width)
    }
    // MARK: Equal with constant
    func testInferredViewArrayWidthEqualTorelatedViewWidthPlusConstant() {
        let constraints = viewArray .= relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10)
    }

    func testInferredViewArrayWidthEqualTorelatedViewWidthMinusConstant() {
        let constraints = viewArray .= relatedView.widthAnchor .- 10
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayWidthEqualTorelatedViewWidthMultiplyingConstant() {
        let constraints = viewArray .= relatedView.widthAnchor .* 3
        constraints.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
    }

    func testInferredViewArrayWidthEqualTorelatedViewWidthMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.widthAnchor
        constraints.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
    }

    func testInferredViewArrayWidthEqualTorelatedViewWidthDividedByConstant() {
        let constraints = viewArray .= relatedView.widthAnchor ./ 2
        constraints.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayWidthEqualTorelatedViewWidthWithPriority() {
        let constraints = viewArray .= relatedView.widthAnchor ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: .low)
    }

    func testInferredViewArrayWidthEqualTorelatedViewWidthWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.widthAnchor ~ 300
        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: 300)
    }

    func testInferredViewArrayWidthEqualTorelatedViewWidthWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayWidthEqualTorelatedViewWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayWidthEqualTorelatedViewWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayWidthEqualTorelatedViewWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayWidthEqualTorelatedViewWidthPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayWidthEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayWidthEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidth() {
        let constraints = viewArray ≥ relatedView.widthAnchor
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthInversedInference() {
        let constraints = viewArray.widthAnchor ≥ relatedView
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstant() {
        let constraints = viewArray ≥ relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthMinusConstant() {
        let constraints = viewArray ≥ relatedView.widthAnchor .- 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.widthAnchor .* 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.widthAnchor
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthDividedByConstant() {
        let constraints = viewArray ≥ relatedView.widthAnchor ./ 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthWithPriority() {
        let constraints = viewArray ≥ relatedView.widthAnchor ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.widthAnchor ~ 300
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: 300)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidth() {
        let constraints = viewArray ≤ relatedView.widthAnchor
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthInversedInference() {
        let constraints = viewArray.widthAnchor ≤ relatedView
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstant() {
        let constraints = viewArray ≤ relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthMinusConstant() {
        let constraints = viewArray ≤ relatedView.widthAnchor .- 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.widthAnchor .* 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.widthAnchor
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthDividedByConstant() {
        let constraints = viewArray ≤ relatedView.widthAnchor ./ 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthWithPriority() {
        let constraints = viewArray ≤ relatedView.widthAnchor ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.widthAnchor ~ 300
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: 300)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayWidth <=> relatedViewArrayWidth
    // MARK: Equal

    func testInferredViewArrayWidthEqualTorelatedViewArrayWidth() {
        let constraints = viewArray .= relatedViewArray.widthAnchor
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width)
    }

    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthInversedInference() {
        let constraints = viewArray.widthAnchor .= relatedViewArray
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width)
    }
    // MARK: Equal with constant
    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthPlusConstant() {
        let constraints = viewArray .= relatedViewArray.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10)
    }

    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthMinusConstant() {
        let constraints = viewArray .= relatedViewArray.widthAnchor .- 10
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthMultiplyingConstant() {
        let constraints = viewArray .= relatedViewArray.widthAnchor .* 3
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, multiplier: 3)
    }

    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedViewArray.widthAnchor
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, multiplier: 3)
    }

    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthDividedByConstant() {
        let constraints = viewArray .= relatedViewArray.widthAnchor ./ 2
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthWithPriority() {
        let constraints = viewArray .= relatedViewArray.widthAnchor ~ .low
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, priority: .low)
    }

    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthWithPriorityLiteral() {
        let constraints = viewArray .= relatedViewArray.widthAnchor ~ 300
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, priority: 300)
    }

    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthWithPriorityArithmetic() {
        let constraints = viewArray .= relatedViewArray.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedViewArray.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedViewArray.widthAnchor .+ 10)
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedViewArray.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedViewArray.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedViewArray.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedViewArray.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidth() {
        let constraints = viewArray ≥ relatedViewArray.widthAnchor
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthInversedInference() {
        let constraints = viewArray.widthAnchor ≥ relatedViewArray
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstant() {
        let constraints = viewArray ≥ relatedViewArray.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthMinusConstant() {
        let constraints = viewArray ≥ relatedViewArray.widthAnchor .- 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthMultiplyingConstant() {
        let constraints = viewArray ≥ relatedViewArray.widthAnchor .* 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.widthAnchor
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthDividedByConstant() {
        let constraints = viewArray ≥ relatedViewArray.widthAnchor ./ 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthWithPriority() {
        let constraints = viewArray ≥ relatedViewArray.widthAnchor ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, priority: .low)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedViewArray.widthAnchor ~ 300
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, priority: 300)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedViewArray.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedViewArray.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.widthAnchor .+ 10)
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedViewArray.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidth() {
        let constraints = viewArray ≤ relatedViewArray.widthAnchor
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthInversedInference() {
        let constraints = viewArray.widthAnchor ≤ relatedViewArray
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstant() {
        let constraints = viewArray ≤ relatedViewArray.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthMinusConstant() {
        let constraints = viewArray ≤ relatedViewArray.widthAnchor .- 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthMultiplyingConstant() {
        let constraints = viewArray ≤ relatedViewArray.widthAnchor .* 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.widthAnchor
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, multiplier: 3)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthDividedByConstant() {
        let constraints = viewArray ≤ relatedViewArray.widthAnchor ./ 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthWithPriority() {
        let constraints = viewArray ≤ relatedViewArray.widthAnchor ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, priority: .low)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedViewArray.widthAnchor ~ 300
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, priority: 300)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedViewArray.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedViewArray.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.widthAnchor .+ 10)
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedViewArray.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedViewArray.widthAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.widthAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.widthAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthLessThanOrEqualTorelatedViewArrayWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedViewArray.widthAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedViewArray, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayHeight <=> relatedViewHeight
    // MARK: Equal

    func testInferredViewArrayHeightEqualTorelatedViewHeight() {
        let constraints = viewArray .= relatedView.heightAnchor
        constraints.assert(viewArray, .height, .equal, relatedView, .height)
    }

    func testInferredViewArrayHeightEqualTorelatedViewHeightInversedInference() {
        let constraints = viewArray.heightAnchor .= relatedView
        constraints.assert(viewArray, .height, .equal, relatedView, .height)
    }
    // MARK: Equal with constant
    func testInferredViewArrayHeightEqualTorelatedViewHeightPlusConstant() {
        let constraints = viewArray .= relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10)
    }

    func testInferredViewArrayHeightEqualTorelatedViewHeightMinusConstant() {
        let constraints = viewArray .= relatedView.heightAnchor .- 10
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayHeightEqualTorelatedViewHeightMultiplyingConstant() {
        let constraints = viewArray .= relatedView.heightAnchor .* 3
        constraints.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testInferredViewArrayHeightEqualTorelatedViewHeightMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.heightAnchor
        constraints.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testInferredViewArrayHeightEqualTorelatedViewHeightDividedByConstant() {
        let constraints = viewArray .= relatedView.heightAnchor ./ 2
        constraints.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayHeightEqualTorelatedViewHeightWithPriority() {
        let constraints = viewArray .= relatedView.heightAnchor ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, priority: .low)
    }

    func testInferredViewArrayHeightEqualTorelatedViewHeightWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.heightAnchor ~ 300
        constraints.assert(viewArray, .height, .equal, relatedView, .height, priority: 300)
    }

    func testInferredViewArrayHeightEqualTorelatedViewHeightWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayHeightEqualTorelatedViewHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayHeightEqualTorelatedViewHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayHeightEqualTorelatedViewHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayHeightEqualTorelatedViewHeightPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayHeightEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayHeightEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeight() {
        let constraints = viewArray ≥ relatedView.heightAnchor
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightInversedInference() {
        let constraints = viewArray.heightAnchor ≥ relatedView
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstant() {
        let constraints = viewArray ≥ relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightMinusConstant() {
        let constraints = viewArray ≥ relatedView.heightAnchor .- 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.heightAnchor .* 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.heightAnchor
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightDividedByConstant() {
        let constraints = viewArray ≥ relatedView.heightAnchor ./ 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightWithPriority() {
        let constraints = viewArray ≥ relatedView.heightAnchor ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.heightAnchor ~ 300
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeight() {
        let constraints = viewArray ≤ relatedView.heightAnchor
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightInversedInference() {
        let constraints = viewArray.heightAnchor ≤ relatedView
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstant() {
        let constraints = viewArray ≤ relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightMinusConstant() {
        let constraints = viewArray ≤ relatedView.heightAnchor .- 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.heightAnchor .* 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.heightAnchor
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightDividedByConstant() {
        let constraints = viewArray ≤ relatedView.heightAnchor ./ 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightWithPriority() {
        let constraints = viewArray ≤ relatedView.heightAnchor ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.heightAnchor ~ 300
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayHeight <=> relatedViewArrayHeight
    // MARK: Equal

    func testInferredViewArrayHeightEqualTorelatedViewArrayHeight() {
        let constraints = viewArray .= relatedViewArray.heightAnchor
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height)
    }

    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightInversedInference() {
        let constraints = viewArray.heightAnchor .= relatedViewArray
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height)
    }
    // MARK: Equal with constant
    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightPlusConstant() {
        let constraints = viewArray .= relatedViewArray.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10)
    }

    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightMinusConstant() {
        let constraints = viewArray .= relatedViewArray.heightAnchor .- 10
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightMultiplyingConstant() {
        let constraints = viewArray .= relatedViewArray.heightAnchor .* 3
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, multiplier: 3)
    }

    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedViewArray.heightAnchor
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, multiplier: 3)
    }

    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightDividedByConstant() {
        let constraints = viewArray .= relatedViewArray.heightAnchor ./ 2
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightWithPriority() {
        let constraints = viewArray .= relatedViewArray.heightAnchor ~ .low
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, priority: .low)
    }

    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightWithPriorityLiteral() {
        let constraints = viewArray .= relatedViewArray.heightAnchor ~ 300
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, priority: 300)
    }

    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightWithPriorityArithmetic() {
        let constraints = viewArray .= relatedViewArray.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedViewArray.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedViewArray.heightAnchor .+ 10)
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedViewArray.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedViewArray.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedViewArray.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedViewArray.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeight() {
        let constraints = viewArray ≥ relatedViewArray.heightAnchor
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightInversedInference() {
        let constraints = viewArray.heightAnchor ≥ relatedViewArray
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height)
    }
    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstant() {
        let constraints = viewArray ≥ relatedViewArray.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightMinusConstant() {
        let constraints = viewArray ≥ relatedViewArray.heightAnchor .- 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightMultiplyingConstant() {
        let constraints = viewArray ≥ relatedViewArray.heightAnchor .* 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.heightAnchor
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightDividedByConstant() {
        let constraints = viewArray ≥ relatedViewArray.heightAnchor ./ 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightWithPriority() {
        let constraints = viewArray ≥ relatedViewArray.heightAnchor ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, priority: .low)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedViewArray.heightAnchor ~ 300
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, priority: 300)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedViewArray.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedViewArray.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.heightAnchor .+ 10)
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedViewArray.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedViewArray.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeight() {
        let constraints = viewArray ≤ relatedViewArray.heightAnchor
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightInversedInference() {
        let constraints = viewArray.heightAnchor ≤ relatedViewArray
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height)
    }
    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstant() {
        let constraints = viewArray ≤ relatedViewArray.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightMinusConstant() {
        let constraints = viewArray ≤ relatedViewArray.heightAnchor .- 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightMultiplyingConstant() {
        let constraints = viewArray ≤ relatedViewArray.heightAnchor .* 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.heightAnchor
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, multiplier: 3)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightDividedByConstant() {
        let constraints = viewArray ≤ relatedViewArray.heightAnchor ./ 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightWithPriority() {
        let constraints = viewArray ≤ relatedViewArray.heightAnchor ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, priority: .low)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedViewArray.heightAnchor ~ 300
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, priority: 300)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedViewArray.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedViewArray.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.heightAnchor .+ 10)
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedViewArray.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedViewArray.heightAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedViewArray.heightAnchor .+ 10) ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedViewArray.heightAnchor .+ 10 ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightLessThanOrEqualTorelatedViewArrayHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedViewArray.heightAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedViewArray, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
// sourcery:end
}
