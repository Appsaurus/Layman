//
//  CoefficientPairEquatableTests.swift
//  Layman
//
//  Created by Brian Strobach on 3/6/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@testable import Layman
import XCTest

// sourcery: coefficientPairEquatableTest
// sourcery: lhsAttributes = size, lhsAttributes = centerXY
// sourcery: size = width, size = height
// sourcery: centerXY = centerX, centerXY = centerY
// sourcery: lhsItems = view1, lhsItems = viewArray
class CoefficientPairEquatableTests: LaymanTestCase {

// sourcery:inline:auto:CoefficientPairEquatableTests.CoefficientPairEquatableTest
    func testView1SizeEqualToConstantPair() {
        let constraints = view1.size .= (100, 200)
        constraints.first.assert(view1, .width, .equal, constant: 100)
        constraints.second.assert(view1, .height, .equal, constant: 200)
    }

    func testView1SizeEqualToCoefficientPair() {
        let constraints = view1.size .= (100 ~ .low, 200 ~ .high)
        constraints.first.assert(view1, .width, .equal, constant: 100, priority: .low)
        constraints.second.assert(view1, .height, .equal, constant: 200, priority: .high)
    }
    func testView1SizeLessThanOrEqualToConstantPair() {
        let constraints = view1.size ≤ (100, 200)
        constraints.first.assert(view1, .width, .lessThanOrEqual, constant: 100)
        constraints.second.assert(view1, .height, .lessThanOrEqual, constant: 200)
    }

