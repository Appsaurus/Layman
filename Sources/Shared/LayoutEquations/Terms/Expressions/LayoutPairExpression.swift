//
//  LayoutPairExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class LayoutPairExpression<F: AnchorType, S: AnchorType> {

    public var anchor: LayoutAnchorPair<F, S>
    public var configuration: LayoutConfigurationPair

    public init(anchor: LayoutAnchorPair<F, S>, configuration: LayoutConfigurationPair = .default) {
        self.anchor = anchor
        self.configuration = configuration
    }

//    public init(anchor: LayoutAnchorPair<F, S>, configuration: LayoutConfiguration) {
//        self.anchor = anchor
//        self.configuration = LayoutConfigurationPair(configuration, configuration)
//    }

    @discardableResult
    public func configured(with configuration: LayoutConfiguration) -> Self {
        self.configuration = LayoutConfigurationPair(configuration, configuration)
        return self
    }
}

extension LayoutPairExpression: Expression {
    public typealias C = LayoutConfigurationPair
    public typealias V = LayoutAnchorPair<F, S>

}
