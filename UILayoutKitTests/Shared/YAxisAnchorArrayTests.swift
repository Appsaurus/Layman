//
//  YAxisAnchorArrayTests.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/25/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// swiftlint:disable file_length type_body_length


@testable import UILayoutKit
import XCTest

// sourcery: anchorEquationTest
// sourcery: lhsAttributes = top, lhsAttributes = centerY, lhsAttributes = bottom
// sourcery: rhsAttributes = top, rhsAttributes = centerY, rhsAttributes = bottom
// sourcery: lhsItem = viewArray
class YAxisAnchorArrayTests: UILayoutKitTestCase {


// sourcery:inline:auto:YAxisAnchorArrayTests.EquationTests

// MARK: viewArrayTop <=> relatedViewTop
    public func testViewArrayTopEqualTop() {
        let constraints = viewArray.topAnchor .= relatedView.top
        constraints.assert(viewArray, .top, .equal, relatedView, .top)
    }

    public func testViewArrayTopEqualTopPlusConstant() {
        let constraints = viewArray.topAnchor .= relatedView.top + 10
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
    }

    public func testViewArrayTopEqualTopMinusConstant() {
        let constraints = viewArray.topAnchor .= relatedView.top - 10
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
    }

    public func testViewArrayTopEqualTopMultiplyingConstant() {
        let constraints = viewArray.topAnchor .= relatedView.top * 3
        constraints.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    public func testViewArrayTopEqualTopMultipliedByConstant() {
        let constraints = viewArray.topAnchor .= 3 * relatedView.top
        constraints.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    public func testViewArrayTopEqualTopDividedByConstant() {
        let constraints = viewArray.topAnchor .= relatedView.top / 2
        constraints.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    public func testViewArrayTopEqualTopWithPriority() {
        let constraints = viewArray.topAnchor .= relatedView.top ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
    }

    public func testViewArrayTopEqualTopWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor .= relatedView.top ~ .high - 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
    }

    public func testViewArrayTopLessThanOrEqualTop() {
        let constraints = viewArray.topAnchor ≤ relatedView.top
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
    }

    public func testViewArrayTopLessThanOrEqualTopPlusConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.top + 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    public func testViewArrayTopLessThanOrEqualTopMinusConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.top - 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    public func testViewArrayTopLessThanOrEqualTopMultiplyingConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.top * 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testViewArrayTopLessThanOrEqualTopMultipliedByConstant() {
        let constraints = viewArray.topAnchor ≤ 3 * relatedView.top
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testViewArrayTopLessThanOrEqualTopDividedByConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.top / 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    public func testViewArrayTopLessThanOrEqualTopWithPriority() {
        let constraints = viewArray.topAnchor ≤ relatedView.top ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    public func testViewArrayTopLessThanOrEqualTopWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor ≤ relatedView.top ~ .high - 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    public func testViewArrayTopGreaterThanOrEqualTop() {
        let constraints = viewArray.topAnchor ≥ relatedView.top
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
    }

    public func testViewArrayTopGreaterThanOrEqualTopPlusConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.top + 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    public func testViewArrayTopGreaterThanOrEqualTopMinusConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.top - 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    public func testViewArrayTopGreaterThanOrEqualTopMultiplyingConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.top * 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testViewArrayTopGreaterThanOrEqualTopMultipliedByConstant() {
        let constraints = viewArray.topAnchor ≥ 3 * relatedView.top
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testViewArrayTopGreaterThanOrEqualTopDividedByConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.top / 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    public func testViewArrayTopGreaterThanOrEqualTopWithPriority() {
        let constraints = viewArray.topAnchor ≥ relatedView.top ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    public func testViewArrayTopGreaterThanOrEqualTopWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor ≥ relatedView.top ~ .high - 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

// MARK: viewArrayTop <=> relatedViewCenterY
    public func testViewArrayTopEqualCenterY() {
        let constraints = viewArray.topAnchor .= relatedView.centerY
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY)
    }

    public func testViewArrayTopEqualCenterYPlusConstant() {
        let constraints = viewArray.topAnchor .= relatedView.centerY + 10
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10)
    }

    public func testViewArrayTopEqualCenterYMinusConstant() {
        let constraints = viewArray.topAnchor .= relatedView.centerY - 10
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: -10)
    }

    public func testViewArrayTopEqualCenterYMultiplyingConstant() {
        let constraints = viewArray.topAnchor .= relatedView.centerY * 3
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, multiplier: 3)
    }

    public func testViewArrayTopEqualCenterYMultipliedByConstant() {
        let constraints = viewArray.topAnchor .= 3 * relatedView.centerY
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, multiplier: 3)
    }

    public func testViewArrayTopEqualCenterYDividedByConstant() {
        let constraints = viewArray.topAnchor .= relatedView.centerY / 2
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    public func testViewArrayTopEqualCenterYWithPriority() {
        let constraints = viewArray.topAnchor .= relatedView.centerY ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, priority: .low)
    }

    public func testViewArrayTopEqualCenterYWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor .= relatedView.centerY ~ .high - 1
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, priority: 749)
    }

    public func testViewArrayTopLessThanOrEqualCenterY() {
        let constraints = viewArray.topAnchor ≤ relatedView.centerY
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY)
    }

    public func testViewArrayTopLessThanOrEqualCenterYPlusConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.centerY + 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    public func testViewArrayTopLessThanOrEqualCenterYMinusConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.centerY - 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    public func testViewArrayTopLessThanOrEqualCenterYMultiplyingConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.centerY * 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testViewArrayTopLessThanOrEqualCenterYMultipliedByConstant() {
        let constraints = viewArray.topAnchor ≤ 3 * relatedView.centerY
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testViewArrayTopLessThanOrEqualCenterYDividedByConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.centerY / 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    public func testViewArrayTopLessThanOrEqualCenterYWithPriority() {
        let constraints = viewArray.topAnchor ≤ relatedView.centerY ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    public func testViewArrayTopLessThanOrEqualCenterYWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor ≤ relatedView.centerY ~ .high - 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    public func testViewArrayTopGreaterThanOrEqualCenterY() {
        let constraints = viewArray.topAnchor ≥ relatedView.centerY
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY)
    }

    public func testViewArrayTopGreaterThanOrEqualCenterYPlusConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.centerY + 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    public func testViewArrayTopGreaterThanOrEqualCenterYMinusConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.centerY - 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    public func testViewArrayTopGreaterThanOrEqualCenterYMultiplyingConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.centerY * 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testViewArrayTopGreaterThanOrEqualCenterYMultipliedByConstant() {
        let constraints = viewArray.topAnchor ≥ 3 * relatedView.centerY
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testViewArrayTopGreaterThanOrEqualCenterYDividedByConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.centerY / 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    public func testViewArrayTopGreaterThanOrEqualCenterYWithPriority() {
        let constraints = viewArray.topAnchor ≥ relatedView.centerY ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    public func testViewArrayTopGreaterThanOrEqualCenterYWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor ≥ relatedView.centerY ~ .high - 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

// MARK: viewArrayTop <=> relatedViewBottom
    public func testViewArrayTopEqualBottom() {
        let constraints = viewArray.topAnchor .= relatedView.bottom
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom)
    }

    public func testViewArrayTopEqualBottomPlusConstant() {
        let constraints = viewArray.topAnchor .= relatedView.bottom + 10
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10)
    }

    public func testViewArrayTopEqualBottomMinusConstant() {
        let constraints = viewArray.topAnchor .= relatedView.bottom - 10
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: -10)
    }

    public func testViewArrayTopEqualBottomMultiplyingConstant() {
        let constraints = viewArray.topAnchor .= relatedView.bottom * 3
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, multiplier: 3)
    }

    public func testViewArrayTopEqualBottomMultipliedByConstant() {
        let constraints = viewArray.topAnchor .= 3 * relatedView.bottom
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, multiplier: 3)
    }

    public func testViewArrayTopEqualBottomDividedByConstant() {
        let constraints = viewArray.topAnchor .= relatedView.bottom / 2
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    public func testViewArrayTopEqualBottomWithPriority() {
        let constraints = viewArray.topAnchor .= relatedView.bottom ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, priority: .low)
    }

    public func testViewArrayTopEqualBottomWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor .= relatedView.bottom ~ .high - 1
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, priority: 749)
    }

    public func testViewArrayTopLessThanOrEqualBottom() {
        let constraints = viewArray.topAnchor ≤ relatedView.bottom
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom)
    }

    public func testViewArrayTopLessThanOrEqualBottomPlusConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.bottom + 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    public func testViewArrayTopLessThanOrEqualBottomMinusConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.bottom - 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    public func testViewArrayTopLessThanOrEqualBottomMultiplyingConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.bottom * 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testViewArrayTopLessThanOrEqualBottomMultipliedByConstant() {
        let constraints = viewArray.topAnchor ≤ 3 * relatedView.bottom
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testViewArrayTopLessThanOrEqualBottomDividedByConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.bottom / 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    public func testViewArrayTopLessThanOrEqualBottomWithPriority() {
        let constraints = viewArray.topAnchor ≤ relatedView.bottom ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    public func testViewArrayTopLessThanOrEqualBottomWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor ≤ relatedView.bottom ~ .high - 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    public func testViewArrayTopGreaterThanOrEqualBottom() {
        let constraints = viewArray.topAnchor ≥ relatedView.bottom
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom)
    }

    public func testViewArrayTopGreaterThanOrEqualBottomPlusConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.bottom + 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    public func testViewArrayTopGreaterThanOrEqualBottomMinusConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.bottom - 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    public func testViewArrayTopGreaterThanOrEqualBottomMultiplyingConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.bottom * 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testViewArrayTopGreaterThanOrEqualBottomMultipliedByConstant() {
        let constraints = viewArray.topAnchor ≥ 3 * relatedView.bottom
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testViewArrayTopGreaterThanOrEqualBottomDividedByConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.bottom / 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    public func testViewArrayTopGreaterThanOrEqualBottomWithPriority() {
        let constraints = viewArray.topAnchor ≥ relatedView.bottom ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    public func testViewArrayTopGreaterThanOrEqualBottomWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor ≥ relatedView.bottom ~ .high - 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

// MARK: viewArrayCenterY <=> relatedViewTop
    public func testViewArrayCenterYEqualTop() {
        let constraints = viewArray.centerYAnchor .= relatedView.top
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top)
    }

    public func testViewArrayCenterYEqualTopPlusConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.top + 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10)
    }

    public func testViewArrayCenterYEqualTopMinusConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.top - 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: -10)
    }

    public func testViewArrayCenterYEqualTopMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.top * 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, multiplier: 3)
    }

    public func testViewArrayCenterYEqualTopMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor .= 3 * relatedView.top
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, multiplier: 3)
    }

    public func testViewArrayCenterYEqualTopDividedByConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.top / 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    public func testViewArrayCenterYEqualTopWithPriority() {
        let constraints = viewArray.centerYAnchor .= relatedView.top ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, priority: .low)
    }

    public func testViewArrayCenterYEqualTopWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor .= relatedView.top ~ .high - 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, priority: 749)
    }

    public func testViewArrayCenterYLessThanOrEqualTop() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.top
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top)
    }

    public func testViewArrayCenterYLessThanOrEqualTopPlusConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.top + 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    public func testViewArrayCenterYLessThanOrEqualTopMinusConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.top - 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    public func testViewArrayCenterYLessThanOrEqualTopMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.top * 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testViewArrayCenterYLessThanOrEqualTopMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor ≤ 3 * relatedView.top
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testViewArrayCenterYLessThanOrEqualTopDividedByConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.top / 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    public func testViewArrayCenterYLessThanOrEqualTopWithPriority() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.top ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    public func testViewArrayCenterYLessThanOrEqualTopWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.top ~ .high - 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    public func testViewArrayCenterYGreaterThanOrEqualTop() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.top
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top)
    }

    public func testViewArrayCenterYGreaterThanOrEqualTopPlusConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.top + 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    public func testViewArrayCenterYGreaterThanOrEqualTopMinusConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.top - 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    public func testViewArrayCenterYGreaterThanOrEqualTopMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.top * 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testViewArrayCenterYGreaterThanOrEqualTopMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor ≥ 3 * relatedView.top
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testViewArrayCenterYGreaterThanOrEqualTopDividedByConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.top / 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    public func testViewArrayCenterYGreaterThanOrEqualTopWithPriority() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.top ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    public func testViewArrayCenterYGreaterThanOrEqualTopWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.top ~ .high - 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

