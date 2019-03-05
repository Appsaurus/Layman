//
//  XAxisAnchorConstantTests.swift
//  Layman
//
//  Created by Brian Strobach on 3/5/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
@testable import Layman
import XCTest

// sourcery: constantEquationTest
// sourcery: lhsAttributes = leading, lhsAttributes = centerX, lhsAttributes = trailing
// sourcery: lhsItem = view1
class XAxisAnchorConstantTests: LaymanTestCase {


// sourcery:inline:auto:XAxisAnchorConstantTests.ConstantEquationTests
    func testView1LeadingEqualToConstant() {
        let constraints = view1.leadingAnchor .= 200
        constraints.assert(view1, .leading, .equal, parentView, .leading, constant: 200)
    }

    func testView1LeadingEqualToConstantWithPriority() {
        let constraints = view1.leadingAnchor .= 200 ~ .low
        constraints.assert(view1, .leading, .equal, parentView, .leading, constant: 200, priority: .low)
    }

    func testView1LeadingEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor .= 200 ~ .high .- 1
        constraints.assert(view1, .leading, .equal, parentView, .leading, constant: 200, priority: 749)
    }

    func testView1LeadingEqualToPercentage() {
        let constraints = view1.leadingAnchor .= 75%
        constraints.assert(view1, .leading, .equal, parentView, .leading, multiplier: 0.75)
    }

    func testView1LeadingEqualToPercentageWithPriority() {
        let constraints = view1.leadingAnchor .= 75% ~ .low
        constraints.assert(view1, .leading, .equal, parentView, .leading, multiplier: 0.75, priority: .low)
    }

    func testView1LeadingEqualToPercentageWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor .= 75% ~ .high .- 1
        constraints.assert(view1, .leading, .equal, parentView, .leading, multiplier: 0.75, priority: 749)
    }

    func testView1LeadingLessThanOrEqualToConstant() {
        let constraints = view1.leadingAnchor ≤ 200
        constraints.assert(view1, .leading, .lessThanOrEqual, parentView, .leading, constant: 200)
    }

    func testView1LeadingLessThanOrEqualToConstantWithPriority() {
        let constraints = view1.leadingAnchor ≤ 200 ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, parentView, .leading, constant: 200, priority: .low)
    }

    func testView1LeadingLessThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor ≤ 200 ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, parentView, .leading, constant: 200, priority: 749)
    }

    func testView1LeadingLessThanOrEqualToPercentage() {
        let constraints = view1.leadingAnchor ≤ 75%
        constraints.assert(view1, .leading, .lessThanOrEqual, parentView, .leading, multiplier: 0.75)
    }

    func testView1LeadingLessThanOrEqualToPercentageWithPriority() {
        let constraints = view1.leadingAnchor ≤ 75% ~ .low
        constraints.assert(view1, .leading, .lessThanOrEqual, parentView, .leading, multiplier: 0.75, priority: .low)
    }

    func testView1LeadingLessThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor ≤ 75% ~ .high .- 1
        constraints.assert(view1, .leading, .lessThanOrEqual, parentView, .leading, multiplier: 0.75, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualToConstant() {
        let constraints = view1.leadingAnchor ≥ 200
        constraints.assert(view1, .leading, .greaterThanOrEqual, parentView, .leading, constant: 200)
    }

    func testView1LeadingGreaterThanOrEqualToConstantWithPriority() {
        let constraints = view1.leadingAnchor ≥ 200 ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, parentView, .leading, constant: 200, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor ≥ 200 ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, parentView, .leading, constant: 200, priority: 749)
    }

    func testView1LeadingGreaterThanOrEqualToPercentage() {
        let constraints = view1.leadingAnchor ≥ 75%
        constraints.assert(view1, .leading, .greaterThanOrEqual, parentView, .leading, multiplier: 0.75)
    }

    func testView1LeadingGreaterThanOrEqualToPercentageWithPriority() {
        let constraints = view1.leadingAnchor ≥ 75% ~ .low
        constraints.assert(view1, .leading, .greaterThanOrEqual, parentView, .leading, multiplier: 0.75, priority: .low)
    }

    func testView1LeadingGreaterThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = view1.leadingAnchor ≥ 75% ~ .high .- 1
        constraints.assert(view1, .leading, .greaterThanOrEqual, parentView, .leading, multiplier: 0.75, priority: 749)
    }

    func testView1CenterXEqualToConstant() {
        let constraints = view1.centerXAnchor .= 200
        constraints.assert(view1, .centerX, .equal, parentView, .centerX, constant: 200)
    }

    func testView1CenterXEqualToConstantWithPriority() {
        let constraints = view1.centerXAnchor .= 200 ~ .low
        constraints.assert(view1, .centerX, .equal, parentView, .centerX, constant: 200, priority: .low)
    }

    func testView1CenterXEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor .= 200 ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, parentView, .centerX, constant: 200, priority: 749)
    }

    func testView1CenterXEqualToPercentage() {
        let constraints = view1.centerXAnchor .= 75%
        constraints.assert(view1, .centerX, .equal, parentView, .centerX, multiplier: 0.75)
    }

    func testView1CenterXEqualToPercentageWithPriority() {
        let constraints = view1.centerXAnchor .= 75% ~ .low
        constraints.assert(view1, .centerX, .equal, parentView, .centerX, multiplier: 0.75, priority: .low)
    }

    func testView1CenterXEqualToPercentageWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor .= 75% ~ .high .- 1
        constraints.assert(view1, .centerX, .equal, parentView, .centerX, multiplier: 0.75, priority: 749)
    }

    func testView1CenterXLessThanOrEqualToConstant() {
        let constraints = view1.centerXAnchor ≤ 200
        constraints.assert(view1, .centerX, .lessThanOrEqual, parentView, .centerX, constant: 200)
    }

    func testView1CenterXLessThanOrEqualToConstantWithPriority() {
        let constraints = view1.centerXAnchor ≤ 200 ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, parentView, .centerX, constant: 200, priority: .low)
    }

    func testView1CenterXLessThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor ≤ 200 ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, parentView, .centerX, constant: 200, priority: 749)
    }

    func testView1CenterXLessThanOrEqualToPercentage() {
        let constraints = view1.centerXAnchor ≤ 75%
        constraints.assert(view1, .centerX, .lessThanOrEqual, parentView, .centerX, multiplier: 0.75)
    }

    func testView1CenterXLessThanOrEqualToPercentageWithPriority() {
        let constraints = view1.centerXAnchor ≤ 75% ~ .low
        constraints.assert(view1, .centerX, .lessThanOrEqual, parentView, .centerX, multiplier: 0.75, priority: .low)
    }

    func testView1CenterXLessThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor ≤ 75% ~ .high .- 1
        constraints.assert(view1, .centerX, .lessThanOrEqual, parentView, .centerX, multiplier: 0.75, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualToConstant() {
        let constraints = view1.centerXAnchor ≥ 200
        constraints.assert(view1, .centerX, .greaterThanOrEqual, parentView, .centerX, constant: 200)
    }

    func testView1CenterXGreaterThanOrEqualToConstantWithPriority() {
        let constraints = view1.centerXAnchor ≥ 200 ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, parentView, .centerX, constant: 200, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor ≥ 200 ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, parentView, .centerX, constant: 200, priority: 749)
    }

    func testView1CenterXGreaterThanOrEqualToPercentage() {
        let constraints = view1.centerXAnchor ≥ 75%
        constraints.assert(view1, .centerX, .greaterThanOrEqual, parentView, .centerX, multiplier: 0.75)
    }

    func testView1CenterXGreaterThanOrEqualToPercentageWithPriority() {
        let constraints = view1.centerXAnchor ≥ 75% ~ .low
        constraints.assert(view1, .centerX, .greaterThanOrEqual, parentView, .centerX, multiplier: 0.75, priority: .low)
    }

    func testView1CenterXGreaterThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = view1.centerXAnchor ≥ 75% ~ .high .- 1
        constraints.assert(view1, .centerX, .greaterThanOrEqual, parentView, .centerX, multiplier: 0.75, priority: 749)
    }

    func testView1TrailingEqualToConstant() {
        let constraints = view1.trailingAnchor .= 200
        constraints.assert(view1, .trailing, .equal, parentView, .trailing, constant: 200)
    }

    func testView1TrailingEqualToConstantWithPriority() {
        let constraints = view1.trailingAnchor .= 200 ~ .low
        constraints.assert(view1, .trailing, .equal, parentView, .trailing, constant: 200, priority: .low)
    }

    func testView1TrailingEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor .= 200 ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, parentView, .trailing, constant: 200, priority: 749)
    }

    func testView1TrailingEqualToPercentage() {
        let constraints = view1.trailingAnchor .= 75%
        constraints.assert(view1, .trailing, .equal, parentView, .trailing, multiplier: 0.75)
    }

    func testView1TrailingEqualToPercentageWithPriority() {
        let constraints = view1.trailingAnchor .= 75% ~ .low
        constraints.assert(view1, .trailing, .equal, parentView, .trailing, multiplier: 0.75, priority: .low)
    }

    func testView1TrailingEqualToPercentageWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor .= 75% ~ .high .- 1
        constraints.assert(view1, .trailing, .equal, parentView, .trailing, multiplier: 0.75, priority: 749)
    }

    func testView1TrailingLessThanOrEqualToConstant() {
        let constraints = view1.trailingAnchor ≤ 200
        constraints.assert(view1, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 200)
    }

    func testView1TrailingLessThanOrEqualToConstantWithPriority() {
        let constraints = view1.trailingAnchor ≤ 200 ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 200, priority: .low)
    }

    func testView1TrailingLessThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor ≤ 200 ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 200, priority: 749)
    }

    func testView1TrailingLessThanOrEqualToPercentage() {
        let constraints = view1.trailingAnchor ≤ 75%
        constraints.assert(view1, .trailing, .lessThanOrEqual, parentView, .trailing, multiplier: 0.75)
    }

    func testView1TrailingLessThanOrEqualToPercentageWithPriority() {
        let constraints = view1.trailingAnchor ≤ 75% ~ .low
        constraints.assert(view1, .trailing, .lessThanOrEqual, parentView, .trailing, multiplier: 0.75, priority: .low)
    }

    func testView1TrailingLessThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor ≤ 75% ~ .high .- 1
        constraints.assert(view1, .trailing, .lessThanOrEqual, parentView, .trailing, multiplier: 0.75, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualToConstant() {
        let constraints = view1.trailingAnchor ≥ 200
        constraints.assert(view1, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 200)
    }

    func testView1TrailingGreaterThanOrEqualToConstantWithPriority() {
        let constraints = view1.trailingAnchor ≥ 200 ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 200, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor ≥ 200 ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 200, priority: 749)
    }

    func testView1TrailingGreaterThanOrEqualToPercentage() {
        let constraints = view1.trailingAnchor ≥ 75%
        constraints.assert(view1, .trailing, .greaterThanOrEqual, parentView, .trailing, multiplier: 0.75)
    }

    func testView1TrailingGreaterThanOrEqualToPercentageWithPriority() {
        let constraints = view1.trailingAnchor ≥ 75% ~ .low
        constraints.assert(view1, .trailing, .greaterThanOrEqual, parentView, .trailing, multiplier: 0.75, priority: .low)
    }

    func testView1TrailingGreaterThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = view1.trailingAnchor ≥ 75% ~ .high .- 1
        constraints.assert(view1, .trailing, .greaterThanOrEqual, parentView, .trailing, multiplier: 0.75, priority: 749)
    }
// sourcery:end
}

