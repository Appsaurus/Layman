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

//@discardableResult public func ~ (lhs: T, rhs: Priority) -> LayoutExpression<NSLayoutDimension, CGFloat> {
//    return LayoutExpression(constant: CGFloat(lhs), priority: rhs)
//}
//
//@discardableResult public func ~ (lhs: CGSize, rhs: Priority) -> LayoutExpression<AnchorPair<NSLayoutDimension, NSLayoutDimension>, CGSize> {
//    return LayoutExpression(constant: lhs, priority: rhs)
//}

@discardableResult public func ~ <A>(lhs: LayoutAnchor<A>, rhs: Priority) -> LayoutExpression<A> {
    return LayoutExpression(anchor: lhs).with(priority: rhs)
}

@discardableResult public func ~ <A>(lhs: LayoutExpression<A>, rhs: Priority) -> LayoutExpression<A> {
    return lhs.with(priority: rhs)
}

//@discardableResult public func ~ <T, U>(lhs: LayoutExpression<T, U>, rhs: Priority) -> LayoutExpression<T, U> {
//    var expr = lhs
//    expr.priority = rhs
//    return expr
//}
