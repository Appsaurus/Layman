//
//  SharedTests.swift
//  SharedTests
//
//  Created by Zev Eisenberg on 4/29/17.
//  Copyright © 2017 Raizlabs. All rights reserved.
//

#if canImport(AppKit)
import AppKit
#else
import UIKit
#endif

@testable import UILayoutKit
import XCTest
import SwiftTestUtils

#if canImport(AppKit)
typealias TestView = NSView
typealias TestWindow = NSWindow

let TestPriorityRequired = Constraint.Priority.required
let TestPriorityHigh = Constraint.Priority.defaultHigh
let TestPriorityLow = Constraint.Priority.defaultLow

#else
typealias TestView = UIView
typealias TestWindow = UIWindow

let TestPriorityRequired = UILayoutPriority.required
let TestPriorityHigh = UILayoutPriority.defaultHigh
let TestPriorityLow = UILayoutPriority.defaultLow
#endif

let cgEpsilon: CGFloat = 0.00001
let fEpsilon: Float = 0.00001
let dEpsilon: Double = 0.00001

fileprivate extension Constraint {
    fileprivate func assert(_ firstItem: (AnyObject & LayoutAnchorable)?,
                            _ firstAttribute: ConstraintAttribute?,
                            _ relation: Constraint.Relation,
                            _ secondItem: (AnyObject & LayoutAnchorable)? = nil,
                            _ secondAttribute: ConstraintAttribute? = .notAnAttribute,
                            constant: LayoutConstant = 0.0,
                            multiplier: LayoutMultiplier = 1.0,
                            priority: LayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line) {
        assertIdentical(firstItem, self.firstItem, file: file, line: line)
        XCTAssertEqual(firstAttribute, self.firstAttribute, file: file, line: line)
        XCTAssertEqual(relation, self.relation, file: file, line: line)
        assertIdentical(secondItem, self.secondItem, file: file, line: line)
        XCTAssertEqual(secondAttribute, self.secondAttribute, file: file, line: line)
        XCTAssertEqual(constant, self.constant, accuracy: cgEpsilon, file: file, line: line)
        XCTAssertEqual(multiplier, self.multiplier, accuracy: cgEpsilon, file: file, line: line)
        XCTAssertEqual(priority.rawValue, self.priority.rawValue, accuracy: fEpsilon, file: file, line: line)
        XCTAssertTrue(isActive, file: file, line: line)
    }
}

fileprivate extension Array where Element: Constraint {
    fileprivate func assert(_ items: [(AnyObject & LayoutAnchorable)],
                            _ firstAttribute: ConstraintAttribute?,
                            _ relation: Constraint.Relation,
                            _ secondItem: (AnyObject & LayoutAnchorable)? = nil,
                            _ secondAttribute: ConstraintAttribute? = .notAnAttribute,
                            constant: LayoutConstant = 0.0,
                            multiplier: LayoutMultiplier = 1.0,
                            priority: LayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line) {
        XCTAssertEqual(count, items.count)
        enumerated().forEach{$1.assert(items[$0], firstAttribute, relation, secondItem, secondAttribute,
                                       constant: constant,
                                       multiplier: multiplier,
                                       priority: priority,
                                       file: file,
                                       line: line)}
    }
}
class SharedTests: XCTestCase {

    let view1 = TestView()
    let view2 = TestView()
    let relatedView = TestView()

    var viewArray: [UIView]{
        return [view1, view2]
    }
    let window = TestWindow()

    override func setUp() {
        #if os(macOS)
        window.contentView!.addSubviews(view1, view2, view3)
        #else
        window.addSubviews(view1, relatedView, view2)
        #endif
    }

    func testEqualityToConstant() {
        let constraint = view1.widthAnchor == 200
        constraint.assert(view1, .width, .equal, constant: 200)
    }

    func testArrayEqualityToConstant() {
        let constraints = viewArray.widthAnchor == 200
        constraints.assert(viewArray, .width, .equal, constant: 200)
    }

    func testGreaterThanConstant() {
        let constraint = view1.widthAnchor >= 200
        constraint.assert(view1, .width, .greaterThanOrEqual, constant: 200)
    }