// MARK: viewArrayCenterY <=> relatedViewCenterY
    public func testViewArrayCenterYEqualCenterY() {
        let constraints = viewArray.centerYAnchor .= relatedView.centerY
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY)
    }

    public func testViewArrayCenterYEqualCenterYPlusConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.centerY + 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10)
    }

    public func testViewArrayCenterYEqualCenterYMinusConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.centerY - 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: -10)
    }

    public func testViewArrayCenterYEqualCenterYMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.centerY * 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    public func testViewArrayCenterYEqualCenterYMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor .= 3 * relatedView.centerY
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    public func testViewArrayCenterYEqualCenterYDividedByConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.centerY / 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    public func testViewArrayCenterYEqualCenterYWithPriority() {
        let constraints = viewArray.centerYAnchor .= relatedView.centerY ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: .low)
    }

    public func testViewArrayCenterYEqualCenterYWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor .= relatedView.centerY ~ .high - 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 749)
    }

    public func testViewArrayCenterYLessThanOrEqualCenterY() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.centerY
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }

    public func testViewArrayCenterYLessThanOrEqualCenterYPlusConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.centerY + 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    public func testViewArrayCenterYLessThanOrEqualCenterYMinusConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.centerY - 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    public func testViewArrayCenterYLessThanOrEqualCenterYMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.centerY * 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testViewArrayCenterYLessThanOrEqualCenterYMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor ≤ 3 * relatedView.centerY
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testViewArrayCenterYLessThanOrEqualCenterYDividedByConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.centerY / 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    public func testViewArrayCenterYLessThanOrEqualCenterYWithPriority() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.centerY ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    public func testViewArrayCenterYLessThanOrEqualCenterYWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.centerY ~ .high - 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    public func testViewArrayCenterYGreaterThanOrEqualCenterY() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.centerY
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }

    public func testViewArrayCenterYGreaterThanOrEqualCenterYPlusConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.centerY + 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    public func testViewArrayCenterYGreaterThanOrEqualCenterYMinusConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.centerY - 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    public func testViewArrayCenterYGreaterThanOrEqualCenterYMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.centerY * 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testViewArrayCenterYGreaterThanOrEqualCenterYMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor ≥ 3 * relatedView.centerY
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testViewArrayCenterYGreaterThanOrEqualCenterYDividedByConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.centerY / 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    public func testViewArrayCenterYGreaterThanOrEqualCenterYWithPriority() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.centerY ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    public func testViewArrayCenterYGreaterThanOrEqualCenterYWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.centerY ~ .high - 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

