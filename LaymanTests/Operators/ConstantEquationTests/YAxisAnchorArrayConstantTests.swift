//
//  YAxisAnchorArrayConstantTests.swift
//  Layman
//
//  Created by Brian Strobach on 3/5/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@testable import Layman
import XCTest

// sourcery: constantEquationTest
// sourcery: lhsAttributes = top, lhsAttributes = centerY, lhsAttributes = bottom
// sourcery: lhsItem = viewArray
class YAxisAnchorArrayConstantTests: LaymanTestCase {


// sourcery:inline:auto:YAxisAnchorArrayConstantTests.ConstantEquationTests
    func testViewArrayTopEqualToConstant() {
        let constraints = viewArray.topAnchor .= 200
        constraints.assert(viewArray, .top, .equal, parentView, .top, constant: 200)
    }

    func testViewArrayTopEqualToConstantWithPriority() {
        let constraints = viewArray.topAnchor .= 200 ~ .low
        constraints.assert(viewArray, .top, .equal, parentView, .top, constant: 200, priority: .low)
    }

    func testViewArrayTopEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor .= 200 ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, parentView, .top, constant: 200, priority: 749)
    }

    func testViewArrayTopEqualToPercentage() {
        let constraints = viewArray.topAnchor .= 75%
        constraints.assert(viewArray, .top, .equal, parentView, .top, multiplier: 0.75)
    }

    func testViewArrayTopEqualToPercentageWithPriority() {
        let constraints = viewArray.topAnchor .= 75% ~ .low
        constraints.assert(viewArray, .top, .equal, parentView, .top, multiplier: 0.75, priority: .low)
    }

    func testViewArrayTopEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor .= 75% ~ .high .- 1
        constraints.assert(viewArray, .top, .equal, parentView, .top, multiplier: 0.75, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualToConstant() {
        let constraints = viewArray.topAnchor ≤ 200
        constraints.assert(viewArray, .top, .lessThanOrEqual, parentView, .top, constant: 200)
    }

    func testViewArrayTopLessThanOrEqualToConstantWithPriority() {
        let constraints = viewArray.topAnchor ≤ 200 ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, parentView, .top, constant: 200, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor ≤ 200 ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, parentView, .top, constant: 200, priority: 749)
    }

    func testViewArrayTopLessThanOrEqualToPercentage() {
        let constraints = viewArray.topAnchor ≤ 75%
        constraints.assert(viewArray, .top, .lessThanOrEqual, parentView, .top, multiplier: 0.75)
    }

    func testViewArrayTopLessThanOrEqualToPercentageWithPriority() {
        let constraints = viewArray.topAnchor ≤ 75% ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, parentView, .top, multiplier: 0.75, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor ≤ 75% ~ .high .- 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, parentView, .top, multiplier: 0.75, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualToConstant() {
        let constraints = viewArray.topAnchor ≥ 200
        constraints.assert(viewArray, .top, .greaterThanOrEqual, parentView, .top, constant: 200)
    }

    func testViewArrayTopGreaterThanOrEqualToConstantWithPriority() {
        let constraints = viewArray.topAnchor ≥ 200 ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, parentView, .top, constant: 200, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor ≥ 200 ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, parentView, .top, constant: 200, priority: 749)
    }

    func testViewArrayTopGreaterThanOrEqualToPercentage() {
        let constraints = viewArray.topAnchor ≥ 75%
        constraints.assert(viewArray, .top, .greaterThanOrEqual, parentView, .top, multiplier: 0.75)
    }

    func testViewArrayTopGreaterThanOrEqualToPercentageWithPriority() {
        let constraints = viewArray.topAnchor ≥ 75% ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, parentView, .top, multiplier: 0.75, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor ≥ 75% ~ .high .- 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, parentView, .top, multiplier: 0.75, priority: 749)
    }

    func testViewArrayCenterYEqualToConstant() {
        let constraints = viewArray.centerYAnchor .= 200
        constraints.assert(viewArray, .centerY, .equal, parentView, .centerY, constant: 200)
    }

    func testViewArrayCenterYEqualToConstantWithPriority() {
        let constraints = viewArray.centerYAnchor .= 200 ~ .low
        constraints.assert(viewArray, .centerY, .equal, parentView, .centerY, constant: 200, priority: .low)
    }

    func testViewArrayCenterYEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor .= 200 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, parentView, .centerY, constant: 200, priority: 749)
    }

    func testViewArrayCenterYEqualToPercentage() {
        let constraints = viewArray.centerYAnchor .= 75%
        constraints.assert(viewArray, .centerY, .equal, parentView, .centerY, multiplier: 0.75)
    }

    func testViewArrayCenterYEqualToPercentageWithPriority() {
        let constraints = viewArray.centerYAnchor .= 75% ~ .low
        constraints.assert(viewArray, .centerY, .equal, parentView, .centerY, multiplier: 0.75, priority: .low)
    }

    func testViewArrayCenterYEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor .= 75% ~ .high .- 1
        constraints.assert(viewArray, .centerY, .equal, parentView, .centerY, multiplier: 0.75, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualToConstant() {
        let constraints = viewArray.centerYAnchor ≤ 200
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, parentView, .centerY, constant: 200)
    }

    func testViewArrayCenterYLessThanOrEqualToConstantWithPriority() {
        let constraints = viewArray.centerYAnchor ≤ 200 ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, parentView, .centerY, constant: 200, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor ≤ 200 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, parentView, .centerY, constant: 200, priority: 749)
    }

    func testViewArrayCenterYLessThanOrEqualToPercentage() {
        let constraints = viewArray.centerYAnchor ≤ 75%
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, parentView, .centerY, multiplier: 0.75)
    }

    func testViewArrayCenterYLessThanOrEqualToPercentageWithPriority() {
        let constraints = viewArray.centerYAnchor ≤ 75% ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, parentView, .centerY, multiplier: 0.75, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor ≤ 75% ~ .high .- 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, parentView, .centerY, multiplier: 0.75, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualToConstant() {
        let constraints = viewArray.centerYAnchor ≥ 200
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, parentView, .centerY, constant: 200)
    }

    func testViewArrayCenterYGreaterThanOrEqualToConstantWithPriority() {
        let constraints = viewArray.centerYAnchor ≥ 200 ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, parentView, .centerY, constant: 200, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor ≥ 200 ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, parentView, .centerY, constant: 200, priority: 749)
    }

    func testViewArrayCenterYGreaterThanOrEqualToPercentage() {
        let constraints = viewArray.centerYAnchor ≥ 75%
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, parentView, .centerY, multiplier: 0.75)
    }

    func testViewArrayCenterYGreaterThanOrEqualToPercentageWithPriority() {
        let constraints = viewArray.centerYAnchor ≥ 75% ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, parentView, .centerY, multiplier: 0.75, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor ≥ 75% ~ .high .- 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, parentView, .centerY, multiplier: 0.75, priority: 749)
    }

    func testViewArrayBottomEqualToConstant() {
        let constraints = viewArray.bottomAnchor .= 200
        constraints.assert(viewArray, .bottom, .equal, parentView, .bottom, constant: 200)
    }

    func testViewArrayBottomEqualToConstantWithPriority() {
        let constraints = viewArray.bottomAnchor .= 200 ~ .low
        constraints.assert(viewArray, .bottom, .equal, parentView, .bottom, constant: 200, priority: .low)
    }

    func testViewArrayBottomEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor .= 200 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, parentView, .bottom, constant: 200, priority: 749)
    }

    func testViewArrayBottomEqualToPercentage() {
        let constraints = viewArray.bottomAnchor .= 75%
        constraints.assert(viewArray, .bottom, .equal, parentView, .bottom, multiplier: 0.75)
    }

    func testViewArrayBottomEqualToPercentageWithPriority() {
        let constraints = viewArray.bottomAnchor .= 75% ~ .low
        constraints.assert(viewArray, .bottom, .equal, parentView, .bottom, multiplier: 0.75, priority: .low)
    }

    func testViewArrayBottomEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor .= 75% ~ .high .- 1
        constraints.assert(viewArray, .bottom, .equal, parentView, .bottom, multiplier: 0.75, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualToConstant() {
        let constraints = viewArray.bottomAnchor ≤ 200
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 200)
    }

    func testViewArrayBottomLessThanOrEqualToConstantWithPriority() {
        let constraints = viewArray.bottomAnchor ≤ 200 ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 200, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor ≤ 200 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 200, priority: 749)
    }

    func testViewArrayBottomLessThanOrEqualToPercentage() {
        let constraints = viewArray.bottomAnchor ≤ 75%
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, parentView, .bottom, multiplier: 0.75)
    }

    func testViewArrayBottomLessThanOrEqualToPercentageWithPriority() {
        let constraints = viewArray.bottomAnchor ≤ 75% ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, parentView, .bottom, multiplier: 0.75, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor ≤ 75% ~ .high .- 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, parentView, .bottom, multiplier: 0.75, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualToConstant() {
        let constraints = viewArray.bottomAnchor ≥ 200
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 200)
    }

    func testViewArrayBottomGreaterThanOrEqualToConstantWithPriority() {
        let constraints = viewArray.bottomAnchor ≥ 200 ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 200, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor ≥ 200 ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 200, priority: 749)
    }

    func testViewArrayBottomGreaterThanOrEqualToPercentage() {
        let constraints = viewArray.bottomAnchor ≥ 75%
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, parentView, .bottom, multiplier: 0.75)
    }

    func testViewArrayBottomGreaterThanOrEqualToPercentageWithPriority() {
        let constraints = viewArray.bottomAnchor ≥ 75% ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, parentView, .bottom, multiplier: 0.75, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor ≥ 75% ~ .high .- 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, parentView, .bottom, multiplier: 0.75, priority: 749)
    }
// sourcery:end
}