    func testArrayGreaterThanConstant() {
        let constraints = viewArray.widthAnchor >= 200
        constraints.assert(viewArray, .width, .greaterThanOrEqual, constant: 200)
    }

    func testLessThanConstant() {
        let constraint = view1.widthAnchor <= 200
        constraint.assert(view1, .width, .lessThanOrEqual, constant: 200)
    }

    func testArrayLessThanConstant() {
        let constraints = viewArray.widthAnchor <= 200
        constraints.assert(viewArray, .width, .lessThanOrEqual, constant: 200)
    }

    func testBasicEquality() {
        let constraint = view1.widthAnchor == relatedView.widthAnchor
        constraint.assert(view1, .width, .equal, relatedView, .width)
    }

    func testArrayBasicEquality() {
        let constraints = viewArray.widthAnchor == relatedView.widthAnchor
        constraints.assert(viewArray, .width, .equal, relatedView, .width)
    }

    func testBasicLessThan() {
        let constraint = view1.widthAnchor <= relatedView.widthAnchor
        constraint.assert(view1, .width, .lessThanOrEqual, relatedView, .width)
    }

    func testArrayBasicLessThan() {
        let constraints = viewArray.widthAnchor <= relatedView.widthAnchor
        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width)
    }

    func testBasicGreaterThan() {
        let constraint = view1.widthAnchor >= relatedView.widthAnchor
        constraint.assert(view1, .width, .greaterThanOrEqual, relatedView, .width)
    }

    func testArrayBasicGreaterThan() {
        let constraints = viewArray.widthAnchor >= relatedView.widthAnchor
        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width)
    }

    func testEqualityWithOffset() {
        let constraint = view1.widthAnchor == relatedView.widthAnchor + 10
        constraint.assert(view1, .width, .equal, relatedView, .width, constant: 10)
    }

    func testArrayEqualityWithOffset() {
        let constraints = viewArray.widthAnchor == relatedView.widthAnchor + 10
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10)
    }

    func testEqualityWithMultiplier() {
        let constraint = view1.widthAnchor == relatedView.widthAnchor / 2
        constraint.assert(view1, .width, .equal, relatedView, .width, multiplier: 0.5)
    }

    func testArrayEqualityWithMultiplier() {
        let constraints = viewArray.widthAnchor == relatedView.widthAnchor / 2
        constraints.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 0.5)
    }

    func testAxisAnchorEqualityWithMultiplier() {
        let constraint = view1.leadingAnchor == relatedView.trailingAnchor / 2
        constraint.assert(view1, .leading, .equal, relatedView, .trailing, multiplier: 0.5)
    }

    func testArrayAxisAnchorEqualityWithMultiplier() {
        let constraints = viewArray.leadingAnchor == relatedView.trailingAnchor / 2
        constraints.assert(viewArray, .leading, .equal, relatedView, .trailing, multiplier: 0.5)
    }

    func testEqualityWithOffsetAndMultiplier() {
        let constraint = view1.widthAnchor == (relatedView.widthAnchor + 10) / 2
        constraint.assert(view1, .width, .equal, relatedView, .width, constant: 10.0, multiplier: 0.5)
    }

    func testArrayEqualityWithOffsetAndMultiplier() {
        let constraints = viewArray.widthAnchor == (relatedView.widthAnchor + 10) / 2
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10.0, multiplier: 0.5)
    }

    func testAxisAnchorEqualityWithOffsetAndMultiplier() {
        let constraint = view1.trailingAnchor == (relatedView.centerXAnchor + 10) / 2
        constraint.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10.0, multiplier: 0.5)
    }

    func testArrayAxisAnchorEqualityWithOffsetAndMultiplier() {
        let constraints = viewArray.trailingAnchor == (relatedView.centerXAnchor + 10) / 2
        constraints.assert(viewArray, .trailing, .equal, relatedView, .centerX, constant: 10.0, multiplier: 0.5)
    }

    func testEqualityWithPriorityConstant() {
        let constraint = view1.widthAnchor == relatedView.widthAnchor ~ .low
        constraint.assert(view1, .width, .equal, relatedView, .width, priority: .low)
    }

    func testArrayEqualityWithPriorityConstant() {
        let constraints = viewArray.widthAnchor == relatedView.widthAnchor ~ .low
        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: .low)
    }

    func testEqualityWithPriorityLiteral() {
        let constraint = view1.widthAnchor == relatedView.widthAnchor ~ 750
        constraint.assert(view1, .width, .equal, relatedView, .width, priority: 750)
    }

    func testArrayEqualityWithPriorityLiteral() {
        let constraints = viewArray.widthAnchor == relatedView.widthAnchor ~ 750
        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: 750)
    }

    func testEqualityWithPriorityConstantMath() {
        let constraint = view1.widthAnchor == relatedView.widthAnchor ~ .high - 1
        constraint.assert(view1, .width, .equal, relatedView, .width, priority: LayoutPriority(rawValue: 749))
    }

    func testArrayEqualityWithPriorityConstantMath() {
        let constraints = viewArray.widthAnchor == relatedView.widthAnchor ~ .high - 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: LayoutPriority(rawValue: 749))
    }

    func testEqualityWithPriorityLiteralMath() {
        let constraint = view1.widthAnchor == relatedView.widthAnchor ~ LayoutPriority(rawValue: 750 - 1)
        constraint.assert(view1, .width, .equal, relatedView, .width, priority: LayoutPriority(rawValue: 749))
    }

    func testArrayEqualityWithPriorityLiteralMath() {
        let constraints = viewArray.widthAnchor == relatedView.widthAnchor ~ LayoutPriority(rawValue: 750 - 1)
        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: LayoutPriority(rawValue: 749))
    }

    func testEqualityWithOffsetAndPriorityMath() {
        let constraint = view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1
        constraint.assert(view1, .width, .equal, relatedView, .width, constant: 10, priority: 749)
    }

    func testArrayEqualityWithOffsetAndPriorityMath() {
        let constraints = viewArray.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, priority: 749)
    }

    func testEqualityWithOffsetAndMultiplierAndPriorityMath() {
        let constraint = view1.widthAnchor == (relatedView.widthAnchor + 10) / 2 ~ .high - 1
        constraint.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 0.5, priority: 749)
    }

    func testArrayEqualityWithOffsetAndMultiplierAndPriorityMath() {
        let constraints = viewArray.widthAnchor == (relatedView.widthAnchor + 10) / 2 ~ .high - 1
        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 0.5, priority: 749)
    }

    func testCenterAnchors() {
        let constraints = view1.centerAnchors == relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY)

    }
    func testArrayCenterAnchors() {
        let constraints = viewArray.centerAnchors == relatedView.centerAnchors
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY)

    }


    func testCenterAnchorsWithOffsetAndPriority() {
        let constraints = view1.centerAnchors == relatedView.centerAnchors + 10 ~ .high - 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, priority: 749)
    }

    func testArrayCenterAnchorsWithOffsetAndPriority() {
        let constraints = viewArray.centerAnchors == relatedView.centerAnchors + 10 ~ .high - 1
        constraints.first.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, priority: 749)
        constraints.second.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, priority: 749)
    }


    func testHorizontalAnchors() {
        let constraints = view1.horizontalAnchors == relatedView.horizontalAnchors + 10 ~ .high - 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10, priority: 749)
    }

    func testArrayHorizontalAnchors() {
        let constraints = viewArray.horizontalAnchors == relatedView.horizontalAnchors + 10 ~ .high - 1
        constraints.first.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, priority: 749)
        constraints.second.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10, priority: 749)
    }


    func testVerticalAnchors() {
        let constraints = view1.verticalAnchors == relatedView.verticalAnchors + 10 ~ .high - 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10, priority: 749)
    }

    func testArrayVerticalAnchors() {
        let constraints = viewArray.verticalAnchors == relatedView.verticalAnchors + 10 ~ .high - 1
        constraints.first.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.second.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10, priority: 749)
    }


    func testSizeAnchors() {
        let constraints = view1.sizeAnchors == relatedView.sizeAnchors + 10 ~ .high - 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, priority: 749)
    }

    func testArraySizeAnchors() {
        let constraints = viewArray.sizeAnchors == relatedView.sizeAnchors + 10 ~ .high - 1
        constraints.first.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, priority: 749)
    }


    func testSizeAnchorsWithConstants() {
        let constraints = view1.sizeAnchors == CGSize(width: 50, height: 100) ~ .high - 1
        constraints.first.assert(view1, .width, .equal, constant: 50, priority: 749)
        constraints.second.assert(view1, .height, .equal, constant: 100, priority: 749)
    }

    func testArraySizeAnchorsWithConstants() {
        let constraints = viewArray.sizeAnchors == CGSize(width: 50, height: 100) ~ .high - 1
        constraints.first.assert(viewArray, .width, .equal, constant: 50, priority: 749)
        constraints.second.assert(viewArray, .height, .equal, constant: 100, priority: 749)
    }


    func testEdgeAnchors() {
        let constraints = view1.edgeAnchors == relatedView.edgeAnchors + 10 ~ .high - 1
        constraints.top.assert(view1, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10, priority: 749)
    }

    func testEdgeAnchorsWithInsets() {
        let insets = UIEdgeInsets(top: 10, left: 5, bottom: 15, right: 20)

        let constraints = view1.edgeAnchors == relatedView.edgeAnchors + insets ~ .high - 1
        constraints.top.assert(view1, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .equal, relatedView, .leading, constant: 5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -20, priority: 749)
    }

    func testKeyPaths() {
//        let insets = UIEdgeInsets(top: 10, left: 5, bottom: 15, right: 20)
//        let constraints = [view1, view2] == view3.anchorsAt(\.leadingAnchor, \.trailingAnchor)
//        let other = [view1, view2] == view3.anchorsAt(\.topAnchor, \.bottomAnchor)
        [view1, relatedView].trailingAnchor <= view2.leadingAnchor + 20
        view2.leadingAnchor >= [view1, relatedView].trailingAnchor + 20

          [view1, relatedView].edgeAnchors <= view2.edgeAnchors
//        let constraints = view1 == view2.anchors(forKeyPaths: \.widthAnchor, \.heightAnchor)
//        constraints.top.assert(view1, .top, .equal, view2, .top, constant: 10, priority: 749)
//        constraints.leading.assert(view1, .leading, .equal, view2, .leading, constant: 5, priority: 749)
//        constraints.bottom.assert(view1, .bottom, .equal, view2, .bottom, constant: -15, priority: 749)
//        constraints.trailing.assert(view1, .trailing, .equal, view2, .trailing, constant: -20, priority: 749)
    }
}

