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
// MARK: view1Width <=> relatedViewWidth
    // MARK: LessThanOrEqual

    func testView1WidthLessThanOrEqualToWidth() {
        let constraints = view1.widthAnchor ≤ relatedView.width
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width)
    }

    // MARK: LessThanOrEqual with constant
    func testView1WidthLessThanOrEqualToWidthPlusConstant() {
        let constraints = view1.widthAnchor ≤ relatedView.width + 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
    }

    func testView1WidthLessThanOrEqualToWidthMinusConstant() {
        let constraints = view1.widthAnchor ≤ relatedView.width - 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1WidthLessThanOrEqualToWidthMultiplyingConstant() {
        let constraints = view1.widthAnchor ≤ relatedView.width * 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualToWidthMultipliedByConstant() {
        let constraints = view1.widthAnchor ≤ 3 * relatedView.width
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualToWidthDividedByConstant() {
        let constraints = view1.widthAnchor ≤ relatedView.width / 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1WidthLessThanOrEqualToWidthWithPriority() {
        let constraints = view1.widthAnchor ≤ relatedView.width ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
    }

    func testView1WidthLessThanOrEqualToWidthWithPriorityLiteral() {
        let constraints = view1.widthAnchor ≤ relatedView.width ~ 300
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 300)
    }

    func testView1WidthLessThanOrEqualToWidthWithPriorityArithmetic() {
        let constraints = view1.widthAnchor ≤ relatedView.width ~ .high - 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1WidthLessThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.widthAnchor ≤ (relatedView.width + 10) * 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.widthAnchor ≤ 3 * (relatedView.width + 10)
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.widthAnchor ≤ 3 * relatedView.width + 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }
/*
    func testView1WidthLessThanOrEqualToWidthPlusConstantDividedByConstant() {
        let constraints = view1.widthAnchor ≤ (relatedView.width + 10) / 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1WidthEqualToWidth() {
        let constraints = view1.widthAnchor .= relatedView.width
        constraints.assert(view1, .width, .equal, relatedView, .width)
    }

    // MARK: Equal with constant
    func testView1WidthEqualToWidthPlusConstant() {
        let constraints = view1.widthAnchor .= relatedView.width + 10
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10)
    }

    func testView1WidthEqualToWidthMinusConstant() {
        let constraints = view1.widthAnchor .= relatedView.width - 10
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1WidthEqualToWidthMultiplyingConstant() {
        let constraints = view1.widthAnchor .= relatedView.width * 3
        constraints.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
    }

    func testView1WidthEqualToWidthMultipliedByConstant() {
        let constraints = view1.widthAnchor .= 3 * relatedView.width
        constraints.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
    }

    func testView1WidthEqualToWidthDividedByConstant() {
        let constraints = view1.widthAnchor .= relatedView.width / 2
        constraints.assert(view1, .width, .equal, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1WidthEqualToWidthWithPriority() {
        let constraints = view1.widthAnchor .= relatedView.width ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, priority: .low)
    }

    func testView1WidthEqualToWidthWithPriorityLiteral() {
        let constraints = view1.widthAnchor .= relatedView.width ~ 300
        constraints.assert(view1, .width, .equal, relatedView, .width, priority: 300)
    }

    func testView1WidthEqualToWidthWithPriorityArithmetic() {
        let constraints = view1.widthAnchor .= relatedView.width ~ .high - 1
        constraints.assert(view1, .width, .equal, relatedView, .width, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1WidthEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.widthAnchor .= (relatedView.width + 10) * 3
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.widthAnchor .= 3 * (relatedView.width + 10)
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.widthAnchor .= 3 * relatedView.width + 10
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 3)
    }
/*
    func testView1WidthEqualToWidthPlusConstantDividedByConstant() {
        let constraints = view1.widthAnchor .= (relatedView.width + 10) / 2
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1WidthGreaterThanOrEqualToWidth() {
        let constraints = view1.widthAnchor ≥ relatedView.width
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1WidthGreaterThanOrEqualToWidthPlusConstant() {
        let constraints = view1.widthAnchor ≥ relatedView.width + 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
    }

    func testView1WidthGreaterThanOrEqualToWidthMinusConstant() {
        let constraints = view1.widthAnchor ≥ relatedView.width - 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1WidthGreaterThanOrEqualToWidthMultiplyingConstant() {
        let constraints = view1.widthAnchor ≥ relatedView.width * 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualToWidthMultipliedByConstant() {
        let constraints = view1.widthAnchor ≥ 3 * relatedView.width
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualToWidthDividedByConstant() {
        let constraints = view1.widthAnchor ≥ relatedView.width / 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1WidthGreaterThanOrEqualToWidthWithPriority() {
        let constraints = view1.widthAnchor ≥ relatedView.width ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualToWidthWithPriorityLiteral() {
        let constraints = view1.widthAnchor ≥ relatedView.width ~ 300
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 300)
    }

    func testView1WidthGreaterThanOrEqualToWidthWithPriorityArithmetic() {
        let constraints = view1.widthAnchor ≥ relatedView.width ~ .high - 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1WidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.widthAnchor ≥ (relatedView.width + 10) * 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.widthAnchor ≥ 3 * (relatedView.width + 10)
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.widthAnchor ≥ 3 * relatedView.width + 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }
/*
    func testView1WidthGreaterThanOrEqualToWidthPlusConstantDividedByConstant() {
        let constraints = view1.widthAnchor ≥ (relatedView.width + 10) / 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: view1Width <=> relatedViewHeight
    // MARK: LessThanOrEqual

    func testView1WidthLessThanOrEqualToHeight() {
        let constraints = view1.widthAnchor ≤ relatedView.height
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height)
    }

    // MARK: LessThanOrEqual with constant
    func testView1WidthLessThanOrEqualToHeightPlusConstant() {
        let constraints = view1.widthAnchor ≤ relatedView.height + 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testView1WidthLessThanOrEqualToHeightMinusConstant() {
        let constraints = view1.widthAnchor ≤ relatedView.height - 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1WidthLessThanOrEqualToHeightMultiplyingConstant() {
        let constraints = view1.widthAnchor ≤ relatedView.height * 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualToHeightMultipliedByConstant() {
        let constraints = view1.widthAnchor ≤ 3 * relatedView.height
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualToHeightDividedByConstant() {
        let constraints = view1.widthAnchor ≤ relatedView.height / 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1WidthLessThanOrEqualToHeightWithPriority() {
        let constraints = view1.widthAnchor ≤ relatedView.height ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testView1WidthLessThanOrEqualToHeightWithPriorityLiteral() {
        let constraints = view1.widthAnchor ≤ relatedView.height ~ 300
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testView1WidthLessThanOrEqualToHeightWithPriorityArithmetic() {
        let constraints = view1.widthAnchor ≤ relatedView.height ~ .high - 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1WidthLessThanOrEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.widthAnchor ≤ (relatedView.height + 10) * 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.widthAnchor ≤ 3 * (relatedView.height + 10)
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthLessThanOrEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.widthAnchor ≤ 3 * relatedView.height + 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }
/*
    func testView1WidthLessThanOrEqualToHeightPlusConstantDividedByConstant() {
        let constraints = view1.widthAnchor ≤ (relatedView.height + 10) / 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1WidthEqualToHeight() {
        let constraints = view1.widthAnchor .= relatedView.height
        constraints.assert(view1, .width, .equal, relatedView, .height)
    }

    // MARK: Equal with constant
    func testView1WidthEqualToHeightPlusConstant() {
        let constraints = view1.widthAnchor .= relatedView.height + 10
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10)
    }

    func testView1WidthEqualToHeightMinusConstant() {
        let constraints = view1.widthAnchor .= relatedView.height - 10
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1WidthEqualToHeightMultiplyingConstant() {
        let constraints = view1.widthAnchor .= relatedView.height * 3
        constraints.assert(view1, .width, .equal, relatedView, .height, multiplier: 3)
    }

    func testView1WidthEqualToHeightMultipliedByConstant() {
        let constraints = view1.widthAnchor .= 3 * relatedView.height
        constraints.assert(view1, .width, .equal, relatedView, .height, multiplier: 3)
    }

    func testView1WidthEqualToHeightDividedByConstant() {
        let constraints = view1.widthAnchor .= relatedView.height / 2
        constraints.assert(view1, .width, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1WidthEqualToHeightWithPriority() {
        let constraints = view1.widthAnchor .= relatedView.height ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .height, priority: .low)
    }

    func testView1WidthEqualToHeightWithPriorityLiteral() {
        let constraints = view1.widthAnchor .= relatedView.height ~ 300
        constraints.assert(view1, .width, .equal, relatedView, .height, priority: 300)
    }

    func testView1WidthEqualToHeightWithPriorityArithmetic() {
        let constraints = view1.widthAnchor .= relatedView.height ~ .high - 1
        constraints.assert(view1, .width, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1WidthEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.widthAnchor .= (relatedView.height + 10) * 3
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.widthAnchor .= 3 * (relatedView.height + 10)
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.widthAnchor .= 3 * relatedView.height + 10
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }
/*
    func testView1WidthEqualToHeightPlusConstantDividedByConstant() {
        let constraints = view1.widthAnchor .= (relatedView.height + 10) / 2
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1WidthGreaterThanOrEqualToHeight() {
        let constraints = view1.widthAnchor ≥ relatedView.height
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1WidthGreaterThanOrEqualToHeightPlusConstant() {
        let constraints = view1.widthAnchor ≥ relatedView.height + 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testView1WidthGreaterThanOrEqualToHeightMinusConstant() {
        let constraints = view1.widthAnchor ≥ relatedView.height - 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1WidthGreaterThanOrEqualToHeightMultiplyingConstant() {
        let constraints = view1.widthAnchor ≥ relatedView.height * 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualToHeightMultipliedByConstant() {
        let constraints = view1.widthAnchor ≥ 3 * relatedView.height
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualToHeightDividedByConstant() {
        let constraints = view1.widthAnchor ≥ relatedView.height / 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1WidthGreaterThanOrEqualToHeightWithPriority() {
        let constraints = view1.widthAnchor ≥ relatedView.height ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualToHeightWithPriorityLiteral() {
        let constraints = view1.widthAnchor ≥ relatedView.height ~ 300
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testView1WidthGreaterThanOrEqualToHeightWithPriorityArithmetic() {
        let constraints = view1.widthAnchor ≥ relatedView.height ~ .high - 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1WidthGreaterThanOrEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.widthAnchor ≥ (relatedView.height + 10) * 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.widthAnchor ≥ 3 * (relatedView.height + 10)
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1WidthGreaterThanOrEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.widthAnchor ≥ 3 * relatedView.height + 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }
/*
    func testView1WidthGreaterThanOrEqualToHeightPlusConstantDividedByConstant() {
        let constraints = view1.widthAnchor ≥ (relatedView.height + 10) / 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: view1Height <=> relatedViewWidth
    // MARK: LessThanOrEqual

    func testView1HeightLessThanOrEqualToWidth() {
        let constraints = view1.heightAnchor ≤ relatedView.width
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width)
    }

    // MARK: LessThanOrEqual with constant
    func testView1HeightLessThanOrEqualToWidthPlusConstant() {
        let constraints = view1.heightAnchor ≤ relatedView.width + 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10)
    }

    func testView1HeightLessThanOrEqualToWidthMinusConstant() {
        let constraints = view1.heightAnchor ≤ relatedView.width - 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1HeightLessThanOrEqualToWidthMultiplyingConstant() {
        let constraints = view1.heightAnchor ≤ relatedView.width * 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualToWidthMultipliedByConstant() {
        let constraints = view1.heightAnchor ≤ 3 * relatedView.width
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualToWidthDividedByConstant() {
        let constraints = view1.heightAnchor ≤ relatedView.width / 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1HeightLessThanOrEqualToWidthWithPriority() {
        let constraints = view1.heightAnchor ≤ relatedView.width ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, priority: .low)
    }

    func testView1HeightLessThanOrEqualToWidthWithPriorityLiteral() {
        let constraints = view1.heightAnchor ≤ relatedView.width ~ 300
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, priority: 300)
    }

    func testView1HeightLessThanOrEqualToWidthWithPriorityArithmetic() {
        let constraints = view1.heightAnchor ≤ relatedView.width ~ .high - 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1HeightLessThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.heightAnchor ≤ (relatedView.width + 10) * 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.heightAnchor ≤ 3 * (relatedView.width + 10)
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.heightAnchor ≤ 3 * relatedView.width + 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }
/*
    func testView1HeightLessThanOrEqualToWidthPlusConstantDividedByConstant() {
        let constraints = view1.heightAnchor ≤ (relatedView.width + 10) / 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1HeightEqualToWidth() {
        let constraints = view1.heightAnchor .= relatedView.width
        constraints.assert(view1, .height, .equal, relatedView, .width)
    }

    // MARK: Equal with constant
    func testView1HeightEqualToWidthPlusConstant() {
        let constraints = view1.heightAnchor .= relatedView.width + 10
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10)
    }

    func testView1HeightEqualToWidthMinusConstant() {
        let constraints = view1.heightAnchor .= relatedView.width - 10
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1HeightEqualToWidthMultiplyingConstant() {
        let constraints = view1.heightAnchor .= relatedView.width * 3
        constraints.assert(view1, .height, .equal, relatedView, .width, multiplier: 3)
    }

    func testView1HeightEqualToWidthMultipliedByConstant() {
        let constraints = view1.heightAnchor .= 3 * relatedView.width
        constraints.assert(view1, .height, .equal, relatedView, .width, multiplier: 3)
    }

    func testView1HeightEqualToWidthDividedByConstant() {
        let constraints = view1.heightAnchor .= relatedView.width / 2
        constraints.assert(view1, .height, .equal, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1HeightEqualToWidthWithPriority() {
        let constraints = view1.heightAnchor .= relatedView.width ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .width, priority: .low)
    }

    func testView1HeightEqualToWidthWithPriorityLiteral() {
        let constraints = view1.heightAnchor .= relatedView.width ~ 300
        constraints.assert(view1, .height, .equal, relatedView, .width, priority: 300)
    }

    func testView1HeightEqualToWidthWithPriorityArithmetic() {
        let constraints = view1.heightAnchor .= relatedView.width ~ .high - 1
        constraints.assert(view1, .height, .equal, relatedView, .width, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1HeightEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.heightAnchor .= (relatedView.width + 10) * 3
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.heightAnchor .= 3 * (relatedView.width + 10)
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.heightAnchor .= 3 * relatedView.width + 10
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10, multiplier: 3)
    }
/*
    func testView1HeightEqualToWidthPlusConstantDividedByConstant() {
        let constraints = view1.heightAnchor .= (relatedView.width + 10) / 2
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1HeightGreaterThanOrEqualToWidth() {
        let constraints = view1.heightAnchor ≥ relatedView.width
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1HeightGreaterThanOrEqualToWidthPlusConstant() {
        let constraints = view1.heightAnchor ≥ relatedView.width + 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10)
    }

    func testView1HeightGreaterThanOrEqualToWidthMinusConstant() {
        let constraints = view1.heightAnchor ≥ relatedView.width - 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1HeightGreaterThanOrEqualToWidthMultiplyingConstant() {
        let constraints = view1.heightAnchor ≥ relatedView.width * 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualToWidthMultipliedByConstant() {
        let constraints = view1.heightAnchor ≥ 3 * relatedView.width
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualToWidthDividedByConstant() {
        let constraints = view1.heightAnchor ≥ relatedView.width / 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1HeightGreaterThanOrEqualToWidthWithPriority() {
        let constraints = view1.heightAnchor ≥ relatedView.width ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualToWidthWithPriorityLiteral() {
        let constraints = view1.heightAnchor ≥ relatedView.width ~ 300
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, priority: 300)
    }

    func testView1HeightGreaterThanOrEqualToWidthWithPriorityArithmetic() {
        let constraints = view1.heightAnchor ≥ relatedView.width ~ .high - 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1HeightGreaterThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        let constraints = view1.heightAnchor ≥ (relatedView.width + 10) * 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        let constraints = view1.heightAnchor ≥ 3 * (relatedView.width + 10)
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        let constraints = view1.heightAnchor ≥ 3 * relatedView.width + 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 3)
    }
/*
    func testView1HeightGreaterThanOrEqualToWidthPlusConstantDividedByConstant() {
        let constraints = view1.heightAnchor ≥ (relatedView.width + 10) / 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: view1Height <=> relatedViewHeight
    // MARK: LessThanOrEqual

    func testView1HeightLessThanOrEqualToHeight() {
        let constraints = view1.heightAnchor ≤ relatedView.height
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height)
    }

    // MARK: LessThanOrEqual with constant
    func testView1HeightLessThanOrEqualToHeightPlusConstant() {
        let constraints = view1.heightAnchor ≤ relatedView.height + 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    func testView1HeightLessThanOrEqualToHeightMinusConstant() {
        let constraints = view1.heightAnchor ≤ relatedView.height - 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1HeightLessThanOrEqualToHeightMultiplyingConstant() {
        let constraints = view1.heightAnchor ≤ relatedView.height * 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualToHeightMultipliedByConstant() {
        let constraints = view1.heightAnchor ≤ 3 * relatedView.height
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualToHeightDividedByConstant() {
        let constraints = view1.heightAnchor ≤ relatedView.height / 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1HeightLessThanOrEqualToHeightWithPriority() {
        let constraints = view1.heightAnchor ≤ relatedView.height ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    func testView1HeightLessThanOrEqualToHeightWithPriorityLiteral() {
        let constraints = view1.heightAnchor ≤ relatedView.height ~ 300
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 300)
    }

    func testView1HeightLessThanOrEqualToHeightWithPriorityArithmetic() {
        let constraints = view1.heightAnchor ≤ relatedView.height ~ .high - 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1HeightLessThanOrEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.heightAnchor ≤ (relatedView.height + 10) * 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.heightAnchor ≤ 3 * (relatedView.height + 10)
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightLessThanOrEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.heightAnchor ≤ 3 * relatedView.height + 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }
/*
    func testView1HeightLessThanOrEqualToHeightPlusConstantDividedByConstant() {
        let constraints = view1.heightAnchor ≤ (relatedView.height + 10) / 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1HeightEqualToHeight() {
        let constraints = view1.heightAnchor .= relatedView.height
        constraints.assert(view1, .height, .equal, relatedView, .height)
    }

    // MARK: Equal with constant
    func testView1HeightEqualToHeightPlusConstant() {
        let constraints = view1.heightAnchor .= relatedView.height + 10
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10)
    }

    func testView1HeightEqualToHeightMinusConstant() {
        let constraints = view1.heightAnchor .= relatedView.height - 10
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1HeightEqualToHeightMultiplyingConstant() {
        let constraints = view1.heightAnchor .= relatedView.height * 3
        constraints.assert(view1, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testView1HeightEqualToHeightMultipliedByConstant() {
        let constraints = view1.heightAnchor .= 3 * relatedView.height
        constraints.assert(view1, .height, .equal, relatedView, .height, multiplier: 3)
    }

    func testView1HeightEqualToHeightDividedByConstant() {
        let constraints = view1.heightAnchor .= relatedView.height / 2
        constraints.assert(view1, .height, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1HeightEqualToHeightWithPriority() {
        let constraints = view1.heightAnchor .= relatedView.height ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, priority: .low)
    }

    func testView1HeightEqualToHeightWithPriorityLiteral() {
        let constraints = view1.heightAnchor .= relatedView.height ~ 300
        constraints.assert(view1, .height, .equal, relatedView, .height, priority: 300)
    }

    func testView1HeightEqualToHeightWithPriorityArithmetic() {
        let constraints = view1.heightAnchor .= relatedView.height ~ .high - 1
        constraints.assert(view1, .height, .equal, relatedView, .height, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1HeightEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.heightAnchor .= (relatedView.height + 10) * 3
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.heightAnchor .= 3 * (relatedView.height + 10)
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.heightAnchor .= 3 * relatedView.height + 10
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 3)
    }
/*
    func testView1HeightEqualToHeightPlusConstantDividedByConstant() {
        let constraints = view1.heightAnchor .= (relatedView.height + 10) / 2
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1HeightGreaterThanOrEqualToHeight() {
        let constraints = view1.heightAnchor ≥ relatedView.height
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1HeightGreaterThanOrEqualToHeightPlusConstant() {
        let constraints = view1.heightAnchor ≥ relatedView.height + 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    func testView1HeightGreaterThanOrEqualToHeightMinusConstant() {
        let constraints = view1.heightAnchor ≥ relatedView.height - 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1HeightGreaterThanOrEqualToHeightMultiplyingConstant() {
        let constraints = view1.heightAnchor ≥ relatedView.height * 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualToHeightMultipliedByConstant() {
        let constraints = view1.heightAnchor ≥ 3 * relatedView.height
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualToHeightDividedByConstant() {
        let constraints = view1.heightAnchor ≥ relatedView.height / 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1HeightGreaterThanOrEqualToHeightWithPriority() {
        let constraints = view1.heightAnchor ≥ relatedView.height ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualToHeightWithPriorityLiteral() {
        let constraints = view1.heightAnchor ≥ relatedView.height ~ 300
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 300)
    }

    func testView1HeightGreaterThanOrEqualToHeightWithPriorityArithmetic() {
        let constraints = view1.heightAnchor ≥ relatedView.height ~ .high - 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1HeightGreaterThanOrEqualToHeightPlusConstantMultiplyingConstant() {
        let constraints = view1.heightAnchor ≥ (relatedView.height + 10) * 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualToHeightPlusConstantMultipliedByConstant() {
        let constraints = view1.heightAnchor ≥ 3 * (relatedView.height + 10)
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10 * 3, multiplier: 3)
    }

    func testView1HeightGreaterThanOrEqualToHeightMultipliedByConstantPlusConstant() {
        let constraints = view1.heightAnchor ≥ 3 * relatedView.height + 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 3)
    }
/*
    func testView1HeightGreaterThanOrEqualToHeightPlusConstantDividedByConstant() {
        let constraints = view1.heightAnchor ≥ (relatedView.height + 10) / 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10, multiplier: 1 / 2)
    }
*/
// sourcery:end
}
