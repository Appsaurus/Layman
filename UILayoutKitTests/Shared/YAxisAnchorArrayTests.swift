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
    // MARK: LessThanOrEqual

    func testViewArrayTopLessThanOrEqualToTop() {
        let constraints = viewArray.topAnchor ≤ relatedView.top
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTopLessThanOrEqualToTopPlusConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.top + 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayTopLessThanOrEqualToTopMinusConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.top - 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTopLessThanOrEqualToTopMultiplyingConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.top * 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToTopMultipliedByConstant() {
        let constraints = viewArray.topAnchor ≤ 3 * relatedView.top
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToTopDividedByConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.top / 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testViewArrayTopLessThanOrEqualToTopWithPriority() {
        let constraints = viewArray.topAnchor ≤ relatedView.top ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualToTopWithPriorityLiteral() {
        let constraints = viewArray.topAnchor ≤ relatedView.top ~ 300
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayTopLessThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor ≤ relatedView.top ~ .high - 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testViewArrayTopLessThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.topAnchor ≤ (relatedView.top + 10) * 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.topAnchor ≤ 3 * (relatedView.top + 10)
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.topAnchor ≤ 3 * relatedView.top + 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayTopLessThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray.topAnchor ≤ (relatedView.top + 10) / 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testViewArrayTopEqualToTop() {
        let constraints = viewArray.topAnchor .= relatedView.top
        constraints.assert(viewArray, .top, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testViewArrayTopEqualToTopPlusConstant() {
        let constraints = viewArray.topAnchor .= relatedView.top + 10
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10)
    }

    func testViewArrayTopEqualToTopMinusConstant() {
        let constraints = viewArray.topAnchor .= relatedView.top - 10
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTopEqualToTopMultiplyingConstant() {
        let constraints = viewArray.topAnchor .= relatedView.top * 3
        constraints.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayTopEqualToTopMultipliedByConstant() {
        let constraints = viewArray.topAnchor .= 3 * relatedView.top
        constraints.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayTopEqualToTopDividedByConstant() {
        let constraints = viewArray.topAnchor .= relatedView.top / 2
        constraints.assert(viewArray, .top, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testViewArrayTopEqualToTopWithPriority() {
        let constraints = viewArray.topAnchor .= relatedView.top ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .top, priority: .low)
    }

    func testViewArrayTopEqualToTopWithPriorityLiteral() {
        let constraints = viewArray.topAnchor .= relatedView.top ~ 300
        constraints.assert(viewArray, .top, .equal, relatedView, .top, priority: 300)
    }

    func testViewArrayTopEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor .= relatedView.top ~ .high - 1
        constraints.assert(viewArray, .top, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testViewArrayTopEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.topAnchor .= (relatedView.top + 10) * 3
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.topAnchor .= 3 * (relatedView.top + 10)
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.topAnchor .= 3 * relatedView.top + 10
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayTopEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray.topAnchor .= (relatedView.top + 10) / 2
        constraints.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testViewArrayTopGreaterThanOrEqualToTop() {
        let constraints = viewArray.topAnchor ≥ relatedView.top
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTopGreaterThanOrEqualToTopPlusConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.top + 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayTopGreaterThanOrEqualToTopMinusConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.top - 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTopGreaterThanOrEqualToTopMultiplyingConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.top * 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToTopMultipliedByConstant() {
        let constraints = viewArray.topAnchor ≥ 3 * relatedView.top
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToTopDividedByConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.top / 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testViewArrayTopGreaterThanOrEqualToTopWithPriority() {
        let constraints = viewArray.topAnchor ≥ relatedView.top ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualToTopWithPriorityLiteral() {
        let constraints = viewArray.topAnchor ≥ relatedView.top ~ 300
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayTopGreaterThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor ≥ relatedView.top ~ .high - 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testViewArrayTopGreaterThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.topAnchor ≥ (relatedView.top + 10) * 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.topAnchor ≥ 3 * (relatedView.top + 10)
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.topAnchor ≥ 3 * relatedView.top + 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayTopGreaterThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray.topAnchor ≥ (relatedView.top + 10) / 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: viewArrayTop <=> relatedViewCenterY
    // MARK: LessThanOrEqual

    func testViewArrayTopLessThanOrEqualToCenterY() {
        let constraints = viewArray.topAnchor ≤ relatedView.centerY
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTopLessThanOrEqualToCenterYPlusConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.centerY + 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayTopLessThanOrEqualToCenterYMinusConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.centerY - 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTopLessThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.centerY * 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray.topAnchor ≤ 3 * relatedView.centerY
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToCenterYDividedByConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.centerY / 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testViewArrayTopLessThanOrEqualToCenterYWithPriority() {
        let constraints = viewArray.topAnchor ≤ relatedView.centerY ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray.topAnchor ≤ relatedView.centerY ~ 300
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayTopLessThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor ≤ relatedView.centerY ~ .high - 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testViewArrayTopLessThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.topAnchor ≤ (relatedView.centerY + 10) * 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.topAnchor ≤ 3 * (relatedView.centerY + 10)
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.topAnchor ≤ 3 * relatedView.centerY + 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayTopLessThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.topAnchor ≤ (relatedView.centerY + 10) / 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testViewArrayTopEqualToCenterY() {
        let constraints = viewArray.topAnchor .= relatedView.centerY
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testViewArrayTopEqualToCenterYPlusConstant() {
        let constraints = viewArray.topAnchor .= relatedView.centerY + 10
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10)
    }

    func testViewArrayTopEqualToCenterYMinusConstant() {
        let constraints = viewArray.topAnchor .= relatedView.centerY - 10
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTopEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray.topAnchor .= relatedView.centerY * 3
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayTopEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray.topAnchor .= 3 * relatedView.centerY
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayTopEqualToCenterYDividedByConstant() {
        let constraints = viewArray.topAnchor .= relatedView.centerY / 2
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testViewArrayTopEqualToCenterYWithPriority() {
        let constraints = viewArray.topAnchor .= relatedView.centerY ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, priority: .low)
    }

    func testViewArrayTopEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray.topAnchor .= relatedView.centerY ~ 300
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, priority: 300)
    }

    func testViewArrayTopEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor .= relatedView.centerY ~ .high - 1
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testViewArrayTopEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.topAnchor .= (relatedView.centerY + 10) * 3
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.topAnchor .= 3 * (relatedView.centerY + 10)
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.topAnchor .= 3 * relatedView.centerY + 10
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayTopEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.topAnchor .= (relatedView.centerY + 10) / 2
        constraints.assert(viewArray, .top, .equal, relatedView, .centerY, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testViewArrayTopGreaterThanOrEqualToCenterY() {
        let constraints = viewArray.topAnchor ≥ relatedView.centerY
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTopGreaterThanOrEqualToCenterYPlusConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.centerY + 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYMinusConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.centerY - 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTopGreaterThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.centerY * 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray.topAnchor ≥ 3 * relatedView.centerY
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYDividedByConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.centerY / 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testViewArrayTopGreaterThanOrEqualToCenterYWithPriority() {
        let constraints = viewArray.topAnchor ≥ relatedView.centerY ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray.topAnchor ≥ relatedView.centerY ~ 300
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor ≥ relatedView.centerY ~ .high - 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testViewArrayTopGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.topAnchor ≥ (relatedView.centerY + 10) * 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.topAnchor ≥ 3 * (relatedView.centerY + 10)
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.topAnchor ≥ 3 * relatedView.centerY + 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayTopGreaterThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.topAnchor ≥ (relatedView.centerY + 10) / 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: viewArrayTop <=> relatedViewBottom
    // MARK: LessThanOrEqual

    func testViewArrayTopLessThanOrEqualToBottom() {
        let constraints = viewArray.topAnchor ≤ relatedView.bottom
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayTopLessThanOrEqualToBottomPlusConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.bottom + 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayTopLessThanOrEqualToBottomMinusConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.bottom - 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayTopLessThanOrEqualToBottomMultiplyingConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.bottom * 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToBottomMultipliedByConstant() {
        let constraints = viewArray.topAnchor ≤ 3 * relatedView.bottom
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToBottomDividedByConstant() {
        let constraints = viewArray.topAnchor ≤ relatedView.bottom / 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testViewArrayTopLessThanOrEqualToBottomWithPriority() {
        let constraints = viewArray.topAnchor ≤ relatedView.bottom ~ .low
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayTopLessThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray.topAnchor ≤ relatedView.bottom ~ 300
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayTopLessThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor ≤ relatedView.bottom ~ .high - 1
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testViewArrayTopLessThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.topAnchor ≤ (relatedView.bottom + 10) * 3
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.topAnchor ≤ 3 * (relatedView.bottom + 10)
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopLessThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.topAnchor ≤ 3 * relatedView.bottom + 10
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayTopLessThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.topAnchor ≤ (relatedView.bottom + 10) / 2
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testViewArrayTopEqualToBottom() {
        let constraints = viewArray.topAnchor .= relatedView.bottom
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testViewArrayTopEqualToBottomPlusConstant() {
        let constraints = viewArray.topAnchor .= relatedView.bottom + 10
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10)
    }

    func testViewArrayTopEqualToBottomMinusConstant() {
        let constraints = viewArray.topAnchor .= relatedView.bottom - 10
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayTopEqualToBottomMultiplyingConstant() {
        let constraints = viewArray.topAnchor .= relatedView.bottom * 3
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayTopEqualToBottomMultipliedByConstant() {
        let constraints = viewArray.topAnchor .= 3 * relatedView.bottom
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayTopEqualToBottomDividedByConstant() {
        let constraints = viewArray.topAnchor .= relatedView.bottom / 2
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testViewArrayTopEqualToBottomWithPriority() {
        let constraints = viewArray.topAnchor .= relatedView.bottom ~ .low
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, priority: .low)
    }

    func testViewArrayTopEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray.topAnchor .= relatedView.bottom ~ 300
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, priority: 300)
    }

    func testViewArrayTopEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor .= relatedView.bottom ~ .high - 1
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testViewArrayTopEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.topAnchor .= (relatedView.bottom + 10) * 3
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.topAnchor .= 3 * (relatedView.bottom + 10)
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.topAnchor .= 3 * relatedView.bottom + 10
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayTopEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.topAnchor .= (relatedView.bottom + 10) / 2
        constraints.assert(viewArray, .top, .equal, relatedView, .bottom, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testViewArrayTopGreaterThanOrEqualToBottom() {
        let constraints = viewArray.topAnchor ≥ relatedView.bottom
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayTopGreaterThanOrEqualToBottomPlusConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.bottom + 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomMinusConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.bottom - 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayTopGreaterThanOrEqualToBottomMultiplyingConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.bottom * 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomMultipliedByConstant() {
        let constraints = viewArray.topAnchor ≥ 3 * relatedView.bottom
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomDividedByConstant() {
        let constraints = viewArray.topAnchor ≥ relatedView.bottom / 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testViewArrayTopGreaterThanOrEqualToBottomWithPriority() {
        let constraints = viewArray.topAnchor ≥ relatedView.bottom ~ .low
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray.topAnchor ≥ relatedView.bottom ~ 300
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray.topAnchor ≥ relatedView.bottom ~ .high - 1
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testViewArrayTopGreaterThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.topAnchor ≥ (relatedView.bottom + 10) * 3
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.topAnchor ≥ 3 * (relatedView.bottom + 10)
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayTopGreaterThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.topAnchor ≥ 3 * relatedView.bottom + 10
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayTopGreaterThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.topAnchor ≥ (relatedView.bottom + 10) / 2
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: viewArrayCenterY <=> relatedViewTop
    // MARK: LessThanOrEqual

    func testViewArrayCenterYLessThanOrEqualToTop() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.top
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterYLessThanOrEqualToTopPlusConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.top + 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayCenterYLessThanOrEqualToTopMinusConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.top - 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterYLessThanOrEqualToTopMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.top * 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToTopMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor ≤ 3 * relatedView.top
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToTopDividedByConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.top / 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testViewArrayCenterYLessThanOrEqualToTopWithPriority() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.top ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualToTopWithPriorityLiteral() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.top ~ 300
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayCenterYLessThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.top ~ .high - 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testViewArrayCenterYLessThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor ≤ (relatedView.top + 10) * 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor ≤ 3 * (relatedView.top + 10)
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerYAnchor ≤ 3 * relatedView.top + 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayCenterYLessThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray.centerYAnchor ≤ (relatedView.top + 10) / 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testViewArrayCenterYEqualToTop() {
        let constraints = viewArray.centerYAnchor .= relatedView.top
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testViewArrayCenterYEqualToTopPlusConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.top + 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10)
    }

    func testViewArrayCenterYEqualToTopMinusConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.top - 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterYEqualToTopMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.top * 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayCenterYEqualToTopMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor .= 3 * relatedView.top
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayCenterYEqualToTopDividedByConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.top / 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testViewArrayCenterYEqualToTopWithPriority() {
        let constraints = viewArray.centerYAnchor .= relatedView.top ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, priority: .low)
    }

    func testViewArrayCenterYEqualToTopWithPriorityLiteral() {
        let constraints = viewArray.centerYAnchor .= relatedView.top ~ 300
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, priority: 300)
    }

    func testViewArrayCenterYEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor .= relatedView.top ~ .high - 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testViewArrayCenterYEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor .= (relatedView.top + 10) * 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor .= 3 * (relatedView.top + 10)
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerYAnchor .= 3 * relatedView.top + 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayCenterYEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray.centerYAnchor .= (relatedView.top + 10) / 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .top, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterYGreaterThanOrEqualToTop() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.top
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterYGreaterThanOrEqualToTopPlusConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.top + 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopMinusConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.top - 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterYGreaterThanOrEqualToTopMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.top * 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor ≥ 3 * relatedView.top
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopDividedByConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.top / 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testViewArrayCenterYGreaterThanOrEqualToTopWithPriority() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.top ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopWithPriorityLiteral() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.top ~ 300
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.top ~ .high - 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testViewArrayCenterYGreaterThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor ≥ (relatedView.top + 10) * 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor ≥ 3 * (relatedView.top + 10)
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerYAnchor ≥ 3 * relatedView.top + 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayCenterYGreaterThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray.centerYAnchor ≥ (relatedView.top + 10) / 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: viewArrayCenterY <=> relatedViewCenterY
    // MARK: LessThanOrEqual

    func testViewArrayCenterYLessThanOrEqualToCenterY() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.centerY
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterYLessThanOrEqualToCenterYPlusConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.centerY + 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYMinusConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.centerY - 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterYLessThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.centerY * 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor ≤ 3 * relatedView.centerY
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYDividedByConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.centerY / 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testViewArrayCenterYLessThanOrEqualToCenterYWithPriority() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.centerY ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.centerY ~ 300
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.centerY ~ .high - 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testViewArrayCenterYLessThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor ≤ (relatedView.centerY + 10) * 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor ≤ 3 * (relatedView.centerY + 10)
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerYAnchor ≤ 3 * relatedView.centerY + 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayCenterYLessThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.centerYAnchor ≤ (relatedView.centerY + 10) / 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testViewArrayCenterYEqualToCenterY() {
        let constraints = viewArray.centerYAnchor .= relatedView.centerY
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testViewArrayCenterYEqualToCenterYPlusConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.centerY + 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10)
    }

    func testViewArrayCenterYEqualToCenterYMinusConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.centerY - 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterYEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.centerY * 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor .= 3 * relatedView.centerY
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYEqualToCenterYDividedByConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.centerY / 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testViewArrayCenterYEqualToCenterYWithPriority() {
        let constraints = viewArray.centerYAnchor .= relatedView.centerY ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: .low)
    }

    func testViewArrayCenterYEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray.centerYAnchor .= relatedView.centerY ~ 300
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 300)
    }

    func testViewArrayCenterYEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor .= relatedView.centerY ~ .high - 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testViewArrayCenterYEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor .= (relatedView.centerY + 10) * 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor .= 3 * (relatedView.centerY + 10)
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerYAnchor .= 3 * relatedView.centerY + 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayCenterYEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.centerYAnchor .= (relatedView.centerY + 10) / 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterYGreaterThanOrEqualToCenterY() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.centerY
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.centerY + 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYMinusConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.centerY - 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterYGreaterThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.centerY * 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor ≥ 3 * relatedView.centerY
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYDividedByConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.centerY / 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testViewArrayCenterYGreaterThanOrEqualToCenterYWithPriority() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.centerY ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.centerY ~ 300
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.centerY ~ .high - 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor ≥ (relatedView.centerY + 10) * 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor ≥ 3 * (relatedView.centerY + 10)
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerYAnchor ≥ 3 * relatedView.centerY + 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayCenterYGreaterThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.centerYAnchor ≥ (relatedView.centerY + 10) / 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: viewArrayCenterY <=> relatedViewBottom
    // MARK: LessThanOrEqual

    func testViewArrayCenterYLessThanOrEqualToBottom() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.bottom
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayCenterYLessThanOrEqualToBottomPlusConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.bottom + 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomMinusConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.bottom - 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayCenterYLessThanOrEqualToBottomMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.bottom * 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor ≤ 3 * relatedView.bottom
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomDividedByConstant() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.bottom / 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testViewArrayCenterYLessThanOrEqualToBottomWithPriority() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.bottom ~ .low
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.bottom ~ 300
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor ≤ relatedView.bottom ~ .high - 1
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testViewArrayCenterYLessThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor ≤ (relatedView.bottom + 10) * 3
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor ≤ 3 * (relatedView.bottom + 10)
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYLessThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerYAnchor ≤ 3 * relatedView.bottom + 10
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayCenterYLessThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.centerYAnchor ≤ (relatedView.bottom + 10) / 2
        constraints.assert(viewArray, .centerY, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testViewArrayCenterYEqualToBottom() {
        let constraints = viewArray.centerYAnchor .= relatedView.bottom
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testViewArrayCenterYEqualToBottomPlusConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.bottom + 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10)
    }

    func testViewArrayCenterYEqualToBottomMinusConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.bottom - 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayCenterYEqualToBottomMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.bottom * 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYEqualToBottomMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor .= 3 * relatedView.bottom
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYEqualToBottomDividedByConstant() {
        let constraints = viewArray.centerYAnchor .= relatedView.bottom / 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testViewArrayCenterYEqualToBottomWithPriority() {
        let constraints = viewArray.centerYAnchor .= relatedView.bottom ~ .low
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, priority: .low)
    }

    func testViewArrayCenterYEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray.centerYAnchor .= relatedView.bottom ~ 300
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, priority: 300)
    }

    func testViewArrayCenterYEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor .= relatedView.bottom ~ .high - 1
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testViewArrayCenterYEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor .= (relatedView.bottom + 10) * 3
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor .= 3 * (relatedView.bottom + 10)
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerYAnchor .= 3 * relatedView.bottom + 10
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayCenterYEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.centerYAnchor .= (relatedView.bottom + 10) / 2
        constraints.assert(viewArray, .centerY, .equal, relatedView, .bottom, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testViewArrayCenterYGreaterThanOrEqualToBottom() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.bottom
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayCenterYGreaterThanOrEqualToBottomPlusConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.bottom + 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomMinusConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.bottom - 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayCenterYGreaterThanOrEqualToBottomMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.bottom * 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor ≥ 3 * relatedView.bottom
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomDividedByConstant() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.bottom / 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testViewArrayCenterYGreaterThanOrEqualToBottomWithPriority() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.bottom ~ .low
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.bottom ~ 300
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray.centerYAnchor ≥ relatedView.bottom ~ .high - 1
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testViewArrayCenterYGreaterThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.centerYAnchor ≥ (relatedView.bottom + 10) * 3
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.centerYAnchor ≥ 3 * (relatedView.bottom + 10)
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayCenterYGreaterThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.centerYAnchor ≥ 3 * relatedView.bottom + 10
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayCenterYGreaterThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.centerYAnchor ≥ (relatedView.bottom + 10) / 2
        constraints.assert(viewArray, .centerY, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: viewArrayBottom <=> relatedViewTop
    // MARK: LessThanOrEqual

    func testViewArrayBottomLessThanOrEqualToTop() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.top
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayBottomLessThanOrEqualToTopPlusConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.top + 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayBottomLessThanOrEqualToTopMinusConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.top - 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayBottomLessThanOrEqualToTopMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.top * 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToTopMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor ≤ 3 * relatedView.top
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToTopDividedByConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.top / 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testViewArrayBottomLessThanOrEqualToTopWithPriority() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.top ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualToTopWithPriorityLiteral() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.top ~ 300
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayBottomLessThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.top ~ .high - 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testViewArrayBottomLessThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor ≤ (relatedView.top + 10) * 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor ≤ 3 * (relatedView.top + 10)
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottomAnchor ≤ 3 * relatedView.top + 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayBottomLessThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray.bottomAnchor ≤ (relatedView.top + 10) / 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .top, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testViewArrayBottomEqualToTop() {
        let constraints = viewArray.bottomAnchor .= relatedView.top
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top)
    }

    // MARK: Equal with constant
    func testViewArrayBottomEqualToTopPlusConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.top + 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10)
    }

    func testViewArrayBottomEqualToTopMinusConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.top - 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayBottomEqualToTopMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.top * 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayBottomEqualToTopMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor .= 3 * relatedView.top
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, multiplier: 3)
    }

    func testViewArrayBottomEqualToTopDividedByConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.top / 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testViewArrayBottomEqualToTopWithPriority() {
        let constraints = viewArray.bottomAnchor .= relatedView.top ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, priority: .low)
    }

    func testViewArrayBottomEqualToTopWithPriorityLiteral() {
        let constraints = viewArray.bottomAnchor .= relatedView.top ~ 300
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, priority: 300)
    }

    func testViewArrayBottomEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor .= relatedView.top ~ .high - 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testViewArrayBottomEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor .= (relatedView.top + 10) * 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor .= 3 * (relatedView.top + 10)
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottomAnchor .= 3 * relatedView.top + 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayBottomEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray.bottomAnchor .= (relatedView.top + 10) / 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .top, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testViewArrayBottomGreaterThanOrEqualToTop() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.top
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayBottomGreaterThanOrEqualToTopPlusConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.top + 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopMinusConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.top - 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayBottomGreaterThanOrEqualToTopMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.top * 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor ≥ 3 * relatedView.top
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopDividedByConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.top / 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testViewArrayBottomGreaterThanOrEqualToTopWithPriority() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.top ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopWithPriorityLiteral() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.top ~ 300
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, priority: 300)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.top ~ .high - 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testViewArrayBottomGreaterThanOrEqualToTopPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor ≥ (relatedView.top + 10) * 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor ≥ 3 * (relatedView.top + 10)
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToTopMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottomAnchor ≥ 3 * relatedView.top + 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayBottomGreaterThanOrEqualToTopPlusConstantDividedByConstant() {
        let constraints = viewArray.bottomAnchor ≥ (relatedView.top + 10) / 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .top, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: viewArrayBottom <=> relatedViewCenterY
    // MARK: LessThanOrEqual

    func testViewArrayBottomLessThanOrEqualToCenterY() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.centerY
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayBottomLessThanOrEqualToCenterYPlusConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.centerY + 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYMinusConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.centerY - 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayBottomLessThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.centerY * 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor ≤ 3 * relatedView.centerY
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYDividedByConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.centerY / 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testViewArrayBottomLessThanOrEqualToCenterYWithPriority() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.centerY ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.centerY ~ 300
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.centerY ~ .high - 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testViewArrayBottomLessThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor ≤ (relatedView.centerY + 10) * 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor ≤ 3 * (relatedView.centerY + 10)
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottomAnchor ≤ 3 * relatedView.centerY + 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayBottomLessThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.bottomAnchor ≤ (relatedView.centerY + 10) / 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testViewArrayBottomEqualToCenterY() {
        let constraints = viewArray.bottomAnchor .= relatedView.centerY
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY)
    }

    // MARK: Equal with constant
    func testViewArrayBottomEqualToCenterYPlusConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.centerY + 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10)
    }

    func testViewArrayBottomEqualToCenterYMinusConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.centerY - 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayBottomEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.centerY * 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayBottomEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor .= 3 * relatedView.centerY
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayBottomEqualToCenterYDividedByConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.centerY / 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testViewArrayBottomEqualToCenterYWithPriority() {
        let constraints = viewArray.bottomAnchor .= relatedView.centerY ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, priority: .low)
    }

    func testViewArrayBottomEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray.bottomAnchor .= relatedView.centerY ~ 300
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, priority: 300)
    }

    func testViewArrayBottomEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor .= relatedView.centerY ~ .high - 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testViewArrayBottomEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor .= (relatedView.centerY + 10) * 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor .= 3 * (relatedView.centerY + 10)
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottomAnchor .= 3 * relatedView.centerY + 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayBottomEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.bottomAnchor .= (relatedView.centerY + 10) / 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .centerY, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testViewArrayBottomGreaterThanOrEqualToCenterY() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.centerY
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayBottomGreaterThanOrEqualToCenterYPlusConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.centerY + 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYMinusConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.centerY - 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayBottomGreaterThanOrEqualToCenterYMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.centerY * 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor ≥ 3 * relatedView.centerY
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYDividedByConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.centerY / 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testViewArrayBottomGreaterThanOrEqualToCenterYWithPriority() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.centerY ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYWithPriorityLiteral() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.centerY ~ 300
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: 300)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.centerY ~ .high - 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testViewArrayBottomGreaterThanOrEqualToCenterYPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor ≥ (relatedView.centerY + 10) * 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor ≥ 3 * (relatedView.centerY + 10)
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToCenterYMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottomAnchor ≥ 3 * relatedView.centerY + 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayBottomGreaterThanOrEqualToCenterYPlusConstantDividedByConstant() {
        let constraints = viewArray.bottomAnchor ≥ (relatedView.centerY + 10) / 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .centerY, constant: 10, multiplier: 1 / 2)
    }
*/
// MARK: viewArrayBottom <=> relatedViewBottom
    // MARK: LessThanOrEqual

    func testViewArrayBottomLessThanOrEqualToBottom() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.bottom
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    // MARK: LessThanOrEqual with constant
    func testViewArrayBottomLessThanOrEqualToBottomPlusConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.bottom + 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayBottomLessThanOrEqualToBottomMinusConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.bottom - 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: LessThanOrEqual with multiplier
    func testViewArrayBottomLessThanOrEqualToBottomMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.bottom * 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToBottomMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor ≤ 3 * relatedView.bottom
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToBottomDividedByConstant() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.bottom / 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: LessThanOrEqual Prioritized
    func testViewArrayBottomLessThanOrEqualToBottomWithPriority() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.bottom ~ .low
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayBottomLessThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.bottom ~ 300
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayBottomLessThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor ≤ relatedView.bottom ~ .high - 1
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: LessThanOrEqual with constant + multiplier

    func testViewArrayBottomLessThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor ≤ (relatedView.bottom + 10) * 3
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor ≤ 3 * (relatedView.bottom + 10)
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomLessThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottomAnchor ≤ 3 * relatedView.bottom + 10
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayBottomLessThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.bottomAnchor ≤ (relatedView.bottom + 10) / 2
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: Equal

    func testViewArrayBottomEqualToBottom() {
        let constraints = viewArray.bottomAnchor .= relatedView.bottom
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom)
    }

    // MARK: Equal with constant
    func testViewArrayBottomEqualToBottomPlusConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.bottom + 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10)
    }

    func testViewArrayBottomEqualToBottomMinusConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.bottom - 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10)
    }

    // MARK: Equal with multiplier
    func testViewArrayBottomEqualToBottomMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.bottom * 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayBottomEqualToBottomMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor .= 3 * relatedView.bottom
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayBottomEqualToBottomDividedByConstant() {
        let constraints = viewArray.bottomAnchor .= relatedView.bottom / 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: Equal Prioritized
    func testViewArrayBottomEqualToBottomWithPriority() {
        let constraints = viewArray.bottomAnchor .= relatedView.bottom ~ .low
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: .low)
    }

    func testViewArrayBottomEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray.bottomAnchor .= relatedView.bottom ~ 300
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 300)
    }

    func testViewArrayBottomEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor .= relatedView.bottom ~ .high - 1
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, priority: 749)
    }

    // MARK: Equal with constant + multiplier

    func testViewArrayBottomEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor .= (relatedView.bottom + 10) * 3
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor .= 3 * (relatedView.bottom + 10)
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottomAnchor .= 3 * relatedView.bottom + 10
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayBottomEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.bottomAnchor .= (relatedView.bottom + 10) / 2
        constraints.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, multiplier: 1 / 2)
    }
