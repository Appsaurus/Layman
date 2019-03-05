//
//  YAxisAnchorConstantTests.swift
//  Layman
//
//  Created by Brian Strobach on 3/5/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@testable import Layman
import XCTest

// sourcery: constantEquationTest
// sourcery: lhsAttributes = top, lhsAttributes = centerY, lhsAttributes = bottom
// sourcery: lhsItem = view1
class YAxisAnchorConstantTests: LaymanTestCase {


// sourcery:inline:auto:YAxisAnchorConstantTests.ConstantEquationTests
    func testView1TopEqualToConstant() {
        let constraints = view1.topAnchor .= 200
        constraints.assert(view1, .top, .equal, parentView, .top, constant: 200)
    }

    func testView1TopEqualToConstantWithPriority() {
        let constraints = view1.topAnchor .= 200 ~ .low
        constraints.assert(view1, .top, .equal, parentView, .top, constant: 200, priority: .low)
    }

    func testView1TopEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.topAnchor .= 200 ~ .high .- 1
        constraints.assert(view1, .top, .equal, parentView, .top, constant: 200, priority: 749)
    }

    func testView1TopEqualToPercentage() {
        let constraints = view1.topAnchor .= 75%
        constraints.assert(view1, .top, .equal, parentView, .top, multiplier: 0.75)
    }

    func testView1TopEqualToPercentageWithPriority() {
        let constraints = view1.topAnchor .= 75% ~ .low
        constraints.assert(view1, .top, .equal, parentView, .top, multiplier: 0.75, priority: .low)
    }

    func testView1TopEqualToPercentageWithPriorityArithmetic() {
        let constraints = view1.topAnchor .= 75% ~ .high .- 1
        constraints.assert(view1, .top, .equal, parentView, .top, multiplier: 0.75, priority: 749)
    }

    func testView1TopLessThanOrEqualToConstant() {
        let constraints = view1.topAnchor ≤ 200
        constraints.assert(view1, .top, .lessThanOrEqual, parentView, .top, constant: 200)
    }

    func testView1TopLessThanOrEqualToConstantWithPriority() {
        let constraints = view1.topAnchor ≤ 200 ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, parentView, .top, constant: 200, priority: .low)
    }

    func testView1TopLessThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.topAnchor ≤ 200 ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, parentView, .top, constant: 200, priority: 749)
    }

    func testView1TopLessThanOrEqualToPercentage() {
        let constraints = view1.topAnchor ≤ 75%
        constraints.assert(view1, .top, .lessThanOrEqual, parentView, .top, multiplier: 0.75)
    }

    func testView1TopLessThanOrEqualToPercentageWithPriority() {
        let constraints = view1.topAnchor ≤ 75% ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, parentView, .top, multiplier: 0.75, priority: .low)
    }

    func testView1TopLessThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = view1.topAnchor ≤ 75% ~ .high .- 1
        constraints.assert(view1, .top, .lessThanOrEqual, parentView, .top, multiplier: 0.75, priority: 749)
    }

    func testView1TopGreaterThanOrEqualToConstant() {
        let constraints = view1.topAnchor ≥ 200
        constraints.assert(view1, .top, .greaterThanOrEqual, parentView, .top, constant: 200)
    }

    func testView1TopGreaterThanOrEqualToConstantWithPriority() {
        let constraints = view1.topAnchor ≥ 200 ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, parentView, .top, constant: 200, priority: .low)
    }

    func testView1TopGreaterThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.topAnchor ≥ 200 ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, parentView, .top, constant: 200, priority: 749)
    }

    func testView1TopGreaterThanOrEqualToPercentage() {
        let constraints = view1.topAnchor ≥ 75%
        constraints.assert(view1, .top, .greaterThanOrEqual, parentView, .top, multiplier: 0.75)
    }

    func testView1TopGreaterThanOrEqualToPercentageWithPriority() {
        let constraints = view1.topAnchor ≥ 75% ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, parentView, .top, multiplier: 0.75, priority: .low)
    }

    func testView1TopGreaterThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = view1.topAnchor ≥ 75% ~ .high .- 1
        constraints.assert(view1, .top, .greaterThanOrEqual, parentView, .top, multiplier: 0.75, priority: 749)
    }

    func testView1CenterYEqualToConstant() {
        let constraints = view1.centerYAnchor .= 200
        constraints.assert(view1, .centerY, .equal, parentView, .centerY, constant: 200)
    }

    func testView1CenterYEqualToConstantWithPriority() {
        let constraints = view1.centerYAnchor .= 200 ~ .low
        constraints.assert(view1, .centerY, .equal, parentView, .centerY, constant: 200, priority: .low)
    }

    func testView1CenterYEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor .= 200 ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, parentView, .centerY, constant: 200, priority: 749)
    }

    func testView1CenterYEqualToPercentage() {
        let constraints = view1.centerYAnchor .= 75%
        constraints.assert(view1, .centerY, .equal, parentView, .centerY, multiplier: 0.75)
    }

    func testView1CenterYEqualToPercentageWithPriority() {
        let constraints = view1.centerYAnchor .= 75% ~ .low
        constraints.assert(view1, .centerY, .equal, parentView, .centerY, multiplier: 0.75, priority: .low)
    }

    func testView1CenterYEqualToPercentageWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor .= 75% ~ .high .- 1
        constraints.assert(view1, .centerY, .equal, parentView, .centerY, multiplier: 0.75, priority: 749)
    }

    func testView1CenterYLessThanOrEqualToConstant() {
        let constraints = view1.centerYAnchor ≤ 200
        constraints.assert(view1, .centerY, .lessThanOrEqual, parentView, .centerY, constant: 200)
    }

    func testView1CenterYLessThanOrEqualToConstantWithPriority() {
        let constraints = view1.centerYAnchor ≤ 200 ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, parentView, .centerY, constant: 200, priority: .low)
    }

    func testView1CenterYLessThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor ≤ 200 ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, parentView, .centerY, constant: 200, priority: 749)
    }

    func testView1CenterYLessThanOrEqualToPercentage() {
        let constraints = view1.centerYAnchor ≤ 75%
        constraints.assert(view1, .centerY, .lessThanOrEqual, parentView, .centerY, multiplier: 0.75)
    }

    func testView1CenterYLessThanOrEqualToPercentageWithPriority() {
        let constraints = view1.centerYAnchor ≤ 75% ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, parentView, .centerY, multiplier: 0.75, priority: .low)
    }

    func testView1CenterYLessThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor ≤ 75% ~ .high .- 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, parentView, .centerY, multiplier: 0.75, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualToConstant() {
        let constraints = view1.centerYAnchor ≥ 200
        constraints.assert(view1, .centerY, .greaterThanOrEqual, parentView, .centerY, constant: 200)
    }

    func testView1CenterYGreaterThanOrEqualToConstantWithPriority() {
        let constraints = view1.centerYAnchor ≥ 200 ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, parentView, .centerY, constant: 200, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor ≥ 200 ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, parentView, .centerY, constant: 200, priority: 749)
    }

    func testView1CenterYGreaterThanOrEqualToPercentage() {
        let constraints = view1.centerYAnchor ≥ 75%
        constraints.assert(view1, .centerY, .greaterThanOrEqual, parentView, .centerY, multiplier: 0.75)
    }

    func testView1CenterYGreaterThanOrEqualToPercentageWithPriority() {
        let constraints = view1.centerYAnchor ≥ 75% ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, parentView, .centerY, multiplier: 0.75, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor ≥ 75% ~ .high .- 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, parentView, .centerY, multiplier: 0.75, priority: 749)
    }

    func testView1BottomEqualToConstant() {
        let constraints = view1.bottomAnchor .= 200
        constraints.assert(view1, .bottom, .equal, parentView, .bottom, constant: 200)
    }

    func testView1BottomEqualToConstantWithPriority() {
        let constraints = view1.bottomAnchor .= 200 ~ .low
        constraints.assert(view1, .bottom, .equal, parentView, .bottom, constant: 200, priority: .low)
    }

    func testView1BottomEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor .= 200 ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, parentView, .bottom, constant: 200, priority: 749)
    }

    func testView1BottomEqualToPercentage() {
        let constraints = view1.bottomAnchor .= 75%
        constraints.assert(view1, .bottom, .equal, parentView, .bottom, multiplier: 0.75)
    }

    func testView1BottomEqualToPercentageWithPriority() {
        let constraints = view1.bottomAnchor .= 75% ~ .low
        constraints.assert(view1, .bottom, .equal, parentView, .bottom, multiplier: 0.75, priority: .low)
    }

    func testView1BottomEqualToPercentageWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor .= 75% ~ .high .- 1
        constraints.assert(view1, .bottom, .equal, parentView, .bottom, multiplier: 0.75, priority: 749)
    }

    func testView1BottomLessThanOrEqualToConstant() {
        let constraints = view1.bottomAnchor ≤ 200
        constraints.assert(view1, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 200)
    }

    func testView1BottomLessThanOrEqualToConstantWithPriority() {
        let constraints = view1.bottomAnchor ≤ 200 ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 200, priority: .low)
    }

    func testView1BottomLessThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor ≤ 200 ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 200, priority: 749)
    }

    func testView1BottomLessThanOrEqualToPercentage() {
        let constraints = view1.bottomAnchor ≤ 75%
        constraints.assert(view1, .bottom, .lessThanOrEqual, parentView, .bottom, multiplier: 0.75)
    }

    func testView1BottomLessThanOrEqualToPercentageWithPriority() {
        let constraints = view1.bottomAnchor ≤ 75% ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, parentView, .bottom, multiplier: 0.75, priority: .low)
    }

    func testView1BottomLessThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor ≤ 75% ~ .high .- 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, parentView, .bottom, multiplier: 0.75, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualToConstant() {
        let constraints = view1.bottomAnchor ≥ 200
        constraints.assert(view1, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 200)
    }

    func testView1BottomGreaterThanOrEqualToConstantWithPriority() {
        let constraints = view1.bottomAnchor ≥ 200 ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 200, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor ≥ 200 ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 200, priority: 749)
    }

    func testView1BottomGreaterThanOrEqualToPercentage() {
        let constraints = view1.bottomAnchor ≥ 75%
        constraints.assert(view1, .bottom, .greaterThanOrEqual, parentView, .bottom, multiplier: 0.75)
    }

    func testView1BottomGreaterThanOrEqualToPercentageWithPriority() {
        let constraints = view1.bottomAnchor ≥ 75% ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, parentView, .bottom, multiplier: 0.75, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualToPercentageWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor ≥ 75% ~ .high .- 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, parentView, .bottom, multiplier: 0.75, priority: 749)
    }
// sourcery:end
}

