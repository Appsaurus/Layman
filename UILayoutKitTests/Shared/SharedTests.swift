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
class SharedTests: XCTestCase {

    let view1 = TestView()
    let view2 = TestView()

    let window = TestWindow()

    override func setUp() {
        #if os(macOS)
        window.contentView!.addSubview(view1)
        window.contentView!.addSubview(view2)
        #else
        window.addSubview(view1)
        window.addSubview(view2)
        #endif
    }

    func testEqualityToConstant() {
        let constraint = view1.widthAnchor == 200
        constraint.assert(view1, .width, .equal, constant: 200)
    }

    func testGreaterThanConstant() {
        let constraint = view1.widthAnchor >= 200
        constraint.assert(view1, .width, .greaterThanOrEqual, constant: 200)
    }

    func testLessThanConstant() {
        let constraint = view1.widthAnchor <= 200
        constraint.assert(view1, .width, .lessThanOrEqual, constant: 200)
    }

    func testBasicEquality() {
        let constraint = view1.widthAnchor == view2.widthAnchor
        constraint.assert(view1, .width, .equal, view2, .width)
    }

    func testBasicLessThan() {
        let constraint = view1.widthAnchor <= view2.widthAnchor
        constraint.assert(view1, .width, .lessThanOrEqual, view2, .width)
    }

    func testBasicGreaterThan() {
        let constraint = view1.widthAnchor >= view2.widthAnchor
        constraint.assert(view1, .width, .greaterThanOrEqual, view2, .width)
    }

    func testEqualityWithOffset() {
        let constraint = view1.widthAnchor == view2.widthAnchor + 10
        constraint.assert(view1, .width, .equal, view2, .width, constant: 10)
    }

    func testEqualityWithMultiplier() {
        let constraint = view1.widthAnchor == view2.widthAnchor / 2
        constraint.assert(view1, .width, .equal, view2, .width, multiplier: 0.5)
    }

    func testAxisAnchorEqualityWithMultiplier() {
        let constraint = view1.leadingAnchor == view2.trailingAnchor / 2
        constraint.assert(view1, .leading, .equal, view2, .trailing, multiplier: 0.5)
    }

    func testEqualityWithOffsetAndMultiplier() {
        let constraint = view1.widthAnchor == (view2.widthAnchor + 10) / 2
        constraint.assert(view1, .width, .equal, view2, .width, constant: 10.0, multiplier: 0.5)
    }

    func testAxisAnchorEqualityWithOffsetAndMultiplier() {
        let constraint = view1.trailingAnchor == (view2.centerXAnchor + 10) / 2
        constraint.assert(view1, .trailing, .equal, view2, .centerX, constant: 10.0, multiplier: 0.5)
    }

    func testEqualityWithPriorityConstant() {
        let constraint = view1.widthAnchor == view2.widthAnchor ~ .low
        constraint.assert(view1, .width, .equal, view2, .width, priority: .low)
    }

    func testEqualityWithPriorityLiteral() {
        let constraint = view1.widthAnchor == view2.widthAnchor ~ 750
        constraint.assert(view1, .width, .equal, view2, .width, priority: 750)
    }

    func testEqualityWithPriorityConstantMath() {
        let constraint = view1.widthAnchor == view2.widthAnchor ~ .high - 1
        constraint.assert(view1, .width, .equal, view2, .width, priority: LayoutPriority(rawValue: 749))
    }

    func testEqualityWithPriorityLiteralMath() {
        let constraint = view1.widthAnchor == view2.widthAnchor ~ LayoutPriority(rawValue: 750 - 1)
        constraint.assert(view1, .width, .equal, view2, .width, priority: LayoutPriority(rawValue: 749))
    }

    func testEqualityWithOffsetAndPriorityMath() {
        let constraint = view1.widthAnchor == view2.widthAnchor + 10 ~ .high - 1
        constraint.assert(view1, .width, .equal, view2, .width, constant: 10, priority: 749)
    }

