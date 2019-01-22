////
////  LayoutDimensionArray+ConstantRelationOperators.swift
////  UILayoutKit
////
////  Created by Brian Strobach on 1/15/19.
////  Copyright © 2019 Brian Strobach. All rights reserved.
////
//
//// MARK: - Equal
//
//// MARK: Anchor Array == LayoutConstant
//@discardableResult
//public func == (lhs: LayoutDimensions, rhs: LayoutConstant) -> Constraints {
//    return lhs.map({$0 == rhs})
//}
//
//// MARK: Anchor Array == LayoutConfiguration
//@discardableResult
//public func == (lhs: LayoutDimensions, rhs: LayoutConfiguration) -> Constraints {
//    return lhs.map({$0 == rhs})
//}
//
//// MARK: Anchor Array <= LayoutConstant
//@discardableResult
//public func <= (lhs: LayoutDimensions, rhs: LayoutConstant) -> Constraints {
//    return lhs.map({$0 <= rhs})
//}
//
//// MARK: Anchor Array <= LayoutConfiguration
//@discardableResult
//public func <= (lhs: LayoutDimensions, rhs: LayoutConfiguration) -> Constraints {
//    return lhs.map({$0 <= rhs})
//}
//
//// MARK: Anchor Array >= LayoutConstant
//@discardableResult
//public func >= (lhs: LayoutDimensions, rhs: LayoutConstant) -> Constraints {
//    return lhs.map({$0 >= rhs})
//}
//
//// MARK: Anchor Array >= LayoutConstant
//@discardableResult
//public func >= (lhs: LayoutDimensions, rhs: LayoutConfiguration) -> Constraints {
//    return lhs.map({$0 >= rhs})
//}
