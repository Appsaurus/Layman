////
////  YAxisAnchorsOperators.swift
////  UILayoutKit
////
////  Created by Brian Strobach on 1/14/19.
////  Copyright © 2019 Brian Strobach. All rights reserved.
////
//
//// MARK: - Equal
//
//// MARK: Anchor == Anchor Array
//@discardableResult
//public func == (lhs: YAxisAnchor, rhs: YAxisAnchors) -> Constraints {
//    return rhs.map({lhs == $0})
//}
//
//// MARK: Anchor Array == Anchor
//@discardableResult
//public func == (lhs: YAxisAnchors, rhs: YAxisAnchor) -> Constraints {
//    return lhs.map({$0 == rhs})
//}
//
//// MARK: Anchor Array == Anchor Array
//@discardableResult
//public func == (lhs: YAxisAnchors, rhs: YAxisAnchors) -> [Constraints] {
//    return lhs.map { element in
//        rhs.map { element == $0 }
//    }
//}
//
//// MARK: Anchor == Expression Array
//@discardableResult
//public func == (lhs: YAxisAnchor, rhs: YAxisAnchorExpressions) -> Constraints {
//    return rhs.map({lhs == $0})
//}
//
//// MARK: Anchor Array == Expression
//@discardableResult
//public func == (lhs: YAxisAnchors, rhs: YAxisAnchorExpression) -> Constraints {
//    return lhs.map {$0 == rhs }
//}
//
//// MARK: Anchor Array == Expression Array
//@discardableResult
//public func == (lhs: YAxisAnchors, rhs: YAxisAnchorExpressions) -> [Constraints] {
//    return lhs.map { element in
//        rhs.map { element == $0 }
//    }
//}
//
//// MARK: - LessThanOrEqual
//
//// MARK: Anchor <= Anchor Array
//@discardableResult
//public func <= (lhs: YAxisAnchor, rhs: YAxisAnchors) -> Constraints {
//    return rhs.map({lhs <= $0})
//}
//
//// MARK: Anchor Array <= Anchor
//@discardableResult
//public func <= (lhs: YAxisAnchors, rhs: YAxisAnchor) -> Constraints {
//    return lhs.map({$0 <= rhs})
//}
//
//// MARK: Anchor Array <= Anchor Array
//@discardableResult
//public func <= (lhs: YAxisAnchors, rhs: YAxisAnchors) -> [Constraints] {
//    return lhs.map { element in
//        rhs.map { element <= $0 }
//    }
//}
//
//// MARK: Anchor <= Expression Array
//@discardableResult
//public func <= (lhs: YAxisAnchor, rhs: YAxisAnchorExpressions) -> Constraints {
//    return rhs.map({lhs <= $0})
//}
//
//// MARK: Anchor Array <= Expression
//@discardableResult
//public func <= (lhs: YAxisAnchors, rhs: YAxisAnchorExpression) -> Constraints {
//    return lhs.map {$0 <= rhs }
//}
//
//// MARK: Anchor Array <= Expression Array
//@discardableResult
//public func <= (lhs: YAxisAnchors, rhs: YAxisAnchorExpressions) -> [Constraints] {
//    return lhs.map { element in
//        rhs.map { element <= $0 }
//    }
//}
//
//// MARK: - GreaterThanOrEqual
//
//// MARK: Anchor >= Anchor Array
//@discardableResult
//public func >= (lhs: YAxisAnchor, rhs: YAxisAnchors) -> Constraints {
//    return rhs.map({lhs >= $0})
//}
//
//// MARK: Anchor Array >= Anchor
//@discardableResult
//public func >= (lhs: YAxisAnchors, rhs: YAxisAnchor) -> Constraints {
//    return lhs.map({$0 >= rhs})
//}
//
//// MARK: Anchor Array >= Anchor Array
//@discardableResult
//public func >= (lhs: YAxisAnchors, rhs: YAxisAnchors) -> [Constraints] {
//    return lhs.map { element in
//        rhs.map { element >= $0 }
//    }
//}
//
//// MARK: Anchor >= Expression Array
//@discardableResult
//public func >= (lhs: YAxisAnchor, rhs: YAxisAnchorExpressions) -> Constraints {
//    return rhs.map({lhs >= $0})
//}
//
//// MARK: Anchor Array >= Expression
//@discardableResult
//public func >= (lhs: YAxisAnchors, rhs: YAxisAnchorExpression) -> Constraints {
//    return lhs.map {$0 >= rhs }
//}
//
//// MARK: Anchor Array >= Expression Array
//@discardableResult
//public func >= (lhs: YAxisAnchors, rhs: YAxisAnchorExpressions) -> [Constraints] {
//    return lhs.map { element in
//        rhs.map { element >= $0 }
//    }
//}