extension ConstraintAttribute: CustomDebugStringConvertible {

    public var debugDescription: String {
        #if os(macOS)
        switch self {
        case .left: return "left"
        case .right: return "right"
        case .top: return "top"
        case .bottom: return "bottom"
        case .leading: return "leading"
        case .trailing: return "trailing"
        case .width: return "width"
        case .height: return "height"
        case .centerX: return "centerX"
        case .centerY: return "centerY"
        case .lastBaseline: return "lastBaseline"
        case .firstBaseline: return "firstBaseline"
        case .notAnAttribute: return "notAnAttribute"
        }
        #else
        switch self {
        case .left: return "left"
        case .right: return "right"
        case .top: return "top"
        case .bottom: return "bottom"
        case .leading: return "leading"
        case .trailing: return "trailing"
        case .width: return "width"
        case .height: return "height"
        case .centerX: return "centerX"
        case .centerY: return "centerY"
        case .lastBaseline: return "lastBaseline"
        case .firstBaseline: return "firstBaseline"
        case .leftMargin: return "leftMargin"
        case .rightMargin: return "rightMargin"
        case .topMargin: return "topMargin"
        case .bottomMargin: return "bottomMargin"
        case .leadingMargin: return "leadingMargin"
        case .trailingMargin: return "trailingMargin"
        case .centerXWithinMargins: return "centerXWithinMargins"
        case .centerYWithinMargins: return "centerYWithinMargins"
        case .notAnAttribute: return "notAnAttribute"
        }
        #endif
    }
}
