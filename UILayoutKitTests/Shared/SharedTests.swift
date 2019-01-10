
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

fileprivate extension Constraint{
    fileprivate func assert(_ firstItem: (AnyObject & LayoutAnchorable)?,
                            _ firstAttribute: ConstraintAttribute?,
                            _ relation: Constraint.Relation,
                            _ secondItem: (AnyObject & LayoutAnchorable)? = nil,
                            _ secondAttribute: ConstraintAttribute? = .notAnAttribute,
                            constant: LayoutConstant = 0.0,
                            multiplier: LayoutMultiplier = 1.0,
                            priority: LayoutPriority = .required,
                            file: StaticString = #file,
                            line: UInt = #line){
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

//    func testEqualityToConstant() {
//        let constraint = view1.widthAnchor == 200
//        assertIdentical(constraint.firstItem, view1)
//        XCTAssertNil(constraint.secondItem)
//        XCTAssertEqual(constraint.constant, 200, accuracy: cgEpsilon)
//        XCTAssertEqual(constraint.multiplier, 1, accuracy: cgEpsilon)
//        XCTAssertEqual(constraint.priority.rawValue, TestPriorityRequired.rawValue, accuracy: fEpsilon)
//        XCTAssertTrue(constraint.isActive)
//        XCTAssertEqual(constraint.relation, .equal)
//        XCTAssertEqual(constraint.firstAttribute, .width)
//        XCTAssertEqual(constraint.secondAttribute, .notAnAttribute)
//    }

//    func testGreaterThanConstant() {
//        let constraint = view1.widthAnchor == 200
//        assertIdentical(constraint.firstItem, view1)
//        XCTAssertNil(constraint.secondItem)
//        XCTAssertEqual(constraint.constant, 200, accuracy: cgEpsilon)
//        XCTAssertEqual(constraint.multiplier, 1, accuracy: cgEpsilon)
//        XCTAssertEqual(constraint.priority.rawValue, TestPriorityRequired.rawValue, accuracy: fEpsilon)
//        XCTAssertTrue(constraint.isActive)
//        XCTAssertEqual(constraint.relation, .greaterThanOrEqual)
//        XCTAssertEqual(constraint.firstAttribute, .width)
//        XCTAssertEqual(constraint.secondAttribute, .notAnAttribute)
//    }

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
//        assertIdentical(constraint.firstItem, view1)
//        assertIdentical(constraint.secondItem, view2)
//        XCTAssertEqual(constraint.constant, 0, accuracy: cgEpsilon)
//        XCTAssertEqual(constraint.multiplier, 0.5, accuracy: cgEpsilon)
//        XCTAssertEqual(constraint.priority.rawValue, TestPriorityRequired.rawValue, accuracy: fEpsilon)
//        XCTAssertTrue(constraint.isActive)
//        XCTAssertEqual(constraint.relation, .equal)
//        XCTAssertEqual(constraint.firstAttribute, .width)
//        XCTAssertEqual(constraint.secondAttribute, .width)
    }

    func testAxisAnchorEqualityWithMultiplier() {
        let constraint = view1.leadingAnchor == view2.trailingAnchor / 2
        constraint.assert(view1, .leading, .equal, view2, .trailing, multiplier: 0.5)
        assertIdentical(constraint.firstItem, view1)
        assertIdentical(constraint.secondItem, view2)
        XCTAssertEqual(constraint.constant, 0, accuracy: cgEpsilon)
        XCTAssertEqual(constraint.multiplier, 0.5, accuracy: cgEpsilon)
        XCTAssertEqual(constraint.priority.rawValue, TestPriorityRequired.rawValue, accuracy: fEpsilon)
        XCTAssertTrue(constraint.isActive)
        XCTAssertEqual(constraint.relation, .equal)
        XCTAssertEqual(constraint.firstAttribute, .leading)
        XCTAssertEqual(constraint.secondAttribute, .trailing)
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
        constraint.assert(view1, .width, .equal, view2, .width, priority: LayoutPriority(rawValue: 750))
    }

    func testEqualityWithPriorityConstantMath() {
        let constraint = view1.widthAnchor == view2.widthAnchor ~ .high - 1
        constraint.assert(view1, .width, .equal, view2, .width, priority: LayoutPriority(rawValue: 749))
        assertIdentical(constraint.firstItem, view1)
        assertIdentical(constraint.secondItem, view2)
        XCTAssertEqual(constraint.constant, 0, accuracy: cgEpsilon)
        XCTAssertEqual(constraint.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(constraint.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(constraint.isActive)
        XCTAssertEqual(constraint.relation, .equal)
        XCTAssertEqual(constraint.firstAttribute, .width)
        XCTAssertEqual(constraint.secondAttribute, .width)
    }

    func testEqualityWithPriorityLiteralMath() {
        let constraint = view1.widthAnchor == view2.widthAnchor ~ LayoutPriority(rawValue: 750 - 1)
                constraint.assert(view1, .width, .equal, view2, .width, priority: LayoutPriority(rawValue: 749))
        assertIdentical(constraint.firstItem, view1)
        assertIdentical(constraint.secondItem, view2)
        XCTAssertEqual(constraint.constant, 0, accuracy: cgEpsilon)
        XCTAssertEqual(constraint.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(constraint.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(constraint.isActive)
        XCTAssertEqual(constraint.relation, .equal)
        XCTAssertEqual(constraint.firstAttribute, .width)
        XCTAssertEqual(constraint.secondAttribute, .width)
    }

    func testEqualityWithOffsetAndPriorityMath() {
        let constraint = view1.widthAnchor == view2.widthAnchor + 10 ~ .high - 1
        constraint.assert(view1, .width, .equal, view2, .width, constant: 10, priority: LayoutPriority(rawValue: 749))
        assertIdentical(constraint.firstItem, view1)
        assertIdentical(constraint.secondItem, view2)
        XCTAssertEqual(constraint.constant, 10, accuracy: cgEpsilon)
        XCTAssertEqual(constraint.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(constraint.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(constraint.isActive)
        XCTAssertEqual(constraint.relation, .equal)
        XCTAssertEqual(constraint.firstAttribute, .width)
        XCTAssertEqual(constraint.secondAttribute, .width)
    }

    func testEqualityWithOffsetAndMultiplierAndPriorityMath() {
        let constraint = view1.widthAnchor == (view2.widthAnchor + 10) / 2 ~ .high - 1
        assertIdentical(constraint.firstItem, view1)
        assertIdentical(constraint.secondItem, view2)
        XCTAssertEqual(constraint.constant, 10, accuracy: cgEpsilon)
        XCTAssertEqual(constraint.multiplier, 0.5, accuracy: cgEpsilon)
        XCTAssertEqual(constraint.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(constraint.isActive)
        XCTAssertEqual(constraint.relation, .equal)
        XCTAssertEqual(constraint.firstAttribute, .width)
        XCTAssertEqual(constraint.secondAttribute, .width)
    }

    func testCenterAnchors() {
        let constraints = view1.centerAnchors == view2.centerAnchors

        let horizontal = constraints.first
        assertIdentical(horizontal.firstItem, view1)
        assertIdentical(horizontal.secondItem, view2)
        XCTAssertEqual(horizontal.constant, 0, accuracy: cgEpsilon)
        XCTAssertEqual(horizontal.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(horizontal.priority.rawValue, TestPriorityRequired.rawValue, accuracy: fEpsilon)
        XCTAssertTrue(horizontal.isActive)
        XCTAssertEqual(horizontal.relation, .equal)
        XCTAssertEqual(horizontal.firstAttribute, .centerX)
        XCTAssertEqual(horizontal.secondAttribute, .centerX)

        let vertical = constraints.second
        assertIdentical(vertical.firstItem, view1)
        assertIdentical(vertical.secondItem, view2)
        XCTAssertEqual(vertical.constant, 0, accuracy: cgEpsilon)
        XCTAssertEqual(vertical.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(vertical.priority.rawValue, TestPriorityRequired.rawValue, accuracy: fEpsilon)
        XCTAssertTrue(vertical.isActive)
        XCTAssertEqual(vertical.relation, .equal)
        XCTAssertEqual(vertical.firstAttribute, .centerY)
        XCTAssertEqual(vertical.secondAttribute, .centerY)
    }

    func testCenterAnchorsWithOffsetAndPriority() {
        let constraints = view1.centerAnchors == view2.centerAnchors + 10 ~ .high - 1

        let horizontal = constraints.first
        assertIdentical(horizontal.firstItem, view1)
        assertIdentical(horizontal.secondItem, view2)
        XCTAssertEqual(horizontal.constant, 10, accuracy: cgEpsilon)
        XCTAssertEqual(horizontal.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(horizontal.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(horizontal.isActive)
        XCTAssertEqual(horizontal.relation, .equal)
        XCTAssertEqual(horizontal.firstAttribute, .centerX)
        XCTAssertEqual(horizontal.secondAttribute, .centerX)

        let vertical = constraints.second
        assertIdentical(vertical.firstItem, view1)
        assertIdentical(vertical.secondItem, view2)
        XCTAssertEqual(vertical.constant, 10, accuracy: cgEpsilon)
        XCTAssertEqual(vertical.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(vertical.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(vertical.isActive)
        XCTAssertEqual(vertical.relation, .equal)
        XCTAssertEqual(vertical.firstAttribute, .centerY)
        XCTAssertEqual(vertical.secondAttribute, .centerY)
    }

    func testHorizontalAnchors() {
        let constraints = view1.horizontalAnchors == view2.horizontalAnchors + 10 ~ .high - 1

        let leading = constraints.first
        assertIdentical(leading.firstItem, view1)
        assertIdentical(leading.secondItem, view2)
        XCTAssertEqual(leading.constant, 10, accuracy: cgEpsilon)
        XCTAssertEqual(leading.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(leading.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(leading.isActive)
        XCTAssertEqual(leading.relation, .equal)
        XCTAssertEqual(leading.firstAttribute, .leading)
        XCTAssertEqual(leading.secondAttribute, .leading)

        let trailing = constraints.second
        assertIdentical(trailing.firstItem, view1)
        assertIdentical(trailing.secondItem, view2)
        XCTAssertEqual(trailing.constant, -10, accuracy: cgEpsilon)
        XCTAssertEqual(trailing.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(trailing.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(trailing.isActive)
        XCTAssertEqual(trailing.relation, .equal)
        XCTAssertEqual(trailing.firstAttribute, .trailing)
        XCTAssertEqual(trailing.secondAttribute, .trailing)
    }

    func testVerticalAnchors() {
        let constraints = view1.verticalAnchors == view2.verticalAnchors + 10 ~ .high - 1

        let top = constraints.first
        assertIdentical(top.firstItem, view1)
        assertIdentical(top.secondItem, view2)
        XCTAssertEqual(top.constant, 10, accuracy: cgEpsilon)
        XCTAssertEqual(top.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(top.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(top.isActive)
        XCTAssertEqual(top.relation, .equal)
        XCTAssertEqual(top.firstAttribute, .top)
        XCTAssertEqual(top.secondAttribute, .top)

        let bottom = constraints.second
        assertIdentical(bottom.firstItem, view1)
        assertIdentical(bottom.secondItem, view2)
        XCTAssertEqual(bottom.constant, -10, accuracy: cgEpsilon)
        XCTAssertEqual(bottom.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(bottom.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(bottom.isActive)
        XCTAssertEqual(bottom.relation, .equal)
        XCTAssertEqual(bottom.firstAttribute, .bottom)
        XCTAssertEqual(bottom.secondAttribute, .bottom)
    }

    func testSizeAnchors() {
        let constraints = view1.sizeAnchors == view2.sizeAnchors + 10 ~ .high - 1

        let width = constraints.first
        assertIdentical(width.firstItem, view1)
        assertIdentical(width.secondItem, view2)
        XCTAssertEqual(width.constant, 10, accuracy: cgEpsilon)
        XCTAssertEqual(width.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(width.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(width.isActive)
        XCTAssertEqual(width.relation, .equal)
        XCTAssertEqual(width.firstAttribute, .width)
        XCTAssertEqual(width.secondAttribute, .width)

        let height = constraints.second
        assertIdentical(height.firstItem, view1)
        assertIdentical(height.secondItem, view2)
        XCTAssertEqual(height.constant, 10, accuracy: cgEpsilon)
        XCTAssertEqual(height.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(height.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(height.isActive)
        XCTAssertEqual(height.relation, .equal)
        XCTAssertEqual(height.firstAttribute, .height)
        XCTAssertEqual(height.secondAttribute, .height)
    }

    func testSizeAnchorsWithConstants() {
        let constraints = view1.sizeAnchors == CGSize(width: 50, height: 100) ~ .high - 1
        
        let width = constraints.first
        assertIdentical(width.firstItem, view1)
        assertIdentical(width.secondItem, nil)
        XCTAssertEqual(width.constant, 50, accuracy: cgEpsilon)
        XCTAssertEqual(width.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(width.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(width.isActive)
        XCTAssertEqual(width.relation, .equal)
        XCTAssertEqual(width.firstAttribute, .width)
        XCTAssertEqual(width.secondAttribute, .notAnAttribute)

        let height = constraints.second
        assertIdentical(height.firstItem, view1)
        assertIdentical(height.secondItem, nil)
        XCTAssertEqual(height.constant, 100, accuracy: cgEpsilon)
        XCTAssertEqual(height.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(height.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(height.isActive)
        XCTAssertEqual(height.relation, .equal)
        XCTAssertEqual(height.firstAttribute, .height)
        XCTAssertEqual(height.secondAttribute, .notAnAttribute)


    }

    func testEdgeAnchors() {
        let priority = LayoutPriority.high - 1
        print("PRIORITY \(priority.rawValue)")
        let constraints = view1.edgeAnchors == view2.edgeAnchors + 10 ~ .high - 1

        let all = constraints.all
        XCTAssertEqual(all.count, 4)
        XCTAssertEqual(all[0].firstAttribute, .top)
        XCTAssertEqual(all[1].firstAttribute, .leading)
        XCTAssertEqual(all[2].firstAttribute, .bottom)
        XCTAssertEqual(all[3].firstAttribute, .trailing)

        let vertical = constraints.vertical
        XCTAssertEqual(vertical.first.firstAttribute, .top)
        XCTAssertEqual(vertical.second.firstAttribute, .bottom)

        let horizontal = constraints.horizontal
        XCTAssertEqual(horizontal.first.firstAttribute, .leading)
        XCTAssertEqual(horizontal.second.firstAttribute, .trailing)

        let leading = constraints.leading
        assertIdentical(leading.firstItem, view1)
        assertIdentical(leading.secondItem, view2)
        XCTAssertEqual(leading.constant, 10, accuracy: cgEpsilon)
        XCTAssertEqual(leading.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(leading.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(leading.isActive)
        XCTAssertEqual(leading.relation, .equal)
        XCTAssertEqual(leading.firstAttribute, .leading)
        XCTAssertEqual(leading.secondAttribute, .leading)

        let trailing = constraints.trailing
        assertIdentical(trailing.firstItem, view1)
        assertIdentical(trailing.secondItem, view2)
        XCTAssertEqual(trailing.constant, -10, accuracy: cgEpsilon)
        XCTAssertEqual(trailing.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(trailing.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(trailing.isActive)
        XCTAssertEqual(trailing.relation, .equal)
        XCTAssertEqual(trailing.firstAttribute, .trailing)
        XCTAssertEqual(trailing.secondAttribute, .trailing)

        let top = constraints.top
        assertIdentical(top.firstItem, view1)
        assertIdentical(top.secondItem, view2)
        XCTAssertEqual(top.constant, 10, accuracy: cgEpsilon)
        XCTAssertEqual(top.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(top.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(top.isActive)
        XCTAssertEqual(top.relation, .equal)
        XCTAssertEqual(top.firstAttribute, .top)
        XCTAssertEqual(top.secondAttribute, .top)

        let bottom = constraints.bottom
        assertIdentical(bottom.firstItem, view1)
        assertIdentical(bottom.secondItem, view2)
        XCTAssertEqual(bottom.constant, -10, accuracy: cgEpsilon)
        XCTAssertEqual(bottom.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(bottom.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(bottom.isActive)
        XCTAssertEqual(bottom.relation, .equal)
        XCTAssertEqual(bottom.firstAttribute, .bottom)
        XCTAssertEqual(bottom.secondAttribute, .bottom)
    }

    func testEdgeAnchorsWithInsets() {
        let insets = UIEdgeInsets(top: 10, left: 5, bottom: 15, right: 20)

        let constraints = view1.edgeAnchors == view2.edgeAnchors + insets ~ .high - 1

        let leading = constraints.leading
        assertIdentical(leading.firstItem, view1)
        assertIdentical(leading.secondItem, view2)
        XCTAssertEqual(leading.constant, 5, accuracy: cgEpsilon)
        XCTAssertEqual(leading.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(leading.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(leading.isActive)
        XCTAssertEqual(leading.relation, .equal)
        XCTAssertEqual(leading.firstAttribute, .leading)
        XCTAssertEqual(leading.secondAttribute, .leading)

        let trailing = constraints.trailing
        assertIdentical(trailing.firstItem, view1)
        assertIdentical(trailing.secondItem, view2)
        XCTAssertEqual(trailing.constant, -20, accuracy: cgEpsilon)
        XCTAssertEqual(trailing.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(trailing.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(trailing.isActive)
        XCTAssertEqual(trailing.relation, .equal)
        XCTAssertEqual(trailing.firstAttribute, .trailing)
        XCTAssertEqual(trailing.secondAttribute, .trailing)

        let top = constraints.top
        assertIdentical(top.firstItem, view1)
        assertIdentical(top.secondItem, view2)
        XCTAssertEqual(top.constant, 10, accuracy: cgEpsilon)
        XCTAssertEqual(top.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(top.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(top.isActive)
        XCTAssertEqual(top.relation, .equal)
        XCTAssertEqual(top.firstAttribute, .top)
        XCTAssertEqual(top.secondAttribute, .top)

        let bottom = constraints.bottom
        assertIdentical(bottom.firstItem, view1)
        assertIdentical(bottom.secondItem, view2)
        XCTAssertEqual(bottom.constant, -15, accuracy: cgEpsilon)
        XCTAssertEqual(bottom.multiplier, 1, accuracy: cgEpsilon)
        XCTAssertEqual(bottom.priority.rawValue, TestPriorityHigh.rawValue - 1, accuracy: fEpsilon)
        XCTAssertTrue(bottom.isActive)
        XCTAssertEqual(bottom.relation, .equal)
        XCTAssertEqual(bottom.firstAttribute, .bottom)
        XCTAssertEqual(bottom.secondAttribute, .bottom)
    }
}



func assertIdentical(_ expression1: @autoclosure () -> AnyObject?,
                     _ expression2: @autoclosure () -> AnyObject?,
                     _ message: String? = nil,
                     file: StaticString = #file,
                     line: UInt = #line) {
    XCTAssertTrue(expression1() === expression2(), message ?? "\(expression1()) was not identical to \(expression2())", file: file, line: line)
}

func assertIdentical(_ expressions: TuplePair<() -> AnyObject?>...,
    message: String? = nil,
    file: StaticString = #file,
    line: UInt = #line) {
    expressions.forEach{assertIdentical($0.first(), $0.second())}

}

func assertIdentical(_ expressions: TuplePair<AnyObject?>...,
    message: String? = nil,
    file: StaticString = #file,
    line: UInt = #line) {
    expressions.forEach{assertIdentical($0.first, $0.second, message, file: file, line: line)}

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