// MARK: viewArrayCenterY <=> relatedViewBottom
    public func testViewArrayCenterYEqualBottom() {
        let constraints = viewArray.centerYAnchor .= relatedView.bottom
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom)
    }

    public func testViewArrayCenterYEqualBottomPlusConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.bottom + 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10)
    }

    public func testViewArrayCenterYEqualBottomMinusConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.bottom - 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: -10)
    }

    public func testViewArrayCenterYEqualBottomMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.bottom * 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, multiplier: 3)
    }

    public func testViewArrayCenterYEqualBottomMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor .= 3 * relatedView.bottom
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, multiplier: 3)
    }

    public func testViewArrayCenterYEqualBottomDividedByConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.bottom / 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    public func testViewArrayCenterYEqualBottomWithPriority() {
        let constraints = viewArray.centerYAnchor .= relatedView.bottom ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, priority: .low)
    }

    public func testViewArrayCenterYEqualBottomWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor .= relatedView.bottom ~ .high - 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, priority: 749)
    }

    public func testViewArrayCenterYLessThanOrEqualBottom() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.bottom
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom)
    }

    public func testViewArrayCenterYLessThanOrEqualBottomPlusConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.bottom + 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    public func testViewArrayCenterYLessThanOrEqualBottomMinusConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.bottom - 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    public func testViewArrayCenterYLessThanOrEqualBottomMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.bottom * 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testViewArrayCenterYLessThanOrEqualBottomMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor ≤ 3 * relatedView.bottom
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testViewArrayCenterYLessThanOrEqualBottomDividedByConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.bottom / 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    public func testViewArrayCenterYLessThanOrEqualBottomWithPriority() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.bottom ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    public func testViewArrayCenterYLessThanOrEqualBottomWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.bottom ~ .high - 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    public func testViewArrayCenterYGreaterThanOrEqualBottom() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.bottom
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom)
    }

    public func testViewArrayCenterYGreaterThanOrEqualBottomPlusConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.bottom + 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    public func testViewArrayCenterYGreaterThanOrEqualBottomMinusConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.bottom - 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    public func testViewArrayCenterYGreaterThanOrEqualBottomMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.bottom * 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testViewArrayCenterYGreaterThanOrEqualBottomMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor ≥ 3 * relatedView.bottom
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testViewArrayCenterYGreaterThanOrEqualBottomDividedByConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.bottom / 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    public func testViewArrayCenterYGreaterThanOrEqualBottomWithPriority() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.bottom ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    public func testViewArrayCenterYGreaterThanOrEqualBottomWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.bottom ~ .high - 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

