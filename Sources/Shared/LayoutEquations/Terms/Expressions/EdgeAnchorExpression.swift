//
//  EdgeAnchorGroupExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public class EdgeAnchorGroupExpression: SidesTuple<XAxisAnchor, YAxisAnchor> {
    public var configuration: EdgeAnchorsConfiguration = .default

    var topExpression: YAxisAnchorExpression { return top + configuration.top }
    var leadingExpression: XAxisAnchorExpression { return leading + configuration.leading }
    var bottomExpression: YAxisAnchorExpression { return bottom + configuration.bottom }
    var trailingExpression: XAxisAnchorExpression { return trailing + configuration.trailing }

    public convenience init(anchor: EdgeAnchorGroup, configuration: EdgeAnchorsConfiguration = .default) {
        self.init(anchor)
        self.configuration = configuration
    }

    required public init(_ top: YAxisAnchor,
                         _ leading: XAxisAnchor,
                         _ bottom: YAxisAnchor,
                         _ trailing: XAxisAnchor) {
        super.init(top, leading, bottom, trailing)
    }

    @discardableResult
    public func configured(with configuration: LayoutConfiguration) -> Self {
        self.configuration = EdgeAnchorsConfiguration(configuration)
        return self
    }

    @discardableResult
    public func with(constant: LayoutConstant) -> Self {
        configuration.all.forEach {$0.constant = constant}
        return self
    }

    @discardableResult
    public func with(multiplier: LayoutMultiplier) -> Self {
        configuration.all.forEach {$0.multiplier = multiplier}
        return self
    }

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
//    return LayoutExpression(anchor: lhs, configuration: rhs)
//}

@discardableResult
private func + (lhs: XAxisAnchor, rhs: LayoutConfiguration) -> XAxisAnchorExpression {
    return XAxisAnchorExpression(anchor: lhs, configuration: rhs)
}

@discardableResult
private func + (lhs: YAxisAnchor, rhs: LayoutConfiguration) -> YAxisAnchorExpression {
    return YAxisAnchorExpression(anchor: lhs, configuration: rhs)
}

@discardableResult
private func + (lhs: LayoutDimension, rhs: LayoutConfiguration) -> LayoutDimensionExpression {
    return LayoutDimensionExpression(anchor: lhs, configuration: rhs)
}