*/
    // MARK: GreaterThanOrEqual

    func testViewArrayBottomGreaterThanOrEqualToBottom() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.bottom
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: GreaterThanOrEqual with constant
    func testViewArrayBottomGreaterThanOrEqualToBottomPlusConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.bottom + 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomMinusConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.bottom - 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: -10)
    }

    // MARK: GreaterThanOrEqual with multiplier
    func testViewArrayBottomGreaterThanOrEqualToBottomMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.bottom * 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor ≥ 3 * relatedView.bottom
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomDividedByConstant() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.bottom / 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, multiplier: 1 / 2)
    }

    // MARK: GreaterThanOrEqual Prioritized
    func testViewArrayBottomGreaterThanOrEqualToBottomWithPriority() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.bottom ~ .low
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: .low)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomWithPriorityLiteral() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.bottom ~ 300
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 300)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomWithPriorityArithmetic() {
        let constraints = viewArray.bottomAnchor ≥ relatedView.bottom ~ .high - 1
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, priority: 749)
    }

    // MARK: GreaterThanOrEqual with constant + multiplier

    func testViewArrayBottomGreaterThanOrEqualToBottomPlusConstantMultiplyingConstant() {
        let constraints = viewArray.bottomAnchor ≥ (relatedView.bottom + 10) * 3
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomPlusConstantMultipliedByConstant() {
        let constraints = viewArray.bottomAnchor ≥ 3 * (relatedView.bottom + 10)
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10 * 3, multiplier: 3)
    }

    func testViewArrayBottomGreaterThanOrEqualToBottomMultipliedByConstantPlusConstant() {
        let constraints = viewArray.bottomAnchor ≥ 3 * relatedView.bottom + 10
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 3)
    }
/*
    func testViewArrayBottomGreaterThanOrEqualToBottomPlusConstantDividedByConstant() {
        let constraints = viewArray.bottomAnchor ≥ (relatedView.bottom + 10) / 2
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom, constant: 10, multiplier: 1 / 2)
    }
*/
// sourcery:end
}
