//
//  YAxisAnchorTests.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/24/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// swiftlint:disable file_length type_body_length

@testable import UILayoutKit
import XCTest

// sourcery: anchorEquationTest
// sourcery: lhsAttributes = top, lhsAttributes = centerY, lhsAttributes = bottom
// sourcery: rhsAttributes = top, rhsAttributes = centerY, rhsAttributes = bottom
// sourcery: lhsItem = view1
class YAxisAnchorTests: UILayoutKitTestCase {


// sourcery:inline:auto:YAxisAnchorTests.EquationTests

// MARK: view1Top <=> relatedViewTop
    public func testView1TopEqualTop() {
        let constraints = view1.topAnchor .= relatedView.top
        constraints.assert(view1, .top, .equal, relatedView, .top)
    }

    public func testView1TopEqualTopPlusConstant() {
        let constraints = view1.topAnchor .= relatedView.top + 10
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10)
    }

    public func testView1TopEqualTopMinusConstant() {
        let constraints = view1.topAnchor .= relatedView.top - 10
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: -10)
    }

    public func testView1TopEqualTopMultiplyingConstant() {
        let constraints = view1.topAnchor .= relatedView.top * 3
        constraints.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    public func testView1TopEqualTopMultipliedByConstant() {
        let constraints = view1.topAnchor .= 3 * relatedView.top
        constraints.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    public func testView1TopEqualTopDividedByConstant() {
        let constraints = view1.topAnchor .= relatedView.top / 2
        constraints.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    public func testView1TopEqualTopWithPriority() {
        let constraints = view1.topAnchor .= relatedView.top ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, priority: .low)
    }

    public func testView1TopEqualTopWithPriorityArithmetic() {
        let constraints = view1.topAnchor .= relatedView.top ~ .high - 1
        constraints.assert(view1, .top, .equal, relatedView, .top, priority: 749)
    }

    public func testView1TopLessThanOrEqualTop() {
        let constraints = view1.topAnchor ≤ relatedView.top
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
    }

    public func testView1TopLessThanOrEqualTopPlusConstant() {
        let constraints = view1.topAnchor ≤ relatedView.top + 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    public func testView1TopLessThanOrEqualTopMinusConstant() {
        let constraints = view1.topAnchor ≤ relatedView.top - 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    public func testView1TopLessThanOrEqualTopMultiplyingConstant() {
        let constraints = view1.topAnchor ≤ relatedView.top * 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testView1TopLessThanOrEqualTopMultipliedByConstant() {
        let constraints = view1.topAnchor ≤ 3 * relatedView.top
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testView1TopLessThanOrEqualTopDividedByConstant() {
        let constraints = view1.topAnchor ≤ relatedView.top / 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    public func testView1TopLessThanOrEqualTopWithPriority() {
        let constraints = view1.topAnchor ≤ relatedView.top ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    public func testView1TopLessThanOrEqualTopWithPriorityArithmetic() {
        let constraints = view1.topAnchor ≤ relatedView.top ~ .high - 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    public func testView1TopGreaterThanOrEqualTop() {
        let constraints = view1.topAnchor ≥ relatedView.top
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
    }

    public func testView1TopGreaterThanOrEqualTopPlusConstant() {
        let constraints = view1.topAnchor ≥ relatedView.top + 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    public func testView1TopGreaterThanOrEqualTopMinusConstant() {
        let constraints = view1.topAnchor ≥ relatedView.top - 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    public func testView1TopGreaterThanOrEqualTopMultiplyingConstant() {
        let constraints = view1.topAnchor ≥ relatedView.top * 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testView1TopGreaterThanOrEqualTopMultipliedByConstant() {
        let constraints = view1.topAnchor ≥ 3 * relatedView.top
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testView1TopGreaterThanOrEqualTopDividedByConstant() {
        let constraints = view1.topAnchor ≥ relatedView.top / 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    public func testView1TopGreaterThanOrEqualTopWithPriority() {
        let constraints = view1.topAnchor ≥ relatedView.top ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    public func testView1TopGreaterThanOrEqualTopWithPriorityArithmetic() {
        let constraints = view1.topAnchor ≥ relatedView.top ~ .high - 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

// MARK: view1Top <=> relatedViewCenterY
    public func testView1TopEqualCenterY() {
        let constraints = view1.topAnchor .= relatedView.centerY
        constraints.assert(view1, .top, .equal, relatedView, .centerY)
    }

    public func testView1TopEqualCenterYPlusConstant() {
        let constraints = view1.topAnchor .= relatedView.centerY + 10
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10)
    }

    public func testView1TopEqualCenterYMinusConstant() {
        let constraints = view1.topAnchor .= relatedView.centerY - 10
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: -10)
    }

    public func testView1TopEqualCenterYMultiplyingConstant() {
        let constraints = view1.topAnchor .= relatedView.centerY * 3
        constraints.assert(view1, .top, .equal, relatedView, .centerY, multiplier: 3)
    }

    public func testView1TopEqualCenterYMultipliedByConstant() {
        let constraints = view1.topAnchor .= 3 * relatedView.centerY
        constraints.assert(view1, .top, .equal, relatedView, .centerY, multiplier: 3)
    }

    public func testView1TopEqualCenterYDividedByConstant() {
        let constraints = view1.topAnchor .= relatedView.centerY / 2
        constraints.assert(view1, .top, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    public func testView1TopEqualCenterYWithPriority() {
        let constraints = view1.topAnchor .= relatedView.centerY ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .centerY, priority: .low)
    }

    public func testView1TopEqualCenterYWithPriorityArithmetic() {
        let constraints = view1.topAnchor .= relatedView.centerY ~ .high - 1
        constraints.assert(view1, .top, .equal, relatedView, .centerY, priority: 749)
    }

    public func testView1TopLessThanOrEqualCenterY() {
        let constraints = view1.topAnchor ≤ relatedView.centerY
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY)
    }

    public func testView1TopLessThanOrEqualCenterYPlusConstant() {
        let constraints = view1.topAnchor ≤ relatedView.centerY + 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    public func testView1TopLessThanOrEqualCenterYMinusConstant() {
        let constraints = view1.topAnchor ≤ relatedView.centerY - 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    public func testView1TopLessThanOrEqualCenterYMultiplyingConstant() {
        let constraints = view1.topAnchor ≤ relatedView.centerY * 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testView1TopLessThanOrEqualCenterYMultipliedByConstant() {
        let constraints = view1.topAnchor ≤ 3 * relatedView.centerY
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testView1TopLessThanOrEqualCenterYDividedByConstant() {
        let constraints = view1.topAnchor ≤ relatedView.centerY / 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    public func testView1TopLessThanOrEqualCenterYWithPriority() {
        let constraints = view1.topAnchor ≤ relatedView.centerY ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    public func testView1TopLessThanOrEqualCenterYWithPriorityArithmetic() {
        let constraints = view1.topAnchor ≤ relatedView.centerY ~ .high - 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    public func testView1TopGreaterThanOrEqualCenterY() {
        let constraints = view1.topAnchor ≥ relatedView.centerY
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY)
    }

    public func testView1TopGreaterThanOrEqualCenterYPlusConstant() {
        let constraints = view1.topAnchor ≥ relatedView.centerY + 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    public func testView1TopGreaterThanOrEqualCenterYMinusConstant() {
        let constraints = view1.topAnchor ≥ relatedView.centerY - 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    public func testView1TopGreaterThanOrEqualCenterYMultiplyingConstant() {
        let constraints = view1.topAnchor ≥ relatedView.centerY * 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testView1TopGreaterThanOrEqualCenterYMultipliedByConstant() {
        let constraints = view1.topAnchor ≥ 3 * relatedView.centerY
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testView1TopGreaterThanOrEqualCenterYDividedByConstant() {
        let constraints = view1.topAnchor ≥ relatedView.centerY / 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    public func testView1TopGreaterThanOrEqualCenterYWithPriority() {
        let constraints = view1.topAnchor ≥ relatedView.centerY ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    public func testView1TopGreaterThanOrEqualCenterYWithPriorityArithmetic() {
        let constraints = view1.topAnchor ≥ relatedView.centerY ~ .high - 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

// MARK: view1Top <=> relatedViewBottom
    public func testView1TopEqualBottom() {
        let constraints = view1.topAnchor .= relatedView.bottom
        constraints.assert(view1, .top, .equal, relatedView, .bottom)
    }

    public func testView1TopEqualBottomPlusConstant() {
        let constraints = view1.topAnchor .= relatedView.bottom + 10
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10)
    }

    public func testView1TopEqualBottomMinusConstant() {
        let constraints = view1.topAnchor .= relatedView.bottom - 10
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: -10)
    }

    public func testView1TopEqualBottomMultiplyingConstant() {
        let constraints = view1.topAnchor .= relatedView.bottom * 3
        constraints.assert(view1, .top, .equal, relatedView, .bottom, multiplier: 3)
    }

    public func testView1TopEqualBottomMultipliedByConstant() {
        let constraints = view1.topAnchor .= 3 * relatedView.bottom
        constraints.assert(view1, .top, .equal, relatedView, .bottom, multiplier: 3)
    }

    public func testView1TopEqualBottomDividedByConstant() {
        let constraints = view1.topAnchor .= relatedView.bottom / 2
        constraints.assert(view1, .top, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    public func testView1TopEqualBottomWithPriority() {
        let constraints = view1.topAnchor .= relatedView.bottom ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .bottom, priority: .low)
    }

    public func testView1TopEqualBottomWithPriorityArithmetic() {
        let constraints = view1.topAnchor .= relatedView.bottom ~ .high - 1
        constraints.assert(view1, .top, .equal, relatedView, .bottom, priority: 749)
    }

    public func testView1TopLessThanOrEqualBottom() {
        let constraints = view1.topAnchor ≤ relatedView.bottom
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom)
    }

    public func testView1TopLessThanOrEqualBottomPlusConstant() {
        let constraints = view1.topAnchor ≤ relatedView.bottom + 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    public func testView1TopLessThanOrEqualBottomMinusConstant() {
        let constraints = view1.topAnchor ≤ relatedView.bottom - 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    public func testView1TopLessThanOrEqualBottomMultiplyingConstant() {
        let constraints = view1.topAnchor ≤ relatedView.bottom * 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testView1TopLessThanOrEqualBottomMultipliedByConstant() {
        let constraints = view1.topAnchor ≤ 3 * relatedView.bottom
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testView1TopLessThanOrEqualBottomDividedByConstant() {
        let constraints = view1.topAnchor ≤ relatedView.bottom / 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    public func testView1TopLessThanOrEqualBottomWithPriority() {
        let constraints = view1.topAnchor ≤ relatedView.bottom ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    public func testView1TopLessThanOrEqualBottomWithPriorityArithmetic() {
        let constraints = view1.topAnchor ≤ relatedView.bottom ~ .high - 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    public func testView1TopGreaterThanOrEqualBottom() {
        let constraints = view1.topAnchor ≥ relatedView.bottom
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom)
    }

    public func testView1TopGreaterThanOrEqualBottomPlusConstant() {
        let constraints = view1.topAnchor ≥ relatedView.bottom + 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    public func testView1TopGreaterThanOrEqualBottomMinusConstant() {
        let constraints = view1.topAnchor ≥ relatedView.bottom - 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    public func testView1TopGreaterThanOrEqualBottomMultiplyingConstant() {
        let constraints = view1.topAnchor ≥ relatedView.bottom * 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testView1TopGreaterThanOrEqualBottomMultipliedByConstant() {
        let constraints = view1.topAnchor ≥ 3 * relatedView.bottom
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testView1TopGreaterThanOrEqualBottomDividedByConstant() {
        let constraints = view1.topAnchor ≥ relatedView.bottom / 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    public func testView1TopGreaterThanOrEqualBottomWithPriority() {
        let constraints = view1.topAnchor ≥ relatedView.bottom ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    public func testView1TopGreaterThanOrEqualBottomWithPriorityArithmetic() {
        let constraints = view1.topAnchor ≥ relatedView.bottom ~ .high - 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

// MARK: view1CenterY <=> relatedViewTop
    public func testView1CenterYEqualTop() {
        let constraints = view1.centerYAnchor .= relatedView.top
        constraints.assert(view1, .centerY, .equal, relatedView, .top)
    }

    public func testView1CenterYEqualTopPlusConstant() {
        let constraints = view1.centerYAnchor .= relatedView.top + 10
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10)
    }

    public func testView1CenterYEqualTopMinusConstant() {
        let constraints = view1.centerYAnchor .= relatedView.top - 10
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: -10)
    }

    public func testView1CenterYEqualTopMultiplyingConstant() {
        let constraints = view1.centerYAnchor .= relatedView.top * 3
        constraints.assert(view1, .centerY, .equal, relatedView, .top, multiplier: 3)
    }

    public func testView1CenterYEqualTopMultipliedByConstant() {
        let constraints = view1.centerYAnchor .= 3 * relatedView.top
        constraints.assert(view1, .centerY, .equal, relatedView, .top, multiplier: 3)
    }

    public func testView1CenterYEqualTopDividedByConstant() {
        let constraints = view1.centerYAnchor .= relatedView.top / 2
        constraints.assert(view1, .centerY, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    public func testView1CenterYEqualTopWithPriority() {
        let constraints = view1.centerYAnchor .= relatedView.top ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .top, priority: .low)
    }

    public func testView1CenterYEqualTopWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor .= relatedView.top ~ .high - 1
        constraints.assert(view1, .centerY, .equal, relatedView, .top, priority: 749)
    }

    public func testView1CenterYLessThanOrEqualTop() {
        let constraints = view1.centerYAnchor ≤ relatedView.top
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top)
    }

    public func testView1CenterYLessThanOrEqualTopPlusConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.top + 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    public func testView1CenterYLessThanOrEqualTopMinusConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.top - 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    public func testView1CenterYLessThanOrEqualTopMultiplyingConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.top * 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testView1CenterYLessThanOrEqualTopMultipliedByConstant() {
        let constraints = view1.centerYAnchor ≤ 3 * relatedView.top
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testView1CenterYLessThanOrEqualTopDividedByConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.top / 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    public func testView1CenterYLessThanOrEqualTopWithPriority() {
        let constraints = view1.centerYAnchor ≤ relatedView.top ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    public func testView1CenterYLessThanOrEqualTopWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor ≤ relatedView.top ~ .high - 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    public func testView1CenterYGreaterThanOrEqualTop() {
        let constraints = view1.centerYAnchor ≥ relatedView.top
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top)
    }

    public func testView1CenterYGreaterThanOrEqualTopPlusConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.top + 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    public func testView1CenterYGreaterThanOrEqualTopMinusConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.top - 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    public func testView1CenterYGreaterThanOrEqualTopMultiplyingConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.top * 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testView1CenterYGreaterThanOrEqualTopMultipliedByConstant() {
        let constraints = view1.centerYAnchor ≥ 3 * relatedView.top
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testView1CenterYGreaterThanOrEqualTopDividedByConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.top / 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    public func testView1CenterYGreaterThanOrEqualTopWithPriority() {
        let constraints = view1.centerYAnchor ≥ relatedView.top ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    public func testView1CenterYGreaterThanOrEqualTopWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor ≥ relatedView.top ~ .high - 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

// MARK: view1CenterY <=> relatedViewCenterY
    public func testView1CenterYEqualCenterY() {
        let constraints = view1.centerYAnchor .= relatedView.centerY
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY)
    }

    public func testView1CenterYEqualCenterYPlusConstant() {
        let constraints = view1.centerYAnchor .= relatedView.centerY + 10
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10)
    }

    public func testView1CenterYEqualCenterYMinusConstant() {
        let constraints = view1.centerYAnchor .= relatedView.centerY - 10
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: -10)
    }

    public func testView1CenterYEqualCenterYMultiplyingConstant() {
        let constraints = view1.centerYAnchor .= relatedView.centerY * 3
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    public func testView1CenterYEqualCenterYMultipliedByConstant() {
        let constraints = view1.centerYAnchor .= 3 * relatedView.centerY
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    public func testView1CenterYEqualCenterYDividedByConstant() {
        let constraints = view1.centerYAnchor .= relatedView.centerY / 2
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    public func testView1CenterYEqualCenterYWithPriority() {
        let constraints = view1.centerYAnchor .= relatedView.centerY ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, priority: .low)
    }

    public func testView1CenterYEqualCenterYWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor .= relatedView.centerY ~ .high - 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 749)
    }

    public func testView1CenterYLessThanOrEqualCenterY() {
        let constraints = view1.centerYAnchor ≤ relatedView.centerY
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }

    public func testView1CenterYLessThanOrEqualCenterYPlusConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.centerY + 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    public func testView1CenterYLessThanOrEqualCenterYMinusConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.centerY - 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    public func testView1CenterYLessThanOrEqualCenterYMultiplyingConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.centerY * 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testView1CenterYLessThanOrEqualCenterYMultipliedByConstant() {
        let constraints = view1.centerYAnchor ≤ 3 * relatedView.centerY
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testView1CenterYLessThanOrEqualCenterYDividedByConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.centerY / 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    public func testView1CenterYLessThanOrEqualCenterYWithPriority() {
        let constraints = view1.centerYAnchor ≤ relatedView.centerY ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    public func testView1CenterYLessThanOrEqualCenterYWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor ≤ relatedView.centerY ~ .high - 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    public func testView1CenterYGreaterThanOrEqualCenterY() {
        let constraints = view1.centerYAnchor ≥ relatedView.centerY
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }

    public func testView1CenterYGreaterThanOrEqualCenterYPlusConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.centerY + 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    public func testView1CenterYGreaterThanOrEqualCenterYMinusConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.centerY - 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    public func testView1CenterYGreaterThanOrEqualCenterYMultiplyingConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.centerY * 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testView1CenterYGreaterThanOrEqualCenterYMultipliedByConstant() {
        let constraints = view1.centerYAnchor ≥ 3 * relatedView.centerY
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testView1CenterYGreaterThanOrEqualCenterYDividedByConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.centerY / 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    public func testView1CenterYGreaterThanOrEqualCenterYWithPriority() {
        let constraints = view1.centerYAnchor ≥ relatedView.centerY ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    public func testView1CenterYGreaterThanOrEqualCenterYWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor ≥ relatedView.centerY ~ .high - 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

// MARK: view1CenterY <=> relatedViewBottom
    public func testView1CenterYEqualBottom() {
        let constraints = view1.centerYAnchor .= relatedView.bottom
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom)
    }

    public func testView1CenterYEqualBottomPlusConstant() {
        let constraints = view1.centerYAnchor .= relatedView.bottom + 10
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10)
    }

    public func testView1CenterYEqualBottomMinusConstant() {
        let constraints = view1.centerYAnchor .= relatedView.bottom - 10
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: -10)
    }

    public func testView1CenterYEqualBottomMultiplyingConstant() {
        let constraints = view1.centerYAnchor .= relatedView.bottom * 3
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, multiplier: 3)
    }

    public func testView1CenterYEqualBottomMultipliedByConstant() {
        let constraints = view1.centerYAnchor .= 3 * relatedView.bottom
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, multiplier: 3)
    }

    public func testView1CenterYEqualBottomDividedByConstant() {
        let constraints = view1.centerYAnchor .= relatedView.bottom / 2
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    public func testView1CenterYEqualBottomWithPriority() {
        let constraints = view1.centerYAnchor .= relatedView.bottom ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, priority: .low)
    }

    public func testView1CenterYEqualBottomWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor .= relatedView.bottom ~ .high - 1
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, priority: 749)
    }

    public func testView1CenterYLessThanOrEqualBottom() {
        let constraints = view1.centerYAnchor ≤ relatedView.bottom
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom)
    }

    public func testView1CenterYLessThanOrEqualBottomPlusConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.bottom + 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    public func testView1CenterYLessThanOrEqualBottomMinusConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.bottom - 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    public func testView1CenterYLessThanOrEqualBottomMultiplyingConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.bottom * 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testView1CenterYLessThanOrEqualBottomMultipliedByConstant() {
        let constraints = view1.centerYAnchor ≤ 3 * relatedView.bottom
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testView1CenterYLessThanOrEqualBottomDividedByConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.bottom / 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    public func testView1CenterYLessThanOrEqualBottomWithPriority() {
        let constraints = view1.centerYAnchor ≤ relatedView.bottom ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    public func testView1CenterYLessThanOrEqualBottomWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor ≤ relatedView.bottom ~ .high - 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    public func testView1CenterYGreaterThanOrEqualBottom() {
        let constraints = view1.centerYAnchor ≥ relatedView.bottom
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom)
    }

    public func testView1CenterYGreaterThanOrEqualBottomPlusConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.bottom + 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    public func testView1CenterYGreaterThanOrEqualBottomMinusConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.bottom - 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    public func testView1CenterYGreaterThanOrEqualBottomMultiplyingConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.bottom * 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testView1CenterYGreaterThanOrEqualBottomMultipliedByConstant() {
        let constraints = view1.centerYAnchor ≥ 3 * relatedView.bottom
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testView1CenterYGreaterThanOrEqualBottomDividedByConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.bottom / 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    public func testView1CenterYGreaterThanOrEqualBottomWithPriority() {
        let constraints = view1.centerYAnchor ≥ relatedView.bottom ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    public func testView1CenterYGreaterThanOrEqualBottomWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor ≥ relatedView.bottom ~ .high - 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

// MARK: view1Bottom <=> relatedViewTop
    public func testView1BottomEqualTop() {
        let constraints = view1.bottomAnchor .= relatedView.top
        constraints.assert(view1, .bottom, .equal, relatedView, .top)
    }

    public func testView1BottomEqualTopPlusConstant() {
        let constraints = view1.bottomAnchor .= relatedView.top + 10
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10)
    }

    public func testView1BottomEqualTopMinusConstant() {
        let constraints = view1.bottomAnchor .= relatedView.top - 10
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: -10)
    }

    public func testView1BottomEqualTopMultiplyingConstant() {
        let constraints = view1.bottomAnchor .= relatedView.top * 3
        constraints.assert(view1, .bottom, .equal, relatedView, .top, multiplier: 3)
    }

    public func testView1BottomEqualTopMultipliedByConstant() {
        let constraints = view1.bottomAnchor .= 3 * relatedView.top
        constraints.assert(view1, .bottom, .equal, relatedView, .top, multiplier: 3)
    }

    public func testView1BottomEqualTopDividedByConstant() {
        let constraints = view1.bottomAnchor .= relatedView.top / 2
        constraints.assert(view1, .bottom, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    public func testView1BottomEqualTopWithPriority() {
        let constraints = view1.bottomAnchor .= relatedView.top ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .top, priority: .low)
    }

    public func testView1BottomEqualTopWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor .= relatedView.top ~ .high - 1
        constraints.assert(view1, .bottom, .equal, relatedView, .top, priority: 749)
    }

    public func testView1BottomLessThanOrEqualTop() {
        let constraints = view1.bottomAnchor ≤ relatedView.top
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top)
    }

    public func testView1BottomLessThanOrEqualTopPlusConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.top + 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    public func testView1BottomLessThanOrEqualTopMinusConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.top - 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    public func testView1BottomLessThanOrEqualTopMultiplyingConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.top * 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testView1BottomLessThanOrEqualTopMultipliedByConstant() {
        let constraints = view1.bottomAnchor ≤ 3 * relatedView.top
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testView1BottomLessThanOrEqualTopDividedByConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.top / 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    public func testView1BottomLessThanOrEqualTopWithPriority() {
        let constraints = view1.bottomAnchor ≤ relatedView.top ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    public func testView1BottomLessThanOrEqualTopWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor ≤ relatedView.top ~ .high - 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    public func testView1BottomGreaterThanOrEqualTop() {
        let constraints = view1.bottomAnchor ≥ relatedView.top
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top)
    }

    public func testView1BottomGreaterThanOrEqualTopPlusConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.top + 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    public func testView1BottomGreaterThanOrEqualTopMinusConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.top - 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    public func testView1BottomGreaterThanOrEqualTopMultiplyingConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.top * 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testView1BottomGreaterThanOrEqualTopMultipliedByConstant() {
        let constraints = view1.bottomAnchor ≥ 3 * relatedView.top
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    public func testView1BottomGreaterThanOrEqualTopDividedByConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.top / 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    public func testView1BottomGreaterThanOrEqualTopWithPriority() {
        let constraints = view1.bottomAnchor ≥ relatedView.top ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    public func testView1BottomGreaterThanOrEqualTopWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor ≥ relatedView.top ~ .high - 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

// MARK: view1Bottom <=> relatedViewCenterY
    public func testView1BottomEqualCenterY() {
        let constraints = view1.bottomAnchor .= relatedView.centerY
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY)
    }

    public func testView1BottomEqualCenterYPlusConstant() {
        let constraints = view1.bottomAnchor .= relatedView.centerY + 10
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10)
    }

    public func testView1BottomEqualCenterYMinusConstant() {
        let constraints = view1.bottomAnchor .= relatedView.centerY - 10
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: -10)
    }

    public func testView1BottomEqualCenterYMultiplyingConstant() {
        let constraints = view1.bottomAnchor .= relatedView.centerY * 3
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, multiplier: 3)
    }

    public func testView1BottomEqualCenterYMultipliedByConstant() {
        let constraints = view1.bottomAnchor .= 3 * relatedView.centerY
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, multiplier: 3)
    }

    public func testView1BottomEqualCenterYDividedByConstant() {
        let constraints = view1.bottomAnchor .= relatedView.centerY / 2
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    public func testView1BottomEqualCenterYWithPriority() {
        let constraints = view1.bottomAnchor .= relatedView.centerY ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, priority: .low)
    }

    public func testView1BottomEqualCenterYWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor .= relatedView.centerY ~ .high - 1
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, priority: 749)
    }

    public func testView1BottomLessThanOrEqualCenterY() {
        let constraints = view1.bottomAnchor ≤ relatedView.centerY
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY)
    }

    public func testView1BottomLessThanOrEqualCenterYPlusConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.centerY + 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    public func testView1BottomLessThanOrEqualCenterYMinusConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.centerY - 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    public func testView1BottomLessThanOrEqualCenterYMultiplyingConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.centerY * 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testView1BottomLessThanOrEqualCenterYMultipliedByConstant() {
        let constraints = view1.bottomAnchor ≤ 3 * relatedView.centerY
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testView1BottomLessThanOrEqualCenterYDividedByConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.centerY / 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    public func testView1BottomLessThanOrEqualCenterYWithPriority() {
        let constraints = view1.bottomAnchor ≤ relatedView.centerY ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    public func testView1BottomLessThanOrEqualCenterYWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor ≤ relatedView.centerY ~ .high - 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    public func testView1BottomGreaterThanOrEqualCenterY() {
        let constraints = view1.bottomAnchor ≥ relatedView.centerY
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY)
    }

    public func testView1BottomGreaterThanOrEqualCenterYPlusConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.centerY + 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    public func testView1BottomGreaterThanOrEqualCenterYMinusConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.centerY - 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    public func testView1BottomGreaterThanOrEqualCenterYMultiplyingConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.centerY * 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testView1BottomGreaterThanOrEqualCenterYMultipliedByConstant() {
        let constraints = view1.bottomAnchor ≥ 3 * relatedView.centerY
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    public func testView1BottomGreaterThanOrEqualCenterYDividedByConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.centerY / 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    public func testView1BottomGreaterThanOrEqualCenterYWithPriority() {
        let constraints = view1.bottomAnchor ≥ relatedView.centerY ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    public func testView1BottomGreaterThanOrEqualCenterYWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor ≥ relatedView.centerY ~ .high - 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

// MARK: view1Bottom <=> relatedViewBottom
    public func testView1BottomEqualBottom() {
        let constraints = view1.bottomAnchor .= relatedView.bottom
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom)
    }

    public func testView1BottomEqualBottomPlusConstant() {
        let constraints = view1.bottomAnchor .= relatedView.bottom + 10
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    public func testView1BottomEqualBottomMinusConstant() {
        let constraints = view1.bottomAnchor .= relatedView.bottom - 10
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    public func testView1BottomEqualBottomMultiplyingConstant() {
        let constraints = view1.bottomAnchor .= relatedView.bottom * 3
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    public func testView1BottomEqualBottomMultipliedByConstant() {
        let constraints = view1.bottomAnchor .= 3 * relatedView.bottom
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    public func testView1BottomEqualBottomDividedByConstant() {
        let constraints = view1.bottomAnchor .= relatedView.bottom / 2
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    public func testView1BottomEqualBottomWithPriority() {
        let constraints = view1.bottomAnchor .= relatedView.bottom ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    public func testView1BottomEqualBottomWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor .= relatedView.bottom ~ .high - 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    public func testView1BottomLessThanOrEqualBottom() {
        let constraints = view1.bottomAnchor ≤ relatedView.bottom
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    public func testView1BottomLessThanOrEqualBottomPlusConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.bottom + 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    public func testView1BottomLessThanOrEqualBottomMinusConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.bottom - 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    public func testView1BottomLessThanOrEqualBottomMultiplyingConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.bottom * 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testView1BottomLessThanOrEqualBottomMultipliedByConstant() {
        let constraints = view1.bottomAnchor ≤ 3 * relatedView.bottom
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testView1BottomLessThanOrEqualBottomDividedByConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.bottom / 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    public func testView1BottomLessThanOrEqualBottomWithPriority() {
        let constraints = view1.bottomAnchor ≤ relatedView.bottom ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    public func testView1BottomLessThanOrEqualBottomWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor ≤ relatedView.bottom ~ .high - 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    public func testView1BottomGreaterThanOrEqualBottom() {
        let constraints = view1.bottomAnchor ≥ relatedView.bottom
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    public func testView1BottomGreaterThanOrEqualBottomPlusConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.bottom + 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    public func testView1BottomGreaterThanOrEqualBottomMinusConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.bottom - 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    public func testView1BottomGreaterThanOrEqualBottomMultiplyingConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.bottom * 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testView1BottomGreaterThanOrEqualBottomMultipliedByConstant() {
        let constraints = view1.bottomAnchor ≥ 3 * relatedView.bottom
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    public func testView1BottomGreaterThanOrEqualBottomDividedByConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.bottom / 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    public func testView1BottomGreaterThanOrEqualBottomWithPriority() {
        let constraints = view1.bottomAnchor ≥ relatedView.bottom ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    public func testView1BottomGreaterThanOrEqualBottomWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor ≥ relatedView.bottom ~ .high - 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }
// sourcery:end
}

