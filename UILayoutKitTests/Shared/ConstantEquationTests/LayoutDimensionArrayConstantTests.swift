//
//  LayoutDimensionArrayTests.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/25/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@testable import UILayoutKit
import XCTest

// sourcery: constantEquationTest
// sourcery: lhsAttributes = width, lhsAttributes = height
// sourcery: lhsItem = viewArray
class LayoutDimensionArrayConstantTests: UILayoutKitTestCase {
// sourcery:inline:auto:LayoutDimensionArrayConstantTests.ConstantEquationTests
    func testViewArrayWidthGreaterThanOrEqualToConstant() {
        let constraints = viewArray.widthAnchor ≥ 200
        constraints.assert(viewArray, .width, .greaterThanOrEqual, constant: 200)
    }

    func testViewArrayWidthGreaterThanOrEqualToConstantWithPriority() {
        let constraints = viewArray.widthAnchor ≥ 200 ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, constant: 200, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≥ 200 ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, constant: 200, priority: 749)
    }

    func testViewArrayWidthGreaterThanOrEqualToPercentage() {
        let constraints = viewArray.widthAnchor ≥ 75%
        constraints.assert(viewArray, .width, .greaterThanOrEqual, parentView, .width, multiplier: 0.75)
    }

    func testViewArrayWidthGreaterThanOrEqualToPercentageWithPriority() {
        let constraints = viewArray.widthAnchor ≥ 75% ~ .low
        constraints.assert(viewArray, .width, .greaterThanOrEqual, parentView, .width, multiplier: 0.75, priority: .low)
    }

    func testViewArrayWidthGreaterThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≥ 75% ~ .high .- 1
        constraints.assert(viewArray, .width, .greaterThanOrEqual, parentView, .width, multiplier: 0.75, priority: 749)
    }

    func testViewArrayWidthEqualToConstant() {
        let constraints = viewArray.widthAnchor .= 200
        constraints.assert(viewArray, .width, .equal, constant: 200)
    }

    func testViewArrayWidthEqualToConstantWithPriority() {
        let constraints = viewArray.widthAnchor .= 200 ~ .low
        constraints.assert(viewArray, .width, .equal, constant: 200, priority: .low)
    }

    func testViewArrayWidthEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor .= 200 ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, constant: 200, priority: 749)
    }

    func testViewArrayWidthEqualToPercentage() {
        let constraints = viewArray.widthAnchor .= 75%
        constraints.assert(viewArray, .width, .equal, parentView, .width, multiplier: 0.75)
    }

    func testViewArrayWidthEqualToPercentageWithPriority() {
        let constraints = viewArray.widthAnchor .= 75% ~ .low
        constraints.assert(viewArray, .width, .equal, parentView, .width, multiplier: 0.75, priority: .low)
    }

    func testViewArrayWidthEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor .= 75% ~ .high .- 1
        constraints.assert(viewArray, .width, .equal, parentView, .width, multiplier: 0.75, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualToConstant() {
        let constraints = viewArray.widthAnchor ≤ 200
        constraints.assert(viewArray, .width, .lessThanOrEqual, constant: 200)
    }

    func testViewArrayWidthLessThanOrEqualToConstantWithPriority() {
        let constraints = viewArray.widthAnchor ≤ 200 ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, constant: 200, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≤ 200 ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, constant: 200, priority: 749)
    }

    func testViewArrayWidthLessThanOrEqualToPercentage() {
        let constraints = viewArray.widthAnchor ≤ 75%
        constraints.assert(viewArray, .width, .lessThanOrEqual, parentView, .width, multiplier: 0.75)
    }

    func testViewArrayWidthLessThanOrEqualToPercentageWithPriority() {
        let constraints = viewArray.widthAnchor ≤ 75% ~ .low
        constraints.assert(viewArray, .width, .lessThanOrEqual, parentView, .width, multiplier: 0.75, priority: .low)
    }

    func testViewArrayWidthLessThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.widthAnchor ≤ 75% ~ .high .- 1
        constraints.assert(viewArray, .width, .lessThanOrEqual, parentView, .width, multiplier: 0.75, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualToConstant() {
        let constraints = viewArray.heightAnchor ≥ 200
        constraints.assert(viewArray, .height, .greaterThanOrEqual, constant: 200)
    }

    func testViewArrayHeightGreaterThanOrEqualToConstantWithPriority() {
        let constraints = viewArray.heightAnchor ≥ 200 ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, constant: 200, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≥ 200 ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, constant: 200, priority: 749)
    }

    func testViewArrayHeightGreaterThanOrEqualToPercentage() {
        let constraints = viewArray.heightAnchor ≥ 75%
        constraints.assert(viewArray, .height, .greaterThanOrEqual, parentView, .height, multiplier: 0.75)
    }

    func testViewArrayHeightGreaterThanOrEqualToPercentageWithPriority() {
        let constraints = viewArray.heightAnchor ≥ 75% ~ .low
        constraints.assert(viewArray, .height, .greaterThanOrEqual, parentView, .height, multiplier: 0.75, priority: .low)
    }

    func testViewArrayHeightGreaterThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≥ 75% ~ .high .- 1
        constraints.assert(viewArray, .height, .greaterThanOrEqual, parentView, .height, multiplier: 0.75, priority: 749)
    }

    func testViewArrayHeightEqualToConstant() {
        let constraints = viewArray.heightAnchor .= 200
        constraints.assert(viewArray, .height, .equal, constant: 200)
    }

    func testViewArrayHeightEqualToConstantWithPriority() {
        let constraints = viewArray.heightAnchor .= 200 ~ .low
        constraints.assert(viewArray, .height, .equal, constant: 200, priority: .low)
    }

    func testViewArrayHeightEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor .= 200 ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, constant: 200, priority: 749)
    }

    func testViewArrayHeightEqualToPercentage() {
        let constraints = viewArray.heightAnchor .= 75%
        constraints.assert(viewArray, .height, .equal, parentView, .height, multiplier: 0.75)
    }

    func testViewArrayHeightEqualToPercentageWithPriority() {
        let constraints = viewArray.heightAnchor .= 75% ~ .low
        constraints.assert(viewArray, .height, .equal, parentView, .height, multiplier: 0.75, priority: .low)
    }

    func testViewArrayHeightEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor .= 75% ~ .high .- 1
        constraints.assert(viewArray, .height, .equal, parentView, .height, multiplier: 0.75, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualToConstant() {
        let constraints = viewArray.heightAnchor ≤ 200
        constraints.assert(viewArray, .height, .lessThanOrEqual, constant: 200)
    }

    func testViewArrayHeightLessThanOrEqualToConstantWithPriority() {
        let constraints = viewArray.heightAnchor ≤ 200 ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, constant: 200, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≤ 200 ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, constant: 200, priority: 749)
    }

    func testViewArrayHeightLessThanOrEqualToPercentage() {
        let constraints = viewArray.heightAnchor ≤ 75%
        constraints.assert(viewArray, .height, .lessThanOrEqual, parentView, .height, multiplier: 0.75)
    }

    func testViewArrayHeightLessThanOrEqualToPercentageWithPriority() {
        let constraints = viewArray.heightAnchor ≤ 75% ~ .low
        constraints.assert(viewArray, .height, .lessThanOrEqual, parentView, .height, multiplier: 0.75, priority: .low)
    }

    func testViewArrayHeightLessThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.heightAnchor ≤ 75% ~ .high .- 1
        constraints.assert(viewArray, .height, .lessThanOrEqual, parentView, .height, multiplier: 0.75, priority: 749)
    }
// sourcery:end
}
