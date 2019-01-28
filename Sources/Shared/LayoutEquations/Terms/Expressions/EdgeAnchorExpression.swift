//
//  EdgeAnchorGroupExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class EdgeAnchorGroupExpression: SidesTuple<XAxisAnchor, YAxisAnchor> {

    public var variable: EdgeAnchorGroup {
        get {
            return EdgeAnchorGroup(top, leading, bottom, trailing)
        }
        set {
            top = newValue.top
            leading = newValue.leading
            bottom = newValue.bottom
            trailing = newValue.trailing
        }
    }

    public var coefficients: EdgeAnchorsConfiguration = .default

    var topExpression: YAxisAnchorExpression { return top .+ coefficients.top }
    var leadingExpression: XAxisAnchorExpression { return leading .+ coefficients.leading }
    var bottomExpression: YAxisAnchorExpression { return bottom .+ coefficients.bottom }
    var trailingExpression: XAxisAnchorExpression { return trailing .+ coefficients.trailing }

    public convenience init(variable: EdgeAnchorGroup,
                            coefficients: EdgeAnchorsConfiguration = .default) {
        self.init(variable)
        self.coefficients = coefficients
    }

    required public init(_ top: YAxisAnchor,
                         _ leading: XAxisAnchor,
                         _ bottom: YAxisAnchor,
                         _ trailing: XAxisAnchor) {
        super.init(top, leading, bottom, trailing)
    }

    @discardableResult
    public func with(coefficients: LayoutConfiguration) -> Self {
        self.coefficients = EdgeAnchorsConfiguration(coefficients)
        return self
    }

//    @discardableResult
//    public func with(constant: LayoutConstant) -> Self {
//        coefficients.all.forEach {$0.constant = constant}
//        return self
//    }
//
//    @discardableResult
//    public func with(multiplier: LayoutMultiplier) -> Self {
//        coefficients.all.forEach {$0.multiplier = multiplier}
//        return self
//    }

// sourcery:inline:auto:EdgeAnchorGroupExpression.TemplateName
// sourcery:end
}

extension EdgeAnchorGroupExpression: Expression {
    public typealias C = EdgeAnchorsConfiguration
    public typealias V = EdgeAnchorGroup

    @discardableResult
    public func divided(by rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
        return with(multiplier: (1.0 / rhs))
    }
}

//@discardableResult
//private func + <A>(lhs: LayoutAnchor<A>, rhs: LayoutConfiguration) -> LayoutExpression<A> {
//    return LayoutExpression(anchor: lhs, coefficients: rhs)
//}

@discardableResult
private func .+ (lhs: XAxisAnchor, rhs: LayoutConfiguration) -> XAxisAnchorExpression {
    return XAxisAnchorExpression(variable: lhs, coefficients: rhs)
}

@discardableResult
private func .+ (lhs: YAxisAnchor, rhs: LayoutConfiguration) -> YAxisAnchorExpression {
    return YAxisAnchorExpression(variable: lhs, coefficients: rhs)
}

@discardableResult
private func .+ (lhs: LayoutDimension, rhs: LayoutConfiguration) -> LayoutDimensionExpression {
    return LayoutDimensionExpression(variable: lhs, coefficients: rhs)
}
