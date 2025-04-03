//
//  SharedTestUtils.swift
//  Layman
//
//  Created by Brian Strobach on 1/16/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

#if canImport(AppKit)
import AppKit
#else
import UIKit
#endif

@testable import Layman
import XCTest
import SwiftTestUtils

let cgEpsilon: CGFloat = 0.00001
let fEpsilon: Float = 0.00001
let dEpsilon: Double = 0.00001

extension Constraint {
    func assert(_ firstItem: (AnyObject & LayoutAnchorable)?,
                _ firstAttribute: ConstraintAttribute?,
                _ relation: Constraint.Relation,
                _ secondItems: [(AnyObject & LayoutAnchorable)],
                _ secondAttribute: ConstraintAttribute? = .notAnAttribute,
                constant: LayoutConstant = 0.0,
                multiplier: LayoutConstant = 1.0,
                priority: LayoutPriority = .required,
                file: StaticString = #file,
                line: UInt = #line) {
        secondItems.forEach { [weak self] in
            guard let self = self else { return }
            self.assert(firstItem, firstAttribute, relation, $0, secondAttribute, constant: constant, multiplier: multiplier, priority: priority, file: file, line: line)
        }
    }

    func assert(_ firstItem: (AnyObject & LayoutAnchorable)?,
                _ firstAttribute: ConstraintAttribute?,
                _ relation: Constraint.Relation,
                _ secondItem: (AnyObject & LayoutAnchorable)? = nil,
                _ secondAttribute: ConstraintAttribute? = .notAnAttribute,
                constant: LayoutConstant = 0.0,
                multiplier: LayoutConstant = 1.0,
                priority: LayoutPriority = .required,
                file: StaticString = #file,
                line: UInt = #line) {
        assertIdentical(firstItem, self.firstItem, file: file, line: line)
        XCTAssertEqual(firstAttribute, self.firstAttribute, file: file, line: line)
//        let inverted = firstAttribute?.isCategory(.trailing) == true
//        let relation = inverted ? relation.inverted : relation
//        let constant = inverted ? -constant : constant
        XCTAssertEqual(relation, self.relation, file: file, line: line)
        assertIdentical(secondItem, self.secondItem, file: file, line: line)
        XCTAssertEqual(secondAttribute, self.secondAttribute, file: file, line: line)

        XCTAssertEqual(constant, self.constant, accuracy: cgEpsilon, file: file, line: line)
        XCTAssertEqual(multiplier, self.multiplier, accuracy: cgEpsilon, file: file, line: line)
        XCTAssertEqual(priority.rawValue, self.priority.rawValue, accuracy: fEpsilon, file: file, line: line)
        XCTAssertTrue(isActive, file: file, line: line)
    }
}

extension Collection where Element: Constraint {
    func assert(_ items: [(AnyObject & LayoutAnchorable)],
                _ firstAttribute: ConstraintAttribute?,
                _ relation: Constraint.Relation,
                _ secondItem: (AnyObject & LayoutAnchorable)? = nil,
                _ secondAttribute: ConstraintAttribute? = .notAnAttribute,
                constant: LayoutConstant = 0.0,
                multiplier: LayoutConstant = 1.0,
                priority: LayoutPriority = .required,
                file: StaticString = #file,
                line: UInt = #line) {
        XCTAssertEqual(count, items.count)
        enumerated().forEach {$1.assert(items[$0], firstAttribute, relation, secondItem, secondAttribute,
                                        constant: constant,
                                        multiplier: multiplier,
                                        priority: priority,
                                        file: file,
                                        line: line)}
    }

    func assert(_ firstItem: (AnyObject & LayoutAnchorable)?,
                _ firstAttribute: ConstraintAttribute?,
                _ relation: Constraint.Relation,
                _ secondItems: [(AnyObject & LayoutAnchorable)],
                _ secondAttribute: ConstraintAttribute? = .notAnAttribute,
                constant: LayoutConstant = 0.0,
                multiplier: LayoutConstant = 1.0,
                priority: LayoutPriority = .required,
                file: StaticString = #file,
                line: UInt = #line) {
        enumerated().forEach { indexedConstraint in
            let secondItem = secondItems[indexedConstraint.offset]
            indexedConstraint.element.assert(firstItem,
                                             firstAttribute,
                                             relation,
                                             secondItem ,
                                             secondAttribute,
                                             constant: constant,
                                             multiplier: multiplier,
                                             priority: priority,
                                             file: file,
                                             line: line)
        }

    }

}

extension Array where Element: Collection, Element.Element == Constraint {
    func assert(_ items: [(AnyObject & LayoutAnchorable)],
                _ firstAttribute: ConstraintAttribute?,
                _ relation: Constraint.Relation,
                _ secondItems: [(AnyObject & LayoutAnchorable)],
                _ secondAttribute: ConstraintAttribute? = .notAnAttribute,
                constant: LayoutConstant = 0.0,
                multiplier: LayoutConstant = 1.0,
                priority: LayoutPriority = .required,
                file: StaticString = #file,
                line: UInt = #line) {
        items.enumerated().forEach { indexedItem in
            let matchingConstraints = self.first(where: { (array) -> Bool in
                return array.contains(where: { (constraint) -> Bool in
                    return constraint.firstItem === indexedItem.element
                })
            })

            guard let constraints = matchingConstraints else {
                XCTFail("Could not find constraints related to item \(indexedItem.element)")
                return
            }

            constraints.assert(indexedItem.element,
                               firstAttribute,
                               relation,
                               secondItems,
                               secondAttribute,
                               constant: constant,
                               multiplier: multiplier,
                               priority: priority,
                               file: file,
                               line: line)
        }
    }
}

internal extension Collection where Element == ConstraintPair {
    var first: [Constraint] {
        return self.map { $0.first }
    }

    var second: [Constraint] {
        return self.map { $0.second }
    }
}

extension ConstraintAttribute: @retroactive CustomDebugStringConvertible {

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
        @unknown default:
            fatalError()
        }
        #endif
    }
}
