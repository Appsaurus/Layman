//
//  InferredSuperviewEquatable.swift
//  Layman
//
//  Created by Brian Strobach on 3/13/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LeftHandLayoutExpression where Self == LayoutDimension {
    @discardableResult
    public func equalToSuperview() -> Constraint {
        return self.equal(to: assertMatchingParentAnchor)
    }

    @discardableResult
    public func equalToSuperviewMargin() -> Constraint {
        return self.equal(to: assertSuperview.margins[keyPath: ...self])
    }
}

extension LeftHandLayoutExpression where Self == XAxisAnchor {

    @discardableResult
    public func equalToSuperview() -> Constraint {
        return self.equal(to: assertMatchingParentAnchor)
    }

    @discardableResult
    public func equalToSuperviewMargin() -> Constraint {
        return self.equal(to: assertSuperview.margins[keyPath: ...self])
    }
}

extension LeftHandLayoutExpression where Self == YAxisAnchor {

    @discardableResult
    public func equalToSuperview() -> Constraint {
        return self.equal(to: assertMatchingParentAnchor)
    }

    @discardableResult
    public func equalToSuperviewMargin() -> Constraint {
        return self.equal(to: assertSuperview.margins[keyPath: ...self])
    }
}

extension LayoutAnchorPair {
    @discardableResult
    public func equalToSuperview() -> Solution {
        return relation(.equal, 0).solution
    }

    @discardableResult
    public func equalToSuperviewMargin() -> Solution {
        return self.equal(to: assertSuperview.margins[keyPath: ...self])
    }
}
extension EdgeAnchorGroup {

    @discardableResult
    public func equalToSuperview() -> Solution {
        return relation(.equal, 0).solution
    }

    @discardableResult
    public func equalToSuperviewMargin() -> Solution {
        return self.equal(to: assertSuperview.margins[keyPath: ...self])
    }
}

extension View {
    @discardableResult
    public func pinToSuperview(excluding edge: LayoutSideAttribute? = nil) -> SideConstraints {
        return edgeAnchors.equal(to: assertSuperview.edgeAnchors.excluding(edge))
    }

    @discardableResult
    public func pinToSuperviewMargins(excluding edge: LayoutSideAttribute? = nil) -> SideConstraints {
        return edgeAnchors.equal(to: assertSuperview.margins.edgeAnchors.excluding(edge))
    }

    @discardableResult
    public func centerInSuperview() -> ConstraintPair {
        return centerXY.equal(to: assertSuperview.centerXY)
    }
}

extension Collection where Element: View {
    @discardableResult
    public func pinToSuperview(excluding edge: LayoutSideAttribute? = nil) -> [SideConstraints] {
        return map { $0.equal(to: $0.assertSuperview.edgeAnchors.excluding(edge)) }
    }

    @discardableResult
    public func pinToSuperviewMargins(excluding edge: LayoutSideAttribute? = nil) -> [SideConstraints] {
        return  map { $0.equal(to: $0.assertSuperview.margins.edgeAnchors.excluding(edge)) }
    }

    @discardableResult
    public func centerInSuperview() -> [ConstraintPair] {
        return  map { $0.centerXY.equal(to: $0.assertSuperview) }
    }
}
