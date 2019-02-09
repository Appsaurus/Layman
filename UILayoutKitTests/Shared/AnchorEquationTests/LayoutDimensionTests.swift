//
//  LayoutDimensionTests.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/24/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// swiftlint:disable file_length type_body_length

@testable import UILayoutKit
import XCTest

// sourcery: anchorEquationTest
// sourcery: lhsAttributes = width, lhsAttributes = height
// sourcery: rhsAttributes = width, rhsAttributes = height
// sourcery: lhsItem = view1
class LayoutDimensionTests: UILayoutKitTestCase {

// sourcery:inline:auto:LayoutDimensionTests.EquationTests
    // MARK: view1.widthWidth <=> relatedViewWidth
    // MARK: GreaterThanOrEqual

    func testView1WidthGreaterThanOrEqualToWidth() {
        let constraints = view1.width ≥ relatedView.widthAnchor
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1WidthGreaterThanOrEqualToWidthPlusConstant() {
        let constraints = view1.width ≥ relatedView.widthAnchor .+ 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
    }

    func testView1WidthGreaterThanOrEqualToWidthMinusConstant() {
        let constraints = view1.width ≥ relatedView.widthAnchor .- 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1WidthGreaterThanOrEqualToWidthMultiplyingConstant() {
        let constraints = view1.width ≥ relatedView.widthAnchor .* 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualToWidthMultipliedByConstant() {
        let constraints = view1.width ≥ 3 .* relatedView.widthAnchor
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualToWidthDividedByConstant() {
        let constraints = view1.width ≥ relatedView.widthAnchor ./ 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1WidthGreaterThanOrEqualToWidthWithPriority() {
        let constraints = view1.width ≥ relatedView.widthAnchor ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualToWidthWithPriorityLiteral() {
        let constraints = view1.width ≥ relatedView.widthAnchor ~ 300
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 300)
    }

    func testView1WidthGreaterThanOrEqualToWidthWithPriorityArithmetic() {
        let constraints = view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1WidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualToWidthPlusConstantDividedByConstant() {
        let constraints = view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1WidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1WidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1WidthGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testView1WidthEqualToWidth() {
        let constraints = view1.width .= relatedView.widthAnchor
        constraints.assert(view1, .width, .equal, relatedView, .width)
    }

    // MARK: Equal with constant
    func testView1WidthEqualToWidthPlusConstant() {
        let constraints = view1.width .= relatedView.widthAnchor .+ 10
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10)
    }

    func testView1WidthEqualToWidthMinusConstant() {
        let constraints = view1.width .= relatedView.widthAnchor .- 10
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1WidthEqualToWidthMultiplyingConstant() {
        let constraints = view1.width .= relatedView.widthAnchor .* 3
        constraints.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
    }

    func testView1WidthEqualToWidthMultipliedByConstant() {
        let constraints = view1.width .= 3 .* relatedView.widthAnchor
        constraints.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
    }

    func testView1WidthEqualToWidthDividedByConstant() {
        let constraints = view1.width .= relatedView.widthAnchor ./ 2
        constraints.assert(view1, .width, .equal, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1WidthEqualToWidthWithPriority() {
        let constraints = view1.width .= relatedView.widthAnchor ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, priority: .low)
    }

    func testView1WidthEqualToWidthWithPriorityLiteral() {
        let constraints = view1.width .= relatedView.widthAnchor ~ 300
        constraints.assert(view1, .width, .equal, relatedView, .width, priority: 300)
    }

    func testView1WidthEqualToWidthWithPriorityArithmetic() {
        let constraints = view1.width .= relatedView.widthAnchor ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1WidthEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.width .= 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testView1WidthEqualToWidthPlusConstantDividedByConstant() {
        let constraints = view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1WidthEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1WidthEqualToWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1WidthEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1WidthEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1WidthLessThanOrEqualToWidth() {
        let constraints = view1.width ≤ relatedView.widthAnchor
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width)
    }

    // MARK: LessThanOrEqual with constant
    func testView1WidthLessThanOrEqualToWidthPlusConstant() {
        let constraints = view1.width ≤ relatedView.widthAnchor .+ 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
    }

    func testView1WidthLessThanOrEqualToWidthMinusConstant() {
        let constraints = view1.width ≤ relatedView.widthAnchor .- 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1WidthLessThanOrEqualToWidthMultiplyingConstant() {
        let constraints = view1.width ≤ relatedView.widthAnchor .* 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualToWidthMultipliedByConstant() {
        let constraints = view1.width ≤ 3 .* relatedView.widthAnchor
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualToWidthDividedByConstant() {
        let constraints = view1.width ≤ relatedView.widthAnchor ./ 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1WidthLessThanOrEqualToWidthWithPriority() {
        let constraints = view1.width ≤ relatedView.widthAnchor ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
    }

    func testView1WidthLessThanOrEqualToWidthWithPriorityLiteral() {
        let constraints = view1.width ≤ relatedView.widthAnchor ~ 300
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 300)
    }

    func testView1WidthLessThanOrEqualToWidthWithPriorityArithmetic() {
        let constraints = view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1WidthLessThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualToWidthPlusConstantDividedByConstant() {
        let constraints = view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1WidthLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1WidthLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1WidthLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1WidthLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.widthWidth <=> relatedViewHeight
    // MARK: GreaterThanOrEqual

    func testView1WidthGreaterThanOrEqualToHeight() {
        let constraints = view1.width ≥ relatedView.heightAnchor
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1WidthGreaterThanOrEqualToHeightPlusConstant() {
        let constraints = view1.width ≥ relatedView.heightAnchor .+ 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testView1WidthGreaterThanOrEqualToHeightMinusConstant() {
        let constraints = view1.width ≥ relatedView.heightAnchor .- 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1WidthGreaterThanOrEqualToHeightMultiplyingConstant() {
        let constraints = view1.width ≥ relatedView.heightAnchor .* 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualToHeightMultipliedByConstant() {
        let constraints = view1.width ≥ 3 .* relatedView.heightAnchor
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualToHeightDividedByConstant() {
        let constraints = view1.width ≥ relatedView.heightAnchor ./ 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1WidthGreaterThanOrEqualToHeightWithPriority() {
        let constraints = view1.width ≥ relatedView.heightAnchor ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualToHeightWithPriorityLiteral() {
        let constraints = view1.width ≥ relatedView.heightAnchor ~ 300
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testView1WidthGreaterThanOrEqualToHeightWithPriorityArithmetic() {
        let constraints = view1.width ≥ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1WidthGreaterThanOrEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.width ≥ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.width ≥ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.width ≥ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualToHeightPlusConstantDividedByConstant() {
        let constraints = view1.width ≥ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1WidthGreaterThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.width ≥ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.width ≥ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.width ≥ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualToHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.width ≥ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1WidthGreaterThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ (relatedView.heightAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthGreaterThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ 3 .* (relatedView.heightAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthGreaterThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ 3 .* relatedView.heightAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1WidthGreaterThanOrEqualToHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≥ (relatedView.heightAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testView1WidthEqualToHeight() {
        let constraints = view1.width .= relatedView.heightAnchor
        constraints.assert(view1, .width, .equal, relatedView, .height)
    }

    // MARK: Equal with constant
    func testView1WidthEqualToHeightPlusConstant() {
        let constraints = view1.width .= relatedView.heightAnchor .+ 10
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10)
    }

    func testView1WidthEqualToHeightMinusConstant() {
        let constraints = view1.width .= relatedView.heightAnchor .- 10
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1WidthEqualToHeightMultiplyingConstant() {
        let constraints = view1.width .= relatedView.heightAnchor .* 3
        constraints.assert(view1, .width, .equal, relatedView, .height, multiplier: 3)
    }

    func testView1WidthEqualToHeightMultipliedByConstant() {
        let constraints = view1.width .= 3 .* relatedView.heightAnchor
        constraints.assert(view1, .width, .equal, relatedView, .height, multiplier: 3)
    }

    func testView1WidthEqualToHeightDividedByConstant() {
        let constraints = view1.width .= relatedView.heightAnchor ./ 2
        constraints.assert(view1, .width, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1WidthEqualToHeightWithPriority() {
        let constraints = view1.width .= relatedView.heightAnchor ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .height, priority: .low)
    }

    func testView1WidthEqualToHeightWithPriorityLiteral() {
        let constraints = view1.width .= relatedView.heightAnchor ~ 300
        constraints.assert(view1, .width, .equal, relatedView, .height, priority: 300)
    }

    func testView1WidthEqualToHeightWithPriorityArithmetic() {
        let constraints = view1.width .= relatedView.heightAnchor ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1WidthEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.width .= (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.width .= 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.width .= 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testView1WidthEqualToHeightPlusConstantDividedByConstant() {
        let constraints = view1.width .= (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1WidthEqualToHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.width .= (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthEqualToHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.width .= 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthEqualToHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.width .= 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1WidthEqualToHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.width .= (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1WidthEqualToHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.width .= (relatedView.heightAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthEqualToHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.width .= 3 .* (relatedView.heightAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthEqualToHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.width .= 3 .* relatedView.heightAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1WidthEqualToHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.width .= (relatedView.heightAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1WidthLessThanOrEqualToHeight() {
        let constraints = view1.width ≤ relatedView.heightAnchor
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height)
    }

    // MARK: LessThanOrEqual with constant
    func testView1WidthLessThanOrEqualToHeightPlusConstant() {
        let constraints = view1.width ≤ relatedView.heightAnchor .+ 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testView1WidthLessThanOrEqualToHeightMinusConstant() {
        let constraints = view1.width ≤ relatedView.heightAnchor .- 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1WidthLessThanOrEqualToHeightMultiplyingConstant() {
        let constraints = view1.width ≤ relatedView.heightAnchor .* 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualToHeightMultipliedByConstant() {
        let constraints = view1.width ≤ 3 .* relatedView.heightAnchor
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualToHeightDividedByConstant() {
        let constraints = view1.width ≤ relatedView.heightAnchor ./ 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1WidthLessThanOrEqualToHeightWithPriority() {
        let constraints = view1.width ≤ relatedView.heightAnchor ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testView1WidthLessThanOrEqualToHeightWithPriorityLiteral() {
        let constraints = view1.width ≤ relatedView.heightAnchor ~ 300
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testView1WidthLessThanOrEqualToHeightWithPriorityArithmetic() {
        let constraints = view1.width ≤ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1WidthLessThanOrEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.width ≤ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.width ≤ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.width ≤ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualToHeightPlusConstantDividedByConstant() {
        let constraints = view1.width ≤ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1WidthLessThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.width ≤ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthLessThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.width ≤ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1WidthLessThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.width ≤ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1WidthLessThanOrEqualToHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.width ≤ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1WidthLessThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ (relatedView.heightAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthLessThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ 3 .* (relatedView.heightAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1WidthLessThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ 3 .* relatedView.heightAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1WidthLessThanOrEqualToHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.width ≤ (relatedView.heightAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.heightHeight <=> relatedViewWidth
    // MARK: GreaterThanOrEqual

    func testView1HeightGreaterThanOrEqualToWidth() {
        let constraints = view1.height ≥ relatedView.widthAnchor
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1HeightGreaterThanOrEqualToWidthPlusConstant() {
        let constraints = view1.height ≥ relatedView.widthAnchor .+ 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10)
    }

    func testView1HeightGreaterThanOrEqualToWidthMinusConstant() {
        let constraints = view1.height ≥ relatedView.widthAnchor .- 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1HeightGreaterThanOrEqualToWidthMultiplyingConstant() {
        let constraints = view1.height ≥ relatedView.widthAnchor .* 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualToWidthMultipliedByConstant() {
        let constraints = view1.height ≥ 3 .* relatedView.widthAnchor
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualToWidthDividedByConstant() {
        let constraints = view1.height ≥ relatedView.widthAnchor ./ 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1HeightGreaterThanOrEqualToWidthWithPriority() {
        let constraints = view1.height ≥ relatedView.widthAnchor ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualToWidthWithPriorityLiteral() {
        let constraints = view1.height ≥ relatedView.widthAnchor ~ 300
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, priority: 300)
    }

    func testView1HeightGreaterThanOrEqualToWidthWithPriorityArithmetic() {
        let constraints = view1.height ≥ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1HeightGreaterThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.height ≥ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.height ≥ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.height ≥ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualToWidthPlusConstantDividedByConstant() {
        let constraints = view1.height ≥ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1HeightGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.height ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.height ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.height ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.height ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1HeightGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1HeightGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testView1HeightEqualToWidth() {
        let constraints = view1.height .= relatedView.widthAnchor
        constraints.assert(view1, .height, .equal, relatedView, .width)
    }

    // MARK: Equal with constant
    func testView1HeightEqualToWidthPlusConstant() {
        let constraints = view1.height .= relatedView.widthAnchor .+ 10
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10)
    }

    func testView1HeightEqualToWidthMinusConstant() {
        let constraints = view1.height .= relatedView.widthAnchor .- 10
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1HeightEqualToWidthMultiplyingConstant() {
        let constraints = view1.height .= relatedView.widthAnchor .* 3
        constraints.assert(view1, .height, .equal, relatedView, .width, multiplier: 3)
    }

    func testView1HeightEqualToWidthMultipliedByConstant() {
        let constraints = view1.height .= 3 .* relatedView.widthAnchor
        constraints.assert(view1, .height, .equal, relatedView, .width, multiplier: 3)
    }

    func testView1HeightEqualToWidthDividedByConstant() {
        let constraints = view1.height .= relatedView.widthAnchor ./ 2
        constraints.assert(view1, .height, .equal, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1HeightEqualToWidthWithPriority() {
        let constraints = view1.height .= relatedView.widthAnchor ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .width, priority: .low)
    }

    func testView1HeightEqualToWidthWithPriorityLiteral() {
        let constraints = view1.height .= relatedView.widthAnchor ~ 300
        constraints.assert(view1, .height, .equal, relatedView, .width, priority: 300)
    }

    func testView1HeightEqualToWidthWithPriorityArithmetic() {
        let constraints = view1.height .= relatedView.widthAnchor ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .width, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1HeightEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.height .= (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.height .= 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.height .= 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testView1HeightEqualToWidthPlusConstantDividedByConstant() {
        let constraints = view1.height .= (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1HeightEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.height .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.height .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.height .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1HeightEqualToWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.height .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1HeightEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.height .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.height .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.height .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1HeightEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.height .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1HeightLessThanOrEqualToWidth() {
        let constraints = view1.height ≤ relatedView.widthAnchor
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width)
    }

    // MARK: LessThanOrEqual with constant
    func testView1HeightLessThanOrEqualToWidthPlusConstant() {
        let constraints = view1.height ≤ relatedView.widthAnchor .+ 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10)
    }

    func testView1HeightLessThanOrEqualToWidthMinusConstant() {
        let constraints = view1.height ≤ relatedView.widthAnchor .- 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1HeightLessThanOrEqualToWidthMultiplyingConstant() {
        let constraints = view1.height ≤ relatedView.widthAnchor .* 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualToWidthMultipliedByConstant() {
        let constraints = view1.height ≤ 3 .* relatedView.widthAnchor
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualToWidthDividedByConstant() {
        let constraints = view1.height ≤ relatedView.widthAnchor ./ 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1HeightLessThanOrEqualToWidthWithPriority() {
        let constraints = view1.height ≤ relatedView.widthAnchor ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, priority: .low)
    }

    func testView1HeightLessThanOrEqualToWidthWithPriorityLiteral() {
        let constraints = view1.height ≤ relatedView.widthAnchor ~ 300
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, priority: 300)
    }

    func testView1HeightLessThanOrEqualToWidthWithPriorityArithmetic() {
        let constraints = view1.height ≤ relatedView.widthAnchor ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1HeightLessThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.height ≤ (relatedView.widthAnchor .+ 10) .* 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.height ≤ 3 .* (relatedView.widthAnchor .+ 10)
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.height ≤ 3 .* relatedView.widthAnchor .+ 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualToWidthPlusConstantDividedByConstant() {
        let constraints = view1.height ≤ (relatedView.widthAnchor .+ 10) ./ 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1HeightLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.height ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.height ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.height ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1HeightLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.height ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1HeightLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1HeightLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: view1.heightHeight <=> relatedViewHeight
    // MARK: GreaterThanOrEqual

    func testView1HeightGreaterThanOrEqualToHeight() {
        let constraints = view1.height ≥ relatedView.heightAnchor
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1HeightGreaterThanOrEqualToHeightPlusConstant() {
        let constraints = view1.height ≥ relatedView.heightAnchor .+ 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testView1HeightGreaterThanOrEqualToHeightMinusConstant() {
        let constraints = view1.height ≥ relatedView.heightAnchor .- 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1HeightGreaterThanOrEqualToHeightMultiplyingConstant() {
        let constraints = view1.height ≥ relatedView.heightAnchor .* 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualToHeightMultipliedByConstant() {
        let constraints = view1.height ≥ 3 .* relatedView.heightAnchor
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualToHeightDividedByConstant() {
        let constraints = view1.height ≥ relatedView.heightAnchor ./ 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual prioritized
    func testView1HeightGreaterThanOrEqualToHeightWithPriority() {
        let constraints = view1.height ≥ relatedView.heightAnchor ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualToHeightWithPriorityLiteral() {
        let constraints = view1.height ≥ relatedView.heightAnchor ~ 300
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testView1HeightGreaterThanOrEqualToHeightWithPriorityArithmetic() {
        let constraints = view1.height ≥ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func testView1HeightGreaterThanOrEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.height ≥ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.height ≥ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.height ≥ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualToHeightPlusConstantDividedByConstant() {
        let constraints = view1.height ≥ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func testView1HeightGreaterThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.height ≥ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.height ≥ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.height ≥ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualToHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.height ≥ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1HeightGreaterThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ (relatedView.heightAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightGreaterThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ 3 .* (relatedView.heightAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightGreaterThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ 3 .* relatedView.heightAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1HeightGreaterThanOrEqualToHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≥ (relatedView.heightAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: Equal

    func testView1HeightEqualToHeight() {
        let constraints = view1.height .= relatedView.heightAnchor
        constraints.assert(view1, .height, .equal, relatedView, .height)
    }

    // MARK: Equal with constant
    func testView1HeightEqualToHeightPlusConstant() {
        let constraints = view1.height .= relatedView.heightAnchor .+ 10
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10)
    }

    func testView1HeightEqualToHeightMinusConstant() {
        let constraints = view1.height .= relatedView.heightAnchor .- 10
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1HeightEqualToHeightMultiplyingConstant() {
        let constraints = view1.height .= relatedView.heightAnchor .* 3
        constraints.assert(view1, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testView1HeightEqualToHeightMultipliedByConstant() {
        let constraints = view1.height .= 3 .* relatedView.heightAnchor
        constraints.assert(view1, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testView1HeightEqualToHeightDividedByConstant() {
        let constraints = view1.height .= relatedView.heightAnchor ./ 2
        constraints.assert(view1, .height, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal prioritized
    func testView1HeightEqualToHeightWithPriority() {
        let constraints = view1.height .= relatedView.heightAnchor ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, priority: .low)
    }

    func testView1HeightEqualToHeightWithPriorityLiteral() {
        let constraints = view1.height .= relatedView.heightAnchor ~ 300
        constraints.assert(view1, .height, .equal, relatedView, .height, priority: 300)
    }

    func testView1HeightEqualToHeightWithPriorityArithmetic() {
        let constraints = view1.height .= relatedView.heightAnchor ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant .+ multiplier

    func testView1HeightEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.height .= (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.height .= 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.height .= 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testView1HeightEqualToHeightPlusConstantDividedByConstant() {
        let constraints = view1.height .= (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: Equal with constant .+ multiplier and priority

    func testView1HeightEqualToHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.height .= (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightEqualToHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.height .= 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightEqualToHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.height .= 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1HeightEqualToHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.height .= (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func testView1HeightEqualToHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.height .= (relatedView.heightAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightEqualToHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.height .= 3 .* (relatedView.heightAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightEqualToHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.height .= 3 .* relatedView.heightAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1HeightEqualToHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.height .= (relatedView.heightAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
    // MARK: LessThanOrEqual

    func testView1HeightLessThanOrEqualToHeight() {
        let constraints = view1.height ≤ relatedView.heightAnchor
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height)
    }

    // MARK: LessThanOrEqual with constant
    func testView1HeightLessThanOrEqualToHeightPlusConstant() {
        let constraints = view1.height ≤ relatedView.heightAnchor .+ 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testView1HeightLessThanOrEqualToHeightMinusConstant() {
        let constraints = view1.height ≤ relatedView.heightAnchor .- 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1HeightLessThanOrEqualToHeightMultiplyingConstant() {
        let constraints = view1.height ≤ relatedView.heightAnchor .* 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualToHeightMultipliedByConstant() {
        let constraints = view1.height ≤ 3 .* relatedView.heightAnchor
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualToHeightDividedByConstant() {
        let constraints = view1.height ≤ relatedView.heightAnchor ./ 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual prioritized
    func testView1HeightLessThanOrEqualToHeightWithPriority() {
        let constraints = view1.height ≤ relatedView.heightAnchor ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testView1HeightLessThanOrEqualToHeightWithPriorityLiteral() {
        let constraints = view1.height ≤ relatedView.heightAnchor ~ 300
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testView1HeightLessThanOrEqualToHeightWithPriorityArithmetic() {
        let constraints = view1.height ≤ relatedView.heightAnchor ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func testView1HeightLessThanOrEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.height ≤ (relatedView.heightAnchor .+ 10) .* 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.height ≤ 3 .* (relatedView.heightAnchor .+ 10)
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.height ≤ 3 .* relatedView.heightAnchor .+ 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualToHeightPlusConstantDividedByConstant() {
        let constraints = view1.height ≤ (relatedView.heightAnchor .+ 10) ./ 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority

    func testView1HeightLessThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriority() {
        let constraints = view1.height ≤ (relatedView.heightAnchor .+ 10) .* 3 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightLessThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriority() {
        let constraints = view1.height ≤ 3 .* (relatedView.heightAnchor .+ 10) ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: .low)
    }

    func testView1HeightLessThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriority() {
        let constraints = view1.height ≤ 3 .* relatedView.heightAnchor .+ 10 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: .low)
    }

    func testView1HeightLessThanOrEqualToHeightPlusConstantDividedByConstantWithPriority() {
        let constraints = view1.height ≤ (relatedView.heightAnchor .+ 10) ./ 2 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: .low)
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func testView1HeightLessThanOrEqualToHeightPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ (relatedView.heightAnchor .+ 10) .* 3  ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightLessThanOrEqualToHeightPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ 3 .* (relatedView.heightAnchor .+ 10)  ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3, priority: 749)
    }

    func testView1HeightLessThanOrEqualToHeightMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ 3 .* relatedView.heightAnchor .+ 10  ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3, priority: 749)
    }

    func testView1HeightLessThanOrEqualToHeightPlusConstantDividedByConstantWithPriorityArithmetic() {
        let constraints = view1.height ≤ (relatedView.heightAnchor .+ 10) ./ 2  ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 / 2, multiplier: 1 / 2, priority: 749)
    }
// sourcery:end
}
