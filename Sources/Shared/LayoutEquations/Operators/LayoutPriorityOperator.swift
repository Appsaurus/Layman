//
//  LayoutPriorityOperator.swift
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
public func ~ <A>(lhs: LayoutAnchor<A>, rhs: LayoutPriority) -> LayoutExpression<A> {
    return LayoutExpression(anchor: lhs).with(priority: rhs)
}

@discardableResult
public func ~ <A>(lhs: LayoutExpression<A>, rhs: LayoutPriority) -> LayoutExpression<A> {
    return lhs.with(priority: rhs)
}

@discardableResult
public func ~ <F, S>(lhs: LayoutAnchors<F, S>, rhs: LayoutPriority) -> MultiTermLayoutExpression<F, S> {
    return MultiTermLayoutExpression(anchors: lhs).with(priority: rhs)
}

@discardableResult
public func ~ <F, S>(lhs: MultiTermLayoutExpression<F, S>, rhs: LayoutPriority) -> MultiTermLayoutExpression<F, S> {
    return lhs.with(priority: rhs)
}
