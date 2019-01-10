////
////  LayoutConstantArithmeticOperators.swift
////  UILayoutKit
////
////  Created by Brian Strobach on 1/4/19.
////  Copyright © 2019 Brian Strobach. All rights reserved.
////
//
//import CoreGraphics
//import Swiftest
//
////MARK: Constant Arithmetic
//@discardableResult
//public func + <AT>(lhs: LayoutAnchor<AT>, rhs: LayoutConstant) -> LayoutExpression<AT> {
//    return LayoutExpression(anchor: lhs, configuration: LayoutConfiguration(constant: rhs))
//}
//
//@discardableResult
//public func - <AT>(lhs: LayoutAnchor<AT>, rhs: LayoutConstant) -> LayoutExpression<AT> {
//    return LayoutExpression(anchor: lhs, configuration: LayoutConfiguration(constant: -rhs))
//}
//
//@discardableResult
//public func * <AT>(lhs: LayoutAnchor<AT>, rhs: LayoutConstant) -> LayoutExpression<AT> {
//    return LayoutExpression(anchor: lhs, configuration: LayoutConfiguration(multiplier: rhs))
//}
//
//@discardableResult
//public func / <AT>(lhs: LayoutAnchor<AT>, rhs: LayoutConstant) -> LayoutExpression<AT> {
//    return lhs * (1.0 / rhs)
//}
//
//@discardableResult
//public func / <AT>(lhs: LayoutExpression<AT>, rhs: LayoutConstant) -> LayoutExpression<AT> {
//    return lhs.with(multiplier: (1.0 / rhs))
//}
//
////MARK: AnchorPairs + Constant Arithmetic
//@discardableResult
//public func + <F, S>(lhs: LayoutAnchors<F, S>, rhs: LayoutConstant) -> LayoutPairExpression<F, S> {
//    return LayoutPairExpression(anchors: lhs, configuration: LayoutConfiguration(constant: rhs))
//}
//
//@discardableResult
//public func - <F, S>(lhs: LayoutAnchors<F, S>, rhs: LayoutConstant) -> LayoutPairExpression<F, S> {
//    return LayoutPairExpression(anchors: lhs, configuration: LayoutConfiguration(constant: -rhs))
//}
//
//@discardableResult
//public func * <F, S>(lhs: LayoutAnchors<F, S>, rhs: LayoutConstant) -> LayoutPairExpression<F, S> {
//    return LayoutPairExpression(anchors: lhs, configuration: LayoutConfiguration(multiplier: rhs))
//}
//
//@discardableResult
//public func / <F, S>(lhs: LayoutAnchors<F, S>, rhs: LayoutConstant) -> LayoutPairExpression<F, S> {
//    return lhs * (1.0 / rhs)
//}
//
//@discardableResult
//public func / <F, S>(lhs: LayoutPairExpression<F, S>, rhs: LayoutConstant) -> LayoutPairExpression<F, S> {
//    return lhs.with(multiplier: (1.0 / rhs))
//}
