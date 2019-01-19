//
//  EdgeAnchorGroupExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public class EdgeAnchorGroupExpression: SidesTuple<XAxisAnchor, YAxisAnchor> {
    public var configurations: EdgeAnchorsConfiguration = .default

    var topExpression: YAxisAnchorExpression { return top + configurations.top }
    var leadingExpression: XAxisAnchorExpression { return leading + configurations.leading }
    var bottomExpression: YAxisAnchorExpression { return bottom + configurations.bottom }
    var trailingExpression: XAxisAnchorExpression { return trailing + configurations.trailing }

    public convenience init(anchors: EdgeAnchorGroup, configurations: EdgeAnchorsConfiguration = .default) {
        self.init(anchors)
        self.configurations = configurations
    }

    required public init(_ top: YAxisAnchor,
                         _ leading: XAxisAnchor,
                         _ bottom: YAxisAnchor,
                         _ trailing: XAxisAnchor) {
        super.init(top, leading, bottom, trailing)
    }

    @discardableResult
    public func configured(with configurations: EdgeAnchorsConfiguration) -> Self {
        self.configurations = configurations
        return self
    }

    @discardableResult
    public func configured(with configuration: LayoutConfiguration) -> Self {
        self.configurations = EdgeAnchorsConfiguration(configuration)
        return self
    }

    @discardableResult
    public func with(constant: LayoutConstant) -> Self {
        configurations.all.forEach {$0.constant = constant}
        return self
    }

    @discardableResult
    public func with(multiplier: LayoutMultiplier) -> Self {
        configurations.all.forEach {$0.multiplier = multiplier}
        return self
    }

    @discardableResult
    public func with(priority: LayoutPriority) -> Self {
        configurations.all.forEach {$0.priority = priority}
        return self
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
