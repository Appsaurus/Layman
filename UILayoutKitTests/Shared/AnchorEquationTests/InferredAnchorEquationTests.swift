//
//  InferredAnchorEquationTests.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/29/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// swiftlint:disable file_length type_body_length
@testable import UILayoutKit
import XCTest

// sourcery: lhsItems = view1, lhsItems = viewArray
// sourcery: rhsAttributes = leading, rhsAttributes = centerX, rhsAttributes = trailing, rhsAttributes = top, rhsAttributes = centerY, rhsAttributes = bottom, rhsAttributes = width, rhsAttributes = height
class InferredAnchorEquationTests: UILayoutKitTestCase {

// sourcery:inline:auto:InferredAnchorEquationTests.InferredAnchorEquationTests
    // MARK: view1Leading <=> relatedViewLeading
    // MARK: Equal

    func testInferredView1LeadingEqualToLeading() {
        let constraints = view1 .= relatedView.leadingAnchor
        constraints.assert(view1, .leading, .equal, relatedView, .leading)
    }

    // MARK: Equal with constant
    func testInferredView1LeadingEqualToLeadingPlusConstant() {
        let constraints = view1 .= relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10)
    }

    func testInferredView1LeadingEqualToLeadingMinusConstant() {
        let constraints = view1 .= relatedView.leadingAnchor .- 10
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1LeadingEqualToLeadingMultiplyingConstant() {
        let constraints = view1 .= relatedView.leadingAnchor .* 3
        constraints.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    func testInferredView1LeadingEqualToLeadingMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.leadingAnchor
        constraints.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    func testInferredView1LeadingEqualToLeadingDividedByConstant() {
        let constraints = view1 .= relatedView.leadingAnchor ./ 2
        constraints.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1LeadingEqualToLeadingWithPriority() {
        let constraints = view1 .= relatedView.leadingAnchor ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .leading, priority: .low)
    }

    func testInferredView1LeadingEqualToLeadingWithPriorityLiteral() {
        let constraints = view1 .= relatedView.leadingAnchor ~ 300
        constraints.assert(view1, .leading, .equal, relatedView, .leading, priority: 300)
    }

    func testInferredView1LeadingEqualToLeadingWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1LeadingEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LeadingEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LeadingEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testInferredView1LeadingEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1LeadingEqualToLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingEqualToLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingEqualToLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingEqualToLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1LeadingEqualToLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.leadingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingEqualToLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.leadingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingEqualToLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.leadingAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingEqualToLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.leadingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1LeadingLessThanOrEqualToLeading() {
        let constraints = view1 ≤ relatedView.leadingAnchor
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1LeadingLessThanOrEqualToLeadingPlusConstant() {
        let constraints = view1 ≤ relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testInferredView1LeadingLessThanOrEqualToLeadingMinusConstant() {
        let constraints = view1 ≤ relatedView.leadingAnchor .- 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1LeadingLessThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.leadingAnchor .* 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testInferredView1LeadingLessThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.leadingAnchor
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testInferredView1LeadingLessThanOrEqualToLeadingDividedByConstant() {
        let constraints = view1 ≤ relatedView.leadingAnchor ./ 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1LeadingLessThanOrEqualToLeadingWithPriority() {
        let constraints = view1 ≤ relatedView.leadingAnchor ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testInferredView1LeadingLessThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.leadingAnchor ~ 300
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testInferredView1LeadingLessThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1LeadingLessThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LeadingLessThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LeadingLessThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testInferredView1LeadingLessThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LeadingLessThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingLessThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingLessThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingLessThanOrEqualToLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LeadingLessThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.leadingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingLessThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.leadingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingLessThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.leadingAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingLessThanOrEqualToLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.leadingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1LeadingGreaterThanOrEqualToLeading() {
        let constraints = view1 ≥ relatedView.leadingAnchor
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1LeadingGreaterThanOrEqualToLeadingPlusConstant() {
        let constraints = view1 ≥ relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testInferredView1LeadingGreaterThanOrEqualToLeadingMinusConstant() {
        let constraints = view1 ≥ relatedView.leadingAnchor .- 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1LeadingGreaterThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.leadingAnchor .* 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testInferredView1LeadingGreaterThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.leadingAnchor
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testInferredView1LeadingGreaterThanOrEqualToLeadingDividedByConstant() {
        let constraints = view1 ≥ relatedView.leadingAnchor ./ 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1LeadingGreaterThanOrEqualToLeadingWithPriority() {
        let constraints = view1 ≥ relatedView.leadingAnchor ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testInferredView1LeadingGreaterThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.leadingAnchor ~ 300
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testInferredView1LeadingGreaterThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1LeadingGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LeadingGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1LeadingGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testInferredView1LeadingGreaterThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1LeadingGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1LeadingGreaterThanOrEqualToLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1LeadingGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.leadingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.leadingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.leadingAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1LeadingGreaterThanOrEqualToLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.leadingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1CenterX <=> relatedViewCenterX
    // MARK: Equal

    func testInferredView1CenterXEqualToCenterX() {
        let constraints = view1 .= relatedView.centerXAnchor
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX)
    }

    // MARK: Equal with constant
    func testInferredView1CenterXEqualToCenterXPlusConstant() {
        let constraints = view1 .= relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10)
    }

    func testInferredView1CenterXEqualToCenterXMinusConstant() {
        let constraints = view1 .= relatedView.centerXAnchor .- 10
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1CenterXEqualToCenterXMultiplyingConstant() {
        let constraints = view1 .= relatedView.centerXAnchor .* 3
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testInferredView1CenterXEqualToCenterXMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.centerXAnchor
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testInferredView1CenterXEqualToCenterXDividedByConstant() {
        let constraints = view1 .= relatedView.centerXAnchor ./ 2
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1CenterXEqualToCenterXWithPriority() {
        let constraints = view1 .= relatedView.centerXAnchor ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, priority: .low)
    }

    func testInferredView1CenterXEqualToCenterXWithPriorityLiteral() {
        let constraints = view1 .= relatedView.centerXAnchor ~ 300
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 300)
    }

    func testInferredView1CenterXEqualToCenterXWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1CenterXEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterXEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterXEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testInferredView1CenterXEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1CenterXEqualToCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXEqualToCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXEqualToCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXEqualToCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterXEqualToCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerXAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXEqualToCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.centerXAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXEqualToCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.centerXAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXEqualToCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerXAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1CenterXLessThanOrEqualToCenterX() {
        let constraints = view1 ≤ relatedView.centerXAnchor
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1CenterXLessThanOrEqualToCenterXPlusConstant() {
        let constraints = view1 ≤ relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testInferredView1CenterXLessThanOrEqualToCenterXMinusConstant() {
        let constraints = view1 ≤ relatedView.centerXAnchor .- 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1CenterXLessThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.centerXAnchor .* 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testInferredView1CenterXLessThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerXAnchor
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testInferredView1CenterXLessThanOrEqualToCenterXDividedByConstant() {
        let constraints = view1 ≤ relatedView.centerXAnchor ./ 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1CenterXLessThanOrEqualToCenterXWithPriority() {
        let constraints = view1 ≤ relatedView.centerXAnchor ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testInferredView1CenterXLessThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.centerXAnchor ~ 300
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testInferredView1CenterXLessThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1CenterXLessThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterXLessThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterXLessThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testInferredView1CenterXLessThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1CenterXLessThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXLessThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXLessThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXLessThanOrEqualToCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterXLessThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerXAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXLessThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.centerXAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXLessThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.centerXAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXLessThanOrEqualToCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerXAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1CenterXGreaterThanOrEqualToCenterX() {
        let constraints = view1 ≥ relatedView.centerXAnchor
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1CenterXGreaterThanOrEqualToCenterXPlusConstant() {
        let constraints = view1 ≥ relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testInferredView1CenterXGreaterThanOrEqualToCenterXMinusConstant() {
        let constraints = view1 ≥ relatedView.centerXAnchor .- 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1CenterXGreaterThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.centerXAnchor .* 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testInferredView1CenterXGreaterThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerXAnchor
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testInferredView1CenterXGreaterThanOrEqualToCenterXDividedByConstant() {
        let constraints = view1 ≥ relatedView.centerXAnchor ./ 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1CenterXGreaterThanOrEqualToCenterXWithPriority() {
        let constraints = view1 ≥ relatedView.centerXAnchor ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testInferredView1CenterXGreaterThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.centerXAnchor ~ 300
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testInferredView1CenterXGreaterThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1CenterXGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterXGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterXGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testInferredView1CenterXGreaterThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1CenterXGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterXGreaterThanOrEqualToCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterXGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerXAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.centerXAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.centerXAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterXGreaterThanOrEqualToCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerXAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1Trailing <=> relatedViewTrailing
    // MARK: Equal

    func testInferredView1TrailingEqualToTrailing() {
        let constraints = view1 .= relatedView.trailingAnchor
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testInferredView1TrailingEqualToTrailingPlusConstant() {
        let constraints = view1 .= relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10)
    }

    func testInferredView1TrailingEqualToTrailingMinusConstant() {
        let constraints = view1 .= relatedView.trailingAnchor .- 10
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1TrailingEqualToTrailingMultiplyingConstant() {
        let constraints = view1 .= relatedView.trailingAnchor .* 3
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testInferredView1TrailingEqualToTrailingMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.trailingAnchor
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testInferredView1TrailingEqualToTrailingDividedByConstant() {
        let constraints = view1 .= relatedView.trailingAnchor ./ 2
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1TrailingEqualToTrailingWithPriority() {
        let constraints = view1 .= relatedView.trailingAnchor ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, priority: .low)
    }

    func testInferredView1TrailingEqualToTrailingWithPriorityLiteral() {
        let constraints = view1 .= relatedView.trailingAnchor ~ 300
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 300)
    }

    func testInferredView1TrailingEqualToTrailingWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1TrailingEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TrailingEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TrailingEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredView1TrailingEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1TrailingEqualToTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingEqualToTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingEqualToTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingEqualToTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1TrailingEqualToTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.trailingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingEqualToTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.trailingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingEqualToTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.trailingAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingEqualToTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.trailingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1TrailingLessThanOrEqualToTrailing() {
        let constraints = view1 ≤ relatedView.trailingAnchor
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1TrailingLessThanOrEqualToTrailingPlusConstant() {
        let constraints = view1 ≤ relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testInferredView1TrailingLessThanOrEqualToTrailingMinusConstant() {
        let constraints = view1 ≤ relatedView.trailingAnchor .- 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1TrailingLessThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.trailingAnchor .* 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredView1TrailingLessThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.trailingAnchor
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredView1TrailingLessThanOrEqualToTrailingDividedByConstant() {
        let constraints = view1 ≤ relatedView.trailingAnchor ./ 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1TrailingLessThanOrEqualToTrailingWithPriority() {
        let constraints = view1 ≤ relatedView.trailingAnchor ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testInferredView1TrailingLessThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.trailingAnchor ~ 300
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testInferredView1TrailingLessThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1TrailingLessThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TrailingLessThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TrailingLessThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredView1TrailingLessThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1TrailingLessThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingLessThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingLessThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingLessThanOrEqualToTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1TrailingLessThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.trailingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingLessThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.trailingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingLessThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.trailingAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingLessThanOrEqualToTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.trailingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1TrailingGreaterThanOrEqualToTrailing() {
        let constraints = view1 ≥ relatedView.trailingAnchor
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1TrailingGreaterThanOrEqualToTrailingPlusConstant() {
        let constraints = view1 ≥ relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testInferredView1TrailingGreaterThanOrEqualToTrailingMinusConstant() {
        let constraints = view1 ≥ relatedView.trailingAnchor .- 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1TrailingGreaterThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.trailingAnchor .* 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredView1TrailingGreaterThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.trailingAnchor
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredView1TrailingGreaterThanOrEqualToTrailingDividedByConstant() {
        let constraints = view1 ≥ relatedView.trailingAnchor ./ 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1TrailingGreaterThanOrEqualToTrailingWithPriority() {
        let constraints = view1 ≥ relatedView.trailingAnchor ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testInferredView1TrailingGreaterThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.trailingAnchor ~ 300
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testInferredView1TrailingGreaterThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1TrailingGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TrailingGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TrailingGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredView1TrailingGreaterThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1TrailingGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1TrailingGreaterThanOrEqualToTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1TrailingGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.trailingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.trailingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.trailingAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1TrailingGreaterThanOrEqualToTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.trailingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1Top <=> relatedViewTop
    // MARK: Equal

    func testInferredView1TopEqualToTop() {
        let constraints = view1 .= relatedView.topAnchor
        constraints.assert(view1, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testInferredView1TopEqualToTopPlusConstant() {
        let constraints = view1 .= relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10)
    }

    func testInferredView1TopEqualToTopMinusConstant() {
        let constraints = view1 .= relatedView.topAnchor .- 10
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1TopEqualToTopMultiplyingConstant() {
        let constraints = view1 .= relatedView.topAnchor .* 3
        constraints.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testInferredView1TopEqualToTopMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.topAnchor
        constraints.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testInferredView1TopEqualToTopDividedByConstant() {
        let constraints = view1 .= relatedView.topAnchor ./ 2
        constraints.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1TopEqualToTopWithPriority() {
        let constraints = view1 .= relatedView.topAnchor ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, priority: .low)
    }

    func testInferredView1TopEqualToTopWithPriorityLiteral() {
        let constraints = view1 .= relatedView.topAnchor ~ 300
        constraints.assert(view1, .top, .equal, relatedView, .top, priority: 300)
    }

    func testInferredView1TopEqualToTopWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1TopEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TopEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TopEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1TopEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1TopEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TopEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TopEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1TopEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1TopEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TopEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TopEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1TopEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1TopLessThanOrEqualToTop() {
        let constraints = view1 ≤ relatedView.topAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1TopLessThanOrEqualToTopPlusConstant() {
        let constraints = view1 ≤ relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredView1TopLessThanOrEqualToTopMinusConstant() {
        let constraints = view1 ≤ relatedView.topAnchor .- 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1TopLessThanOrEqualToTopMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.topAnchor .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredView1TopLessThanOrEqualToTopMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topAnchor
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredView1TopLessThanOrEqualToTopDividedByConstant() {
        let constraints = view1 ≤ relatedView.topAnchor ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1TopLessThanOrEqualToTopWithPriority() {
        let constraints = view1 ≤ relatedView.topAnchor ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredView1TopLessThanOrEqualToTopWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.topAnchor ~ 300
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredView1TopLessThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1TopLessThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TopLessThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TopLessThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1TopLessThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1TopLessThanOrEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TopLessThanOrEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TopLessThanOrEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1TopLessThanOrEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1TopLessThanOrEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TopLessThanOrEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TopLessThanOrEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1TopLessThanOrEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1TopGreaterThanOrEqualToTop() {
        let constraints = view1 ≥ relatedView.topAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1TopGreaterThanOrEqualToTopPlusConstant() {
        let constraints = view1 ≥ relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredView1TopGreaterThanOrEqualToTopMinusConstant() {
        let constraints = view1 ≥ relatedView.topAnchor .- 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1TopGreaterThanOrEqualToTopMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.topAnchor .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredView1TopGreaterThanOrEqualToTopMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topAnchor
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredView1TopGreaterThanOrEqualToTopDividedByConstant() {
        let constraints = view1 ≥ relatedView.topAnchor ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1TopGreaterThanOrEqualToTopWithPriority() {
        let constraints = view1 ≥ relatedView.topAnchor ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredView1TopGreaterThanOrEqualToTopWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.topAnchor ~ 300
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredView1TopGreaterThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.topAnchor ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1TopGreaterThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TopGreaterThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1TopGreaterThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredView1TopGreaterThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1TopGreaterThanOrEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TopGreaterThanOrEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1TopGreaterThanOrEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1TopGreaterThanOrEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1TopGreaterThanOrEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TopGreaterThanOrEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1TopGreaterThanOrEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1TopGreaterThanOrEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1CenterY <=> relatedViewCenterY
    // MARK: Equal

    func testInferredView1CenterYEqualToCenterY() {
        let constraints = view1 .= relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testInferredView1CenterYEqualToCenterYPlusConstant() {
        let constraints = view1 .= relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10)
    }

    func testInferredView1CenterYEqualToCenterYMinusConstant() {
        let constraints = view1 .= relatedView.centerYAnchor .- 10
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1CenterYEqualToCenterYMultiplyingConstant() {
        let constraints = view1 .= relatedView.centerYAnchor .* 3
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testInferredView1CenterYEqualToCenterYMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testInferredView1CenterYEqualToCenterYDividedByConstant() {
        let constraints = view1 .= relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1CenterYEqualToCenterYWithPriority() {
        let constraints = view1 .= relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, priority: .low)
    }

    func testInferredView1CenterYEqualToCenterYWithPriorityLiteral() {
        let constraints = view1 .= relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 300)
    }

    func testInferredView1CenterYEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1CenterYEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterYEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterYEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredView1CenterYEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1CenterYEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterYEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1CenterYLessThanOrEqualToCenterY() {
        let constraints = view1 ≤ relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1CenterYLessThanOrEqualToCenterYPlusConstant() {
        let constraints = view1 ≤ relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testInferredView1CenterYLessThanOrEqualToCenterYMinusConstant() {
        let constraints = view1 ≤ relatedView.centerYAnchor .- 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1CenterYLessThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.centerYAnchor .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredView1CenterYLessThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredView1CenterYLessThanOrEqualToCenterYDividedByConstant() {
        let constraints = view1 ≤ relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1CenterYLessThanOrEqualToCenterYWithPriority() {
        let constraints = view1 ≤ relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testInferredView1CenterYLessThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testInferredView1CenterYLessThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1CenterYLessThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterYLessThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterYLessThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredView1CenterYLessThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1CenterYLessThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYLessThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYLessThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYLessThanOrEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterYLessThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYLessThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYLessThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYLessThanOrEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1CenterYGreaterThanOrEqualToCenterY() {
        let constraints = view1 ≥ relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1CenterYGreaterThanOrEqualToCenterYPlusConstant() {
        let constraints = view1 ≥ relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testInferredView1CenterYGreaterThanOrEqualToCenterYMinusConstant() {
        let constraints = view1 ≥ relatedView.centerYAnchor .- 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1CenterYGreaterThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.centerYAnchor .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredView1CenterYGreaterThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerYAnchor
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredView1CenterYGreaterThanOrEqualToCenterYDividedByConstant() {
        let constraints = view1 ≥ relatedView.centerYAnchor ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1CenterYGreaterThanOrEqualToCenterYWithPriority() {
        let constraints = view1 ≥ relatedView.centerYAnchor ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testInferredView1CenterYGreaterThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.centerYAnchor ~ 300
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testInferredView1CenterYGreaterThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1CenterYGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterYGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1CenterYGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredView1CenterYGreaterThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1CenterYGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1CenterYGreaterThanOrEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1CenterYGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1CenterYGreaterThanOrEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1Bottom <=> relatedViewBottom
    // MARK: Equal

    func testInferredView1BottomEqualToBottom() {
        let constraints = view1 .= relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testInferredView1BottomEqualToBottomPlusConstant() {
        let constraints = view1 .= relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testInferredView1BottomEqualToBottomMinusConstant() {
        let constraints = view1 .= relatedView.bottomAnchor .- 10
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1BottomEqualToBottomMultiplyingConstant() {
        let constraints = view1 .= relatedView.bottomAnchor .* 3
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1BottomEqualToBottomMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1BottomEqualToBottomDividedByConstant() {
        let constraints = view1 .= relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1BottomEqualToBottomWithPriority() {
        let constraints = view1 .= relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testInferredView1BottomEqualToBottomWithPriorityLiteral() {
        let constraints = view1 .= relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testInferredView1BottomEqualToBottomWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1BottomEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1BottomEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1BottomEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1BottomEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1BottomEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1BottomEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1BottomLessThanOrEqualToBottom() {
        let constraints = view1 ≤ relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1BottomLessThanOrEqualToBottomPlusConstant() {
        let constraints = view1 ≤ relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredView1BottomLessThanOrEqualToBottomMinusConstant() {
        let constraints = view1 ≤ relatedView.bottomAnchor .- 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1BottomLessThanOrEqualToBottomMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.bottomAnchor .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1BottomLessThanOrEqualToBottomMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1BottomLessThanOrEqualToBottomDividedByConstant() {
        let constraints = view1 ≤ relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1BottomLessThanOrEqualToBottomWithPriority() {
        let constraints = view1 ≤ relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredView1BottomLessThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredView1BottomLessThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1BottomLessThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1BottomLessThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1BottomLessThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1BottomLessThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1BottomLessThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomLessThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomLessThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomLessThanOrEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1BottomLessThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomLessThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomLessThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomLessThanOrEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1BottomGreaterThanOrEqualToBottom() {
        let constraints = view1 ≥ relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1BottomGreaterThanOrEqualToBottomPlusConstant() {
        let constraints = view1 ≥ relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredView1BottomGreaterThanOrEqualToBottomMinusConstant() {
        let constraints = view1 ≥ relatedView.bottomAnchor .- 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1BottomGreaterThanOrEqualToBottomMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.bottomAnchor .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1BottomGreaterThanOrEqualToBottomMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomAnchor
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredView1BottomGreaterThanOrEqualToBottomDividedByConstant() {
        let constraints = view1 ≥ relatedView.bottomAnchor ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1BottomGreaterThanOrEqualToBottomWithPriority() {
        let constraints = view1 ≥ relatedView.bottomAnchor ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredView1BottomGreaterThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.bottomAnchor ~ 300
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredView1BottomGreaterThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1BottomGreaterThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1BottomGreaterThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1BottomGreaterThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredView1BottomGreaterThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1BottomGreaterThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomGreaterThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomGreaterThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1BottomGreaterThanOrEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1BottomGreaterThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomGreaterThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomGreaterThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1BottomGreaterThanOrEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1Width <=> relatedViewWidth
    // MARK: Equal

    func testInferredView1WidthEqualToWidth() {
        let constraints = view1 .= relatedView.widthAnchor
        constraints.assert(view1, .width, .equal, relatedView, .width)
    }

    // MARK: Equal with constant
    func testInferredView1WidthEqualToWidthPlusConstant() {
        let constraints = view1 .= relatedView.widthAnchor .+ 10
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10)
    }

    func testInferredView1WidthEqualToWidthMinusConstant() {
        let constraints = view1 .= relatedView.widthAnchor .- 10
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1WidthEqualToWidthMultiplyingConstant() {
        let constraints = view1 .= relatedView.widthAnchor .* 3
        constraints.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
    }

    func testInferredView1WidthEqualToWidthMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.widthAnchor
        constraints.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
    }

    func testInferredView1WidthEqualToWidthDividedByConstant() {
        let constraints = view1 .= relatedView.widthAnchor ./ 2
        constraints.assert(view1, .width, .equal, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1WidthEqualToWidthWithPriority() {
        let constraints = view1 .= relatedView.widthAnchor ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, priority: .low)
    }

    func testInferredView1WidthEqualToWidthWithPriorityLiteral() {
        let constraints = view1 .= relatedView.widthAnchor ~ 300
        constraints.assert(view1, .width, .equal, relatedView, .width, priority: 300)
    }

    func testInferredView1WidthEqualToWidthWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.widthAnchor ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1WidthEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1WidthEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1WidthEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testInferredView1WidthEqualToWidthPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1WidthEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthEqualToWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1WidthEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1WidthLessThanOrEqualToWidth() {
        let constraints = view1 ≤ relatedView.widthAnchor
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1WidthLessThanOrEqualToWidthPlusConstant() {
        let constraints = view1 ≤ relatedView.widthAnchor .+ 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
    }

    func testInferredView1WidthLessThanOrEqualToWidthMinusConstant() {
        let constraints = view1 ≤ relatedView.widthAnchor .- 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1WidthLessThanOrEqualToWidthMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.widthAnchor .* 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testInferredView1WidthLessThanOrEqualToWidthMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.widthAnchor
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testInferredView1WidthLessThanOrEqualToWidthDividedByConstant() {
        let constraints = view1 ≤ relatedView.widthAnchor ./ 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1WidthLessThanOrEqualToWidthWithPriority() {
        let constraints = view1 ≤ relatedView.widthAnchor ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
    }

    func testInferredView1WidthLessThanOrEqualToWidthWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.widthAnchor ~ 300
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 300)
    }

    func testInferredView1WidthLessThanOrEqualToWidthWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1WidthLessThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1WidthLessThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1WidthLessThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testInferredView1WidthLessThanOrEqualToWidthPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1WidthLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1WidthLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1WidthGreaterThanOrEqualToWidth() {
        let constraints = view1 ≥ relatedView.widthAnchor
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1WidthGreaterThanOrEqualToWidthPlusConstant() {
        let constraints = view1 ≥ relatedView.widthAnchor .+ 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
    }

    func testInferredView1WidthGreaterThanOrEqualToWidthMinusConstant() {
        let constraints = view1 ≥ relatedView.widthAnchor .- 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1WidthGreaterThanOrEqualToWidthMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.widthAnchor .* 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testInferredView1WidthGreaterThanOrEqualToWidthMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.widthAnchor
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testInferredView1WidthGreaterThanOrEqualToWidthDividedByConstant() {
        let constraints = view1 ≥ relatedView.widthAnchor ./ 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1WidthGreaterThanOrEqualToWidthWithPriority() {
        let constraints = view1 ≥ relatedView.widthAnchor ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
    }

    func testInferredView1WidthGreaterThanOrEqualToWidthWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.widthAnchor ~ 300
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 300)
    }

    func testInferredView1WidthGreaterThanOrEqualToWidthWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1WidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1WidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1WidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testInferredView1WidthGreaterThanOrEqualToWidthPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1WidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1WidthGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1WidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1WidthGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1Height <=> relatedViewHeight
    // MARK: Equal

    func testInferredView1HeightEqualToHeight() {
        let constraints = view1 .= relatedView.heightAnchor
        constraints.assert(view1, .height, .equal, relatedView, .height)
    }

    // MARK: Equal with constant
    func testInferredView1HeightEqualToHeightPlusConstant() {
        let constraints = view1 .= relatedView.heightAnchor .+ 10
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10)
    }

    func testInferredView1HeightEqualToHeightMinusConstant() {
        let constraints = view1 .= relatedView.heightAnchor .- 10
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredView1HeightEqualToHeightMultiplyingConstant() {
        let constraints = view1 .= relatedView.heightAnchor .* 3
        constraints.assert(view1, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testInferredView1HeightEqualToHeightMultipliedByConstant() {
        let constraints = view1 .= 3 .* relatedView.heightAnchor
        constraints.assert(view1, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testInferredView1HeightEqualToHeightDividedByConstant() {
        let constraints = view1 .= relatedView.heightAnchor ./ 2
        constraints.assert(view1, .height, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredView1HeightEqualToHeightWithPriority() {
        let constraints = view1 .= relatedView.heightAnchor ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, priority: .low)
    }

    func testInferredView1HeightEqualToHeightWithPriorityLiteral() {
        let constraints = view1 .= relatedView.heightAnchor ~ 300
        constraints.assert(view1, .height, .equal, relatedView, .height, priority: 300)
    }

    func testInferredView1HeightEqualToHeightWithPriorityArithmetic() {
        let constraints = view1 .= relatedView.heightAnchor ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredView1HeightEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = view1 .= (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1HeightEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = view1 .= 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1HeightEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = view1 .= 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testInferredView1HeightEqualToHeightPlusConstantDividedByConstant() {
        let constraints = view1 .= (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredView1HeightEqualToHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 .= (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightEqualToHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 .= 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightEqualToHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 .= 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightEqualToHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 .= (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredView1HeightEqualToHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.heightAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightEqualToHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* (relatedView.heightAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightEqualToHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 .= 3 .* relatedView.heightAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightEqualToHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 .= (relatedView.heightAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredView1HeightLessThanOrEqualToHeight() {
        let constraints = view1 ≤ relatedView.heightAnchor
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredView1HeightLessThanOrEqualToHeightPlusConstant() {
        let constraints = view1 ≤ relatedView.heightAnchor .+ 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testInferredView1HeightLessThanOrEqualToHeightMinusConstant() {
        let constraints = view1 ≤ relatedView.heightAnchor .- 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredView1HeightLessThanOrEqualToHeightMultiplyingConstant() {
        let constraints = view1 ≤ relatedView.heightAnchor .* 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredView1HeightLessThanOrEqualToHeightMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* relatedView.heightAnchor
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredView1HeightLessThanOrEqualToHeightDividedByConstant() {
        let constraints = view1 ≤ relatedView.heightAnchor ./ 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredView1HeightLessThanOrEqualToHeightWithPriority() {
        let constraints = view1 ≤ relatedView.heightAnchor ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testInferredView1HeightLessThanOrEqualToHeightWithPriorityLiteral() {
        let constraints = view1 ≤ relatedView.heightAnchor ~ 300
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testInferredView1HeightLessThanOrEqualToHeightWithPriorityArithmetic() {
        let constraints = view1 ≤ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredView1HeightLessThanOrEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = view1 ≤ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1HeightLessThanOrEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = view1 ≤ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1HeightLessThanOrEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = view1 ≤ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testInferredView1HeightLessThanOrEqualToHeightPlusConstantDividedByConstant() {
        let constraints = view1 ≤ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredView1HeightLessThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightLessThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≤ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightLessThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≤ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightLessThanOrEqualToHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≤ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1HeightLessThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.heightAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightLessThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* (relatedView.heightAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightLessThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ 3 .* relatedView.heightAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightLessThanOrEqualToHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≤ (relatedView.heightAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredView1HeightGreaterThanOrEqualToHeight() {
        let constraints = view1 ≥ relatedView.heightAnchor
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredView1HeightGreaterThanOrEqualToHeightPlusConstant() {
        let constraints = view1 ≥ relatedView.heightAnchor .+ 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testInferredView1HeightGreaterThanOrEqualToHeightMinusConstant() {
        let constraints = view1 ≥ relatedView.heightAnchor .- 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredView1HeightGreaterThanOrEqualToHeightMultiplyingConstant() {
        let constraints = view1 ≥ relatedView.heightAnchor .* 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredView1HeightGreaterThanOrEqualToHeightMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* relatedView.heightAnchor
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredView1HeightGreaterThanOrEqualToHeightDividedByConstant() {
        let constraints = view1 ≥ relatedView.heightAnchor ./ 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredView1HeightGreaterThanOrEqualToHeightWithPriority() {
        let constraints = view1 ≥ relatedView.heightAnchor ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testInferredView1HeightGreaterThanOrEqualToHeightWithPriorityLiteral() {
        let constraints = view1 ≥ relatedView.heightAnchor ~ 300
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testInferredView1HeightGreaterThanOrEqualToHeightWithPriorityArithmetic() {
        let constraints = view1 ≥ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredView1HeightGreaterThanOrEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = view1 ≥ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1HeightGreaterThanOrEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = view1 ≥ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredView1HeightGreaterThanOrEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = view1 ≥ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testInferredView1HeightGreaterThanOrEqualToHeightPlusConstantDividedByConstant() {
        let constraints = view1 ≥ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredView1HeightGreaterThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightGreaterThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1 ≥ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightGreaterThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1 ≥ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredView1HeightGreaterThanOrEqualToHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1 ≥ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredView1HeightGreaterThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.heightAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightGreaterThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* (relatedView.heightAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightGreaterThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ 3 .* relatedView.heightAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredView1HeightGreaterThanOrEqualToHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1 ≥ (relatedView.heightAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayLeading <=> relatedViewLeading
    // MARK: Equal

    func testInferredViewArrayLeadingEqualToLeading() {
        let constraints = viewArray .= relatedView.leadingAnchor
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading)
    }

    // MARK: Equal with constant
    func testInferredViewArrayLeadingEqualToLeadingPlusConstant() {
        let constraints = viewArray .= relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10)
    }

    func testInferredViewArrayLeadingEqualToLeadingMinusConstant() {
        let constraints = viewArray .= relatedView.leadingAnchor .- 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayLeadingEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray .= relatedView.leadingAnchor .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    func testInferredViewArrayLeadingEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.leadingAnchor
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    func testInferredViewArrayLeadingEqualToLeadingDividedByConstant() {
        let constraints = viewArray .= relatedView.leadingAnchor ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayLeadingEqualToLeadingWithPriority() {
        let constraints = viewArray .= relatedView.leadingAnchor ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, priority: .low)
    }

    func testInferredViewArrayLeadingEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.leadingAnchor ~ 300
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 300)
    }

    func testInferredViewArrayLeadingEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayLeadingEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLeadingEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLeadingEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLeadingEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayLeadingEqualToLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingEqualToLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingEqualToLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingEqualToLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLeadingEqualToLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.leadingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingEqualToLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.leadingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingEqualToLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.leadingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingEqualToLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.leadingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayLeadingLessThanOrEqualToLeading() {
        let constraints = viewArray ≤ relatedView.leadingAnchor
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayLeadingLessThanOrEqualToLeadingPlusConstant() {
        let constraints = viewArray ≤ relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testInferredViewArrayLeadingLessThanOrEqualToLeadingMinusConstant() {
        let constraints = viewArray ≤ relatedView.leadingAnchor .- 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayLeadingLessThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.leadingAnchor .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testInferredViewArrayLeadingLessThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.leadingAnchor
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testInferredViewArrayLeadingLessThanOrEqualToLeadingDividedByConstant() {
        let constraints = viewArray ≤ relatedView.leadingAnchor ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayLeadingLessThanOrEqualToLeadingWithPriority() {
        let constraints = viewArray ≤ relatedView.leadingAnchor ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testInferredViewArrayLeadingLessThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.leadingAnchor ~ 300
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testInferredViewArrayLeadingLessThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLeadingLessThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLeadingLessThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLeadingLessThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLeadingLessThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLeadingLessThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingLessThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingLessThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingLessThanOrEqualToLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLeadingLessThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.leadingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingLessThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.leadingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingLessThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.leadingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingLessThanOrEqualToLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.leadingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayLeadingGreaterThanOrEqualToLeading() {
        let constraints = viewArray ≥ relatedView.leadingAnchor
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstant() {
        let constraints = viewArray ≥ relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingMinusConstant() {
        let constraints = viewArray ≥ relatedView.leadingAnchor .- 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.leadingAnchor .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.leadingAnchor
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingDividedByConstant() {
        let constraints = viewArray ≥ relatedView.leadingAnchor ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingWithPriority() {
        let constraints = viewArray ≥ relatedView.leadingAnchor ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.leadingAnchor ~ 300
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.leadingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.leadingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.leadingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayLeadingGreaterThanOrEqualToLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.leadingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayCenterX <=> relatedViewCenterX
    // MARK: Equal

    func testInferredViewArrayCenterXEqualToCenterX() {
        let constraints = viewArray .= relatedView.centerXAnchor
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX)
    }

    // MARK: Equal with constant
    func testInferredViewArrayCenterXEqualToCenterXPlusConstant() {
        let constraints = viewArray .= relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10)
    }

    func testInferredViewArrayCenterXEqualToCenterXMinusConstant() {
        let constraints = viewArray .= relatedView.centerXAnchor .- 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayCenterXEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray .= relatedView.centerXAnchor .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testInferredViewArrayCenterXEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerXAnchor
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testInferredViewArrayCenterXEqualToCenterXDividedByConstant() {
        let constraints = viewArray .= relatedView.centerXAnchor ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayCenterXEqualToCenterXWithPriority() {
        let constraints = viewArray .= relatedView.centerXAnchor ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: .low)
    }

    func testInferredViewArrayCenterXEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.centerXAnchor ~ 300
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 300)
    }

    func testInferredViewArrayCenterXEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayCenterXEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterXEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterXEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayCenterXEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayCenterXEqualToCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXEqualToCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXEqualToCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXEqualToCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterXEqualToCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerXAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXEqualToCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.centerXAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXEqualToCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.centerXAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXEqualToCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerXAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayCenterXLessThanOrEqualToCenterX() {
        let constraints = viewArray ≤ relatedView.centerXAnchor
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayCenterXLessThanOrEqualToCenterXPlusConstant() {
        let constraints = viewArray ≤ relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testInferredViewArrayCenterXLessThanOrEqualToCenterXMinusConstant() {
        let constraints = viewArray ≤ relatedView.centerXAnchor .- 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayCenterXLessThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.centerXAnchor .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testInferredViewArrayCenterXLessThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerXAnchor
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testInferredViewArrayCenterXLessThanOrEqualToCenterXDividedByConstant() {
        let constraints = viewArray ≤ relatedView.centerXAnchor ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayCenterXLessThanOrEqualToCenterXWithPriority() {
        let constraints = viewArray ≤ relatedView.centerXAnchor ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testInferredViewArrayCenterXLessThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.centerXAnchor ~ 300
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testInferredViewArrayCenterXLessThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayCenterXLessThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterXLessThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterXLessThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayCenterXLessThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayCenterXLessThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXLessThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXLessThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXLessThanOrEqualToCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterXLessThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerXAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXLessThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerXAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXLessThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.centerXAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXLessThanOrEqualToCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerXAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterX() {
        let constraints = viewArray ≥ relatedView.centerXAnchor
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstant() {
        let constraints = viewArray ≥ relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXMinusConstant() {
        let constraints = viewArray ≥ relatedView.centerXAnchor .- 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.centerXAnchor .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerXAnchor
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXDividedByConstant() {
        let constraints = viewArray ≥ relatedView.centerXAnchor ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXWithPriority() {
        let constraints = viewArray ≥ relatedView.centerXAnchor ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.centerXAnchor ~ 300
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerXAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerXAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.centerXAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterXGreaterThanOrEqualToCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerXAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayTrailing <=> relatedViewTrailing
    // MARK: Equal

    func testInferredViewArrayTrailingEqualToTrailing() {
        let constraints = viewArray .= relatedView.trailingAnchor
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testInferredViewArrayTrailingEqualToTrailingPlusConstant() {
        let constraints = viewArray .= relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10)
    }

    func testInferredViewArrayTrailingEqualToTrailingMinusConstant() {
        let constraints = viewArray .= relatedView.trailingAnchor .- 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayTrailingEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray .= relatedView.trailingAnchor .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testInferredViewArrayTrailingEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.trailingAnchor
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testInferredViewArrayTrailingEqualToTrailingDividedByConstant() {
        let constraints = viewArray .= relatedView.trailingAnchor ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayTrailingEqualToTrailingWithPriority() {
        let constraints = viewArray .= relatedView.trailingAnchor ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: .low)
    }

    func testInferredViewArrayTrailingEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.trailingAnchor ~ 300
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 300)
    }

    func testInferredViewArrayTrailingEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayTrailingEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTrailingEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTrailingEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayTrailingEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayTrailingEqualToTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingEqualToTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingEqualToTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingEqualToTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayTrailingEqualToTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.trailingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingEqualToTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.trailingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingEqualToTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.trailingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingEqualToTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.trailingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayTrailingLessThanOrEqualToTrailing() {
        let constraints = viewArray ≤ relatedView.trailingAnchor
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayTrailingLessThanOrEqualToTrailingPlusConstant() {
        let constraints = viewArray ≤ relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testInferredViewArrayTrailingLessThanOrEqualToTrailingMinusConstant() {
        let constraints = viewArray ≤ relatedView.trailingAnchor .- 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayTrailingLessThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.trailingAnchor .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredViewArrayTrailingLessThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.trailingAnchor
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredViewArrayTrailingLessThanOrEqualToTrailingDividedByConstant() {
        let constraints = viewArray ≤ relatedView.trailingAnchor ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayTrailingLessThanOrEqualToTrailingWithPriority() {
        let constraints = viewArray ≤ relatedView.trailingAnchor ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testInferredViewArrayTrailingLessThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.trailingAnchor ~ 300
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testInferredViewArrayTrailingLessThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayTrailingLessThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTrailingLessThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTrailingLessThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayTrailingLessThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayTrailingLessThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingLessThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingLessThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingLessThanOrEqualToTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayTrailingLessThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.trailingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingLessThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.trailingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingLessThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.trailingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingLessThanOrEqualToTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.trailingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailing() {
        let constraints = viewArray ≥ relatedView.trailingAnchor
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstant() {
        let constraints = viewArray ≥ relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingMinusConstant() {
        let constraints = viewArray ≥ relatedView.trailingAnchor .- 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.trailingAnchor .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.trailingAnchor
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingDividedByConstant() {
        let constraints = viewArray ≥ relatedView.trailingAnchor ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingWithPriority() {
        let constraints = viewArray ≥ relatedView.trailingAnchor ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.trailingAnchor ~ 300
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.trailingAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.trailingAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.trailingAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTrailingGreaterThanOrEqualToTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.trailingAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayTop <=> relatedViewTop
    // MARK: Equal

    func testInferredViewArrayTopEqualToTop() {
        let constraints = viewArray .= relatedView.topAnchor
        constraints.assert(viewArray, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testInferredViewArrayTopEqualToTopPlusConstant() {
        let constraints = viewArray .= relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
    }

    func testInferredViewArrayTopEqualToTopMinusConstant() {
        let constraints = viewArray .= relatedView.topAnchor .- 10
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayTopEqualToTopMultiplyingConstant() {
        let constraints = viewArray .= relatedView.topAnchor .* 3
        constraints.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayTopEqualToTopMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayTopEqualToTopDividedByConstant() {
        let constraints = viewArray .= relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayTopEqualToTopWithPriority() {
        let constraints = viewArray .= relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
    }

    func testInferredViewArrayTopEqualToTopWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .top, .equal, relatedView, .top, priority: 300)
    }

    func testInferredViewArrayTopEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayTopEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTopEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTopEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayTopEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayTopEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayTopEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayTopLessThanOrEqualToTop() {
        let constraints = viewArray ≤ relatedView.topAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayTopLessThanOrEqualToTopPlusConstant() {
        let constraints = viewArray ≤ relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredViewArrayTopLessThanOrEqualToTopMinusConstant() {
        let constraints = viewArray ≤ relatedView.topAnchor .- 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayTopLessThanOrEqualToTopMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.topAnchor .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayTopLessThanOrEqualToTopMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayTopLessThanOrEqualToTopDividedByConstant() {
        let constraints = viewArray ≤ relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayTopLessThanOrEqualToTopWithPriority() {
        let constraints = viewArray ≤ relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredViewArrayTopLessThanOrEqualToTopWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredViewArrayTopLessThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayTopLessThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTopLessThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTopLessThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayTopLessThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayTopLessThanOrEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopLessThanOrEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopLessThanOrEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopLessThanOrEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayTopLessThanOrEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopLessThanOrEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopLessThanOrEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopLessThanOrEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayTopGreaterThanOrEqualToTop() {
        let constraints = viewArray ≥ relatedView.topAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayTopGreaterThanOrEqualToTopPlusConstant() {
        let constraints = viewArray ≥ relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testInferredViewArrayTopGreaterThanOrEqualToTopMinusConstant() {
        let constraints = viewArray ≥ relatedView.topAnchor .- 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayTopGreaterThanOrEqualToTopMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.topAnchor .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayTopGreaterThanOrEqualToTopMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topAnchor
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testInferredViewArrayTopGreaterThanOrEqualToTopDividedByConstant() {
        let constraints = viewArray ≥ relatedView.topAnchor ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayTopGreaterThanOrEqualToTopWithPriority() {
        let constraints = viewArray ≥ relatedView.topAnchor ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testInferredViewArrayTopGreaterThanOrEqualToTopWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.topAnchor ~ 300
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testInferredViewArrayTopGreaterThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.topAnchor ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayTopGreaterThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.topAnchor .+ 10) .* 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTopGreaterThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.topAnchor .+ 10)
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayTopGreaterThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.topAnchor .+ 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayTopGreaterThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.topAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayTopGreaterThanOrEqualToTopPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopGreaterThanOrEqualToTopPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.topAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopGreaterThanOrEqualToTopMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.topAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayTopGreaterThanOrEqualToTopPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.topAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayTopGreaterThanOrEqualToTopPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopGreaterThanOrEqualToTopPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.topAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopGreaterThanOrEqualToTopMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.topAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayTopGreaterThanOrEqualToTopPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.topAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayCenterY <=> relatedViewCenterY
    // MARK: Equal

    func testInferredViewArrayCenterYEqualToCenterY() {
        let constraints = viewArray .= relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testInferredViewArrayCenterYEqualToCenterYPlusConstant() {
        let constraints = viewArray .= relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10)
    }

    func testInferredViewArrayCenterYEqualToCenterYMinusConstant() {
        let constraints = viewArray .= relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayCenterYEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray .= relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testInferredViewArrayCenterYEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testInferredViewArrayCenterYEqualToCenterYDividedByConstant() {
        let constraints = viewArray .= relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayCenterYEqualToCenterYWithPriority() {
        let constraints = viewArray .= relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: .low)
    }

    func testInferredViewArrayCenterYEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 300)
    }

    func testInferredViewArrayCenterYEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayCenterYEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterYEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterYEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayCenterYEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayCenterYEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterYEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayCenterYLessThanOrEqualToCenterY() {
        let constraints = viewArray ≤ relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayCenterYLessThanOrEqualToCenterYPlusConstant() {
        let constraints = viewArray ≤ relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testInferredViewArrayCenterYLessThanOrEqualToCenterYMinusConstant() {
        let constraints = viewArray ≤ relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayCenterYLessThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredViewArrayCenterYLessThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredViewArrayCenterYLessThanOrEqualToCenterYDividedByConstant() {
        let constraints = viewArray ≤ relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayCenterYLessThanOrEqualToCenterYWithPriority() {
        let constraints = viewArray ≤ relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testInferredViewArrayCenterYLessThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testInferredViewArrayCenterYLessThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayCenterYLessThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterYLessThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterYLessThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayCenterYLessThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayCenterYLessThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYLessThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYLessThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYLessThanOrEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterYLessThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYLessThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYLessThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYLessThanOrEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterY() {
        let constraints = viewArray ≥ relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstant() {
        let constraints = viewArray ≥ relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYMinusConstant() {
        let constraints = viewArray ≥ relatedView.centerYAnchor .- 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.centerYAnchor .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerYAnchor
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYDividedByConstant() {
        let constraints = viewArray ≥ relatedView.centerYAnchor ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYWithPriority() {
        let constraints = viewArray ≥ relatedView.centerYAnchor ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.centerYAnchor ~ 300
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.centerYAnchor ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.centerYAnchor .+ 10) .* 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerYAnchor .+ 10)
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.centerYAnchor .+ 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.centerYAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerYAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerYAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.centerYAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.centerYAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerYAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.centerYAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.centerYAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.centerYAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayBottom <=> relatedViewBottom
    // MARK: Equal

    func testInferredViewArrayBottomEqualToBottom() {
        let constraints = viewArray .= relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testInferredViewArrayBottomEqualToBottomPlusConstant() {
        let constraints = viewArray .= relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayBottomEqualToBottomMinusConstant() {
        let constraints = viewArray .= relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayBottomEqualToBottomMultiplyingConstant() {
        let constraints = viewArray .= relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayBottomEqualToBottomMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayBottomEqualToBottomDividedByConstant() {
        let constraints = viewArray .= relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayBottomEqualToBottomWithPriority() {
        let constraints = viewArray .= relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayBottomEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayBottomEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayBottomEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayBottomEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayBottomEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayBottomEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayBottomEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayBottomEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayBottomLessThanOrEqualToBottom() {
        let constraints = viewArray ≤ relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayBottomLessThanOrEqualToBottomPlusConstant() {
        let constraints = viewArray ≤ relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayBottomLessThanOrEqualToBottomMinusConstant() {
        let constraints = viewArray ≤ relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayBottomLessThanOrEqualToBottomMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayBottomLessThanOrEqualToBottomMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayBottomLessThanOrEqualToBottomDividedByConstant() {
        let constraints = viewArray ≤ relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayBottomLessThanOrEqualToBottomWithPriority() {
        let constraints = viewArray ≤ relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayBottomLessThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayBottomLessThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayBottomLessThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayBottomLessThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayBottomLessThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayBottomLessThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayBottomLessThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomLessThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomLessThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomLessThanOrEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayBottomLessThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomLessThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomLessThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomLessThanOrEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayBottomGreaterThanOrEqualToBottom() {
        let constraints = viewArray ≥ relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayBottomGreaterThanOrEqualToBottomPlusConstant() {
        let constraints = viewArray ≥ relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualToBottomMinusConstant() {
        let constraints = viewArray ≥ relatedView.bottomAnchor .- 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayBottomGreaterThanOrEqualToBottomMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.bottomAnchor .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualToBottomMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomAnchor
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualToBottomDividedByConstant() {
        let constraints = viewArray ≥ relatedView.bottomAnchor ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayBottomGreaterThanOrEqualToBottomWithPriority() {
        let constraints = viewArray ≥ relatedView.bottomAnchor ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.bottomAnchor ~ 300
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.bottomAnchor ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayBottomGreaterThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.bottomAnchor .+ 10) .* 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomAnchor .+ 10)
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomAnchor .+ 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.bottomAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayBottomGreaterThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualToBottomPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.bottomAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayBottomGreaterThanOrEqualToBottomPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualToBottomPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.bottomAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualToBottomMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.bottomAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayBottomGreaterThanOrEqualToBottomPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.bottomAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayWidth <=> relatedViewWidth
    // MARK: Equal

    func testInferredViewArrayWidthEqualToWidth() {
        let constraints = viewArray .= relatedView.widthAnchor
        constraints.assert(viewArray, .width, .equal, relatedView, .width)
    }

    // MARK: Equal with constant
    func testInferredViewArrayWidthEqualToWidthPlusConstant() {
        let constraints = viewArray .= relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10)
    }

    func testInferredViewArrayWidthEqualToWidthMinusConstant() {
        let constraints = viewArray .= relatedView.widthAnchor .- 10
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayWidthEqualToWidthMultiplyingConstant() {
        let constraints = viewArray .= relatedView.widthAnchor .* 3
        constraints.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
    }

    func testInferredViewArrayWidthEqualToWidthMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.widthAnchor
        constraints.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
    }

    func testInferredViewArrayWidthEqualToWidthDividedByConstant() {
        let constraints = viewArray .= relatedView.widthAnchor ./ 2
        constraints.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayWidthEqualToWidthWithPriority() {
        let constraints = viewArray .= relatedView.widthAnchor ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: .low)
    }

    func testInferredViewArrayWidthEqualToWidthWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.widthAnchor ~ 300
        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: 300)
    }

    func testInferredViewArrayWidthEqualToWidthWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayWidthEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayWidthEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayWidthEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayWidthEqualToWidthPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayWidthEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthEqualToWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayWidthEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayWidthLessThanOrEqualToWidth() {
        let constraints = viewArray ≤ relatedView.widthAnchor
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayWidthLessThanOrEqualToWidthPlusConstant() {
        let constraints = viewArray ≤ relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
    }

    func testInferredViewArrayWidthLessThanOrEqualToWidthMinusConstant() {
        let constraints = viewArray ≤ relatedView.widthAnchor .- 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayWidthLessThanOrEqualToWidthMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.widthAnchor .* 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testInferredViewArrayWidthLessThanOrEqualToWidthMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.widthAnchor
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testInferredViewArrayWidthLessThanOrEqualToWidthDividedByConstant() {
        let constraints = viewArray ≤ relatedView.widthAnchor ./ 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayWidthLessThanOrEqualToWidthWithPriority() {
        let constraints = viewArray ≤ relatedView.widthAnchor ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
    }

    func testInferredViewArrayWidthLessThanOrEqualToWidthWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.widthAnchor ~ 300
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: 300)
    }

    func testInferredViewArrayWidthLessThanOrEqualToWidthWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayWidthLessThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayWidthLessThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayWidthLessThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayWidthLessThanOrEqualToWidthPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayWidthLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayWidthLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayWidthGreaterThanOrEqualToWidth() {
        let constraints = viewArray ≥ relatedView.widthAnchor
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayWidthGreaterThanOrEqualToWidthPlusConstant() {
        let constraints = viewArray ≥ relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualToWidthMinusConstant() {
        let constraints = viewArray ≥ relatedView.widthAnchor .- 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayWidthGreaterThanOrEqualToWidthMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.widthAnchor .* 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualToWidthMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.widthAnchor
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualToWidthDividedByConstant() {
        let constraints = viewArray ≥ relatedView.widthAnchor ./ 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayWidthGreaterThanOrEqualToWidthWithPriority() {
        let constraints = viewArray ≥ relatedView.widthAnchor ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualToWidthWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.widthAnchor ~ 300
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: 300)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualToWidthWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayWidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualToWidthPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayWidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayWidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayWidthGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: viewArrayHeight <=> relatedViewHeight
    // MARK: Equal

    func testInferredViewArrayHeightEqualToHeight() {
        let constraints = viewArray .= relatedView.heightAnchor
        constraints.assert(viewArray, .height, .equal, relatedView, .height)
    }

    // MARK: Equal with constant
    func testInferredViewArrayHeightEqualToHeightPlusConstant() {
        let constraints = viewArray .= relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10)
    }

    func testInferredViewArrayHeightEqualToHeightMinusConstant() {
        let constraints = viewArray .= relatedView.heightAnchor .- 10
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testInferredViewArrayHeightEqualToHeightMultiplyingConstant() {
        let constraints = viewArray .= relatedView.heightAnchor .* 3
        constraints.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testInferredViewArrayHeightEqualToHeightMultipliedByConstant() {
        let constraints = viewArray .= 3 .* relatedView.heightAnchor
        constraints.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testInferredViewArrayHeightEqualToHeightDividedByConstant() {
        let constraints = viewArray .= relatedView.heightAnchor ./ 2
        constraints.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testInferredViewArrayHeightEqualToHeightWithPriority() {
        let constraints = viewArray .= relatedView.heightAnchor ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, priority: .low)
    }

    func testInferredViewArrayHeightEqualToHeightWithPriorityLiteral() {
        let constraints = viewArray .= relatedView.heightAnchor ~ 300
        constraints.assert(viewArray, .height, .equal, relatedView, .height, priority: 300)
    }

    func testInferredViewArrayHeightEqualToHeightWithPriorityArithmetic() {
        let constraints = viewArray .= relatedView.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testInferredViewArrayHeightEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray .= (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayHeightEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray .= 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayHeightEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray .= 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayHeightEqualToHeightPlusConstantDividedByConstant() {
        let constraints = viewArray .= (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testInferredViewArrayHeightEqualToHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray .= (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightEqualToHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray .= 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightEqualToHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray .= 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightEqualToHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray .= (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayHeightEqualToHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.heightAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightEqualToHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* (relatedView.heightAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightEqualToHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray .= 3 .* relatedView.heightAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightEqualToHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray .= (relatedView.heightAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testInferredViewArrayHeightLessThanOrEqualToHeight() {
        let constraints = viewArray ≤ relatedView.heightAnchor
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height)
    }

    // MARK: LessThanOrEqual with constant
    func testInferredViewArrayHeightLessThanOrEqualToHeightPlusConstant() {
        let constraints = viewArray ≤ relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testInferredViewArrayHeightLessThanOrEqualToHeightMinusConstant() {
        let constraints = viewArray ≤ relatedView.heightAnchor .- 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testInferredViewArrayHeightLessThanOrEqualToHeightMultiplyingConstant() {
        let constraints = viewArray ≤ relatedView.heightAnchor .* 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredViewArrayHeightLessThanOrEqualToHeightMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.heightAnchor
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredViewArrayHeightLessThanOrEqualToHeightDividedByConstant() {
        let constraints = viewArray ≤ relatedView.heightAnchor ./ 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testInferredViewArrayHeightLessThanOrEqualToHeightWithPriority() {
        let constraints = viewArray ≤ relatedView.heightAnchor ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testInferredViewArrayHeightLessThanOrEqualToHeightWithPriorityLiteral() {
        let constraints = viewArray ≤ relatedView.heightAnchor ~ 300
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testInferredViewArrayHeightLessThanOrEqualToHeightWithPriorityArithmetic() {
        let constraints = viewArray ≤ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testInferredViewArrayHeightLessThanOrEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≤ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayHeightLessThanOrEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≤ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayHeightLessThanOrEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≤ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayHeightLessThanOrEqualToHeightPlusConstantDividedByConstant() {
        let constraints = viewArray ≤ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayHeightLessThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightLessThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightLessThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≤ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightLessThanOrEqualToHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≤ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayHeightLessThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.heightAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightLessThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* (relatedView.heightAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightLessThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ 3 .* relatedView.heightAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightLessThanOrEqualToHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≤ (relatedView.heightAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testInferredViewArrayHeightGreaterThanOrEqualToHeight() {
        let constraints = viewArray ≥ relatedView.heightAnchor
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height)
    }

    // MARK: GreaterThanOrEqual with constant
    func testInferredViewArrayHeightGreaterThanOrEqualToHeightPlusConstant() {
        let constraints = viewArray ≥ relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualToHeightMinusConstant() {
        let constraints = viewArray ≥ relatedView.heightAnchor .- 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testInferredViewArrayHeightGreaterThanOrEqualToHeightMultiplyingConstant() {
        let constraints = viewArray ≥ relatedView.heightAnchor .* 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualToHeightMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.heightAnchor
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualToHeightDividedByConstant() {
        let constraints = viewArray ≥ relatedView.heightAnchor ./ 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testInferredViewArrayHeightGreaterThanOrEqualToHeightWithPriority() {
        let constraints = viewArray ≥ relatedView.heightAnchor ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualToHeightWithPriorityLiteral() {
        let constraints = viewArray ≥ relatedView.heightAnchor ~ 300
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualToHeightWithPriorityArithmetic() {
        let constraints = viewArray ≥ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testInferredViewArrayHeightGreaterThanOrEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = viewArray ≥ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = viewArray ≥ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = viewArray ≥ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualToHeightPlusConstantDividedByConstant() {
        let constraints = viewArray ≥ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testInferredViewArrayHeightGreaterThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = viewArray ≥ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualToHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = viewArray ≥ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testInferredViewArrayHeightGreaterThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.heightAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* (relatedView.heightAnchor .+ 10)  ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ 3 .* relatedView.heightAnchor .+ 10  ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testInferredViewArrayHeightGreaterThanOrEqualToHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = viewArray ≥ (relatedView.heightAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
// sourcery:end
}
