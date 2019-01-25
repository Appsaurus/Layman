//
//  LayoutDimensionArrayTests.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/25/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// swiftlint:disable file_length type_body_length


@testable import UILayoutKit
import XCTest

// sourcery: anchorEquationTest
// sourcery: lhsAttributes = width, lhsAttributes = height
// sourcery: rhsAttributes = width, rhsAttributes = height
// sourcery: lhsItem = viewArray
class LayoutDimensionArrayTests: UILayoutKitTestCase {

// sourcery:inline:auto:LayoutDimensionArrayTests.EquationTests

// MARK: viewArrayWidth <=> relatedViewWidth
    public func testViewArrayWidthEqualWidth() {
        let constraints = viewArray.widthAnchor .= relatedView.width
        constraints.assert(viewArray, .width, .equal, relatedView, .width)
    }

    public func testViewArrayWidthEqualWidthPlusConstant() {
        let constraints = viewArray.widthAnchor .= relatedView.width + 10
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10)
    }

    public func testViewArrayWidthEqualWidthMinusConstant() {
        let constraints = viewArray.widthAnchor .= relatedView.width - 10
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: -10)
    }

    public func testViewArrayWidthEqualWidthMultiplyingConstant() {
        let constraints = viewArray.widthAnchor .= relatedView.width * 3
        constraints.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
    }

    public func testViewArrayWidthEqualWidthMultipliedByConstant() {
        let constraints = viewArray.widthAnchor .= 3 * relatedView.width
        constraints.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 3)
    }

    public func testViewArrayWidthEqualWidthDividedByConstant() {
        let constraints = viewArray.widthAnchor .= relatedView.width / 2
        constraints.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 1 / 2)
    }

    public func testViewArrayWidthEqualWidthWithPriority() {
        let constraints = viewArray.widthAnchor .= relatedView.width ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: .low)
    }

    public func testViewArrayWidthEqualWidthWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor .= relatedView.width ~ .high - 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: 749)
    }

    public func testViewArrayWidthLessThanOrEqualWidth() {
        let constraints = viewArray.widthAnchor ≤ relatedView.width
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width)
    }

    public func testViewArrayWidthLessThanOrEqualWidthPlusConstant() {
        let constraints = viewArray.widthAnchor ≤ relatedView.width + 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: 10)
    }

    public func testViewArrayWidthLessThanOrEqualWidthMinusConstant() {
        let constraints = viewArray.widthAnchor ≤ relatedView.width - 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, constant: -10)
    }

    public func testViewArrayWidthLessThanOrEqualWidthMultiplyingConstant() {
        let constraints = viewArray.widthAnchor ≤ relatedView.width * 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    public func testViewArrayWidthLessThanOrEqualWidthMultipliedByConstant() {
        let constraints = viewArray.widthAnchor ≤ 3 * relatedView.width
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    public func testViewArrayWidthLessThanOrEqualWidthDividedByConstant() {
        let constraints = viewArray.widthAnchor ≤ relatedView.width / 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    public func testViewArrayWidthLessThanOrEqualWidthWithPriority() {
        let constraints = viewArray.widthAnchor ≤ relatedView.width ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: .low)
    }

    public func testViewArrayWidthLessThanOrEqualWidthWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≤ relatedView.width ~ .high - 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width, priority: 749)
    }

    public func testViewArrayWidthGreaterThanOrEqualWidth() {
        let constraints = viewArray.widthAnchor ≥ relatedView.width
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width)
    }

    public func testViewArrayWidthGreaterThanOrEqualWidthPlusConstant() {
        let constraints = viewArray.widthAnchor ≥ relatedView.width + 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: 10)
    }

    public func testViewArrayWidthGreaterThanOrEqualWidthMinusConstant() {
        let constraints = viewArray.widthAnchor ≥ relatedView.width - 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, constant: -10)
    }

    public func testViewArrayWidthGreaterThanOrEqualWidthMultiplyingConstant() {
        let constraints = viewArray.widthAnchor ≥ relatedView.width * 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    public func testViewArrayWidthGreaterThanOrEqualWidthMultipliedByConstant() {
        let constraints = viewArray.widthAnchor ≥ 3 * relatedView.width
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    public func testViewArrayWidthGreaterThanOrEqualWidthDividedByConstant() {
        let constraints = viewArray.widthAnchor ≥ relatedView.width / 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    public func testViewArrayWidthGreaterThanOrEqualWidthWithPriority() {
        let constraints = viewArray.widthAnchor ≥ relatedView.width ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: .low)
    }

    public func testViewArrayWidthGreaterThanOrEqualWidthWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≥ relatedView.width ~ .high - 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width, priority: 749)
    }