// MARK: viewArrayBottom <=> relatedViewTop
    public func testViewArrayBottomEqualTop() {
        let constraints = viewArray.bottomAnchor .= relatedView.top
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top)
    }

    public func testViewArrayBottomEqualTopPlusConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.top + 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10)
    }

    public func testViewArrayBottomEqualTopMinusConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.top - 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: -10)
    }

    public func testViewArrayBottomEqualTopMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.top * 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, multiplier: 3)
    }

    public func testViewArrayBottomEqualTopMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor .= 3 * relatedView.top
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, multiplier: 3)
    }

    public func testViewArrayBottomEqualTopDividedByConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.top / 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    public func testViewArrayBottomEqualTopWithPriority() {
        let constraints = viewArray.bottomAnchor .= relatedView.top ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, priority: .low)
    }

    public func testViewArrayBottomEqualTopWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor .= relatedView.top ~ .high - 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, priority: 749)
    }

    public func testViewArrayBottomLessThanOrEqualTop() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.top
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top)
    }

    public func testViewArrayBottomLessThanOrEqualTopPlusConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.top + 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    public func testViewArrayBottomLessThanOrEqualTopMinusConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.top - 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    public func testViewArrayBottomLessThanOrEqualTopMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.top * 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testViewArrayBottomLessThanOrEqualTopMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor ≤ 3 * relatedView.top
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testViewArrayBottomLessThanOrEqualTopDividedByConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.top / 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    public func testViewArrayBottomLessThanOrEqualTopWithPriority() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.top ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    public func testViewArrayBottomLessThanOrEqualTopWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.top ~ .high - 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    public func testViewArrayBottomGreaterThanOrEqualTop() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.top
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top)
    }

    public func testViewArrayBottomGreaterThanOrEqualTopPlusConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.top + 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    public func testViewArrayBottomGreaterThanOrEqualTopMinusConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.top - 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    public func testViewArrayBottomGreaterThanOrEqualTopMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.top * 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testViewArrayBottomGreaterThanOrEqualTopMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor ≥ 3 * relatedView.top
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testViewArrayBottomGreaterThanOrEqualTopDividedByConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.top / 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    public func testViewArrayBottomGreaterThanOrEqualTopWithPriority() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.top ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    public func testViewArrayBottomGreaterThanOrEqualTopWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.top ~ .high - 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

