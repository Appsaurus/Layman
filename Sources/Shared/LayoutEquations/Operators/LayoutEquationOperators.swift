//
//  LayoutEquationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/3/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import UIKit

precedencegroup PriorityPrecedence {
    associativity: none
    higherThan: ComparisonPrecedence
    lowerThan: AdditionPrecedence
}

infix operator ~ : PriorityPrecedence

@discardableResult
public func ~ <A>(lhs: LayoutAnchor<A>, rhs: Priority) -> LayoutExpression<A> {
    return LayoutExpression(anchor: lhs).with(priority: rhs)
}

@discardableResult
public func ~ <A>(lhs: LayoutExpression<A>, rhs: Priority) -> LayoutExpression<A> {
    return lhs.with(priority: rhs)
}

//MARK: Priority Arithmetic

public func == (lhs: Priority, rhs: Priority) -> Bool {
    return lhs.rawValue == rhs.rawValue
}

public func + (lhs: Priority, rhs: LayoutConstant) -> Priority {
    return Priority(rawValue: lhs.rawValue + rhs.float)
}

public func + (lhs: LayoutConstant, rhs: Priority) -> Priority {
    return Priority(rawValue: lhs.float + rhs.rawValue)
}

public func - (lhs: Priority, rhs: LayoutConstant) -> Priority {
    return Priority(rawValue: lhs.rawValue - rhs.float)
}

public func - (lhs: LayoutConstant, rhs: Priority) -> Priority {
    return Priority(rawValue: lhs.float - rhs.rawValue)
}