// MARK: viewArrayWidth <=> relatedViewHeight
    public func testViewArrayWidthEqualHeight() {
        let constraints = viewArray.widthAnchor .= relatedView.height
        constraints.assert(viewArray, .width, .equal, relatedView, .height)
    }

    public func testViewArrayWidthEqualHeightPlusConstant() {
        let constraints = viewArray.widthAnchor .= relatedView.height + 10
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: 10)
    }

    public func testViewArrayWidthEqualHeightMinusConstant() {
        let constraints = viewArray.widthAnchor .= relatedView.height - 10
        constraints.assert(viewArray, .width, .equal, relatedView, .height, constant: -10)
    }

    public func testViewArrayWidthEqualHeightMultiplyingConstant() {
        let constraints = viewArray.widthAnchor .= relatedView.height * 3
        constraints.assert(viewArray, .width, .equal, relatedView, .height, multiplier: 3)
    }

    public func testViewArrayWidthEqualHeightMultipliedByConstant() {
        let constraints = viewArray.widthAnchor .= 3 * relatedView.height
        constraints.assert(viewArray, .width, .equal, relatedView, .height, multiplier: 3)
    }

    public func testViewArrayWidthEqualHeightDividedByConstant() {
        let constraints = viewArray.widthAnchor .= relatedView.height / 2
        constraints.assert(viewArray, .width, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    public func testViewArrayWidthEqualHeightWithPriority() {
        let constraints = viewArray.widthAnchor .= relatedView.height ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .height, priority: .low)
    }

    public func testViewArrayWidthEqualHeightWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor .= relatedView.height ~ .high - 1
        constraints.assert(viewArray, .width, .equal, relatedView, .height, priority: 749)
    }

    public func testViewArrayWidthLessThanOrEqualHeight() {
        let constraints = viewArray.widthAnchor ≤ relatedView.height
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height)
    }

    public func testViewArrayWidthLessThanOrEqualHeightPlusConstant() {
        let constraints = viewArray.widthAnchor ≤ relatedView.height + 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    public func testViewArrayWidthLessThanOrEqualHeightMinusConstant() {
        let constraints = viewArray.widthAnchor ≤ relatedView.height - 10
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    public func testViewArrayWidthLessThanOrEqualHeightMultiplyingConstant() {
        let constraints = viewArray.widthAnchor ≤ relatedView.height * 3
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    public func testViewArrayWidthLessThanOrEqualHeightMultipliedByConstant() {
        let constraints = viewArray.widthAnchor ≤ 3 * relatedView.height
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    public func testViewArrayWidthLessThanOrEqualHeightDividedByConstant() {
        let constraints = viewArray.widthAnchor ≤ relatedView.height / 2
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    public func testViewArrayWidthLessThanOrEqualHeightWithPriority() {
        let constraints = viewArray.widthAnchor ≤ relatedView.height ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    public func testViewArrayWidthLessThanOrEqualHeightWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≤ relatedView.height ~ .high - 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    public func testViewArrayWidthGreaterThanOrEqualHeight() {
        let constraints = viewArray.widthAnchor ≥ relatedView.height
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height)
    }

    public func testViewArrayWidthGreaterThanOrEqualHeightPlusConstant() {
        let constraints = viewArray.widthAnchor ≥ relatedView.height + 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    public func testViewArrayWidthGreaterThanOrEqualHeightMinusConstant() {
        let constraints = viewArray.widthAnchor ≥ relatedView.height - 10
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    public func testViewArrayWidthGreaterThanOrEqualHeightMultiplyingConstant() {
        let constraints = viewArray.widthAnchor ≥ relatedView.height * 3
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    public func testViewArrayWidthGreaterThanOrEqualHeightMultipliedByConstant() {
        let constraints = viewArray.widthAnchor ≥ 3 * relatedView.height
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    public func testViewArrayWidthGreaterThanOrEqualHeightDividedByConstant() {
        let constraints = viewArray.widthAnchor ≥ relatedView.height / 2
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    public func testViewArrayWidthGreaterThanOrEqualHeightWithPriority() {
        let constraints = viewArray.widthAnchor ≥ relatedView.height ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    public func testViewArrayWidthGreaterThanOrEqualHeightWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≥ relatedView.height ~ .high - 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }

// MARK: viewArrayHeight <=> relatedViewWidth
    public func testViewArrayHeightEqualWidth() {
        let constraints = viewArray.heightAnchor .= relatedView.width
        constraints.assert(viewArray, .height, .equal, relatedView, .width)
    }

    public func testViewArrayHeightEqualWidthPlusConstant() {
        let constraints = viewArray.heightAnchor .= relatedView.width + 10
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: 10)
    }

    public func testViewArrayHeightEqualWidthMinusConstant() {
        let constraints = viewArray.heightAnchor .= relatedView.width - 10
        constraints.assert(viewArray, .height, .equal, relatedView, .width, constant: -10)
    }

    public func testViewArrayHeightEqualWidthMultiplyingConstant() {
        let constraints = viewArray.heightAnchor .= relatedView.width * 3
        constraints.assert(viewArray, .height, .equal, relatedView, .width, multiplier: 3)
    }

    public func testViewArrayHeightEqualWidthMultipliedByConstant() {
        let constraints = viewArray.heightAnchor .= 3 * relatedView.width
        constraints.assert(viewArray, .height, .equal, relatedView, .width, multiplier: 3)
    }

    public func testViewArrayHeightEqualWidthDividedByConstant() {
        let constraints = viewArray.heightAnchor .= relatedView.width / 2
        constraints.assert(viewArray, .height, .equal, relatedView, .width, multiplier: 1 / 2)
    }

    public func testViewArrayHeightEqualWidthWithPriority() {
        let constraints = viewArray.heightAnchor .= relatedView.width ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .width, priority: .low)
    }

    public func testViewArrayHeightEqualWidthWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor .= relatedView.width ~ .high - 1
        constraints.assert(viewArray, .height, .equal, relatedView, .width, priority: 749)
    }

    public func testViewArrayHeightLessThanOrEqualWidth() {
        let constraints = viewArray.heightAnchor ≤ relatedView.width
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width)
    }

    public func testViewArrayHeightLessThanOrEqualWidthPlusConstant() {
        let constraints = viewArray.heightAnchor ≤ relatedView.width + 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: 10)
    }

    public func testViewArrayHeightLessThanOrEqualWidthMinusConstant() {
        let constraints = viewArray.heightAnchor ≤ relatedView.width - 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, constant: -10)
    }

    public func testViewArrayHeightLessThanOrEqualWidthMultiplyingConstant() {
        let constraints = viewArray.heightAnchor ≤ relatedView.width * 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    public func testViewArrayHeightLessThanOrEqualWidthMultipliedByConstant() {
        let constraints = viewArray.heightAnchor ≤ 3 * relatedView.width
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, multiplier: 3)
    }

    public func testViewArrayHeightLessThanOrEqualWidthDividedByConstant() {
        let constraints = viewArray.heightAnchor ≤ relatedView.width / 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    public func testViewArrayHeightLessThanOrEqualWidthWithPriority() {
        let constraints = viewArray.heightAnchor ≤ relatedView.width ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, priority: .low)
    }

    public func testViewArrayHeightLessThanOrEqualWidthWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≤ relatedView.width ~ .high - 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .width, priority: 749)
    }

    public func testViewArrayHeightGreaterThanOrEqualWidth() {
        let constraints = viewArray.heightAnchor ≥ relatedView.width
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width)
    }

    public func testViewArrayHeightGreaterThanOrEqualWidthPlusConstant() {
        let constraints = viewArray.heightAnchor ≥ relatedView.width + 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: 10)
    }

    public func testViewArrayHeightGreaterThanOrEqualWidthMinusConstant() {
        let constraints = viewArray.heightAnchor ≥ relatedView.width - 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, constant: -10)
    }

    public func testViewArrayHeightGreaterThanOrEqualWidthMultiplyingConstant() {
        let constraints = viewArray.heightAnchor ≥ relatedView.width * 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    public func testViewArrayHeightGreaterThanOrEqualWidthMultipliedByConstant() {
        let constraints = viewArray.heightAnchor ≥ 3 * relatedView.width
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 3)
    }

    public func testViewArrayHeightGreaterThanOrEqualWidthDividedByConstant() {
        let constraints = viewArray.heightAnchor ≥ relatedView.width / 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, multiplier: 1 / 2)
    }

    public func testViewArrayHeightGreaterThanOrEqualWidthWithPriority() {
        let constraints = viewArray.heightAnchor ≥ relatedView.width ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, priority: .low)
    }

    public func testViewArrayHeightGreaterThanOrEqualWidthWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≥ relatedView.width ~ .high - 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .width, priority: 749)
    }