    func testEqualityWithOffsetAndMultiplierAndPriorityMath() {
        let constraint = view1.widthAnchor == (view2.widthAnchor + 10) / 2 ~ .high - 1
        constraint.assert(view1, .width, .equal, view2, .width, constant: 10, multiplier: 0.5, priority: 749)
    }

    func testCenterAnchors() {
        let constraints = view1.centerAnchors == view2.centerAnchors
        constraints.first.assert(view1, .centerX, .equal, view2, .centerX)
        constraints.second.assert(view1, .centerY, .equal, view2, .centerY)

    }

    func testCenterAnchorsWithOffsetAndPriority() {
        let constraints = view1.centerAnchors == view2.centerAnchors + 10 ~ .high - 1
        constraints.first.assert(view1, .centerX, .equal, view2, .centerX, constant: 10, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, view2, .centerY, constant: 10, priority: 749)
    }

    func testHorizontalAnchors() {
        let constraints = view1.horizontalAnchors == view2.horizontalAnchors + 10 ~ .high - 1
        constraints.first.assert(view1, .leading, .equal, view2, .leading, constant: 10, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, view2, .trailing, constant: -10, priority: 749)
    }

    func testVerticalAnchors() {
        let constraints = view1.verticalAnchors == view2.verticalAnchors + 10 ~ .high - 1
        constraints.first.assert(view1, .top, .equal, view2, .top, constant: 10, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, view2, .bottom, constant: -10, priority: 749)
    }

    func testSizeAnchors() {
        let constraints = view1.sizeAnchors == view2.sizeAnchors + 10 ~ .high - 1
        constraints.first.assert(view1, .width, .equal, view2, .width, constant: 10, priority: 749)
        constraints.second.assert(view1, .height, .equal, view2, .height, constant: 10, priority: 749)
    }

    func testSizeAnchorsWithConstants() {
        let constraints = view1.sizeAnchors == CGSize(width: 50, height: 100) ~ .high - 1
        constraints.first.assert(view1, .width, .equal, constant: 50, priority: 749)
        constraints.second.assert(view1, .height, .equal, constant: 100, priority: 749)
    }

    func testEdgeAnchors() {
        let constraints = view1.edgeAnchors == view2.edgeAnchors + 10 ~ .high - 1
        constraints.top.assert(view1, .top, .equal, view2, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .equal, view2, .leading, constant: 10, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, view2, .bottom, constant: -10, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, view2, .trailing, constant: -10, priority: 749)
    }

    func testEdgeAnchorsWithInsets() {
        let insets = UIEdgeInsets(top: 10, left: 5, bottom: 15, right: 20)

        let constraints = view1.edgeAnchors == view2.edgeAnchors + insets ~ .high - 1
        constraints.top.assert(view1, .top, .equal, view2, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .equal, view2, .leading, constant: 5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, view2, .bottom, constant: -15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, view2, .trailing, constant: -20, priority: 749)
    }
}

func assertIdentical(_ expression1: @autoclosure () -> AnyObject?,
                     _ expression2: @autoclosure () -> AnyObject?,
                     _ message: String? = nil,
                     file: StaticString = #file,
                     line: UInt = #line) {
    XCTAssertTrue(expression1() === expression2(), message ?? "\(String(describing: expression1())) was not identical to \(String(describing: expression2()))", file: file, line: line)
}

// swiftlint:disable vertical_parameter_alignment
func assertIdentical(_ expressions: TuplePair<() -> AnyObject?>...,
    message: String? = nil,
    file: StaticString = #file,
    line: UInt = #line) {
    expressions.forEach {assertIdentical($0.first(), $0.second())}
}

func assertIdentical(_ expressions: TuplePair<AnyObject?>...,
    message: String? = nil,
    file: StaticString = #file,
    line: UInt = #line) {
    expressions.forEach {assertIdentical($0.first, $0.second, message, file: file, line: line)}
}
// swiftlint:enable vertical_parameter_alignment

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
