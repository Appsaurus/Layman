//
//  XAxisAnchorTests.swift
//  Layman
//
//  Created by Brian Strobach on 1/24/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// swiftlint:disable file_length type_body_length

@testable import Layman
import XCTest

// sourcery: anchorEquationTest
// sourcery: lhsAttributes = leading, lhsAttributes = centerX, lhsAttributes = trailing
// sourcery: rhsAttributes = leading, rhsAttributes = centerX, rhsAttributes = trailing
// sourcery: lhsItem = view1
class XAxisAnchorTests: LaymanTestCase {

// sourcery:inline:auto:XAxisAnchorTests.EquationTests
    // MARK: view1.leadingLeading <=> relatedViewLeading
    // MARK: Equal

    func testView1LeadingEqualTorelatedViewLeading() {
        let constraints = view1.leading .= relatedView.leadingAnchor
        constraints.assert(view1, .leading, .equal, relatedView, .leading)
    }

    func testView1LeadingEqualTorelatedViewLeadingInversedInference() {
        let constraints = view1.leadingAnchor .= relatedView
        constraints.assert(view1, .leading, .equal, relatedView, .leading)
    }
    // MARK: Equal with constant
    func testView1LeadingEqualTorelatedViewLeadingPlusConstant() {
        let constraints = view1.leading .= relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10)
    }

    func testView1LeadingEqualTorelatedViewLeadingMinusConstant() {
        let constraints = view1.leading .= relatedView.leadingAnchor .- 10
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1LeadingEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = view1.leading .= relatedView.leadingAnchor .* 3
        constraints.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = view1.leading .= 3 .* relatedView.leadingAnchor
        constraints.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = view1.leading .= relatedView.leadingAnchor ./ 2
        constraints.assert(view1, .leading, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1LeadingEqualTorelatedViewLeadingWithPriority() {
        let constraints = view1.leading .= relatedView.leadingAnchor ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .leading, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = view1.leading .= relatedView.leadingAnchor ~ 300
        constraints.assert(view1, .leading, .equal, relatedView, .leading, priority: 300)
    }

    func testView1LeadingEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = view1.leading .= relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1LeadingEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.leading .= (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.leading .= 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.leading .= 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = view1.leading .= (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1LeadingEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.leading .= (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.leading .= 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.leading .= 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.leading .= (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1LeadingEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= (relatedView.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= 3 .* (relatedView.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= 3 .* relatedView.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LeadingEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= (relatedView.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1LeadingGreaterThanOrEqualTorelatedViewLeading() {
        let constraints = view1.leading ≥ relatedView.leadingAnchor
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingInversedInference() {
        let constraints = view1.leadingAnchor ≥ relatedView
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
    }
    // MARK: GreaterThanOrEqual with constant
    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstant() {
        let constraints = view1.leading ≥ relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingMinusConstant() {
        let constraints = view1.leading ≥ relatedView.leadingAnchor .- 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = view1.leading ≥ relatedView.leadingAnchor .* 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = view1.leading ≥ 3 .* relatedView.leadingAnchor
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = view1.leading ≥ relatedView.leadingAnchor ./ 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingWithPriority() {
        let constraints = view1.leading ≥ relatedView.leadingAnchor ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = view1.leading ≥ relatedView.leadingAnchor ~ 300
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = view1.leading ≥ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.leading ≥ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.leading ≥ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.leading ≥ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = view1.leading ≥ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.leading ≥ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.leading ≥ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.leading ≥ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.leading ≥ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ (relatedView.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ 3 .* (relatedView.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ 3 .* relatedView.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1LeadingLessThanOrEqualTorelatedViewLeading() {
        let constraints = view1.leading ≤ relatedView.leadingAnchor
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewLeadingInversedInference() {
        let constraints = view1.leadingAnchor ≤ relatedView
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
    }
    // MARK: LessThanOrEqual with constant
    func testView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstant() {
        let constraints = view1.leading ≤ relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewLeadingMinusConstant() {
        let constraints = view1.leading ≤ relatedView.leadingAnchor .- 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LeadingLessThanOrEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = view1.leading ≤ relatedView.leadingAnchor .* 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = view1.leading ≤ 3 .* relatedView.leadingAnchor
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = view1.leading ≤ relatedView.leadingAnchor ./ 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LeadingLessThanOrEqualTorelatedViewLeadingWithPriority() {
        let constraints = view1.leading ≤ relatedView.leadingAnchor ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = view1.leading ≤ relatedView.leadingAnchor ~ 300
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = view1.leading ≤ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.leading ≤ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.leading ≤ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.leading ≤ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = view1.leading ≤ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.leading ≤ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.leading ≤ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.leading ≤ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.leading ≤ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ (relatedView.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ 3 .* (relatedView.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ 3 .* relatedView.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.leadingLeading <=> relatedViewArrayLeading
    // MARK: Equal

    func testView1LeadingEqualTorelatedViewArrayLeading() {
        let constraints = view1.leading .= relatedViewArray.leadingAnchor
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading)
    }

    func testView1LeadingEqualTorelatedViewArrayLeadingInversedInference() {
        let constraints = view1.leadingAnchor .= relatedViewArray
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading)
    }
    // MARK: Equal with constant
    func testView1LeadingEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = view1.leading .= relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10)
    }

    func testView1LeadingEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = view1.leading .= relatedViewArray.leadingAnchor .- 10
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1LeadingEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = view1.leading .= relatedViewArray.leadingAnchor .* 3
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = view1.leading .= 3 .* relatedViewArray.leadingAnchor
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = view1.leading .= relatedViewArray.leadingAnchor ./ 2
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1LeadingEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = view1.leading .= relatedViewArray.leadingAnchor ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = view1.leading .= relatedViewArray.leadingAnchor ~ 300
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, priority: 300)
    }

    func testView1LeadingEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = view1.leading .= relatedViewArray.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1LeadingEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.leading .= (relatedViewArray.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.leading .= 3 .* (relatedViewArray.leadingAnchor .+ 10)
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.leading .= 3 .* relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = view1.leading .= (relatedViewArray.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1LeadingEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.leading .= (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.leading .= 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.leading .= 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.leading .= (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1LeadingEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LeadingEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeading() {
        let constraints = view1.leading ≥ relatedViewArray.leadingAnchor
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingInversedInference() {
        let constraints = view1.leadingAnchor ≥ relatedViewArray
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading)
    }
    // MARK: GreaterThanOrEqual with constant
    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = view1.leading ≥ relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = view1.leading ≥ relatedViewArray.leadingAnchor .- 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = view1.leading ≥ relatedViewArray.leadingAnchor .* 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = view1.leading ≥ 3 .* relatedViewArray.leadingAnchor
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = view1.leading ≥ relatedViewArray.leadingAnchor ./ 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = view1.leading ≥ relatedViewArray.leadingAnchor ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = view1.leading ≥ relatedViewArray.leadingAnchor ~ 300
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, priority: 300)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = view1.leading ≥ relatedViewArray.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.leading ≥ (relatedViewArray.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.leading ≥ 3 .* (relatedViewArray.leadingAnchor .+ 10)
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.leading ≥ 3 .* relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = view1.leading ≥ (relatedViewArray.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.leading ≥ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.leading ≥ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.leading ≥ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.leading ≥ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeading() {
        let constraints = view1.leading ≤ relatedViewArray.leadingAnchor
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingInversedInference() {
        let constraints = view1.leadingAnchor ≤ relatedViewArray
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading)
    }
    // MARK: LessThanOrEqual with constant
    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = view1.leading ≤ relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = view1.leading ≤ relatedViewArray.leadingAnchor .- 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = view1.leading ≤ relatedViewArray.leadingAnchor .* 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = view1.leading ≤ 3 .* relatedViewArray.leadingAnchor
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = view1.leading ≤ relatedViewArray.leadingAnchor ./ 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = view1.leading ≤ relatedViewArray.leadingAnchor ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = view1.leading ≤ relatedViewArray.leadingAnchor ~ 300
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, priority: 300)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = view1.leading ≤ relatedViewArray.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.leading ≤ (relatedViewArray.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.leading ≤ 3 .* (relatedViewArray.leadingAnchor .+ 10)
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.leading ≤ 3 .* relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = view1.leading ≤ (relatedViewArray.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.leading ≤ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.leading ≤ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.leading ≤ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.leading ≤ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.leadingLeading <=> relatedViewCenterX
    // MARK: Equal

    func testView1LeadingEqualTorelatedViewCenterX() {
        let constraints = view1.leading .= relatedView.centerXAnchor
        constraints.assert(view1, .leading, .equal, relatedView, .centerX)
    }

    // MARK: Equal with constant
    func testView1LeadingEqualTorelatedViewCenterXPlusConstant() {
        let constraints = view1.leading .= relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: 10)
    }

    func testView1LeadingEqualTorelatedViewCenterXMinusConstant() {
        let constraints = view1.leading .= relatedView.centerXAnchor .- 10
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1LeadingEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = view1.leading .= relatedView.centerXAnchor .* 3
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = view1.leading .= 3 .* relatedView.centerXAnchor
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = view1.leading .= relatedView.centerXAnchor ./ 2
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1LeadingEqualTorelatedViewCenterXWithPriority() {
        let constraints = view1.leading .= relatedView.centerXAnchor ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = view1.leading .= relatedView.centerXAnchor ~ 300
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, priority: 300)
    }

    func testView1LeadingEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = view1.leading .= relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1LeadingEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.leading .= (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.leading .= 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.leading .= 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = view1.leading .= (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1LeadingEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.leading .= (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.leading .= 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.leading .= 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.leading .= (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1LeadingEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= (relatedView.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= 3 .* (relatedView.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= 3 .* relatedView.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LeadingEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= (relatedView.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterX() {
        let constraints = view1.leading ≥ relatedView.centerXAnchor
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstant() {
        let constraints = view1.leading ≥ relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXMinusConstant() {
        let constraints = view1.leading ≥ relatedView.centerXAnchor .- 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = view1.leading ≥ relatedView.centerXAnchor .* 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = view1.leading ≥ 3 .* relatedView.centerXAnchor
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = view1.leading ≥ relatedView.centerXAnchor ./ 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXWithPriority() {
        let constraints = view1.leading ≥ relatedView.centerXAnchor ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = view1.leading ≥ relatedView.centerXAnchor ~ 300
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = view1.leading ≥ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.leading ≥ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.leading ≥ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.leading ≥ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = view1.leading ≥ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.leading ≥ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.leading ≥ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.leading ≥ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.leading ≥ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ (relatedView.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ 3 .* (relatedView.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ 3 .* relatedView.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1LeadingLessThanOrEqualTorelatedViewCenterX() {
        let constraints = view1.leading ≤ relatedView.centerXAnchor
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LeadingLessThanOrEqualTorelatedViewCenterXPlusConstant() {
        let constraints = view1.leading ≤ relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewCenterXMinusConstant() {
        let constraints = view1.leading ≤ relatedView.centerXAnchor .- 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LeadingLessThanOrEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = view1.leading ≤ relatedView.centerXAnchor .* 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = view1.leading ≤ 3 .* relatedView.centerXAnchor
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = view1.leading ≤ relatedView.centerXAnchor ./ 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LeadingLessThanOrEqualTorelatedViewCenterXWithPriority() {
        let constraints = view1.leading ≤ relatedView.centerXAnchor ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = view1.leading ≤ relatedView.centerXAnchor ~ 300
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = view1.leading ≤ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LeadingLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.leading ≤ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.leading ≤ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.leading ≤ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = view1.leading ≤ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LeadingLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.leading ≤ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.leading ≤ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.leading ≤ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.leading ≤ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LeadingLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ (relatedView.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ 3 .* (relatedView.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ 3 .* relatedView.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.leadingLeading <=> relatedViewArrayCenterX
    // MARK: Equal

    func testView1LeadingEqualTorelatedViewArrayCenterX() {
        let constraints = view1.leading .= relatedViewArray.centerXAnchor
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX)
    }

    // MARK: Equal with constant
    func testView1LeadingEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = view1.leading .= relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, constant: 10)
    }

    func testView1LeadingEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = view1.leading .= relatedViewArray.centerXAnchor .- 10
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1LeadingEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = view1.leading .= relatedViewArray.centerXAnchor .* 3
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = view1.leading .= 3 .* relatedViewArray.centerXAnchor
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = view1.leading .= relatedViewArray.centerXAnchor ./ 2
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1LeadingEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = view1.leading .= relatedViewArray.centerXAnchor ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = view1.leading .= relatedViewArray.centerXAnchor ~ 300
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, priority: 300)
    }

    func testView1LeadingEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = view1.leading .= relatedViewArray.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1LeadingEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.leading .= (relatedViewArray.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.leading .= 3 .* (relatedViewArray.centerXAnchor .+ 10)
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.leading .= 3 .* relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = view1.leading .= (relatedViewArray.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1LeadingEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.leading .= (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.leading .= 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.leading .= 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.leading .= (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1LeadingEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LeadingEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterX() {
        let constraints = view1.leading ≥ relatedViewArray.centerXAnchor
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = view1.leading ≥ relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = view1.leading ≥ relatedViewArray.centerXAnchor .- 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = view1.leading ≥ relatedViewArray.centerXAnchor .* 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = view1.leading ≥ 3 .* relatedViewArray.centerXAnchor
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = view1.leading ≥ relatedViewArray.centerXAnchor ./ 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = view1.leading ≥ relatedViewArray.centerXAnchor ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = view1.leading ≥ relatedViewArray.centerXAnchor ~ 300
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, priority: 300)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = view1.leading ≥ relatedViewArray.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.leading ≥ (relatedViewArray.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.leading ≥ 3 .* (relatedViewArray.centerXAnchor .+ 10)
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.leading ≥ 3 .* relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = view1.leading ≥ (relatedViewArray.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.leading ≥ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.leading ≥ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.leading ≥ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.leading ≥ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterX() {
        let constraints = view1.leading ≤ relatedViewArray.centerXAnchor
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = view1.leading ≤ relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = view1.leading ≤ relatedViewArray.centerXAnchor .- 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = view1.leading ≤ relatedViewArray.centerXAnchor .* 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = view1.leading ≤ 3 .* relatedViewArray.centerXAnchor
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = view1.leading ≤ relatedViewArray.centerXAnchor ./ 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = view1.leading ≤ relatedViewArray.centerXAnchor ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = view1.leading ≤ relatedViewArray.centerXAnchor ~ 300
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, priority: 300)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = view1.leading ≤ relatedViewArray.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.leading ≤ (relatedViewArray.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.leading ≤ 3 .* (relatedViewArray.centerXAnchor .+ 10)
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.leading ≤ 3 .* relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = view1.leading ≤ (relatedViewArray.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.leading ≤ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.leading ≤ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.leading ≤ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.leading ≤ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.leadingLeading <=> relatedViewTrailing
    // MARK: Equal

    func testView1LeadingEqualTorelatedViewTrailing() {
        let constraints = view1.leading .= relatedView.trailingAnchor
        constraints.assert(view1, .leading, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testView1LeadingEqualTorelatedViewTrailingPlusConstant() {
        let constraints = view1.leading .= relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: 10)
    }

    func testView1LeadingEqualTorelatedViewTrailingMinusConstant() {
        let constraints = view1.leading .= relatedView.trailingAnchor .- 10
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1LeadingEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = view1.leading .= relatedView.trailingAnchor .* 3
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = view1.leading .= 3 .* relatedView.trailingAnchor
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = view1.leading .= relatedView.trailingAnchor ./ 2
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1LeadingEqualTorelatedViewTrailingWithPriority() {
        let constraints = view1.leading .= relatedView.trailingAnchor ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = view1.leading .= relatedView.trailingAnchor ~ 300
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, priority: 300)
    }

    func testView1LeadingEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = view1.leading .= relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1LeadingEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.leading .= (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.leading .= 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.leading .= 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = view1.leading .= (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1LeadingEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.leading .= (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.leading .= 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.leading .= 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.leading .= (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1LeadingEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= (relatedView.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= 3 .* (relatedView.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= 3 .* relatedView.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LeadingEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= (relatedView.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailing() {
        let constraints = view1.leading ≥ relatedView.trailingAnchor
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstant() {
        let constraints = view1.leading ≥ relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingMinusConstant() {
        let constraints = view1.leading ≥ relatedView.trailingAnchor .- 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = view1.leading ≥ relatedView.trailingAnchor .* 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = view1.leading ≥ 3 .* relatedView.trailingAnchor
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = view1.leading ≥ relatedView.trailingAnchor ./ 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingWithPriority() {
        let constraints = view1.leading ≥ relatedView.trailingAnchor ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = view1.leading ≥ relatedView.trailingAnchor ~ 300
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = view1.leading ≥ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.leading ≥ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.leading ≥ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.leading ≥ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = view1.leading ≥ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.leading ≥ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.leading ≥ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.leading ≥ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.leading ≥ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ (relatedView.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ 3 .* (relatedView.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ 3 .* relatedView.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1LeadingLessThanOrEqualTorelatedViewTrailing() {
        let constraints = view1.leading ≤ relatedView.trailingAnchor
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LeadingLessThanOrEqualTorelatedViewTrailingPlusConstant() {
        let constraints = view1.leading ≤ relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewTrailingMinusConstant() {
        let constraints = view1.leading ≤ relatedView.trailingAnchor .- 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LeadingLessThanOrEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = view1.leading ≤ relatedView.trailingAnchor .* 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = view1.leading ≤ 3 .* relatedView.trailingAnchor
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = view1.leading ≤ relatedView.trailingAnchor ./ 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LeadingLessThanOrEqualTorelatedViewTrailingWithPriority() {
        let constraints = view1.leading ≤ relatedView.trailingAnchor ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = view1.leading ≤ relatedView.trailingAnchor ~ 300
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = view1.leading ≤ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LeadingLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.leading ≤ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.leading ≤ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.leading ≤ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = view1.leading ≤ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LeadingLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.leading ≤ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.leading ≤ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.leading ≤ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.leading ≤ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LeadingLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ (relatedView.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ 3 .* (relatedView.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ 3 .* relatedView.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.leadingLeading <=> relatedViewArrayTrailing
    // MARK: Equal

    func testView1LeadingEqualTorelatedViewArrayTrailing() {
        let constraints = view1.leading .= relatedViewArray.trailingAnchor
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing)
    }

    // MARK: Equal with constant
    func testView1LeadingEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = view1.leading .= relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, constant: 10)
    }

    func testView1LeadingEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = view1.leading .= relatedViewArray.trailingAnchor .- 10
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1LeadingEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = view1.leading .= relatedViewArray.trailingAnchor .* 3
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = view1.leading .= 3 .* relatedViewArray.trailingAnchor
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = view1.leading .= relatedViewArray.trailingAnchor ./ 2
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1LeadingEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = view1.leading .= relatedViewArray.trailingAnchor ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = view1.leading .= relatedViewArray.trailingAnchor ~ 300
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, priority: 300)
    }

    func testView1LeadingEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = view1.leading .= relatedViewArray.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1LeadingEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.leading .= (relatedViewArray.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.leading .= 3 .* (relatedViewArray.trailingAnchor .+ 10)
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.leading .= 3 .* relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testView1LeadingEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = view1.leading .= (relatedViewArray.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1LeadingEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.leading .= (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.leading .= 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.leading .= 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LeadingEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.leading .= (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1LeadingEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LeadingEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading .= (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailing() {
        let constraints = view1.leading ≥ relatedViewArray.trailingAnchor
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = view1.leading ≥ relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = view1.leading ≥ relatedViewArray.trailingAnchor .- 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = view1.leading ≥ relatedViewArray.trailingAnchor .* 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = view1.leading ≥ 3 .* relatedViewArray.trailingAnchor
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = view1.leading ≥ relatedViewArray.trailingAnchor ./ 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = view1.leading ≥ relatedViewArray.trailingAnchor ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = view1.leading ≥ relatedViewArray.trailingAnchor ~ 300
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, priority: 300)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = view1.leading ≥ relatedViewArray.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.leading ≥ (relatedViewArray.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.leading ≥ 3 .* (relatedViewArray.trailingAnchor .+ 10)
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.leading ≥ 3 .* relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = view1.leading ≥ (relatedViewArray.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.leading ≥ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.leading ≥ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.leading ≥ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.leading ≥ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≥ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailing() {
        let constraints = view1.leading ≤ relatedViewArray.trailingAnchor
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = view1.leading ≤ relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = view1.leading ≤ relatedViewArray.trailingAnchor .- 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = view1.leading ≤ relatedViewArray.trailingAnchor .* 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = view1.leading ≤ 3 .* relatedViewArray.trailingAnchor
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = view1.leading ≤ relatedViewArray.trailingAnchor ./ 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = view1.leading ≤ relatedViewArray.trailingAnchor ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = view1.leading ≤ relatedViewArray.trailingAnchor ~ 300
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, priority: 300)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = view1.leading ≤ relatedViewArray.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.leading ≤ (relatedViewArray.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.leading ≤ 3 .* (relatedViewArray.trailingAnchor .+ 10)
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.leading ≤ 3 .* relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = view1.leading ≤ (relatedViewArray.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.leading ≤ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.leading ≤ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.leading ≤ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.leading ≤ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1LeadingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.leading ≤ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.centerXCenterX <=> relatedViewLeading
    // MARK: Equal

    func testView1CenterXEqualTorelatedViewLeading() {
        let constraints = view1.centerX .= relatedView.leadingAnchor
        constraints.assert(view1, .centerX, .equal, relatedView, .leading)
    }

    // MARK: Equal with constant
    func testView1CenterXEqualTorelatedViewLeadingPlusConstant() {
        let constraints = view1.centerX .= relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: 10)
    }

    func testView1CenterXEqualTorelatedViewLeadingMinusConstant() {
        let constraints = view1.centerX .= relatedView.leadingAnchor .- 10
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterXEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = view1.centerX .= relatedView.leadingAnchor .* 3
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = view1.centerX .= 3 .* relatedView.leadingAnchor
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = view1.centerX .= relatedView.leadingAnchor ./ 2
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1CenterXEqualTorelatedViewLeadingWithPriority() {
        let constraints = view1.centerX .= relatedView.leadingAnchor ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = view1.centerX .= relatedView.leadingAnchor ~ 300
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, priority: 300)
    }

    func testView1CenterXEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = view1.centerX .= relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1CenterXEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.centerX .= (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.centerX .= 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.centerX .= 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = view1.centerX .= (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1CenterXEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerX .= (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerX .= 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerX .= 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerX .= (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1CenterXEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= (relatedView.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= 3 .* (relatedView.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= 3 .* relatedView.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterXEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= (relatedView.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1CenterXGreaterThanOrEqualTorelatedViewLeading() {
        let constraints = view1.centerX ≥ relatedView.leadingAnchor
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstant() {
        let constraints = view1.centerX ≥ relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingMinusConstant() {
        let constraints = view1.centerX ≥ relatedView.leadingAnchor .- 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = view1.centerX ≥ relatedView.leadingAnchor .* 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = view1.centerX ≥ 3 .* relatedView.leadingAnchor
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = view1.centerX ≥ relatedView.leadingAnchor ./ 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingWithPriority() {
        let constraints = view1.centerX ≥ relatedView.leadingAnchor ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = view1.centerX ≥ relatedView.leadingAnchor ~ 300
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.centerX ≥ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.centerX ≥ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.centerX ≥ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = view1.centerX ≥ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerX ≥ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerX ≥ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerX ≥ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerX ≥ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ (relatedView.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ 3 .* (relatedView.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ 3 .* relatedView.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1CenterXLessThanOrEqualTorelatedViewLeading() {
        let constraints = view1.centerX ≤ relatedView.leadingAnchor
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading)
    }

    // MARK: LessThanOrEqual with constant
    func testView1CenterXLessThanOrEqualTorelatedViewLeadingPlusConstant() {
        let constraints = view1.centerX ≤ relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewLeadingMinusConstant() {
        let constraints = view1.centerX ≤ relatedView.leadingAnchor .- 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterXLessThanOrEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = view1.centerX ≤ relatedView.leadingAnchor .* 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = view1.centerX ≤ 3 .* relatedView.leadingAnchor
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = view1.centerX ≤ relatedView.leadingAnchor ./ 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1CenterXLessThanOrEqualTorelatedViewLeadingWithPriority() {
        let constraints = view1.centerX ≤ relatedView.leadingAnchor ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = view1.centerX ≤ relatedView.leadingAnchor ~ 300
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1CenterXLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.centerX ≤ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.centerX ≤ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.centerX ≤ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = view1.centerX ≤ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1CenterXLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerX ≤ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerX ≤ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerX ≤ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerX ≤ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterXLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ (relatedView.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ 3 .* (relatedView.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ 3 .* relatedView.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.centerXCenterX <=> relatedViewArrayLeading
    // MARK: Equal

    func testView1CenterXEqualTorelatedViewArrayLeading() {
        let constraints = view1.centerX .= relatedViewArray.leadingAnchor
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading)
    }

    // MARK: Equal with constant
    func testView1CenterXEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = view1.centerX .= relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, constant: 10)
    }

    func testView1CenterXEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = view1.centerX .= relatedViewArray.leadingAnchor .- 10
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterXEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = view1.centerX .= relatedViewArray.leadingAnchor .* 3
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = view1.centerX .= 3 .* relatedViewArray.leadingAnchor
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = view1.centerX .= relatedViewArray.leadingAnchor ./ 2
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1CenterXEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = view1.centerX .= relatedViewArray.leadingAnchor ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = view1.centerX .= relatedViewArray.leadingAnchor ~ 300
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, priority: 300)
    }

    func testView1CenterXEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = view1.centerX .= relatedViewArray.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1CenterXEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.centerX .= (relatedViewArray.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.centerX .= 3 .* (relatedViewArray.leadingAnchor .+ 10)
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.centerX .= 3 .* relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = view1.centerX .= (relatedViewArray.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1CenterXEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerX .= (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerX .= 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerX .= 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerX .= (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1CenterXEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterXEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeading() {
        let constraints = view1.centerX ≥ relatedViewArray.leadingAnchor
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = view1.centerX ≥ relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = view1.centerX ≥ relatedViewArray.leadingAnchor .- 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = view1.centerX ≥ relatedViewArray.leadingAnchor .* 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = view1.centerX ≥ 3 .* relatedViewArray.leadingAnchor
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = view1.centerX ≥ relatedViewArray.leadingAnchor ./ 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = view1.centerX ≥ relatedViewArray.leadingAnchor ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = view1.centerX ≥ relatedViewArray.leadingAnchor ~ 300
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, priority: 300)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ relatedViewArray.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.centerX ≥ (relatedViewArray.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.centerX ≥ 3 .* (relatedViewArray.leadingAnchor .+ 10)
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.centerX ≥ 3 .* relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = view1.centerX ≥ (relatedViewArray.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerX ≥ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerX ≥ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerX ≥ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerX ≥ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeading() {
        let constraints = view1.centerX ≤ relatedViewArray.leadingAnchor
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading)
    }

    // MARK: LessThanOrEqual with constant
    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = view1.centerX ≤ relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = view1.centerX ≤ relatedViewArray.leadingAnchor .- 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = view1.centerX ≤ relatedViewArray.leadingAnchor .* 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = view1.centerX ≤ 3 .* relatedViewArray.leadingAnchor
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = view1.centerX ≤ relatedViewArray.leadingAnchor ./ 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = view1.centerX ≤ relatedViewArray.leadingAnchor ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = view1.centerX ≤ relatedViewArray.leadingAnchor ~ 300
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, priority: 300)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ relatedViewArray.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.centerX ≤ (relatedViewArray.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.centerX ≤ 3 .* (relatedViewArray.leadingAnchor .+ 10)
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.centerX ≤ 3 .* relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = view1.centerX ≤ (relatedViewArray.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerX ≤ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerX ≤ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerX ≤ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerX ≤ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.centerXCenterX <=> relatedViewCenterX
    // MARK: Equal

    func testView1CenterXEqualTorelatedViewCenterX() {
        let constraints = view1.centerX .= relatedView.centerXAnchor
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX)
    }

    func testView1CenterXEqualTorelatedViewCenterXInversedInference() {
        let constraints = view1.centerXAnchor .= relatedView
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX)
    }
    // MARK: Equal with constant
    func testView1CenterXEqualTorelatedViewCenterXPlusConstant() {
        let constraints = view1.centerX .= relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10)
    }

    func testView1CenterXEqualTorelatedViewCenterXMinusConstant() {
        let constraints = view1.centerX .= relatedView.centerXAnchor .- 10
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterXEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = view1.centerX .= relatedView.centerXAnchor .* 3
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = view1.centerX .= 3 .* relatedView.centerXAnchor
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = view1.centerX .= relatedView.centerXAnchor ./ 2
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1CenterXEqualTorelatedViewCenterXWithPriority() {
        let constraints = view1.centerX .= relatedView.centerXAnchor ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = view1.centerX .= relatedView.centerXAnchor ~ 300
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 300)
    }

    func testView1CenterXEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = view1.centerX .= relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1CenterXEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.centerX .= (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.centerX .= 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.centerX .= 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = view1.centerX .= (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1CenterXEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerX .= (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerX .= 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerX .= 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerX .= (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1CenterXEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= (relatedView.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= 3 .* (relatedView.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= 3 .* relatedView.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterXEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= (relatedView.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterX() {
        let constraints = view1.centerX ≥ relatedView.centerXAnchor
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXInversedInference() {
        let constraints = view1.centerXAnchor ≥ relatedView
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX)
    }
    // MARK: GreaterThanOrEqual with constant
    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstant() {
        let constraints = view1.centerX ≥ relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXMinusConstant() {
        let constraints = view1.centerX ≥ relatedView.centerXAnchor .- 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = view1.centerX ≥ relatedView.centerXAnchor .* 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = view1.centerX ≥ 3 .* relatedView.centerXAnchor
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = view1.centerX ≥ relatedView.centerXAnchor ./ 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXWithPriority() {
        let constraints = view1.centerX ≥ relatedView.centerXAnchor ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = view1.centerX ≥ relatedView.centerXAnchor ~ 300
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.centerX ≥ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.centerX ≥ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.centerX ≥ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = view1.centerX ≥ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerX ≥ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerX ≥ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerX ≥ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerX ≥ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ (relatedView.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ 3 .* (relatedView.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ 3 .* relatedView.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1CenterXLessThanOrEqualTorelatedViewCenterX() {
        let constraints = view1.centerX ≤ relatedView.centerXAnchor
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewCenterXInversedInference() {
        let constraints = view1.centerXAnchor ≤ relatedView
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX)
    }
    // MARK: LessThanOrEqual with constant
    func testView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstant() {
        let constraints = view1.centerX ≤ relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewCenterXMinusConstant() {
        let constraints = view1.centerX ≤ relatedView.centerXAnchor .- 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterXLessThanOrEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = view1.centerX ≤ relatedView.centerXAnchor .* 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = view1.centerX ≤ 3 .* relatedView.centerXAnchor
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = view1.centerX ≤ relatedView.centerXAnchor ./ 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1CenterXLessThanOrEqualTorelatedViewCenterXWithPriority() {
        let constraints = view1.centerX ≤ relatedView.centerXAnchor ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = view1.centerX ≤ relatedView.centerXAnchor ~ 300
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.centerX ≤ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.centerX ≤ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.centerX ≤ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = view1.centerX ≤ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerX ≤ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerX ≤ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerX ≤ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerX ≤ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ (relatedView.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ 3 .* (relatedView.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ 3 .* relatedView.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.centerXCenterX <=> relatedViewArrayCenterX
    // MARK: Equal

    func testView1CenterXEqualTorelatedViewArrayCenterX() {
        let constraints = view1.centerX .= relatedViewArray.centerXAnchor
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX)
    }

    func testView1CenterXEqualTorelatedViewArrayCenterXInversedInference() {
        let constraints = view1.centerXAnchor .= relatedViewArray
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX)
    }
    // MARK: Equal with constant
    func testView1CenterXEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = view1.centerX .= relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10)
    }

    func testView1CenterXEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = view1.centerX .= relatedViewArray.centerXAnchor .- 10
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterXEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = view1.centerX .= relatedViewArray.centerXAnchor .* 3
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = view1.centerX .= 3 .* relatedViewArray.centerXAnchor
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = view1.centerX .= relatedViewArray.centerXAnchor ./ 2
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1CenterXEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = view1.centerX .= relatedViewArray.centerXAnchor ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = view1.centerX .= relatedViewArray.centerXAnchor ~ 300
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, priority: 300)
    }

    func testView1CenterXEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = view1.centerX .= relatedViewArray.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1CenterXEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.centerX .= (relatedViewArray.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.centerX .= 3 .* (relatedViewArray.centerXAnchor .+ 10)
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.centerX .= 3 .* relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = view1.centerX .= (relatedViewArray.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1CenterXEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerX .= (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerX .= 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerX .= 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerX .= (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1CenterXEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterXEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterX() {
        let constraints = view1.centerX ≥ relatedViewArray.centerXAnchor
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXInversedInference() {
        let constraints = view1.centerXAnchor ≥ relatedViewArray
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX)
    }
    // MARK: GreaterThanOrEqual with constant
    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = view1.centerX ≥ relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = view1.centerX ≥ relatedViewArray.centerXAnchor .- 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = view1.centerX ≥ relatedViewArray.centerXAnchor .* 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = view1.centerX ≥ 3 .* relatedViewArray.centerXAnchor
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = view1.centerX ≥ relatedViewArray.centerXAnchor ./ 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = view1.centerX ≥ relatedViewArray.centerXAnchor ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = view1.centerX ≥ relatedViewArray.centerXAnchor ~ 300
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, priority: 300)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ relatedViewArray.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.centerX ≥ (relatedViewArray.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.centerX ≥ 3 .* (relatedViewArray.centerXAnchor .+ 10)
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.centerX ≥ 3 .* relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = view1.centerX ≥ (relatedViewArray.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerX ≥ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerX ≥ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerX ≥ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerX ≥ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterX() {
        let constraints = view1.centerX ≤ relatedViewArray.centerXAnchor
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXInversedInference() {
        let constraints = view1.centerXAnchor ≤ relatedViewArray
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX)
    }
    // MARK: LessThanOrEqual with constant
    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = view1.centerX ≤ relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = view1.centerX ≤ relatedViewArray.centerXAnchor .- 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = view1.centerX ≤ relatedViewArray.centerXAnchor .* 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = view1.centerX ≤ 3 .* relatedViewArray.centerXAnchor
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = view1.centerX ≤ relatedViewArray.centerXAnchor ./ 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = view1.centerX ≤ relatedViewArray.centerXAnchor ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = view1.centerX ≤ relatedViewArray.centerXAnchor ~ 300
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, priority: 300)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ relatedViewArray.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.centerX ≤ (relatedViewArray.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.centerX ≤ 3 .* (relatedViewArray.centerXAnchor .+ 10)
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.centerX ≤ 3 .* relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = view1.centerX ≤ (relatedViewArray.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerX ≤ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerX ≤ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerX ≤ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerX ≤ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.centerXCenterX <=> relatedViewTrailing
    // MARK: Equal

    func testView1CenterXEqualTorelatedViewTrailing() {
        let constraints = view1.centerX .= relatedView.trailingAnchor
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing)
    }

    // MARK: Equal with constant
    func testView1CenterXEqualTorelatedViewTrailingPlusConstant() {
        let constraints = view1.centerX .= relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: 10)
    }

    func testView1CenterXEqualTorelatedViewTrailingMinusConstant() {
        let constraints = view1.centerX .= relatedView.trailingAnchor .- 10
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterXEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = view1.centerX .= relatedView.trailingAnchor .* 3
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = view1.centerX .= 3 .* relatedView.trailingAnchor
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = view1.centerX .= relatedView.trailingAnchor ./ 2
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1CenterXEqualTorelatedViewTrailingWithPriority() {
        let constraints = view1.centerX .= relatedView.trailingAnchor ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = view1.centerX .= relatedView.trailingAnchor ~ 300
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, priority: 300)
    }

    func testView1CenterXEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = view1.centerX .= relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1CenterXEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.centerX .= (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.centerX .= 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.centerX .= 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = view1.centerX .= (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1CenterXEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerX .= (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerX .= 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerX .= 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerX .= (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1CenterXEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= (relatedView.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= 3 .* (relatedView.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= 3 .* relatedView.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterXEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= (relatedView.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailing() {
        let constraints = view1.centerX ≥ relatedView.trailingAnchor
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstant() {
        let constraints = view1.centerX ≥ relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingMinusConstant() {
        let constraints = view1.centerX ≥ relatedView.trailingAnchor .- 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = view1.centerX ≥ relatedView.trailingAnchor .* 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = view1.centerX ≥ 3 .* relatedView.trailingAnchor
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = view1.centerX ≥ relatedView.trailingAnchor ./ 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingWithPriority() {
        let constraints = view1.centerX ≥ relatedView.trailingAnchor ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = view1.centerX ≥ relatedView.trailingAnchor ~ 300
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.centerX ≥ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.centerX ≥ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.centerX ≥ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = view1.centerX ≥ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerX ≥ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerX ≥ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerX ≥ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerX ≥ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ (relatedView.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ 3 .* (relatedView.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ 3 .* relatedView.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1CenterXLessThanOrEqualTorelatedViewTrailing() {
        let constraints = view1.centerX ≤ relatedView.trailingAnchor
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testView1CenterXLessThanOrEqualTorelatedViewTrailingPlusConstant() {
        let constraints = view1.centerX ≤ relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewTrailingMinusConstant() {
        let constraints = view1.centerX ≤ relatedView.trailingAnchor .- 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterXLessThanOrEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = view1.centerX ≤ relatedView.trailingAnchor .* 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = view1.centerX ≤ 3 .* relatedView.trailingAnchor
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = view1.centerX ≤ relatedView.trailingAnchor ./ 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1CenterXLessThanOrEqualTorelatedViewTrailingWithPriority() {
        let constraints = view1.centerX ≤ relatedView.trailingAnchor ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = view1.centerX ≤ relatedView.trailingAnchor ~ 300
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1CenterXLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.centerX ≤ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.centerX ≤ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.centerX ≤ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = view1.centerX ≤ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1CenterXLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerX ≤ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerX ≤ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerX ≤ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerX ≤ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterXLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ (relatedView.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ 3 .* (relatedView.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ 3 .* relatedView.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.centerXCenterX <=> relatedViewArrayTrailing
    // MARK: Equal

    func testView1CenterXEqualTorelatedViewArrayTrailing() {
        let constraints = view1.centerX .= relatedViewArray.trailingAnchor
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing)
    }

    // MARK: Equal with constant
    func testView1CenterXEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = view1.centerX .= relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, constant: 10)
    }

    func testView1CenterXEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = view1.centerX .= relatedViewArray.trailingAnchor .- 10
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterXEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = view1.centerX .= relatedViewArray.trailingAnchor .* 3
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = view1.centerX .= 3 .* relatedViewArray.trailingAnchor
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = view1.centerX .= relatedViewArray.trailingAnchor ./ 2
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1CenterXEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = view1.centerX .= relatedViewArray.trailingAnchor ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = view1.centerX .= relatedViewArray.trailingAnchor ~ 300
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, priority: 300)
    }

    func testView1CenterXEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = view1.centerX .= relatedViewArray.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1CenterXEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.centerX .= (relatedViewArray.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.centerX .= 3 .* (relatedViewArray.trailingAnchor .+ 10)
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.centerX .= 3 .* relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testView1CenterXEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = view1.centerX .= (relatedViewArray.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1CenterXEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerX .= (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerX .= 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerX .= 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterXEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerX .= (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1CenterXEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterXEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX .= (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailing() {
        let constraints = view1.centerX ≥ relatedViewArray.trailingAnchor
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = view1.centerX ≥ relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = view1.centerX ≥ relatedViewArray.trailingAnchor .- 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = view1.centerX ≥ relatedViewArray.trailingAnchor .* 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = view1.centerX ≥ 3 .* relatedViewArray.trailingAnchor
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = view1.centerX ≥ relatedViewArray.trailingAnchor ./ 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = view1.centerX ≥ relatedViewArray.trailingAnchor ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = view1.centerX ≥ relatedViewArray.trailingAnchor ~ 300
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, priority: 300)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ relatedViewArray.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.centerX ≥ (relatedViewArray.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.centerX ≥ 3 .* (relatedViewArray.trailingAnchor .+ 10)
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.centerX ≥ 3 .* relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = view1.centerX ≥ (relatedViewArray.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerX ≥ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerX ≥ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerX ≥ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerX ≥ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≥ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailing() {
        let constraints = view1.centerX ≤ relatedViewArray.trailingAnchor
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing)
    }

    // MARK: LessThanOrEqual with constant
    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = view1.centerX ≤ relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = view1.centerX ≤ relatedViewArray.trailingAnchor .- 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = view1.centerX ≤ relatedViewArray.trailingAnchor .* 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = view1.centerX ≤ 3 .* relatedViewArray.trailingAnchor
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = view1.centerX ≤ relatedViewArray.trailingAnchor ./ 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = view1.centerX ≤ relatedViewArray.trailingAnchor ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = view1.centerX ≤ relatedViewArray.trailingAnchor ~ 300
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, priority: 300)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ relatedViewArray.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.centerX ≤ (relatedViewArray.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.centerX ≤ 3 .* (relatedViewArray.trailingAnchor .+ 10)
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.centerX ≤ 3 .* relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = view1.centerX ≤ (relatedViewArray.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.centerX ≤ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.centerX ≤ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.centerX ≤ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.centerX ≤ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1CenterXLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.centerX ≤ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.trailingTrailing <=> relatedViewLeading
    // MARK: Equal

    func testView1TrailingEqualTorelatedViewLeading() {
        let constraints = view1.trailing .= relatedView.leadingAnchor
        constraints.assert(view1, .trailing, .equal, relatedView, .leading)
    }

    // MARK: Equal with constant
    func testView1TrailingEqualTorelatedViewLeadingPlusConstant() {
        let constraints = view1.trailing .= relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: 10)
    }

    func testView1TrailingEqualTorelatedViewLeadingMinusConstant() {
        let constraints = view1.trailing .= relatedView.leadingAnchor .- 10
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TrailingEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = view1.trailing .= relatedView.leadingAnchor .* 3
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = view1.trailing .= 3 .* relatedView.leadingAnchor
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = view1.trailing .= relatedView.leadingAnchor ./ 2
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1TrailingEqualTorelatedViewLeadingWithPriority() {
        let constraints = view1.trailing .= relatedView.leadingAnchor ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = view1.trailing .= relatedView.leadingAnchor ~ 300
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, priority: 300)
    }

    func testView1TrailingEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = view1.trailing .= relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1TrailingEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.trailing .= (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.trailing .= 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.trailing .= 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = view1.trailing .= (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1TrailingEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.trailing .= (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.trailing .= 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.trailing .= 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.trailing .= (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1TrailingEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= (relatedView.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= 3 .* (relatedView.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= 3 .* relatedView.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TrailingEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= (relatedView.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1TrailingGreaterThanOrEqualTorelatedViewLeading() {
        let constraints = view1.trailing ≥ relatedView.leadingAnchor
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstant() {
        let constraints = view1.trailing ≥ relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingMinusConstant() {
        let constraints = view1.trailing ≥ relatedView.leadingAnchor .- 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = view1.trailing ≥ relatedView.leadingAnchor .* 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = view1.trailing ≥ 3 .* relatedView.leadingAnchor
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = view1.trailing ≥ relatedView.leadingAnchor ./ 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingWithPriority() {
        let constraints = view1.trailing ≥ relatedView.leadingAnchor ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = view1.trailing ≥ relatedView.leadingAnchor ~ 300
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.trailing ≥ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.trailing ≥ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.trailing ≥ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = view1.trailing ≥ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.trailing ≥ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.trailing ≥ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.trailing ≥ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.trailing ≥ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ (relatedView.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ 3 .* (relatedView.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ 3 .* relatedView.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1TrailingLessThanOrEqualTorelatedViewLeading() {
        let constraints = view1.trailing ≤ relatedView.leadingAnchor
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading)
    }

    // MARK: LessThanOrEqual with constant
    func testView1TrailingLessThanOrEqualTorelatedViewLeadingPlusConstant() {
        let constraints = view1.trailing ≤ relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewLeadingMinusConstant() {
        let constraints = view1.trailing ≤ relatedView.leadingAnchor .- 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TrailingLessThanOrEqualTorelatedViewLeadingMultiplyingConstant() {
        let constraints = view1.trailing ≤ relatedView.leadingAnchor .* 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewLeadingMultipliedByConstant() {
        let constraints = view1.trailing ≤ 3 .* relatedView.leadingAnchor
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewLeadingDividedByConstant() {
        let constraints = view1.trailing ≤ relatedView.leadingAnchor ./ 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1TrailingLessThanOrEqualTorelatedViewLeadingWithPriority() {
        let constraints = view1.trailing ≤ relatedView.leadingAnchor ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewLeadingWithPriorityLiteral() {
        let constraints = view1.trailing ≤ relatedView.leadingAnchor ~ 300
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, priority: 300)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewLeadingWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ relatedView.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1TrailingLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.trailing ≤ (relatedView.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.trailing ≤ 3 .* (relatedView.leadingAnchor .+ 10)
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.trailing ≤ 3 .* relatedView.leadingAnchor .+ 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstant() {
        let constraints = view1.trailing ≤ (relatedView.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1TrailingLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.trailing ≤ (relatedView.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.trailing ≤ 3 .* (relatedView.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.trailing ≤ 3 .* relatedView.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.trailing ≤ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TrailingLessThanOrEqualTorelatedViewLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ (relatedView.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ 3 .* (relatedView.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ 3 .* relatedView.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ (relatedView.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.trailingTrailing <=> relatedViewArrayLeading
    // MARK: Equal

    func testView1TrailingEqualTorelatedViewArrayLeading() {
        let constraints = view1.trailing .= relatedViewArray.leadingAnchor
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading)
    }

    // MARK: Equal with constant
    func testView1TrailingEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = view1.trailing .= relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, constant: 10)
    }

    func testView1TrailingEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = view1.trailing .= relatedViewArray.leadingAnchor .- 10
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TrailingEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = view1.trailing .= relatedViewArray.leadingAnchor .* 3
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = view1.trailing .= 3 .* relatedViewArray.leadingAnchor
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = view1.trailing .= relatedViewArray.leadingAnchor ./ 2
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1TrailingEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = view1.trailing .= relatedViewArray.leadingAnchor ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = view1.trailing .= relatedViewArray.leadingAnchor ~ 300
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, priority: 300)
    }

    func testView1TrailingEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = view1.trailing .= relatedViewArray.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1TrailingEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.trailing .= (relatedViewArray.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.trailing .= 3 .* (relatedViewArray.leadingAnchor .+ 10)
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.trailing .= 3 .* relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = view1.trailing .= (relatedViewArray.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1TrailingEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.trailing .= (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.trailing .= 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.trailing .= 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.trailing .= (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1TrailingEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TrailingEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeading() {
        let constraints = view1.trailing ≥ relatedViewArray.leadingAnchor
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = view1.trailing ≥ relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = view1.trailing ≥ relatedViewArray.leadingAnchor .- 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = view1.trailing ≥ relatedViewArray.leadingAnchor .* 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = view1.trailing ≥ 3 .* relatedViewArray.leadingAnchor
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = view1.trailing ≥ relatedViewArray.leadingAnchor ./ 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = view1.trailing ≥ relatedViewArray.leadingAnchor ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = view1.trailing ≥ relatedViewArray.leadingAnchor ~ 300
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, priority: 300)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ relatedViewArray.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.trailing ≥ (relatedViewArray.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.trailing ≥ 3 .* (relatedViewArray.leadingAnchor .+ 10)
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.trailing ≥ 3 .* relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = view1.trailing ≥ (relatedViewArray.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.trailing ≥ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.trailing ≥ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.trailing ≥ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.trailing ≥ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeading() {
        let constraints = view1.trailing ≤ relatedViewArray.leadingAnchor
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading)
    }

    // MARK: LessThanOrEqual with constant
    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstant() {
        let constraints = view1.trailing ≤ relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingMinusConstant() {
        let constraints = view1.trailing ≤ relatedViewArray.leadingAnchor .- 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingMultiplyingConstant() {
        let constraints = view1.trailing ≤ relatedViewArray.leadingAnchor .* 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstant() {
        let constraints = view1.trailing ≤ 3 .* relatedViewArray.leadingAnchor
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingDividedByConstant() {
        let constraints = view1.trailing ≤ relatedViewArray.leadingAnchor ./ 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingWithPriority() {
        let constraints = view1.trailing ≤ relatedViewArray.leadingAnchor ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingWithPriorityLiteral() {
        let constraints = view1.trailing ≤ relatedViewArray.leadingAnchor ~ 300
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, priority: 300)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ relatedViewArray.leadingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstant() {
        let constraints = view1.trailing ≤ (relatedViewArray.leadingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstant() {
        let constraints = view1.trailing ≤ 3 .* (relatedViewArray.leadingAnchor .+ 10)
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstant() {
        let constraints = view1.trailing ≤ 3 .* relatedViewArray.leadingAnchor .+ 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstant() {
        let constraints = view1.trailing ≤ (relatedViewArray.leadingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.trailing ≤ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.trailing ≤ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.trailing ≤ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.trailing ≤ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ (relatedViewArray.leadingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ 3 .* (relatedViewArray.leadingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ 3 .* relatedViewArray.leadingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayLeadingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ (relatedViewArray.leadingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .leading, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.trailingTrailing <=> relatedViewCenterX
    // MARK: Equal

    func testView1TrailingEqualTorelatedViewCenterX() {
        let constraints = view1.trailing .= relatedView.centerXAnchor
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX)
    }

    // MARK: Equal with constant
    func testView1TrailingEqualTorelatedViewCenterXPlusConstant() {
        let constraints = view1.trailing .= relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10)
    }

    func testView1TrailingEqualTorelatedViewCenterXMinusConstant() {
        let constraints = view1.trailing .= relatedView.centerXAnchor .- 10
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TrailingEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = view1.trailing .= relatedView.centerXAnchor .* 3
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = view1.trailing .= 3 .* relatedView.centerXAnchor
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = view1.trailing .= relatedView.centerXAnchor ./ 2
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1TrailingEqualTorelatedViewCenterXWithPriority() {
        let constraints = view1.trailing .= relatedView.centerXAnchor ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = view1.trailing .= relatedView.centerXAnchor ~ 300
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, priority: 300)
    }

    func testView1TrailingEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = view1.trailing .= relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1TrailingEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.trailing .= (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.trailing .= 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.trailing .= 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = view1.trailing .= (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1TrailingEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.trailing .= (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.trailing .= 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.trailing .= 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.trailing .= (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1TrailingEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= (relatedView.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= 3 .* (relatedView.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= 3 .* relatedView.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TrailingEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= (relatedView.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterX() {
        let constraints = view1.trailing ≥ relatedView.centerXAnchor
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstant() {
        let constraints = view1.trailing ≥ relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXMinusConstant() {
        let constraints = view1.trailing ≥ relatedView.centerXAnchor .- 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = view1.trailing ≥ relatedView.centerXAnchor .* 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = view1.trailing ≥ 3 .* relatedView.centerXAnchor
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = view1.trailing ≥ relatedView.centerXAnchor ./ 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXWithPriority() {
        let constraints = view1.trailing ≥ relatedView.centerXAnchor ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = view1.trailing ≥ relatedView.centerXAnchor ~ 300
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.trailing ≥ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.trailing ≥ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.trailing ≥ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = view1.trailing ≥ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.trailing ≥ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.trailing ≥ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.trailing ≥ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.trailing ≥ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ (relatedView.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ 3 .* (relatedView.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ 3 .* relatedView.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1TrailingLessThanOrEqualTorelatedViewCenterX() {
        let constraints = view1.trailing ≤ relatedView.centerXAnchor
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX)
    }

    // MARK: LessThanOrEqual with constant
    func testView1TrailingLessThanOrEqualTorelatedViewCenterXPlusConstant() {
        let constraints = view1.trailing ≤ relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewCenterXMinusConstant() {
        let constraints = view1.trailing ≤ relatedView.centerXAnchor .- 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TrailingLessThanOrEqualTorelatedViewCenterXMultiplyingConstant() {
        let constraints = view1.trailing ≤ relatedView.centerXAnchor .* 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewCenterXMultipliedByConstant() {
        let constraints = view1.trailing ≤ 3 .* relatedView.centerXAnchor
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewCenterXDividedByConstant() {
        let constraints = view1.trailing ≤ relatedView.centerXAnchor ./ 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1TrailingLessThanOrEqualTorelatedViewCenterXWithPriority() {
        let constraints = view1.trailing ≤ relatedView.centerXAnchor ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewCenterXWithPriorityLiteral() {
        let constraints = view1.trailing ≤ relatedView.centerXAnchor ~ 300
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, priority: 300)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewCenterXWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ relatedView.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1TrailingLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.trailing ≤ (relatedView.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.trailing ≤ 3 .* (relatedView.centerXAnchor .+ 10)
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.trailing ≤ 3 .* relatedView.centerXAnchor .+ 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstant() {
        let constraints = view1.trailing ≤ (relatedView.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1TrailingLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.trailing ≤ (relatedView.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.trailing ≤ 3 .* (relatedView.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.trailing ≤ 3 .* relatedView.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.trailing ≤ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TrailingLessThanOrEqualTorelatedViewCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ (relatedView.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ 3 .* (relatedView.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ 3 .* relatedView.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ (relatedView.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.trailingTrailing <=> relatedViewArrayCenterX
    // MARK: Equal

    func testView1TrailingEqualTorelatedViewArrayCenterX() {
        let constraints = view1.trailing .= relatedViewArray.centerXAnchor
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX)
    }

    // MARK: Equal with constant
    func testView1TrailingEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = view1.trailing .= relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, constant: 10)
    }

    func testView1TrailingEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = view1.trailing .= relatedViewArray.centerXAnchor .- 10
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TrailingEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = view1.trailing .= relatedViewArray.centerXAnchor .* 3
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = view1.trailing .= 3 .* relatedViewArray.centerXAnchor
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = view1.trailing .= relatedViewArray.centerXAnchor ./ 2
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1TrailingEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = view1.trailing .= relatedViewArray.centerXAnchor ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = view1.trailing .= relatedViewArray.centerXAnchor ~ 300
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, priority: 300)
    }

    func testView1TrailingEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = view1.trailing .= relatedViewArray.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1TrailingEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.trailing .= (relatedViewArray.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.trailing .= 3 .* (relatedViewArray.centerXAnchor .+ 10)
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.trailing .= 3 .* relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = view1.trailing .= (relatedViewArray.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1TrailingEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.trailing .= (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.trailing .= 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.trailing .= 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.trailing .= (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1TrailingEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TrailingEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterX() {
        let constraints = view1.trailing ≥ relatedViewArray.centerXAnchor
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = view1.trailing ≥ relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = view1.trailing ≥ relatedViewArray.centerXAnchor .- 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = view1.trailing ≥ relatedViewArray.centerXAnchor .* 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = view1.trailing ≥ 3 .* relatedViewArray.centerXAnchor
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = view1.trailing ≥ relatedViewArray.centerXAnchor ./ 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = view1.trailing ≥ relatedViewArray.centerXAnchor ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = view1.trailing ≥ relatedViewArray.centerXAnchor ~ 300
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, priority: 300)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ relatedViewArray.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.trailing ≥ (relatedViewArray.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.trailing ≥ 3 .* (relatedViewArray.centerXAnchor .+ 10)
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.trailing ≥ 3 .* relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = view1.trailing ≥ (relatedViewArray.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.trailing ≥ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.trailing ≥ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.trailing ≥ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.trailing ≥ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterX() {
        let constraints = view1.trailing ≤ relatedViewArray.centerXAnchor
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX)
    }

    // MARK: LessThanOrEqual with constant
    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstant() {
        let constraints = view1.trailing ≤ relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXMinusConstant() {
        let constraints = view1.trailing ≤ relatedViewArray.centerXAnchor .- 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXMultiplyingConstant() {
        let constraints = view1.trailing ≤ relatedViewArray.centerXAnchor .* 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstant() {
        let constraints = view1.trailing ≤ 3 .* relatedViewArray.centerXAnchor
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXDividedByConstant() {
        let constraints = view1.trailing ≤ relatedViewArray.centerXAnchor ./ 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXWithPriority() {
        let constraints = view1.trailing ≤ relatedViewArray.centerXAnchor ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXWithPriorityLiteral() {
        let constraints = view1.trailing ≤ relatedViewArray.centerXAnchor ~ 300
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, priority: 300)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ relatedViewArray.centerXAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstant() {
        let constraints = view1.trailing ≤ (relatedViewArray.centerXAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstant() {
        let constraints = view1.trailing ≤ 3 .* (relatedViewArray.centerXAnchor .+ 10)
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstant() {
        let constraints = view1.trailing ≤ 3 .* relatedViewArray.centerXAnchor .+ 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstant() {
        let constraints = view1.trailing ≤ (relatedViewArray.centerXAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.trailing ≤ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.trailing ≤ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.trailing ≤ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.trailing ≤ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ (relatedViewArray.centerXAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ 3 .* (relatedViewArray.centerXAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ 3 .* relatedViewArray.centerXAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayCenterXPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ (relatedViewArray.centerXAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .centerX, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.trailingTrailing <=> relatedViewTrailing
    // MARK: Equal

    func testView1TrailingEqualTorelatedViewTrailing() {
        let constraints = view1.trailing .= relatedView.trailingAnchor
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing)
    }

    func testView1TrailingEqualTorelatedViewTrailingInversedInference() {
        let constraints = view1.trailingAnchor .= relatedView
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing)
    }
    // MARK: Equal with constant
    func testView1TrailingEqualTorelatedViewTrailingPlusConstant() {
        let constraints = view1.trailing .= relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10)
    }

    func testView1TrailingEqualTorelatedViewTrailingMinusConstant() {
        let constraints = view1.trailing .= relatedView.trailingAnchor .- 10
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TrailingEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = view1.trailing .= relatedView.trailingAnchor .* 3
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = view1.trailing .= 3 .* relatedView.trailingAnchor
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = view1.trailing .= relatedView.trailingAnchor ./ 2
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1TrailingEqualTorelatedViewTrailingWithPriority() {
        let constraints = view1.trailing .= relatedView.trailingAnchor ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = view1.trailing .= relatedView.trailingAnchor ~ 300
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 300)
    }

    func testView1TrailingEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = view1.trailing .= relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1TrailingEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.trailing .= (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.trailing .= 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.trailing .= 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = view1.trailing .= (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1TrailingEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.trailing .= (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.trailing .= 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.trailing .= 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.trailing .= (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1TrailingEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= (relatedView.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= 3 .* (relatedView.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= 3 .* relatedView.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TrailingEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= (relatedView.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailing() {
        let constraints = view1.trailing ≥ relatedView.trailingAnchor
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingInversedInference() {
        let constraints = view1.trailingAnchor ≥ relatedView
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }
    // MARK: GreaterThanOrEqual with constant
    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstant() {
        let constraints = view1.trailing ≥ relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingMinusConstant() {
        let constraints = view1.trailing ≥ relatedView.trailingAnchor .- 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = view1.trailing ≥ relatedView.trailingAnchor .* 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = view1.trailing ≥ 3 .* relatedView.trailingAnchor
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = view1.trailing ≥ relatedView.trailingAnchor ./ 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingWithPriority() {
        let constraints = view1.trailing ≥ relatedView.trailingAnchor ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = view1.trailing ≥ relatedView.trailingAnchor ~ 300
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.trailing ≥ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.trailing ≥ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.trailing ≥ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = view1.trailing ≥ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.trailing ≥ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.trailing ≥ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.trailing ≥ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.trailing ≥ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ (relatedView.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ 3 .* (relatedView.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ 3 .* relatedView.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1TrailingLessThanOrEqualTorelatedViewTrailing() {
        let constraints = view1.trailing ≤ relatedView.trailingAnchor
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewTrailingInversedInference() {
        let constraints = view1.trailingAnchor ≤ relatedView
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }
    // MARK: LessThanOrEqual with constant
    func testView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstant() {
        let constraints = view1.trailing ≤ relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewTrailingMinusConstant() {
        let constraints = view1.trailing ≤ relatedView.trailingAnchor .- 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TrailingLessThanOrEqualTorelatedViewTrailingMultiplyingConstant() {
        let constraints = view1.trailing ≤ relatedView.trailingAnchor .* 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewTrailingMultipliedByConstant() {
        let constraints = view1.trailing ≤ 3 .* relatedView.trailingAnchor
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewTrailingDividedByConstant() {
        let constraints = view1.trailing ≤ relatedView.trailingAnchor ./ 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1TrailingLessThanOrEqualTorelatedViewTrailingWithPriority() {
        let constraints = view1.trailing ≤ relatedView.trailingAnchor ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewTrailingWithPriorityLiteral() {
        let constraints = view1.trailing ≤ relatedView.trailingAnchor ~ 300
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 300)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewTrailingWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ relatedView.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.trailing ≤ (relatedView.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.trailing ≤ 3 .* (relatedView.trailingAnchor .+ 10)
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.trailing ≤ 3 .* relatedView.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstant() {
        let constraints = view1.trailing ≤ (relatedView.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.trailing ≤ (relatedView.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.trailing ≤ 3 .* (relatedView.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.trailing ≤ 3 .* relatedView.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.trailing ≤ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ (relatedView.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ 3 .* (relatedView.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ 3 .* relatedView.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ (relatedView.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.trailingTrailing <=> relatedViewArrayTrailing
    // MARK: Equal

    func testView1TrailingEqualTorelatedViewArrayTrailing() {
        let constraints = view1.trailing .= relatedViewArray.trailingAnchor
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing)
    }

    func testView1TrailingEqualTorelatedViewArrayTrailingInversedInference() {
        let constraints = view1.trailingAnchor .= relatedViewArray
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing)
    }
    // MARK: Equal with constant
    func testView1TrailingEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = view1.trailing .= relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10)
    }

    func testView1TrailingEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = view1.trailing .= relatedViewArray.trailingAnchor .- 10
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TrailingEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = view1.trailing .= relatedViewArray.trailingAnchor .* 3
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = view1.trailing .= 3 .* relatedViewArray.trailingAnchor
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = view1.trailing .= relatedViewArray.trailingAnchor ./ 2
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1TrailingEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = view1.trailing .= relatedViewArray.trailingAnchor ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = view1.trailing .= relatedViewArray.trailingAnchor ~ 300
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, priority: 300)
    }

    func testView1TrailingEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = view1.trailing .= relatedViewArray.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1TrailingEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.trailing .= (relatedViewArray.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.trailing .= 3 .* (relatedViewArray.trailingAnchor .+ 10)
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.trailing .= 3 .* relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testView1TrailingEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = view1.trailing .= (relatedViewArray.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1TrailingEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.trailing .= (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.trailing .= 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.trailing .= 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TrailingEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.trailing .= (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1TrailingEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TrailingEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing .= (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: GreaterThanOrEqual

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailing() {
        let constraints = view1.trailing ≥ relatedViewArray.trailingAnchor
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingInversedInference() {
        let constraints = view1.trailingAnchor ≥ relatedViewArray
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing)
    }
    // MARK: GreaterThanOrEqual with constant
    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = view1.trailing ≥ relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = view1.trailing ≥ relatedViewArray.trailingAnchor .- 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = view1.trailing ≥ relatedViewArray.trailingAnchor .* 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = view1.trailing ≥ 3 .* relatedViewArray.trailingAnchor
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = view1.trailing ≥ relatedViewArray.trailingAnchor ./ 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = view1.trailing ≥ relatedViewArray.trailingAnchor ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = view1.trailing ≥ relatedViewArray.trailingAnchor ~ 300
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, priority: 300)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ relatedViewArray.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.trailing ≥ (relatedViewArray.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.trailing ≥ 3 .* (relatedViewArray.trailingAnchor .+ 10)
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.trailing ≥ 3 .* relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = view1.trailing ≥ (relatedViewArray.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.trailing ≥ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.trailing ≥ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.trailing ≥ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.trailing ≥ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≥ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailing() {
        let constraints = view1.trailing ≤ relatedViewArray.trailingAnchor
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingInversedInference() {
        let constraints = view1.trailingAnchor ≤ relatedViewArray
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing)
    }
    // MARK: LessThanOrEqual with constant
    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstant() {
        let constraints = view1.trailing ≤ relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingMinusConstant() {
        let constraints = view1.trailing ≤ relatedViewArray.trailingAnchor .- 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingMultiplyingConstant() {
        let constraints = view1.trailing ≤ relatedViewArray.trailingAnchor .* 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstant() {
        let constraints = view1.trailing ≤ 3 .* relatedViewArray.trailingAnchor
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingDividedByConstant() {
        let constraints = view1.trailing ≤ relatedViewArray.trailingAnchor ./ 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingWithPriority() {
        let constraints = view1.trailing ≤ relatedViewArray.trailingAnchor ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingWithPriorityLiteral() {
        let constraints = view1.trailing ≤ relatedViewArray.trailingAnchor ~ 300
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, priority: 300)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ relatedViewArray.trailingAnchor ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstant() {
        let constraints = view1.trailing ≤ (relatedViewArray.trailingAnchor .+ 10) .* 3
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstant() {
        let constraints = view1.trailing ≤ 3 .* (relatedViewArray.trailingAnchor .+ 10)
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstant() {
        let constraints = view1.trailing ≤ 3 .* relatedViewArray.trailingAnchor .+ 10
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstant() {
        let constraints = view1.trailing ≤ (relatedViewArray.trailingAnchor .+ 10) ./ 2
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.trailing ≤ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.trailing ≤ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.trailing ≤ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.trailing ≤ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ (relatedViewArray.trailingAnchor .+ 10) .* 3 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ 3 .* (relatedViewArray.trailingAnchor .+ 10) ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ 3 .* relatedViewArray.trailingAnchor .+ 10 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1TrailingLessThanOrEqualTorelatedViewArrayTrailingPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.trailing ≤ (relatedViewArray.trailingAnchor .+ 10) ./ 2 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedViewArray, .trailing, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
// sourcery:end
}