// MARK: viewArrayBottom <=> relatedViewCenterY
    public func testViewArrayBottomEqualCenterY() {
        let constraints = viewArray.bottomAnchor .= relatedView.centerY
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY)
    }

    public func testViewArrayBottomEqualCenterYPlusConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.centerY + 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10)
    }

    public func testViewArrayBottomEqualCenterYMinusConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.centerY - 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: -10)
    }

    public func testViewArrayBottomEqualCenterYMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.centerY * 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, multiplier: 3)
    }

    public func testViewArrayBottomEqualCenterYMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor .= 3 * relatedView.centerY
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, multiplier: 3)
    }

    public func testViewArrayBottomEqualCenterYDividedByConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.centerY / 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    public func testViewArrayBottomEqualCenterYWithPriority() {
        let constraints = viewArray.bottomAnchor .= relatedView.centerY ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, priority: .low)
    }

    public func testViewArrayBottomEqualCenterYWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor .= relatedView.centerY ~ .high - 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, priority: 749)
    }

    public func testViewArrayBottomLessThanOrEqualCenterY() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.centerY
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY)
    }

    public func testViewArrayBottomLessThanOrEqualCenterYPlusConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.centerY + 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    public func testViewArrayBottomLessThanOrEqualCenterYMinusConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.centerY - 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    public func testViewArrayBottomLessThanOrEqualCenterYMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.centerY * 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testViewArrayBottomLessThanOrEqualCenterYMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor ≤ 3 * relatedView.centerY
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testViewArrayBottomLessThanOrEqualCenterYDividedByConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.centerY / 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    public func testViewArrayBottomLessThanOrEqualCenterYWithPriority() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.centerY ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    public func testViewArrayBottomLessThanOrEqualCenterYWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.centerY ~ .high - 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    public func testViewArrayBottomGreaterThanOrEqualCenterY() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.centerY
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY)
    }

    public func testViewArrayBottomGreaterThanOrEqualCenterYPlusConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.centerY + 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    public func testViewArrayBottomGreaterThanOrEqualCenterYMinusConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.centerY - 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    public func testViewArrayBottomGreaterThanOrEqualCenterYMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.centerY * 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testViewArrayBottomGreaterThanOrEqualCenterYMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor ≥ 3 * relatedView.centerY
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testViewArrayBottomGreaterThanOrEqualCenterYDividedByConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.centerY / 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    public func testViewArrayBottomGreaterThanOrEqualCenterYWithPriority() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.centerY ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    public func testViewArrayBottomGreaterThanOrEqualCenterYWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.centerY ~ .high - 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

