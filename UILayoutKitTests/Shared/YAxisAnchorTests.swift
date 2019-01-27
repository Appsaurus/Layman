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
    // MARK: LessThanOrEqual

    func testView1TopLessThanOrEqualToTop() {
        let constraints = view1.topAnchor ≤ relatedView.top
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testView1TopLessThanOrEqualToTopPlusConstant() {
        let constraints = view1.topAnchor ≤ relatedView.top + 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1TopLessThanOrEqualToTopMinusConstant() {
        let constraints = view1.topAnchor ≤ relatedView.top - 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TopLessThanOrEqualToTopMultiplyingConstant() {
        let constraints = view1.topAnchor ≤ relatedView.top * 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToTopMultipliedByConstant() {
        let constraints = view1.topAnchor ≤ 3 * relatedView.top
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToTopDividedByConstant() {
        let constraints = view1.topAnchor ≤ relatedView.top / 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1TopLessThanOrEqualToTopWithPriority() {
        let constraints = view1.topAnchor ≤ relatedView.top ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1TopLessThanOrEqualToTopWithPriorityLiteral() {
        let constraints = view1.topAnchor ≤ relatedView.top ~ 300
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1TopLessThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = view1.topAnchor ≤ relatedView.top ~ .high - 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1TopLessThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1.topAnchor ≤ (relatedView.top + 10) * 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1.topAnchor ≤ 3 * (relatedView.top + 10)
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1.topAnchor ≤ 3 * relatedView.top + 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }
/*
    func testView1TopLessThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1.topAnchor ≤ (relatedView.top + 10) / 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1TopEqualToTop() {
        let constraints = view1.topAnchor .= relatedView.top
        constraints.assert(view1, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testView1TopEqualToTopPlusConstant() {
        let constraints = view1.topAnchor .= relatedView.top + 10
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10)
    }

    func testView1TopEqualToTopMinusConstant() {
        let constraints = view1.topAnchor .= relatedView.top - 10
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TopEqualToTopMultiplyingConstant() {
        let constraints = view1.topAnchor .= relatedView.top * 3
        constraints.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1TopEqualToTopMultipliedByConstant() {
        let constraints = view1.topAnchor .= 3 * relatedView.top
        constraints.assert(view1, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1TopEqualToTopDividedByConstant() {
        let constraints = view1.topAnchor .= relatedView.top / 2
        constraints.assert(view1, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1TopEqualToTopWithPriority() {
        let constraints = view1.topAnchor .= relatedView.top ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .top, priority: .low)
    }

    func testView1TopEqualToTopWithPriorityLiteral() {
        let constraints = view1.topAnchor .= relatedView.top ~ 300
        constraints.assert(view1, .top, .equal, relatedView, .top, priority: 300)
    }

    func testView1TopEqualToTopWithPriorityArithmetic() {
        let constraints = view1.topAnchor .= relatedView.top ~ .high - 1
        constraints.assert(view1, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1TopEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1.topAnchor .= (relatedView.top + 10) * 3
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1.topAnchor .= 3 * (relatedView.top + 10)
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1.topAnchor .= 3 * relatedView.top + 10
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }
/*
    func testView1TopEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1.topAnchor .= (relatedView.top + 10) / 2
        constraints.assert(view1, .top, .equal, relatedView, .top, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1TopGreaterThanOrEqualToTop() {
        let constraints = view1.topAnchor ≥ relatedView.top
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1TopGreaterThanOrEqualToTopPlusConstant() {
        let constraints = view1.topAnchor ≥ relatedView.top + 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1TopGreaterThanOrEqualToTopMinusConstant() {
        let constraints = view1.topAnchor ≥ relatedView.top - 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TopGreaterThanOrEqualToTopMultiplyingConstant() {
        let constraints = view1.topAnchor ≥ relatedView.top * 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToTopMultipliedByConstant() {
        let constraints = view1.topAnchor ≥ 3 * relatedView.top
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToTopDividedByConstant() {
        let constraints = view1.topAnchor ≥ relatedView.top / 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1TopGreaterThanOrEqualToTopWithPriority() {
        let constraints = view1.topAnchor ≥ relatedView.top ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1TopGreaterThanOrEqualToTopWithPriorityLiteral() {
        let constraints = view1.topAnchor ≥ relatedView.top ~ 300
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1TopGreaterThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = view1.topAnchor ≥ relatedView.top ~ .high - 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1TopGreaterThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1.topAnchor ≥ (relatedView.top + 10) * 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1.topAnchor ≥ 3 * (relatedView.top + 10)
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1.topAnchor ≥ 3 * relatedView.top + 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }
/*
    func testView1TopGreaterThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1.topAnchor ≥ (relatedView.top + 10) / 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: view1Top <=> relatedViewCenterY
    // MARK: LessThanOrEqual

    func testView1TopLessThanOrEqualToCenterY() {
        let constraints = view1.topAnchor ≤ relatedView.centerY
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testView1TopLessThanOrEqualToCenterYPlusConstant() {
        let constraints = view1.topAnchor ≤ relatedView.centerY + 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1TopLessThanOrEqualToCenterYMinusConstant() {
        let constraints = view1.topAnchor ≤ relatedView.centerY - 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TopLessThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = view1.topAnchor ≤ relatedView.centerY * 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = view1.topAnchor ≤ 3 * relatedView.centerY
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToCenterYDividedByConstant() {
        let constraints = view1.topAnchor ≤ relatedView.centerY / 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1TopLessThanOrEqualToCenterYWithPriority() {
        let constraints = view1.topAnchor ≤ relatedView.centerY ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1TopLessThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = view1.topAnchor ≤ relatedView.centerY ~ 300
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1TopLessThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1.topAnchor ≤ relatedView.centerY ~ .high - 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1TopLessThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.topAnchor ≤ (relatedView.centerY + 10) * 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.topAnchor ≤ 3 * (relatedView.centerY + 10)
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.topAnchor ≤ 3 * relatedView.centerY + 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }
/*
    func testView1TopLessThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1.topAnchor ≤ (relatedView.centerY + 10) / 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1TopEqualToCenterY() {
        let constraints = view1.topAnchor .= relatedView.centerY
        constraints.assert(view1, .top, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testView1TopEqualToCenterYPlusConstant() {
        let constraints = view1.topAnchor .= relatedView.centerY + 10
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10)
    }

    func testView1TopEqualToCenterYMinusConstant() {
        let constraints = view1.topAnchor .= relatedView.centerY - 10
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TopEqualToCenterYMultiplyingConstant() {
        let constraints = view1.topAnchor .= relatedView.centerY * 3
        constraints.assert(view1, .top, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1TopEqualToCenterYMultipliedByConstant() {
        let constraints = view1.topAnchor .= 3 * relatedView.centerY
        constraints.assert(view1, .top, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1TopEqualToCenterYDividedByConstant() {
        let constraints = view1.topAnchor .= relatedView.centerY / 2
        constraints.assert(view1, .top, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1TopEqualToCenterYWithPriority() {
        let constraints = view1.topAnchor .= relatedView.centerY ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .centerY, priority: .low)
    }

    func testView1TopEqualToCenterYWithPriorityLiteral() {
        let constraints = view1.topAnchor .= relatedView.centerY ~ 300
        constraints.assert(view1, .top, .equal, relatedView, .centerY, priority: 300)
    }

    func testView1TopEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1.topAnchor .= relatedView.centerY ~ .high - 1
        constraints.assert(view1, .top, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1TopEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.topAnchor .= (relatedView.centerY + 10) * 3
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.topAnchor .= 3 * (relatedView.centerY + 10)
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.topAnchor .= 3 * relatedView.centerY + 10
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }
/*
    func testView1TopEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1.topAnchor .= (relatedView.centerY + 10) / 2
        constraints.assert(view1, .top, .equal, relatedView, .centerY, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1TopGreaterThanOrEqualToCenterY() {
        let constraints = view1.topAnchor ≥ relatedView.centerY
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1TopGreaterThanOrEqualToCenterYPlusConstant() {
        let constraints = view1.topAnchor ≥ relatedView.centerY + 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1TopGreaterThanOrEqualToCenterYMinusConstant() {
        let constraints = view1.topAnchor ≥ relatedView.centerY - 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TopGreaterThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = view1.topAnchor ≥ relatedView.centerY * 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = view1.topAnchor ≥ 3 * relatedView.centerY
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToCenterYDividedByConstant() {
        let constraints = view1.topAnchor ≥ relatedView.centerY / 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1TopGreaterThanOrEqualToCenterYWithPriority() {
        let constraints = view1.topAnchor ≥ relatedView.centerY ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1TopGreaterThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = view1.topAnchor ≥ relatedView.centerY ~ 300
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1TopGreaterThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1.topAnchor ≥ relatedView.centerY ~ .high - 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1TopGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.topAnchor ≥ (relatedView.centerY + 10) * 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.topAnchor ≥ 3 * (relatedView.centerY + 10)
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.topAnchor ≥ 3 * relatedView.centerY + 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }
/*
    func testView1TopGreaterThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1.topAnchor ≥ (relatedView.centerY + 10) / 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: view1Top <=> relatedViewBottom
    // MARK: LessThanOrEqual

    func testView1TopLessThanOrEqualToBottom() {
        let constraints = view1.topAnchor ≤ relatedView.bottom
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testView1TopLessThanOrEqualToBottomPlusConstant() {
        let constraints = view1.topAnchor ≤ relatedView.bottom + 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1TopLessThanOrEqualToBottomMinusConstant() {
        let constraints = view1.topAnchor ≤ relatedView.bottom - 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1TopLessThanOrEqualToBottomMultiplyingConstant() {
        let constraints = view1.topAnchor ≤ relatedView.bottom * 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToBottomMultipliedByConstant() {
        let constraints = view1.topAnchor ≤ 3 * relatedView.bottom
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToBottomDividedByConstant() {
        let constraints = view1.topAnchor ≤ relatedView.bottom / 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1TopLessThanOrEqualToBottomWithPriority() {
        let constraints = view1.topAnchor ≤ relatedView.bottom ~ .low
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1TopLessThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = view1.topAnchor ≤ relatedView.bottom ~ 300
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1TopLessThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = view1.topAnchor ≤ relatedView.bottom ~ .high - 1
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1TopLessThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.topAnchor ≤ (relatedView.bottom + 10) * 3
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.topAnchor ≤ 3 * (relatedView.bottom + 10)
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopLessThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.topAnchor ≤ 3 * relatedView.bottom + 10
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }
/*
    func testView1TopLessThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1.topAnchor ≤ (relatedView.bottom + 10) / 2
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1TopEqualToBottom() {
        let constraints = view1.topAnchor .= relatedView.bottom
        constraints.assert(view1, .top, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testView1TopEqualToBottomPlusConstant() {
        let constraints = view1.topAnchor .= relatedView.bottom + 10
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10)
    }

    func testView1TopEqualToBottomMinusConstant() {
        let constraints = view1.topAnchor .= relatedView.bottom - 10
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1TopEqualToBottomMultiplyingConstant() {
        let constraints = view1.topAnchor .= relatedView.bottom * 3
        constraints.assert(view1, .top, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1TopEqualToBottomMultipliedByConstant() {
        let constraints = view1.topAnchor .= 3 * relatedView.bottom
        constraints.assert(view1, .top, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1TopEqualToBottomDividedByConstant() {
        let constraints = view1.topAnchor .= relatedView.bottom / 2
        constraints.assert(view1, .top, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1TopEqualToBottomWithPriority() {
        let constraints = view1.topAnchor .= relatedView.bottom ~ .low
        constraints.assert(view1, .top, .equal, relatedView, .bottom, priority: .low)
    }

    func testView1TopEqualToBottomWithPriorityLiteral() {
        let constraints = view1.topAnchor .= relatedView.bottom ~ 300
        constraints.assert(view1, .top, .equal, relatedView, .bottom, priority: 300)
    }

    func testView1TopEqualToBottomWithPriorityArithmetic() {
        let constraints = view1.topAnchor .= relatedView.bottom ~ .high - 1
        constraints.assert(view1, .top, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1TopEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.topAnchor .= (relatedView.bottom + 10) * 3
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.topAnchor .= 3 * (relatedView.bottom + 10)
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.topAnchor .= 3 * relatedView.bottom + 10
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }
/*
    func testView1TopEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1.topAnchor .= (relatedView.bottom + 10) / 2
        constraints.assert(view1, .top, .equal, relatedView, .bottom, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1TopGreaterThanOrEqualToBottom() {
        let constraints = view1.topAnchor ≥ relatedView.bottom
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1TopGreaterThanOrEqualToBottomPlusConstant() {
        let constraints = view1.topAnchor ≥ relatedView.bottom + 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1TopGreaterThanOrEqualToBottomMinusConstant() {
        let constraints = view1.topAnchor ≥ relatedView.bottom - 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1TopGreaterThanOrEqualToBottomMultiplyingConstant() {
        let constraints = view1.topAnchor ≥ relatedView.bottom * 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToBottomMultipliedByConstant() {
        let constraints = view1.topAnchor ≥ 3 * relatedView.bottom
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToBottomDividedByConstant() {
        let constraints = view1.topAnchor ≥ relatedView.bottom / 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1TopGreaterThanOrEqualToBottomWithPriority() {
        let constraints = view1.topAnchor ≥ relatedView.bottom ~ .low
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1TopGreaterThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = view1.topAnchor ≥ relatedView.bottom ~ 300
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1TopGreaterThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = view1.topAnchor ≥ relatedView.bottom ~ .high - 1
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1TopGreaterThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.topAnchor ≥ (relatedView.bottom + 10) * 3
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.topAnchor ≥ 3 * (relatedView.bottom + 10)
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1TopGreaterThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.topAnchor ≥ 3 * relatedView.bottom + 10
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }
/*
    func testView1TopGreaterThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1.topAnchor ≥ (relatedView.bottom + 10) / 2
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: view1CenterY <=> relatedViewTop
    // MARK: LessThanOrEqual

    func testView1CenterYLessThanOrEqualToTop() {
        let constraints = view1.centerYAnchor ≤ relatedView.top
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testView1CenterYLessThanOrEqualToTopPlusConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.top + 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1CenterYLessThanOrEqualToTopMinusConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.top - 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterYLessThanOrEqualToTopMultiplyingConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.top * 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToTopMultipliedByConstant() {
        let constraints = view1.centerYAnchor ≤ 3 * relatedView.top
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToTopDividedByConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.top / 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1CenterYLessThanOrEqualToTopWithPriority() {
        let constraints = view1.centerYAnchor ≤ relatedView.top ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1CenterYLessThanOrEqualToTopWithPriorityLiteral() {
        let constraints = view1.centerYAnchor ≤ relatedView.top ~ 300
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1CenterYLessThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor ≤ relatedView.top ~ .high - 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1CenterYLessThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1.centerYAnchor ≤ (relatedView.top + 10) * 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1.centerYAnchor ≤ 3 * (relatedView.top + 10)
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1.centerYAnchor ≤ 3 * relatedView.top + 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }
/*
    func testView1CenterYLessThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1.centerYAnchor ≤ (relatedView.top + 10) / 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1CenterYEqualToTop() {
        let constraints = view1.centerYAnchor .= relatedView.top
        constraints.assert(view1, .centerY, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testView1CenterYEqualToTopPlusConstant() {
        let constraints = view1.centerYAnchor .= relatedView.top + 10
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10)
    }

    func testView1CenterYEqualToTopMinusConstant() {
        let constraints = view1.centerYAnchor .= relatedView.top - 10
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterYEqualToTopMultiplyingConstant() {
        let constraints = view1.centerYAnchor .= relatedView.top * 3
        constraints.assert(view1, .centerY, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1CenterYEqualToTopMultipliedByConstant() {
        let constraints = view1.centerYAnchor .= 3 * relatedView.top
        constraints.assert(view1, .centerY, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1CenterYEqualToTopDividedByConstant() {
        let constraints = view1.centerYAnchor .= relatedView.top / 2
        constraints.assert(view1, .centerY, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1CenterYEqualToTopWithPriority() {
        let constraints = view1.centerYAnchor .= relatedView.top ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .top, priority: .low)
    }

    func testView1CenterYEqualToTopWithPriorityLiteral() {
        let constraints = view1.centerYAnchor .= relatedView.top ~ 300
        constraints.assert(view1, .centerY, .equal, relatedView, .top, priority: 300)
    }

    func testView1CenterYEqualToTopWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor .= relatedView.top ~ .high - 1
        constraints.assert(view1, .centerY, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1CenterYEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1.centerYAnchor .= (relatedView.top + 10) * 3
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1.centerYAnchor .= 3 * (relatedView.top + 10)
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1.centerYAnchor .= 3 * relatedView.top + 10
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }
/*
    func testView1CenterYEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1.centerYAnchor .= (relatedView.top + 10) / 2
        constraints.assert(view1, .centerY, .equal, relatedView, .top, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1CenterYGreaterThanOrEqualToTop() {
        let constraints = view1.centerYAnchor ≥ relatedView.top
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1CenterYGreaterThanOrEqualToTopPlusConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.top + 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1CenterYGreaterThanOrEqualToTopMinusConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.top - 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterYGreaterThanOrEqualToTopMultiplyingConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.top * 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToTopMultipliedByConstant() {
        let constraints = view1.centerYAnchor ≥ 3 * relatedView.top
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToTopDividedByConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.top / 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1CenterYGreaterThanOrEqualToTopWithPriority() {
        let constraints = view1.centerYAnchor ≥ relatedView.top ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualToTopWithPriorityLiteral() {
        let constraints = view1.centerYAnchor ≥ relatedView.top ~ 300
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1CenterYGreaterThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor ≥ relatedView.top ~ .high - 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1CenterYGreaterThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1.centerYAnchor ≥ (relatedView.top + 10) * 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1.centerYAnchor ≥ 3 * (relatedView.top + 10)
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1.centerYAnchor ≥ 3 * relatedView.top + 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }
/*
    func testView1CenterYGreaterThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1.centerYAnchor ≥ (relatedView.top + 10) / 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: view1CenterY <=> relatedViewCenterY
    // MARK: LessThanOrEqual

    func testView1CenterYLessThanOrEqualToCenterY() {
        let constraints = view1.centerYAnchor ≤ relatedView.centerY
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testView1CenterYLessThanOrEqualToCenterYPlusConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.centerY + 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1CenterYLessThanOrEqualToCenterYMinusConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.centerY - 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterYLessThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.centerY * 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = view1.centerYAnchor ≤ 3 * relatedView.centerY
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToCenterYDividedByConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.centerY / 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1CenterYLessThanOrEqualToCenterYWithPriority() {
        let constraints = view1.centerYAnchor ≤ relatedView.centerY ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1CenterYLessThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = view1.centerYAnchor ≤ relatedView.centerY ~ 300
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1CenterYLessThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor ≤ relatedView.centerY ~ .high - 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1CenterYLessThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.centerYAnchor ≤ (relatedView.centerY + 10) * 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.centerYAnchor ≤ 3 * (relatedView.centerY + 10)
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.centerYAnchor ≤ 3 * relatedView.centerY + 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }
/*
    func testView1CenterYLessThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1.centerYAnchor ≤ (relatedView.centerY + 10) / 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1CenterYEqualToCenterY() {
        let constraints = view1.centerYAnchor .= relatedView.centerY
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testView1CenterYEqualToCenterYPlusConstant() {
        let constraints = view1.centerYAnchor .= relatedView.centerY + 10
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10)
    }

    func testView1CenterYEqualToCenterYMinusConstant() {
        let constraints = view1.centerYAnchor .= relatedView.centerY - 10
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterYEqualToCenterYMultiplyingConstant() {
        let constraints = view1.centerYAnchor .= relatedView.centerY * 3
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1CenterYEqualToCenterYMultipliedByConstant() {
        let constraints = view1.centerYAnchor .= 3 * relatedView.centerY
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1CenterYEqualToCenterYDividedByConstant() {
        let constraints = view1.centerYAnchor .= relatedView.centerY / 2
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1CenterYEqualToCenterYWithPriority() {
        let constraints = view1.centerYAnchor .= relatedView.centerY ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, priority: .low)
    }

    func testView1CenterYEqualToCenterYWithPriorityLiteral() {
        let constraints = view1.centerYAnchor .= relatedView.centerY ~ 300
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 300)
    }

    func testView1CenterYEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor .= relatedView.centerY ~ .high - 1
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1CenterYEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.centerYAnchor .= (relatedView.centerY + 10) * 3
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.centerYAnchor .= 3 * (relatedView.centerY + 10)
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.centerYAnchor .= 3 * relatedView.centerY + 10
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }
/*
    func testView1CenterYEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1.centerYAnchor .= (relatedView.centerY + 10) / 2
        constraints.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1CenterYGreaterThanOrEqualToCenterY() {
        let constraints = view1.centerYAnchor ≥ relatedView.centerY
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1CenterYGreaterThanOrEqualToCenterYPlusConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.centerY + 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYMinusConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.centerY - 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterYGreaterThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.centerY * 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = view1.centerYAnchor ≥ 3 * relatedView.centerY
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYDividedByConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.centerY / 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1CenterYGreaterThanOrEqualToCenterYWithPriority() {
        let constraints = view1.centerYAnchor ≥ relatedView.centerY ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = view1.centerYAnchor ≥ relatedView.centerY ~ 300
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor ≥ relatedView.centerY ~ .high - 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1CenterYGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.centerYAnchor ≥ (relatedView.centerY + 10) * 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.centerYAnchor ≥ 3 * (relatedView.centerY + 10)
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.centerYAnchor ≥ 3 * relatedView.centerY + 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }
/*
    func testView1CenterYGreaterThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1.centerYAnchor ≥ (relatedView.centerY + 10) / 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: view1CenterY <=> relatedViewBottom
    // MARK: LessThanOrEqual

    func testView1CenterYLessThanOrEqualToBottom() {
        let constraints = view1.centerYAnchor ≤ relatedView.bottom
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testView1CenterYLessThanOrEqualToBottomPlusConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.bottom + 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1CenterYLessThanOrEqualToBottomMinusConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.bottom - 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1CenterYLessThanOrEqualToBottomMultiplyingConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.bottom * 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToBottomMultipliedByConstant() {
        let constraints = view1.centerYAnchor ≤ 3 * relatedView.bottom
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToBottomDividedByConstant() {
        let constraints = view1.centerYAnchor ≤ relatedView.bottom / 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1CenterYLessThanOrEqualToBottomWithPriority() {
        let constraints = view1.centerYAnchor ≤ relatedView.bottom ~ .low
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1CenterYLessThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = view1.centerYAnchor ≤ relatedView.bottom ~ 300
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1CenterYLessThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor ≤ relatedView.bottom ~ .high - 1
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1CenterYLessThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.centerYAnchor ≤ (relatedView.bottom + 10) * 3
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.centerYAnchor ≤ 3 * (relatedView.bottom + 10)
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYLessThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.centerYAnchor ≤ 3 * relatedView.bottom + 10
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }
/*
    func testView1CenterYLessThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1.centerYAnchor ≤ (relatedView.bottom + 10) / 2
        constraints.assert(view1, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1CenterYEqualToBottom() {
        let constraints = view1.centerYAnchor .= relatedView.bottom
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testView1CenterYEqualToBottomPlusConstant() {
        let constraints = view1.centerYAnchor .= relatedView.bottom + 10
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10)
    }

    func testView1CenterYEqualToBottomMinusConstant() {
        let constraints = view1.centerYAnchor .= relatedView.bottom - 10
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1CenterYEqualToBottomMultiplyingConstant() {
        let constraints = view1.centerYAnchor .= relatedView.bottom * 3
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1CenterYEqualToBottomMultipliedByConstant() {
        let constraints = view1.centerYAnchor .= 3 * relatedView.bottom
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1CenterYEqualToBottomDividedByConstant() {
        let constraints = view1.centerYAnchor .= relatedView.bottom / 2
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1CenterYEqualToBottomWithPriority() {
        let constraints = view1.centerYAnchor .= relatedView.bottom ~ .low
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, priority: .low)
    }

    func testView1CenterYEqualToBottomWithPriorityLiteral() {
        let constraints = view1.centerYAnchor .= relatedView.bottom ~ 300
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, priority: 300)
    }

    func testView1CenterYEqualToBottomWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor .= relatedView.bottom ~ .high - 1
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1CenterYEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.centerYAnchor .= (relatedView.bottom + 10) * 3
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.centerYAnchor .= 3 * (relatedView.bottom + 10)
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.centerYAnchor .= 3 * relatedView.bottom + 10
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }
/*
    func testView1CenterYEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1.centerYAnchor .= (relatedView.bottom + 10) / 2
        constraints.assert(view1, .centerY, .equal, relatedView, .bottom, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1CenterYGreaterThanOrEqualToBottom() {
        let constraints = view1.centerYAnchor ≥ relatedView.bottom
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1CenterYGreaterThanOrEqualToBottomPlusConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.bottom + 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1CenterYGreaterThanOrEqualToBottomMinusConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.bottom - 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1CenterYGreaterThanOrEqualToBottomMultiplyingConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.bottom * 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToBottomMultipliedByConstant() {
        let constraints = view1.centerYAnchor ≥ 3 * relatedView.bottom
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToBottomDividedByConstant() {
        let constraints = view1.centerYAnchor ≥ relatedView.bottom / 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1CenterYGreaterThanOrEqualToBottomWithPriority() {
        let constraints = view1.centerYAnchor ≥ relatedView.bottom ~ .low
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1CenterYGreaterThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = view1.centerYAnchor ≥ relatedView.bottom ~ 300
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1CenterYGreaterThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = view1.centerYAnchor ≥ relatedView.bottom ~ .high - 1
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1CenterYGreaterThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.centerYAnchor ≥ (relatedView.bottom + 10) * 3
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.centerYAnchor ≥ 3 * (relatedView.bottom + 10)
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1CenterYGreaterThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.centerYAnchor ≥ 3 * relatedView.bottom + 10
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }
/*
    func testView1CenterYGreaterThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1.centerYAnchor ≥ (relatedView.bottom + 10) / 2
        constraints.assert(view1, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: view1Bottom <=> relatedViewTop
    // MARK: LessThanOrEqual

    func testView1BottomLessThanOrEqualToTop() {
        let constraints = view1.bottomAnchor ≤ relatedView.top
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testView1BottomLessThanOrEqualToTopPlusConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.top + 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1BottomLessThanOrEqualToTopMinusConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.top - 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1BottomLessThanOrEqualToTopMultiplyingConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.top * 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToTopMultipliedByConstant() {
        let constraints = view1.bottomAnchor ≤ 3 * relatedView.top
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToTopDividedByConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.top / 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1BottomLessThanOrEqualToTopWithPriority() {
        let constraints = view1.bottomAnchor ≤ relatedView.top ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1BottomLessThanOrEqualToTopWithPriorityLiteral() {
        let constraints = view1.bottomAnchor ≤ relatedView.top ~ 300
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1BottomLessThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor ≤ relatedView.top ~ .high - 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1BottomLessThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1.bottomAnchor ≤ (relatedView.top + 10) * 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1.bottomAnchor ≤ 3 * (relatedView.top + 10)
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1.bottomAnchor ≤ 3 * relatedView.top + 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }
/*
    func testView1BottomLessThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1.bottomAnchor ≤ (relatedView.top + 10) / 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1BottomEqualToTop() {
        let constraints = view1.bottomAnchor .= relatedView.top
        constraints.assert(view1, .bottom, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testView1BottomEqualToTopPlusConstant() {
        let constraints = view1.bottomAnchor .= relatedView.top + 10
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10)
    }

    func testView1BottomEqualToTopMinusConstant() {
        let constraints = view1.bottomAnchor .= relatedView.top - 10
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1BottomEqualToTopMultiplyingConstant() {
        let constraints = view1.bottomAnchor .= relatedView.top * 3
        constraints.assert(view1, .bottom, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1BottomEqualToTopMultipliedByConstant() {
        let constraints = view1.bottomAnchor .= 3 * relatedView.top
        constraints.assert(view1, .bottom, .equal, relatedView, .top, multiplier: 3)
    }

    func testView1BottomEqualToTopDividedByConstant() {
        let constraints = view1.bottomAnchor .= relatedView.top / 2
        constraints.assert(view1, .bottom, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1BottomEqualToTopWithPriority() {
        let constraints = view1.bottomAnchor .= relatedView.top ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .top, priority: .low)
    }

    func testView1BottomEqualToTopWithPriorityLiteral() {
        let constraints = view1.bottomAnchor .= relatedView.top ~ 300
        constraints.assert(view1, .bottom, .equal, relatedView, .top, priority: 300)
    }

    func testView1BottomEqualToTopWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor .= relatedView.top ~ .high - 1
        constraints.assert(view1, .bottom, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1BottomEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1.bottomAnchor .= (relatedView.top + 10) * 3
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1.bottomAnchor .= 3 * (relatedView.top + 10)
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1.bottomAnchor .= 3 * relatedView.top + 10
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }
/*
    func testView1BottomEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1.bottomAnchor .= (relatedView.top + 10) / 2
        constraints.assert(view1, .bottom, .equal, relatedView, .top, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1BottomGreaterThanOrEqualToTop() {
        let constraints = view1.bottomAnchor ≥ relatedView.top
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1BottomGreaterThanOrEqualToTopPlusConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.top + 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testView1BottomGreaterThanOrEqualToTopMinusConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.top - 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1BottomGreaterThanOrEqualToTopMultiplyingConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.top * 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToTopMultipliedByConstant() {
        let constraints = view1.bottomAnchor ≥ 3 * relatedView.top
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToTopDividedByConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.top / 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1BottomGreaterThanOrEqualToTopWithPriority() {
        let constraints = view1.bottomAnchor ≥ relatedView.top ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualToTopWithPriorityLiteral() {
        let constraints = view1.bottomAnchor ≥ relatedView.top ~ 300
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testView1BottomGreaterThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor ≥ relatedView.top ~ .high - 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1BottomGreaterThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = view1.bottomAnchor ≥ (relatedView.top + 10) * 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = view1.bottomAnchor ≥ 3 * (relatedView.top + 10)
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = view1.bottomAnchor ≥ 3 * relatedView.top + 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }
/*
    func testView1BottomGreaterThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = view1.bottomAnchor ≥ (relatedView.top + 10) / 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: view1Bottom <=> relatedViewCenterY
    // MARK: LessThanOrEqual

    func testView1BottomLessThanOrEqualToCenterY() {
        let constraints = view1.bottomAnchor ≤ relatedView.centerY
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testView1BottomLessThanOrEqualToCenterYPlusConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.centerY + 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1BottomLessThanOrEqualToCenterYMinusConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.centerY - 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1BottomLessThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.centerY * 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = view1.bottomAnchor ≤ 3 * relatedView.centerY
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToCenterYDividedByConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.centerY / 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1BottomLessThanOrEqualToCenterYWithPriority() {
        let constraints = view1.bottomAnchor ≤ relatedView.centerY ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1BottomLessThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = view1.bottomAnchor ≤ relatedView.centerY ~ 300
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1BottomLessThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor ≤ relatedView.centerY ~ .high - 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1BottomLessThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.bottomAnchor ≤ (relatedView.centerY + 10) * 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.bottomAnchor ≤ 3 * (relatedView.centerY + 10)
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.bottomAnchor ≤ 3 * relatedView.centerY + 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }
/*
    func testView1BottomLessThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1.bottomAnchor ≤ (relatedView.centerY + 10) / 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1BottomEqualToCenterY() {
        let constraints = view1.bottomAnchor .= relatedView.centerY
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testView1BottomEqualToCenterYPlusConstant() {
        let constraints = view1.bottomAnchor .= relatedView.centerY + 10
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10)
    }

    func testView1BottomEqualToCenterYMinusConstant() {
        let constraints = view1.bottomAnchor .= relatedView.centerY - 10
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1BottomEqualToCenterYMultiplyingConstant() {
        let constraints = view1.bottomAnchor .= relatedView.centerY * 3
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1BottomEqualToCenterYMultipliedByConstant() {
        let constraints = view1.bottomAnchor .= 3 * relatedView.centerY
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testView1BottomEqualToCenterYDividedByConstant() {
        let constraints = view1.bottomAnchor .= relatedView.centerY / 2
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1BottomEqualToCenterYWithPriority() {
        let constraints = view1.bottomAnchor .= relatedView.centerY ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, priority: .low)
    }

    func testView1BottomEqualToCenterYWithPriorityLiteral() {
        let constraints = view1.bottomAnchor .= relatedView.centerY ~ 300
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, priority: 300)
    }

    func testView1BottomEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor .= relatedView.centerY ~ .high - 1
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1BottomEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.bottomAnchor .= (relatedView.centerY + 10) * 3
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.bottomAnchor .= 3 * (relatedView.centerY + 10)
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.bottomAnchor .= 3 * relatedView.centerY + 10
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }
/*
    func testView1BottomEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1.bottomAnchor .= (relatedView.centerY + 10) / 2
        constraints.assert(view1, .bottom, .equal, relatedView, .centerY, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1BottomGreaterThanOrEqualToCenterY() {
        let constraints = view1.bottomAnchor ≥ relatedView.centerY
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1BottomGreaterThanOrEqualToCenterYPlusConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.centerY + 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testView1BottomGreaterThanOrEqualToCenterYMinusConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.centerY - 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1BottomGreaterThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.centerY * 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = view1.bottomAnchor ≥ 3 * relatedView.centerY
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToCenterYDividedByConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.centerY / 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1BottomGreaterThanOrEqualToCenterYWithPriority() {
        let constraints = view1.bottomAnchor ≥ relatedView.centerY ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = view1.bottomAnchor ≥ relatedView.centerY ~ 300
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testView1BottomGreaterThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor ≥ relatedView.centerY ~ .high - 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1BottomGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = view1.bottomAnchor ≥ (relatedView.centerY + 10) * 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = view1.bottomAnchor ≥ 3 * (relatedView.centerY + 10)
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = view1.bottomAnchor ≥ 3 * relatedView.centerY + 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }
/*
    func testView1BottomGreaterThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = view1.bottomAnchor ≥ (relatedView.centerY + 10) / 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: view1Bottom <=> relatedViewBottom
    // MARK: LessThanOrEqual

    func testView1BottomLessThanOrEqualToBottom() {
        let constraints = view1.bottomAnchor ≤ relatedView.bottom
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testView1BottomLessThanOrEqualToBottomPlusConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.bottom + 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1BottomLessThanOrEqualToBottomMinusConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.bottom - 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testView1BottomLessThanOrEqualToBottomMultiplyingConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.bottom * 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToBottomMultipliedByConstant() {
        let constraints = view1.bottomAnchor ≤ 3 * relatedView.bottom
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToBottomDividedByConstant() {
        let constraints = view1.bottomAnchor ≤ relatedView.bottom / 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testView1BottomLessThanOrEqualToBottomWithPriority() {
        let constraints = view1.bottomAnchor ≤ relatedView.bottom ~ .low
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1BottomLessThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = view1.bottomAnchor ≤ relatedView.bottom ~ 300
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1BottomLessThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor ≤ relatedView.bottom ~ .high - 1
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testView1BottomLessThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.bottomAnchor ≤ (relatedView.bottom + 10) * 3
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.bottomAnchor ≤ 3 * (relatedView.bottom + 10)
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomLessThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.bottomAnchor ≤ 3 * relatedView.bottom + 10
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }
/*
    func testView1BottomLessThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1.bottomAnchor ≤ (relatedView.bottom + 10) / 2
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testView1BottomEqualToBottom() {
        let constraints = view1.bottomAnchor .= relatedView.bottom
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testView1BottomEqualToBottomPlusConstant() {
        let constraints = view1.bottomAnchor .= relatedView.bottom + 10
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testView1BottomEqualToBottomMinusConstant() {
        let constraints = view1.bottomAnchor .= relatedView.bottom - 10
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testView1BottomEqualToBottomMultiplyingConstant() {
        let constraints = view1.bottomAnchor .= relatedView.bottom * 3
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1BottomEqualToBottomMultipliedByConstant() {
        let constraints = view1.bottomAnchor .= 3 * relatedView.bottom
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testView1BottomEqualToBottomDividedByConstant() {
        let constraints = view1.bottomAnchor .= relatedView.bottom / 2
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testView1BottomEqualToBottomWithPriority() {
        let constraints = view1.bottomAnchor .= relatedView.bottom ~ .low
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testView1BottomEqualToBottomWithPriorityLiteral() {
        let constraints = view1.bottomAnchor .= relatedView.bottom ~ 300
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testView1BottomEqualToBottomWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor .= relatedView.bottom ~ .high - 1
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testView1BottomEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.bottomAnchor .= (relatedView.bottom + 10) * 3
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.bottomAnchor .= 3 * (relatedView.bottom + 10)
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.bottomAnchor .= 3 * relatedView.bottom + 10
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }
/*
    func testView1BottomEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1.bottomAnchor .= (relatedView.bottom + 10) / 2
        constraints.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testView1BottomGreaterThanOrEqualToBottom() {
        let constraints = view1.bottomAnchor ≥ relatedView.bottom
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testView1BottomGreaterThanOrEqualToBottomPlusConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.bottom + 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testView1BottomGreaterThanOrEqualToBottomMinusConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.bottom - 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testView1BottomGreaterThanOrEqualToBottomMultiplyingConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.bottom * 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToBottomMultipliedByConstant() {
        let constraints = view1.bottomAnchor ≥ 3 * relatedView.bottom
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToBottomDividedByConstant() {
        let constraints = view1.bottomAnchor ≥ relatedView.bottom / 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testView1BottomGreaterThanOrEqualToBottomWithPriority() {
        let constraints = view1.bottomAnchor ≥ relatedView.bottom ~ .low
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testView1BottomGreaterThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = view1.bottomAnchor ≥ relatedView.bottom ~ 300
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testView1BottomGreaterThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = view1.bottomAnchor ≥ relatedView.bottom ~ .high - 1
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testView1BottomGreaterThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = view1.bottomAnchor ≥ (relatedView.bottom + 10) * 3
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = view1.bottomAnchor ≥ 3 * (relatedView.bottom + 10)
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testView1BottomGreaterThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = view1.bottomAnchor ≥ 3 * relatedView.bottom + 10
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }
/*
    func testView1BottomGreaterThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = view1.bottomAnchor ≥ (relatedView.bottom + 10) / 2
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 1 / 2)
    }
*/
// sourcery:end
}
