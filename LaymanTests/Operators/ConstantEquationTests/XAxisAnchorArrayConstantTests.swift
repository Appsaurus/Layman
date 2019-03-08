//
//  XAxisAnchorArrayConstantTests.swift
//  Layman
//
//  Created by Brian Strobach on 3/5/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@testable import Layman
import XCTest

// sourcery: constantEquationTest
// sourcery: lhsAttributes = leading, lhsAttributes = centerX, lhsAttributes = trailing
// sourcery: lhsItem = viewArray
class XAxisAnchorArrayConstantTests: LaymanTestCase {

// sourcery:inline:auto:XAxisAnchorArrayConstantTests.ConstantEquationTests
    func testViewArrayLeadingEqualToConstant() {
        let constraints = viewArray.leadingAnchor .= 200
        constraints.assert(viewArray, .leading, .equal, parentView, .leading, constant: 200)
    }

    func testViewArrayLeadingEqualToConstantWithPriority() {
        let constraints = viewArray.leadingAnchor .= 200 ~ .low
        constraints.assert(viewArray, .leading, .equal, parentView, .leading, constant: 200, priority: .low)
    }

    func testViewArrayLeadingEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor .= 200 ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, parentView, .leading, constant: 200, priority: 749)
    }

    func testViewArrayLeadingEqualToPercentage() {
        let constraints = viewArray.leadingAnchor .= 75%
        constraints.assert(viewArray, .leading, .equal, parentView, .leading, multiplier: 0.75)
    }

    func testViewArrayLeadingEqualToPercentageWithPriority() {
        let constraints = viewArray.leadingAnchor .= 75% ~ .low
        constraints.assert(viewArray, .leading, .equal, parentView, .leading, multiplier: 0.75, priority: .low)
    }

    func testViewArrayLeadingEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor .= 75% ~ .high .- 1
        constraints.assert(viewArray, .leading, .equal, parentView, .leading, multiplier: 0.75, priority: 749)
    }
    func testViewArrayLeadingGreaterThanOrEqualToConstant() {
        let constraints = viewArray.leadingAnchor ≥ 200
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, parentView, .leading, constant: 200)
    }

    func testViewArrayLeadingGreaterThanOrEqualToConstantWithPriority() {
        let constraints = viewArray.leadingAnchor ≥ 200 ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, parentView, .leading, constant: 200, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor ≥ 200 ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, parentView, .leading, constant: 200, priority: 749)
    }

    func testViewArrayLeadingGreaterThanOrEqualToPercentage() {
        let constraints = viewArray.leadingAnchor ≥ 75%
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, parentView, .leading, multiplier: 0.75)
    }

    func testViewArrayLeadingGreaterThanOrEqualToPercentageWithPriority() {
        let constraints = viewArray.leadingAnchor ≥ 75% ~ .low
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, parentView, .leading, multiplier: 0.75, priority: .low)
    }

    func testViewArrayLeadingGreaterThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor ≥ 75% ~ .high .- 1
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, parentView, .leading, multiplier: 0.75, priority: 749)
    }
    func testViewArrayLeadingLessThanOrEqualToConstant() {
        let constraints = viewArray.leadingAnchor ≤ 200
        constraints.assert(viewArray, .leading, .lessThanOrEqual, parentView, .leading, constant: 200)
    }

    func testViewArrayLeadingLessThanOrEqualToConstantWithPriority() {
        let constraints = viewArray.leadingAnchor ≤ 200 ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, parentView, .leading, constant: 200, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor ≤ 200 ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, parentView, .leading, constant: 200, priority: 749)
    }

    func testViewArrayLeadingLessThanOrEqualToPercentage() {
        let constraints = viewArray.leadingAnchor ≤ 75%
        constraints.assert(viewArray, .leading, .lessThanOrEqual, parentView, .leading, multiplier: 0.75)
    }

    func testViewArrayLeadingLessThanOrEqualToPercentageWithPriority() {
        let constraints = viewArray.leadingAnchor ≤ 75% ~ .low
        constraints.assert(viewArray, .leading, .lessThanOrEqual, parentView, .leading, multiplier: 0.75, priority: .low)
    }

    func testViewArrayLeadingLessThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.leadingAnchor ≤ 75% ~ .high .- 1
        constraints.assert(viewArray, .leading, .lessThanOrEqual, parentView, .leading, multiplier: 0.75, priority: 749)
    }
    func testViewArrayCenterXEqualToConstant() {
        let constraints = viewArray.centerXAnchor .= 200
        constraints.assert(viewArray, .centerX, .equal, parentView, .centerX, constant: 200)
    }

    func testViewArrayCenterXEqualToConstantWithPriority() {
        let constraints = viewArray.centerXAnchor .= 200 ~ .low
        constraints.assert(viewArray, .centerX, .equal, parentView, .centerX, constant: 200, priority: .low)
    }

    func testViewArrayCenterXEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor .= 200 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, parentView, .centerX, constant: 200, priority: 749)
    }

    func testViewArrayCenterXEqualToPercentage() {
        let constraints = viewArray.centerXAnchor .= 75%
        constraints.assert(viewArray, .centerX, .equal, parentView, .centerX, multiplier: 0.75)
    }

    func testViewArrayCenterXEqualToPercentageWithPriority() {
        let constraints = viewArray.centerXAnchor .= 75% ~ .low
        constraints.assert(viewArray, .centerX, .equal, parentView, .centerX, multiplier: 0.75, priority: .low)
    }

    func testViewArrayCenterXEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor .= 75% ~ .high .- 1
        constraints.assert(viewArray, .centerX, .equal, parentView, .centerX, multiplier: 0.75, priority: 749)
    }
    func testViewArrayCenterXGreaterThanOrEqualToConstant() {
        let constraints = viewArray.centerXAnchor ≥ 200
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, parentView, .centerX, constant: 200)
    }

    func testViewArrayCenterXGreaterThanOrEqualToConstantWithPriority() {
        let constraints = viewArray.centerXAnchor ≥ 200 ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, parentView, .centerX, constant: 200, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor ≥ 200 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, parentView, .centerX, constant: 200, priority: 749)
    }

    func testViewArrayCenterXGreaterThanOrEqualToPercentage() {
        let constraints = viewArray.centerXAnchor ≥ 75%
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, parentView, .centerX, multiplier: 0.75)
    }

    func testViewArrayCenterXGreaterThanOrEqualToPercentageWithPriority() {
        let constraints = viewArray.centerXAnchor ≥ 75% ~ .low
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, parentView, .centerX, multiplier: 0.75, priority: .low)
    }

    func testViewArrayCenterXGreaterThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor ≥ 75% ~ .high .- 1
        constraints.assert(viewArray, .centerX, .greaterThanOrEqual, parentView, .centerX, multiplier: 0.75, priority: 749)
    }
    func testViewArrayCenterXLessThanOrEqualToConstant() {
        let constraints = viewArray.centerXAnchor ≤ 200
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, parentView, .centerX, constant: 200)
    }

    func testViewArrayCenterXLessThanOrEqualToConstantWithPriority() {
        let constraints = viewArray.centerXAnchor ≤ 200 ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, parentView, .centerX, constant: 200, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor ≤ 200 ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, parentView, .centerX, constant: 200, priority: 749)
    }

    func testViewArrayCenterXLessThanOrEqualToPercentage() {
        let constraints = viewArray.centerXAnchor ≤ 75%
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, parentView, .centerX, multiplier: 0.75)
    }

    func testViewArrayCenterXLessThanOrEqualToPercentageWithPriority() {
        let constraints = viewArray.centerXAnchor ≤ 75% ~ .low
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, parentView, .centerX, multiplier: 0.75, priority: .low)
    }

    func testViewArrayCenterXLessThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.centerXAnchor ≤ 75% ~ .high .- 1
        constraints.assert(viewArray, .centerX, .lessThanOrEqual, parentView, .centerX, multiplier: 0.75, priority: 749)
    }
    func testViewArrayTrailingEqualToConstant() {
        let constraints = viewArray.trailingAnchor .= 200
        constraints.assert(viewArray, .trailing, .equal, parentView, .trailing, constant: 200)
    }

    func testViewArrayTrailingEqualToConstantWithPriority() {
        let constraints = viewArray.trailingAnchor .= 200 ~ .low
        constraints.assert(viewArray, .trailing, .equal, parentView, .trailing, constant: 200, priority: .low)
    }

    func testViewArrayTrailingEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor .= 200 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, parentView, .trailing, constant: 200, priority: 749)
    }

    func testViewArrayTrailingEqualToPercentage() {
        let constraints = viewArray.trailingAnchor .= 75%
        constraints.assert(viewArray, .trailing, .equal, parentView, .trailing, multiplier: 0.75)
    }

    func testViewArrayTrailingEqualToPercentageWithPriority() {
        let constraints = viewArray.trailingAnchor .= 75% ~ .low
        constraints.assert(viewArray, .trailing, .equal, parentView, .trailing, multiplier: 0.75, priority: .low)
    }

    func testViewArrayTrailingEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor .= 75% ~ .high .- 1
        constraints.assert(viewArray, .trailing, .equal, parentView, .trailing, multiplier: 0.75, priority: 749)
    }
    func testViewArrayTrailingGreaterThanOrEqualToConstant() {
        let constraints = viewArray.trailingAnchor ≥ 200
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 200)
    }

    func testViewArrayTrailingGreaterThanOrEqualToConstantWithPriority() {
        let constraints = viewArray.trailingAnchor ≥ 200 ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 200, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor ≥ 200 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 200, priority: 749)
    }

    func testViewArrayTrailingGreaterThanOrEqualToPercentage() {
        let constraints = viewArray.trailingAnchor ≥ 75%
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, parentView, .trailing, multiplier: 0.75)
    }

    func testViewArrayTrailingGreaterThanOrEqualToPercentageWithPriority() {
        let constraints = viewArray.trailingAnchor ≥ 75% ~ .low
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, parentView, .trailing, multiplier: 0.75, priority: .low)
    }

    func testViewArrayTrailingGreaterThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor ≥ 75% ~ .high .- 1
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, parentView, .trailing, multiplier: 0.75, priority: 749)
    }
    func testViewArrayTrailingLessThanOrEqualToConstant() {
        let constraints = viewArray.trailingAnchor ≤ 200
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 200)
    }

    func testViewArrayTrailingLessThanOrEqualToConstantWithPriority() {
        let constraints = viewArray.trailingAnchor ≤ 200 ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 200, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor ≤ 200 ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 200, priority: 749)
    }

    func testViewArrayTrailingLessThanOrEqualToPercentage() {
        let constraints = viewArray.trailingAnchor ≤ 75%
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, parentView, .trailing, multiplier: 0.75)
    }

    func testViewArrayTrailingLessThanOrEqualToPercentageWithPriority() {
        let constraints = viewArray.trailingAnchor ≤ 75% ~ .low
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, parentView, .trailing, multiplier: 0.75, priority: .low)
    }

    func testViewArrayTrailingLessThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = viewArray.trailingAnchor ≤ 75% ~ .high .- 1
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, parentView, .trailing, multiplier: 0.75, priority: 749)
    }
// sourcery:end
}
