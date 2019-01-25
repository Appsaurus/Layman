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
    public func testView1WidthEqualWidth() {
        let constraints = view1.widthAnchor .= relatedView.width
        constraints.assert(view1, .width, .equal, relatedView, .width)
    }

    public func testView1WidthEqualWidthPlusConstant() {
        let constraints = view1.widthAnchor .= relatedView.width + 10
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: 10)
    }

    public func testView1WidthEqualWidthMinusConstant() {
        let constraints = view1.widthAnchor .= relatedView.width - 10
        constraints.assert(view1, .width, .equal, relatedView, .width, constant: -10)
    }

    public func testView1WidthEqualWidthMultiplyingConstant() {
        let constraints = view1.widthAnchor .= relatedView.width * 3
        constraints.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
    }

    public func testView1WidthEqualWidthMultipliedByConstant() {
        let constraints = view1.widthAnchor .= 3 * relatedView.width
        constraints.assert(view1, .width, .equal, relatedView, .width, multiplier: 3)
    }

    public func testView1WidthEqualWidthDividedByConstant() {
        let constraints = view1.widthAnchor .= relatedView.width / 2
        constraints.assert(view1, .width, .equal, relatedView, .width, multiplier: 1 / 2)
    }

    public func testView1WidthEqualWidthWithPriority() {
        let constraints = view1.widthAnchor .= relatedView.width ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .width, priority: .low)
    }

    public func testView1WidthEqualWidthWithPriorityArithmetic() {
        let constraints = view1.widthAnchor .= relatedView.width ~ .high - 1
        constraints.assert(view1, .width, .equal, relatedView, .width, priority: 749)
    }

    public func testView1WidthLessThanOrEqualWidth() {
        let constraints = view1.widthAnchor ≤ relatedView.width
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width)
    }

    public func testView1WidthLessThanOrEqualWidthPlusConstant() {
        let constraints = view1.widthAnchor ≤ relatedView.width + 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
    }

    public func testView1WidthLessThanOrEqualWidthMinusConstant() {
        let constraints = view1.widthAnchor ≤ relatedView.width - 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
    }

    public func testView1WidthLessThanOrEqualWidthMultiplyingConstant() {
        let constraints = view1.widthAnchor ≤ relatedView.width * 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    public func testView1WidthLessThanOrEqualWidthMultipliedByConstant() {
        let constraints = view1.widthAnchor ≤ 3 * relatedView.width
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    public func testView1WidthLessThanOrEqualWidthDividedByConstant() {
        let constraints = view1.widthAnchor ≤ relatedView.width / 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    public func testView1WidthLessThanOrEqualWidthWithPriority() {
        let constraints = view1.widthAnchor ≤ relatedView.width ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
    }

    public func testView1WidthLessThanOrEqualWidthWithPriorityArithmetic() {
        let constraints = view1.widthAnchor ≤ relatedView.width ~ .high - 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
    }

    public func testView1WidthGreaterThanOrEqualWidth() {
        let constraints = view1.widthAnchor ≥ relatedView.width
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width)
    }

    public func testView1WidthGreaterThanOrEqualWidthPlusConstant() {
        let constraints = view1.widthAnchor ≥ relatedView.width + 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
    }

    public func testView1WidthGreaterThanOrEqualWidthMinusConstant() {
        let constraints = view1.widthAnchor ≥ relatedView.width - 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
    }

    public func testView1WidthGreaterThanOrEqualWidthMultiplyingConstant() {
        let constraints = view1.widthAnchor ≥ relatedView.width * 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    public func testView1WidthGreaterThanOrEqualWidthMultipliedByConstant() {
        let constraints = view1.widthAnchor ≥ 3 * relatedView.width
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    public func testView1WidthGreaterThanOrEqualWidthDividedByConstant() {
        let constraints = view1.widthAnchor ≥ relatedView.width / 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    public func testView1WidthGreaterThanOrEqualWidthWithPriority() {
        let constraints = view1.widthAnchor ≥ relatedView.width ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
    }

    public func testView1WidthGreaterThanOrEqualWidthWithPriorityArithmetic() {
        let constraints = view1.widthAnchor ≥ relatedView.width ~ .high - 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
    }

// MARK: view1Width <=> relatedViewHeight
    public func testView1WidthEqualHeight() {
        let constraints = view1.widthAnchor .= relatedView.height
        constraints.assert(view1, .width, .equal, relatedView, .height)
    }

    public func testView1WidthEqualHeightPlusConstant() {
        let constraints = view1.widthAnchor .= relatedView.height + 10
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: 10)
    }

    public func testView1WidthEqualHeightMinusConstant() {
        let constraints = view1.widthAnchor .= relatedView.height - 10
        constraints.assert(view1, .width, .equal, relatedView, .height, constant: -10)
    }

    public func testView1WidthEqualHeightMultiplyingConstant() {
        let constraints = view1.widthAnchor .= relatedView.height * 3
        constraints.assert(view1, .width, .equal, relatedView, .height, multiplier: 3)
    }

    public func testView1WidthEqualHeightMultipliedByConstant() {
        let constraints = view1.widthAnchor .= 3 * relatedView.height
        constraints.assert(view1, .width, .equal, relatedView, .height, multiplier: 3)
    }

    public func testView1WidthEqualHeightDividedByConstant() {
        let constraints = view1.widthAnchor .= relatedView.height / 2
        constraints.assert(view1, .width, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    public func testView1WidthEqualHeightWithPriority() {
        let constraints = view1.widthAnchor .= relatedView.height ~ .low
        constraints.assert(view1, .width, .equal, relatedView, .height, priority: .low)
    }

    public func testView1WidthEqualHeightWithPriorityArithmetic() {
        let constraints = view1.widthAnchor .= relatedView.height ~ .high - 1
        constraints.assert(view1, .width, .equal, relatedView, .height, priority: 749)
    }

    public func testView1WidthLessThanOrEqualHeight() {
        let constraints = view1.widthAnchor ≤ relatedView.height
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height)
    }

    public func testView1WidthLessThanOrEqualHeightPlusConstant() {
        let constraints = view1.widthAnchor ≤ relatedView.height + 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    public func testView1WidthLessThanOrEqualHeightMinusConstant() {
        let constraints = view1.widthAnchor ≤ relatedView.height - 10
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    public func testView1WidthLessThanOrEqualHeightMultiplyingConstant() {
        let constraints = view1.widthAnchor ≤ relatedView.height * 3
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    public func testView1WidthLessThanOrEqualHeightMultipliedByConstant() {
        let constraints = view1.widthAnchor ≤ 3 * relatedView.height
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    public func testView1WidthLessThanOrEqualHeightDividedByConstant() {
        let constraints = view1.widthAnchor ≤ relatedView.height / 2
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    public func testView1WidthLessThanOrEqualHeightWithPriority() {
        let constraints = view1.widthAnchor ≤ relatedView.height ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    public func testView1WidthLessThanOrEqualHeightWithPriorityArithmetic() {
        let constraints = view1.widthAnchor ≤ relatedView.height ~ .high - 1
        constraints.assert(view1, .width, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    public func testView1WidthGreaterThanOrEqualHeight() {
        let constraints = view1.widthAnchor ≥ relatedView.height
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height)
    }

    public func testView1WidthGreaterThanOrEqualHeightPlusConstant() {
        let constraints = view1.widthAnchor ≥ relatedView.height + 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    public func testView1WidthGreaterThanOrEqualHeightMinusConstant() {
        let constraints = view1.widthAnchor ≥ relatedView.height - 10
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    public func testView1WidthGreaterThanOrEqualHeightMultiplyingConstant() {
        let constraints = view1.widthAnchor ≥ relatedView.height * 3
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    public func testView1WidthGreaterThanOrEqualHeightMultipliedByConstant() {
        let constraints = view1.widthAnchor ≥ 3 * relatedView.height
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    public func testView1WidthGreaterThanOrEqualHeightDividedByConstant() {
        let constraints = view1.widthAnchor ≥ relatedView.height / 2
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    public func testView1WidthGreaterThanOrEqualHeightWithPriority() {
        let constraints = view1.widthAnchor ≥ relatedView.height ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    public func testView1WidthGreaterThanOrEqualHeightWithPriorityArithmetic() {
        let constraints = view1.widthAnchor ≥ relatedView.height ~ .high - 1
        constraints.assert(view1, .width, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

// MARK: view1Height <=> relatedViewWidth
    public func testView1HeightEqualWidth() {
        let constraints = view1.heightAnchor .= relatedView.width
        constraints.assert(view1, .height, .equal, relatedView, .width)
    }

    public func testView1HeightEqualWidthPlusConstant() {
        let constraints = view1.heightAnchor .= relatedView.width + 10
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: 10)
    }

    public func testView1HeightEqualWidthMinusConstant() {
        let constraints = view1.heightAnchor .= relatedView.width - 10
        constraints.assert(view1, .height, .equal, relatedView, .width, constant: -10)
    }

    public func testView1HeightEqualWidthMultiplyingConstant() {
        let constraints = view1.heightAnchor .= relatedView.width * 3
        constraints.assert(view1, .height, .equal, relatedView, .width, multiplier: 3)
    }

    public func testView1HeightEqualWidthMultipliedByConstant() {
        let constraints = view1.heightAnchor .= 3 * relatedView.width
        constraints.assert(view1, .height, .equal, relatedView, .width, multiplier: 3)
    }

    public func testView1HeightEqualWidthDividedByConstant() {
        let constraints = view1.heightAnchor .= relatedView.width / 2
        constraints.assert(view1, .height, .equal, relatedView, .width, multiplier: 1 / 2)
    }

    public func testView1HeightEqualWidthWithPriority() {
        let constraints = view1.heightAnchor .= relatedView.width ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .width, priority: .low)
    }

    public func testView1HeightEqualWidthWithPriorityArithmetic() {
        let constraints = view1.heightAnchor .= relatedView.width ~ .high - 1
        constraints.assert(view1, .height, .equal, relatedView, .width, priority: 749)
    }

    public func testView1HeightLessThanOrEqualWidth() {
        let constraints = view1.heightAnchor ≤ relatedView.width
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width)
    }

    public func testView1HeightLessThanOrEqualWidthPlusConstant() {
        let constraints = view1.heightAnchor ≤ relatedView.width + 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: 10)
    }

    public func testView1HeightLessThanOrEqualWidthMinusConstant() {
        let constraints = view1.heightAnchor ≤ relatedView.width - 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, constant: -10)
    }

    public func testView1HeightLessThanOrEqualWidthMultiplyingConstant() {
        let constraints = view1.heightAnchor ≤ relatedView.width * 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    public func testView1HeightLessThanOrEqualWidthMultipliedByConstant() {
        let constraints = view1.heightAnchor ≤ 3 * relatedView.width
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    public func testView1HeightLessThanOrEqualWidthDividedByConstant() {
        let constraints = view1.heightAnchor ≤ relatedView.width / 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    public func testView1HeightLessThanOrEqualWidthWithPriority() {
        let constraints = view1.heightAnchor ≤ relatedView.width ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, priority: .low)
    }

    public func testView1HeightLessThanOrEqualWidthWithPriorityArithmetic() {
        let constraints = view1.heightAnchor ≤ relatedView.width ~ .high - 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .width, priority: 749)
    }

    public func testView1HeightGreaterThanOrEqualWidth() {
        let constraints = view1.heightAnchor ≥ relatedView.width
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width)
    }

    public func testView1HeightGreaterThanOrEqualWidthPlusConstant() {
        let constraints = view1.heightAnchor ≥ relatedView.width + 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: 10)
    }

    public func testView1HeightGreaterThanOrEqualWidthMinusConstant() {
        let constraints = view1.heightAnchor ≥ relatedView.width - 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, constant: -10)
    }

    public func testView1HeightGreaterThanOrEqualWidthMultiplyingConstant() {
        let constraints = view1.heightAnchor ≥ relatedView.width * 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    public func testView1HeightGreaterThanOrEqualWidthMultipliedByConstant() {
        let constraints = view1.heightAnchor ≥ 3 * relatedView.width
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    public func testView1HeightGreaterThanOrEqualWidthDividedByConstant() {
        let constraints = view1.heightAnchor ≥ relatedView.width / 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    public func testView1HeightGreaterThanOrEqualWidthWithPriority() {
        let constraints = view1.heightAnchor ≥ relatedView.width ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, priority: .low)
    }

    public func testView1HeightGreaterThanOrEqualWidthWithPriorityArithmetic() {
        let constraints = view1.heightAnchor ≥ relatedView.width ~ .high - 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .width, priority: 749)
    }

// MARK: view1Height <=> relatedViewHeight
    public func testView1HeightEqualHeight() {
        let constraints = view1.heightAnchor .= relatedView.height
        constraints.assert(view1, .height, .equal, relatedView, .height)
    }

    public func testView1HeightEqualHeightPlusConstant() {
        let constraints = view1.heightAnchor .= relatedView.height + 10
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: 10)
    }

    public func testView1HeightEqualHeightMinusConstant() {
        let constraints = view1.heightAnchor .= relatedView.height - 10
        constraints.assert(view1, .height, .equal, relatedView, .height, constant: -10)
    }

    public func testView1HeightEqualHeightMultiplyingConstant() {
        let constraints = view1.heightAnchor .= relatedView.height * 3
        constraints.assert(view1, .height, .equal, relatedView, .height, multiplier: 3)
    }

    public func testView1HeightEqualHeightMultipliedByConstant() {
        let constraints = view1.heightAnchor .= 3 * relatedView.height
        constraints.assert(view1, .height, .equal, relatedView, .height, multiplier: 3)
    }

    public func testView1HeightEqualHeightDividedByConstant() {
        let constraints = view1.heightAnchor .= relatedView.height / 2
        constraints.assert(view1, .height, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    public func testView1HeightEqualHeightWithPriority() {
        let constraints = view1.heightAnchor .= relatedView.height ~ .low
        constraints.assert(view1, .height, .equal, relatedView, .height, priority: .low)
    }

    public func testView1HeightEqualHeightWithPriorityArithmetic() {
        let constraints = view1.heightAnchor .= relatedView.height ~ .high - 1
        constraints.assert(view1, .height, .equal, relatedView, .height, priority: 749)
    }

    public func testView1HeightLessThanOrEqualHeight() {
        let constraints = view1.heightAnchor ≤ relatedView.height
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height)
    }

    public func testView1HeightLessThanOrEqualHeightPlusConstant() {
        let constraints = view1.heightAnchor ≤ relatedView.height + 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    public func testView1HeightLessThanOrEqualHeightMinusConstant() {
        let constraints = view1.heightAnchor ≤ relatedView.height - 10
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    public func testView1HeightLessThanOrEqualHeightMultiplyingConstant() {
        let constraints = view1.heightAnchor ≤ relatedView.height * 3
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    public func testView1HeightLessThanOrEqualHeightMultipliedByConstant() {
        let constraints = view1.heightAnchor ≤ 3 * relatedView.height
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    public func testView1HeightLessThanOrEqualHeightDividedByConstant() {
        let constraints = view1.heightAnchor ≤ relatedView.height / 2
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    public func testView1HeightLessThanOrEqualHeightWithPriority() {
        let constraints = view1.heightAnchor ≤ relatedView.height ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    public func testView1HeightLessThanOrEqualHeightWithPriorityArithmetic() {
        let constraints = view1.heightAnchor ≤ relatedView.height ~ .high - 1
        constraints.assert(view1, .height, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    public func testView1HeightGreaterThanOrEqualHeight() {
        let constraints = view1.heightAnchor ≥ relatedView.height
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height)
    }

    public func testView1HeightGreaterThanOrEqualHeightPlusConstant() {
        let constraints = view1.heightAnchor ≥ relatedView.height + 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    public func testView1HeightGreaterThanOrEqualHeightMinusConstant() {
        let constraints = view1.heightAnchor ≥ relatedView.height - 10
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    public func testView1HeightGreaterThanOrEqualHeightMultiplyingConstant() {
        let constraints = view1.heightAnchor ≥ relatedView.height * 3
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    public func testView1HeightGreaterThanOrEqualHeightMultipliedByConstant() {
        let constraints = view1.heightAnchor ≥ 3 * relatedView.height
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    public func testView1HeightGreaterThanOrEqualHeightDividedByConstant() {
        let constraints = view1.heightAnchor ≥ relatedView.height / 2
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    public func testView1HeightGreaterThanOrEqualHeightWithPriority() {
        let constraints = view1.heightAnchor ≥ relatedView.height ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    public func testView1HeightGreaterThanOrEqualHeightWithPriorityArithmetic() {
        let constraints = view1.heightAnchor ≥ relatedView.height ~ .high - 1
        constraints.assert(view1, .height, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }
// sourcery:end
}