// MARK: viewArrayHeight <=> relatedViewHeight
    public func testViewArrayHeightEqualHeight() {
        let constraints = viewArray.heightAnchor .= relatedView.height
        constraints.assert(viewArray, .height, .equal, relatedView, .height)
    }

    public func testViewArrayHeightEqualHeightPlusConstant() {
        let constraints = viewArray.heightAnchor .= relatedView.height + 10
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: 10)
    }

    public func testViewArrayHeightEqualHeightMinusConstant() {
        let constraints = viewArray.heightAnchor .= relatedView.height - 10
        constraints.assert(viewArray, .height, .equal, relatedView, .height, constant: -10)
    }

    public func testViewArrayHeightEqualHeightMultiplyingConstant() {
        let constraints = viewArray.heightAnchor .= relatedView.height * 3
        constraints.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3)
    }

    public func testViewArrayHeightEqualHeightMultipliedByConstant() {
        let constraints = viewArray.heightAnchor .= 3 * relatedView.height
        constraints.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 3)
    }

    public func testViewArrayHeightEqualHeightDividedByConstant() {
        let constraints = viewArray.heightAnchor .= relatedView.height / 2
        constraints.assert(viewArray, .height, .equal, relatedView, .height, multiplier: 1 / 2)
    }

    public func testViewArrayHeightEqualHeightWithPriority() {
        let constraints = viewArray.heightAnchor .= relatedView.height ~ .low
        constraints.assert(viewArray, .height, .equal, relatedView, .height, priority: .low)
    }

    public func testViewArrayHeightEqualHeightWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor .= relatedView.height ~ .high - 1
        constraints.assert(viewArray, .height, .equal, relatedView, .height, priority: 749)
    }

    public func testViewArrayHeightLessThanOrEqualHeight() {
        let constraints = viewArray.heightAnchor ≤ relatedView.height
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height)
    }

    public func testViewArrayHeightLessThanOrEqualHeightPlusConstant() {
        let constraints = viewArray.heightAnchor ≤ relatedView.height + 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: 10)
    }

    public func testViewArrayHeightLessThanOrEqualHeightMinusConstant() {
        let constraints = viewArray.heightAnchor ≤ relatedView.height - 10
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, constant: -10)
    }

    public func testViewArrayHeightLessThanOrEqualHeightMultiplyingConstant() {
        let constraints = viewArray.heightAnchor ≤ relatedView.height * 3
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    public func testViewArrayHeightLessThanOrEqualHeightMultipliedByConstant() {
        let constraints = viewArray.heightAnchor ≤ 3 * relatedView.height
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 3)
    }

    public func testViewArrayHeightLessThanOrEqualHeightDividedByConstant() {
        let constraints = viewArray.heightAnchor ≤ relatedView.height / 2
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    public func testViewArrayHeightLessThanOrEqualHeightWithPriority() {
        let constraints = viewArray.heightAnchor ≤ relatedView.height ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: .low)
    }

    public func testViewArrayHeightLessThanOrEqualHeightWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≤ relatedView.height ~ .high - 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, relatedView, .height, priority: 749)
    }

    public func testViewArrayHeightGreaterThanOrEqualHeight() {
        let constraints = viewArray.heightAnchor ≥ relatedView.height
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height)
    }

    public func testViewArrayHeightGreaterThanOrEqualHeightPlusConstant() {
        let constraints = viewArray.heightAnchor ≥ relatedView.height + 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: 10)
    }

    public func testViewArrayHeightGreaterThanOrEqualHeightMinusConstant() {
        let constraints = viewArray.heightAnchor ≥ relatedView.height - 10
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, constant: -10)
    }

    public func testViewArrayHeightGreaterThanOrEqualHeightMultiplyingConstant() {
        let constraints = viewArray.heightAnchor ≥ relatedView.height * 3
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    public func testViewArrayHeightGreaterThanOrEqualHeightMultipliedByConstant() {
        let constraints = viewArray.heightAnchor ≥ 3 * relatedView.height
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 3)
    }

    public func testViewArrayHeightGreaterThanOrEqualHeightDividedByConstant() {
        let constraints = viewArray.heightAnchor ≥ relatedView.height / 2
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, multiplier: 1 / 2)
    }

    public func testViewArrayHeightGreaterThanOrEqualHeightWithPriority() {
        let constraints = viewArray.heightAnchor ≥ relatedView.height ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: .low)
    }

    public func testViewArrayHeightGreaterThanOrEqualHeightWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≥ relatedView.height ~ .high - 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, relatedView, .height, priority: 749)
    }
// sourcery:end
}