// MARK: viewArrayBottom <=> relatedViewBottom
    public func testViewArrayBottomEqualBottom() {
        let constraints = viewArray.bottomAnchor .= relatedView.bottom
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom)
    }

    public func testViewArrayBottomEqualBottomPlusConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.bottom + 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    public func testViewArrayBottomEqualBottomMinusConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.bottom - 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    public func testViewArrayBottomEqualBottomMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.bottom * 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    public func testViewArrayBottomEqualBottomMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor .= 3 * relatedView.bottom
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    public func testViewArrayBottomEqualBottomDividedByConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.bottom / 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    public func testViewArrayBottomEqualBottomWithPriority() {
        let constraints = viewArray.bottomAnchor .= relatedView.bottom ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    public func testViewArrayBottomEqualBottomWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor .= relatedView.bottom ~ .high - 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    public func testViewArrayBottomLessThanOrEqualBottom() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.bottom
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    public func testViewArrayBottomLessThanOrEqualBottomPlusConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.bottom + 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    public func testViewArrayBottomLessThanOrEqualBottomMinusConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.bottom - 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    public func testViewArrayBottomLessThanOrEqualBottomMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.bottom * 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testViewArrayBottomLessThanOrEqualBottomMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor ≤ 3 * relatedView.bottom
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testViewArrayBottomLessThanOrEqualBottomDividedByConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.bottom / 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    public func testViewArrayBottomLessThanOrEqualBottomWithPriority() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.bottom ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    public func testViewArrayBottomLessThanOrEqualBottomWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.bottom ~ .high - 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    public func testViewArrayBottomGreaterThanOrEqualBottom() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.bottom
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    public func testViewArrayBottomGreaterThanOrEqualBottomPlusConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.bottom + 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    public func testViewArrayBottomGreaterThanOrEqualBottomMinusConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.bottom - 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    public func testViewArrayBottomGreaterThanOrEqualBottomMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.bottom * 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testViewArrayBottomGreaterThanOrEqualBottomMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor ≥ 3 * relatedView.bottom
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testViewArrayBottomGreaterThanOrEqualBottomDividedByConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.bottom / 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    public func testViewArrayBottomGreaterThanOrEqualBottomWithPriority() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.bottom ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    public func testViewArrayBottomGreaterThanOrEqualBottomWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.bottom ~ .high - 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }
// sourcery:end
}

