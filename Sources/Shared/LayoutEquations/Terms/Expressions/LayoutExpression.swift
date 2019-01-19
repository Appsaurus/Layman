//
//  LayoutExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class LayoutExpression<A: AnchorType> {

    public var anchor: LayoutAnchor<A>
    public var configuration: LayoutConfiguration

    public init(anchor: LayoutAnchor<A>, configuration: LayoutConfiguration = .default) {
        self.anchor = anchor
        self.configuration = configuration
    }

    @discardableResult
    public func configured(with configuration: LayoutConfiguration) -> Self {
        self.configuration = configuration
        return self
    }

    @discardableResult
    public func with(constant: LayoutConstant) -> Self {
        configuration.constant = constant
        return self
    }

    @discardableResult
    public func with(multiplier: LayoutMultiplier) -> Self {
        configuration.multiplier = multiplier
        return self
    }

    @discardableResult
    public func with(priority: LayoutPriority) -> Self {
        configuration.priority = priority
        return self
    }

    @discardableResult
    public func with(active: Bool) -> Self {
        configuration.active = active
        return self
    }

}
