//
//  LayoutDimensionTests.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/24/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@testable import UILayoutKit
import XCTest

// sourcery: constantEquationTest
// sourcery: lhsAttributes = width, lhsAttributes = height
// sourcery: lhsItem = view1
class LayoutDimensionConstantTests: UILayoutKitTestCase {
// sourcery:inline:auto:LayoutDimensionConstantTests.ConstantEquationTests
    func testView1WidthEqualToConstant() {
        let constraints = view1.widthAnchor .= 200
        constraints.assert(view1, .width, .equal, constant: 200)
    }

    func testView1WidthEqualToConstantWithPriority() {
        let constraints = view1.widthAnchor .= 200 ~ .low
        constraints.assert(view1, .width, .equal, constant: 200, priority: .low)
    }

    func testView1WidthEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.widthAnchor .= 200 ~ .high .- 1
        constraints.assert(view1, .width, .equal, constant: 200, priority: 749)
    }

    func testView1WidthLessThanOrEqualToConstant() {
        let constraints = view1.widthAnchor ≤ 200
        constraints.assert(view1, .width, .lessThanOrEqual, constant: 200)
    }

    func testView1WidthLessThanOrEqualToConstantWithPriority() {
        let constraints = view1.widthAnchor ≤ 200 ~ .low
        constraints.assert(view1, .width, .lessThanOrEqual, constant: 200, priority: .low)
    }

    func testView1WidthLessThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.widthAnchor ≤ 200 ~ .high .- 1
        constraints.assert(view1, .width, .lessThanOrEqual, constant: 200, priority: 749)
    }

    func testView1WidthGreaterThanOrEqualToConstant() {
        let constraints = view1.widthAnchor ≥ 200
        constraints.assert(view1, .width, .greaterThanOrEqual, constant: 200)
    }

    func testView1WidthGreaterThanOrEqualToConstantWithPriority() {
        let constraints = view1.widthAnchor ≥ 200 ~ .low
        constraints.assert(view1, .width, .greaterThanOrEqual, constant: 200, priority: .low)
    }

    func testView1WidthGreaterThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.widthAnchor ≥ 200 ~ .high .- 1
        constraints.assert(view1, .width, .greaterThanOrEqual, constant: 200, priority: 749)
    }

    func testView1HeightEqualToConstant() {
        let constraints = view1.heightAnchor .= 200
        constraints.assert(view1, .height, .equal, constant: 200)
    }

    func testView1HeightEqualToConstantWithPriority() {
        let constraints = view1.heightAnchor .= 200 ~ .low
        constraints.assert(view1, .height, .equal, constant: 200, priority: .low)
    }

    func testView1HeightEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.heightAnchor .= 200 ~ .high .- 1
        constraints.assert(view1, .height, .equal, constant: 200, priority: 749)
    }

    func testView1HeightLessThanOrEqualToConstant() {
        let constraints = view1.heightAnchor ≤ 200
        constraints.assert(view1, .height, .lessThanOrEqual, constant: 200)
    }

    func testView1HeightLessThanOrEqualToConstantWithPriority() {
        let constraints = view1.heightAnchor ≤ 200 ~ .low
        constraints.assert(view1, .height, .lessThanOrEqual, constant: 200, priority: .low)
    }

    func testView1HeightLessThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.heightAnchor ≤ 200 ~ .high .- 1
        constraints.assert(view1, .height, .lessThanOrEqual, constant: 200, priority: 749)
    }

    func testView1HeightGreaterThanOrEqualToConstant() {
        let constraints = view1.heightAnchor ≥ 200
        constraints.assert(view1, .height, .greaterThanOrEqual, constant: 200)
    }

    func testView1HeightGreaterThanOrEqualToConstantWithPriority() {
        let constraints = view1.heightAnchor ≥ 200 ~ .low
        constraints.assert(view1, .height, .greaterThanOrEqual, constant: 200, priority: .low)
    }

    func testView1HeightGreaterThanOrEqualToConstantWithPriorityArithmetic() {
        let constraints = view1.heightAnchor ≥ 200 ~ .high .- 1
        constraints.assert(view1, .height, .greaterThanOrEqual, constant: 200, priority: 749)
    }
// sourcery:end
}