    func testView1SizeLessThanOrEqualToCoefficientPair() {
        let constraints = view1.size ≤ (100 ~ .low, 200 ~ .high)
        constraints.first.assert(view1, .width, .lessThanOrEqual, constant: 100, priority: .low)
        constraints.second.assert(view1, .height, .lessThanOrEqual, constant: 200, priority: .high)
    }
    func testView1SizeGreaterThanOrEqualToConstantPair() {
        let constraints = view1.size ≥ (100, 200)
        constraints.first.assert(view1, .width, .greaterThanOrEqual, constant: 100)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, constant: 200)
    }

    func testView1SizeGreaterThanOrEqualToCoefficientPair() {
        let constraints = view1.size ≥ (100 ~ .low, 200 ~ .high)
        constraints.first.assert(view1, .width, .greaterThanOrEqual, constant: 100, priority: .low)
        constraints.second.assert(view1, .height, .greaterThanOrEqual, constant: 200, priority: .high)
    }
    func testView1CenterXYEqualToConstantPair() {
        let constraints = view1.centerXY .= (100, 200)
        constraints.first.assert(view1, .centerX, .equal, parentView, .centerX, constant: 100)
        constraints.second.assert(view1, .centerY, .equal, parentView, .centerY, constant: 200)
    }

    func testView1CenterXYEqualToCoefficientPair() {
        let constraints = view1.centerXY .= (100 ~ .low, 200 ~ .high)
        constraints.first.assert(view1, .centerX, .equal, parentView, .centerX, constant: 100, priority: .low)
        constraints.second.assert(view1, .centerY, .equal, parentView, .centerY, constant: 200, priority: .high)
    }
    func testView1CenterXYLessThanOrEqualToConstantPair() {
        let constraints = view1.centerXY ≤ (100, 200)
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, parentView, .centerX, constant: 100)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, parentView, .centerY, constant: 200)
    }

    func testView1CenterXYLessThanOrEqualToCoefficientPair() {
        let constraints = view1.centerXY ≤ (100 ~ .low, 200 ~ .high)
        constraints.first.assert(view1, .centerX, .lessThanOrEqual, parentView, .centerX, constant: 100, priority: .low)
        constraints.second.assert(view1, .centerY, .lessThanOrEqual, parentView, .centerY, constant: 200, priority: .high)
    }
    func testView1CenterXYGreaterThanOrEqualToConstantPair() {
        let constraints = view1.centerXY ≥ (100, 200)
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, parentView, .centerX, constant: 100)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, parentView, .centerY, constant: 200)
    }

    func testView1CenterXYGreaterThanOrEqualToCoefficientPair() {
        let constraints = view1.centerXY ≥ (100 ~ .low, 200 ~ .high)
        constraints.first.assert(view1, .centerX, .greaterThanOrEqual, parentView, .centerX, constant: 100, priority: .low)
        constraints.second.assert(view1, .centerY, .greaterThanOrEqual, parentView, .centerY, constant: 200, priority: .high)
    }
    func testViewArraySizeEqualToConstantPair() {
        let constraints = viewArray.size .= (100, 200)
        constraints.first.assert(viewArray, .width, .equal, constant: 100)
        constraints.second.assert(viewArray, .height, .equal, constant: 200)
    }

    func testViewArraySizeEqualToCoefficientPair() {
        let constraints = viewArray.size .= (100 ~ .low, 200 ~ .high)
        constraints.first.assert(viewArray, .width, .equal, constant: 100, priority: .low)
        constraints.second.assert(viewArray, .height, .equal, constant: 200, priority: .high)
    }
    func testViewArraySizeLessThanOrEqualToConstantPair() {
        let constraints = viewArray.size ≤ (100, 200)
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, constant: 100)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, constant: 200)
    }

    func testViewArraySizeLessThanOrEqualToCoefficientPair() {
        let constraints = viewArray.size ≤ (100 ~ .low, 200 ~ .high)
        constraints.first.assert(viewArray, .width, .lessThanOrEqual, constant: 100, priority: .low)
        constraints.second.assert(viewArray, .height, .lessThanOrEqual, constant: 200, priority: .high)
    }
    func testViewArraySizeGreaterThanOrEqualToConstantPair() {
        let constraints = viewArray.size ≥ (100, 200)
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, constant: 100)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, constant: 200)
    }

    func testViewArraySizeGreaterThanOrEqualToCoefficientPair() {
        let constraints = viewArray.size ≥ (100 ~ .low, 200 ~ .high)
        constraints.first.assert(viewArray, .width, .greaterThanOrEqual, constant: 100, priority: .low)
        constraints.second.assert(viewArray, .height, .greaterThanOrEqual, constant: 200, priority: .high)
    }
    func testViewArrayCenterXYEqualToConstantPair() {
        let constraints = viewArray.centerXY .= (100, 200)
        constraints.first.assert(viewArray, .centerX, .equal, parentView, .centerX, constant: 100)
        constraints.second.assert(viewArray, .centerY, .equal, parentView, .centerY, constant: 200)
    }

    func testViewArrayCenterXYEqualToCoefficientPair() {
        let constraints = viewArray.centerXY .= (100 ~ .low, 200 ~ .high)
        constraints.first.assert(viewArray, .centerX, .equal, parentView, .centerX, constant: 100, priority: .low)
        constraints.second.assert(viewArray, .centerY, .equal, parentView, .centerY, constant: 200, priority: .high)
    }
    func testViewArrayCenterXYLessThanOrEqualToConstantPair() {
        let constraints = viewArray.centerXY ≤ (100, 200)
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, parentView, .centerX, constant: 100)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, parentView, .centerY, constant: 200)
    }

    func testViewArrayCenterXYLessThanOrEqualToCoefficientPair() {
        let constraints = viewArray.centerXY ≤ (100 ~ .low, 200 ~ .high)
        constraints.first.assert(viewArray, .centerX, .lessThanOrEqual, parentView, .centerX, constant: 100, priority: .low)
        constraints.second.assert(viewArray, .centerY, .lessThanOrEqual, parentView, .centerY, constant: 200, priority: .high)
    }
    func testViewArrayCenterXYGreaterThanOrEqualToConstantPair() {
        let constraints = viewArray.centerXY ≥ (100, 200)
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, parentView, .centerX, constant: 100)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, parentView, .centerY, constant: 200)
    }

    func testViewArrayCenterXYGreaterThanOrEqualToCoefficientPair() {
        let constraints = viewArray.centerXY ≥ (100 ~ .low, 200 ~ .high)
        constraints.first.assert(viewArray, .centerX, .greaterThanOrEqual, parentView, .centerX, constant: 100, priority: .low)
        constraints.second.assert(viewArray, .centerY, .greaterThanOrEqual, parentView, .centerY, constant: 200, priority: .high)
    }
// sourcery:end
}
