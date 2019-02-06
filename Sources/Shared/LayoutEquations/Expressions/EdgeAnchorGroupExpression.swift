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

    public var coefficients: EdgeAnchorsGroupCoefficients = .default

    public convenience init(variable: EdgeAnchorGroup,
                            coefficients: EdgeAnchorsGroupCoefficients = .default) {
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
    public func with(coefficients: LayoutCoefficient) -> Self {
        self.coefficients = EdgeAnchorsGroupCoefficients(coefficients)
        return self
    }

//    @discardableResult
//    public func with(constant: LayoutConstant) -> Self {
//        coefficients.all.forEach {$0.constant = constant}
//        return self
//    }
//
//    @discardableResult
//    public func times(_ multiplier: LayoutMultiplier) -> Self {
//        coefficients.all.forEach {$0.multiplier = multiplier}
//        return self
//    }

}

extension EdgeAnchorGroupExpression: Expression {
    public typealias Coefficients = EdgeAnchorsGroupCoefficients
    public typealias Variable = EdgeAnchorGroup

//    @discardableResult
//    public func divided(by rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
//        return divided(by: rhs)
//    }
}
extension EdgeAnchorGroupExpression {
    @discardableResult
    public func times(_ multiplier: LayoutConstant) -> EdgeAnchorGroupExpression {
        return times(LayoutMultiplier(multiplier))
    }

    @discardableResult
    public func divided(by divisor: LayoutDivisor) -> Self {
        coefficients.set(divisor: divisor)
        return self
    }
}

//@discardableResult
//private func + <A>(lhs: LayoutAnchor<A>, rhs: LayoutCoefficient) -> LayoutAnchorExpression<A> {
//    return LayoutAnchorExpression(anchor: lhs, coefficients: rhs)
//}

//extension EdgeAnchorGroupExpression {
//    var topExpression: YAxisAnchorExpression { return top + coefficients.top }
//    var leadingExpression: XAxisAnchorExpression { return leading + coefficients.leading }
//    var bottomExpression: YAxisAnchorExpression { return bottom + coefficients.bottom }
//    var trailingExpression: XAxisAnchorExpression { return trailing + coefficients.trailing }
//}
//@discardableResult
//private func .+ (lhs: XAxisAnchor, rhs: LayoutCoefficient) -> XAxisAnchorExpression {
//    return XAxisAnchorExpression(variable: lhs, coefficients: rhs)
//}
//
//@discardableResult
//private func .+ (lhs: YAxisAnchor, rhs: LayoutCoefficient) -> YAxisAnchorExpression {
//    return YAxisAnchorExpression(variable: lhs, coefficients: rhs)
//}
//
//@discardableResult
//private func .+ (lhs: LayoutDimension, rhs: LayoutCoefficient) -> LayoutDimensionExpression {
//    return LayoutDimensionExpression(variable: lhs, coefficients: rhs)
//}
