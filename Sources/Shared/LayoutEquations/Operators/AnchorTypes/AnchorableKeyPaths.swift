//
//  AnchorableKeyPaths.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/14/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: Anchor == Anchor
@discardableResult
public func == (lhs: LayoutAnchorable, rhs: AnchorableKeyPath<XAxisAnchor>) -> Constraint {
    return lhs[keyPath: rhs.keyPath] == rhs.anchor
}

@discardableResult
public func == (lhs: [LayoutAnchorable], rhs: AnchorableKeyPath<XAxisAnchor>) -> Constraints {
    return lhs.map { $0 == rhs }
}

@discardableResult
public func == (lhs: LayoutAnchorable, rhs: AnchorableKeyPaths<XAxisAnchor>) -> Constraints {
    return rhs.anchorableKeyPaths.map {lhs == $0}
}

@discardableResult
public func == (lhs: [LayoutAnchorable], rhs: AnchorableKeyPaths<XAxisAnchor>) -> Constraints {
    return lhs.map { $0 == rhs }.flattened
}

extension LayoutAnchorable {
    public func anchorAt(_ keyPath: KeyPath<LayoutAnchorable, XAxisAnchor>) -> AnchorableKeyPath<XAxisAnchor> {
        return AnchorableKeyPath(self, keyPath)
    }

    public func anchorsAt(_ keyPaths: KeyPath<LayoutAnchorable, XAxisAnchor>...) -> AnchorableKeyPaths<XAxisAnchor> {
        return AnchorableKeyPaths(self, keyPaths)
    }
}

// MARK: Anchor == Anchor
@discardableResult
public func == (lhs: LayoutAnchorable, rhs: AnchorableKeyPath<YAxisAnchor>) -> Constraint {
    return lhs[keyPath: rhs.keyPath] == rhs.anchor
}

@discardableResult
public func == (lhs: [LayoutAnchorable], rhs: AnchorableKeyPath<YAxisAnchor>) -> Constraints {
    return lhs.map { $0 == rhs }
}

@discardableResult
public func == (lhs: LayoutAnchorable, rhs: AnchorableKeyPaths<YAxisAnchor>) -> Constraints {
    return rhs.anchorableKeyPaths.map {lhs == $0}
}

@discardableResult
public func == (lhs: [LayoutAnchorable], rhs: AnchorableKeyPaths<YAxisAnchor>) -> Constraints {
    return lhs.map { $0 == rhs }.flattened
}

extension LayoutAnchorable {
    public func anchorAt(_ keyPath: KeyPath<LayoutAnchorable, YAxisAnchor>) -> AnchorableKeyPath<YAxisAnchor> {
        return AnchorableKeyPath(self, keyPath)
    }

    public func anchorsAt(_ keyPaths: KeyPath<LayoutAnchorable, YAxisAnchor>...) -> AnchorableKeyPaths<YAxisAnchor> {
        return AnchorableKeyPaths(self, keyPaths)
    }
}

public protocol AnchorProvider {
    associatedtype A: AnchorType
    var anchor: A { get }
}

public class AnchorableKeyPath<A: AnchorType> {

    public var anchorable: LayoutAnchorable
    public var keyPath: KeyPath<LayoutAnchorable, A>

    public init(_ anchorable: LayoutAnchorable, _ keyPath: KeyPath<LayoutAnchorable, A>) {
        self.anchorable = anchorable
        self.keyPath = keyPath
    }
}

extension AnchorableKeyPath: AnchorProvider {
    public var anchor: A {
        return anchorable[keyPath: keyPath]
    }
}

public protocol AnchorsProvider {
    associatedtype A: AnchorType
    var anchors: [A] { get }
}

public class AnchorableKeyPaths<A: AnchorType> {

    public var anchorable: LayoutAnchorable
    public var keyPaths: [KeyPath<LayoutAnchorable, A>]
    public var anchorableKeyPaths: [AnchorableKeyPath<A>] {
        return keyPaths.map {AnchorableKeyPath(anchorable, $0)}
    }

    public init(_ anchorable: LayoutAnchorable, _ keyPaths: [KeyPath<LayoutAnchorable, A>]) {
        self.anchorable = anchorable
        self.keyPaths = keyPaths
    }

}

extension AnchorableKeyPaths: AnchorsProvider {
    public var anchors: [A] {
        return keyPaths.map {anchorable[keyPath: $0]}
    }
}
