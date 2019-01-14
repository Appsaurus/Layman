//
//  LayoutPairExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public class LayoutPairExpression<F: AnchorType, S: AnchorType> {

    public var anchors: LayoutAnchorPair<F, S>
    public var configurations: LayoutPairConfiguration

    public init(anchors: LayoutAnchorPair<F, S>, configurations: LayoutPairConfiguration = .default) {
        self.anchors = anchors
        self.configurations = configurations
    }

    public init(anchors: LayoutAnchorPair<F, S>, configuration: LayoutConfiguration) {
        self.anchors = anchors
        self.configurations = LayoutPairConfiguration(configuration, configuration)
    }

    @discardableResult
    public func configured(with configuration: LayoutConfiguration) -> Self {
        self.configurations = LayoutPairConfiguration(configuration, configuration)
        return self
    }

    @discardableResult
    public func with(constant: LayoutConstant) -> Self {
        configurations.first.constant = constant
        configurations.second.constant = constant
        return self
    }

    @discardableResult
    public func with(multiplier: LayoutMultiplier) -> Self {
        configurations.first.multiplier = multiplier
        configurations.second.multiplier = multiplier
        return self
    }

    @discardableResult
    public func with(priority: LayoutPriority) -> Self {
        configurations.first.priority = priority
        configurations.second.priority = priority
        return self
    }
}
