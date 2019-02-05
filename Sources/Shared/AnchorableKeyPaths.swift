////
////  AnchorableKeyPaths.swift
////  UILayoutKit
////
////  Created by Brian Strobach on 1/14/19.
////  Copyright © 2019 Brian Strobach. All rights reserved.
////
//
//extension LayoutAnchorable {
//    public subscript<A: AnchorType>(_ keyPaths: KeyPath<LayoutAnchorable, A>...) -> AnchorableKeyPaths<A> {
//        return AnchorableKeyPaths(self, keyPaths)
//    }
//}
//
////// MARK: Anchor == Anchor
//
//@discardableResult
//public func == (lhs: LayoutAnchorable, rhs: AnchorableKeyPath<XAxisAnchor>) -> Constraint {
//    return lhs[keyPath: rhs.keyPath] == rhs.anchor
//}
//
//@discardableResult
//public func == (lhs: [LayoutAnchorable], rhs: AnchorableKeyPath<XAxisAnchor>) -> Constraints {
//    return lhs.map { $0 == rhs }
//}
//
//@discardableResult
//public func == (lhs: LayoutAnchorable, rhs: AnchorableKeyPaths<XAxisAnchor>) -> Constraints {
//    return rhs.anchorableKeyPaths.map {lhs == $0}
//}
//
//@discardableResult
//public func == (lhs: [LayoutAnchorable], rhs: AnchorableKeyPaths<XAxisAnchor>) -> Constraints {
//    return lhs.map { $0 == rhs }.flattened
//}
//
//// MARK: Anchor == Anchor
//@discardableResult
//public func == (lhs: LayoutAnchorable, rhs: AnchorableKeyPath<YAxisAnchor>) -> Constraint {
//    return lhs[keyPath: rhs.keyPath] == rhs.anchor
//}
//
//@discardableResult
//public func == (lhs: [LayoutAnchorable], rhs: AnchorableKeyPath<YAxisAnchor>) -> Constraints {
//    return lhs.map { $0 == rhs }
//}
//
//@discardableResult
//public func == (lhs: LayoutAnchorable, rhs: AnchorableKeyPaths<YAxisAnchor>) -> Constraints {
//    return rhs.anchorableKeyPaths.map {lhs == $0}
//}
//
//@discardableResult
//public func == (lhs: [LayoutAnchorable], rhs: AnchorableKeyPaths<YAxisAnchor>) -> Constraints {
//    return lhs.map { $0 == rhs }.flattened
//}
//
//// MARK: Anchor == Anchor
//@discardableResult
//public func == (lhs: LayoutAnchorable, rhs: AnchorableKeyPath<LayoutDimension>) -> Constraint {
//    return lhs[keyPath: rhs.keyPath] == rhs.anchor
//}
//
//@discardableResult
//public func == (lhs: [LayoutAnchorable], rhs: AnchorableKeyPath<LayoutDimension>) -> Constraints {
//    return lhs.map { $0 == rhs }
//}
//
//@discardableResult
//public func == (lhs: LayoutAnchorable, rhs: AnchorableKeyPaths<LayoutDimension>) -> Constraints {
//    return rhs.anchorableKeyPaths.map {lhs == $0}
//}
//
//@discardableResult
//public func == (lhs: [LayoutAnchorable], rhs: AnchorableKeyPaths<LayoutDimension>) -> Constraints {
//    return lhs.map { $0 == rhs }.flattened
//}
//
//public protocol AnchorProvider {
//    associatedtype A: AnchorType
//    var anchor: A { get }
//}
//
//public class AnchorableKeyPath<A: AnchorType> {
//
//    public var anchorable: LayoutAnchorable
//    public var keyPath: KeyPath<LayoutAnchorable, A>
//
//    public init(_ anchorable: LayoutAnchorable, _ keyPath: KeyPath<LayoutAnchorable, A>) {
//        self.anchorable = anchorable
//        self.keyPath = keyPath
//    }
//}
//
//extension AnchorableKeyPath: AnchorProvider {
//    public var anchor: A {
//        return anchorable[keyPath: keyPath]
//    }
//}
//
//public protocol AnchorsProvider {
//    associatedtype A: AnchorType
//    var anchors: [A] { get }
//}
//
//public class AnchorableKeyPaths<A: AnchorType> {
//
//    public var anchorable: LayoutAnchorable
//    public var keyPaths: [KeyPath<LayoutAnchorable, A>]
//    public var anchorableKeyPaths: [AnchorableKeyPath<A>] {
//        return keyPaths.map {AnchorableKeyPath(anchorable, $0)}
//    }
//
//    public init(_ anchorable: LayoutAnchorable, _ keyPaths: [KeyPath<LayoutAnchorable, A>]) {
//        self.anchorable = anchorable
//        self.keyPaths = keyPaths
//    }
//
//}
//
//extension AnchorableKeyPaths: AnchorsProvider {
//    public var anchors: [A] {
//        return keyPaths.map {anchorable[keyPath: $0]}
//    }
//}

//public final class LayoutKeyPathExpression<A: AnchorType> {
//
//    public var anchorableKeyPath: AnchorableKeyPath<A>
//    public var coefficients: LayoutConfiguration
//
//    public init(anchorableKeyPath: AnchorableKeyPath<A>, coefficients: LayoutConfiguration = .default) {
//        self.anchorableKeyPath = anchorableKeyPath
//        self.coefficients = coefficients
//    }
//
//    @discardableResult
//    public func configured(with coefficients: LayoutConfiguration) -> Self {
//        self.coefficients = coefficients
//        return self
//    }
//
//    @discardableResult
//    public func with(constant: LayoutConstant) -> Self {
//        coefficients.constant = constant
//        return self
//    }
//
//    @discardableResult
//    public func times(_ multiplier: LayoutMultiplier) -> Self {
//        coefficients.multiplier = multiplier
//        return self
//    }
//
//    @discardableResult
//    public func priority(_ priority: LayoutPriority) -> Self {
//        coefficients.priority = priority
//        return self
//    }
//}
