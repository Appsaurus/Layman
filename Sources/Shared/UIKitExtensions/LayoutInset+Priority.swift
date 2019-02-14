//
//  EdgeAnchorGroup+Priority.swift
//  Layman
//
//  Created by Brian Strobach on 1/19/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutPadding {
    @discardableResult
    public func priority(_ priority: LayoutPriority) -> EdgeAnchorsGroupCoefficients {
        return EdgeAnchorsGroupCoefficients(
            LayoutCoefficient().with(constant: top).priority(priority),
            LayoutCoefficient().with(constant: leading).priority(priority),
            LayoutCoefficient().with(constant: bottom).priority(priority),
            LayoutCoefficient().with(constant: trailing).priority(priority)
        )
    }
}

extension Relative where LayoutConstant == LayoutPadding {
    @discardableResult
    public func priority(_ priority: LayoutPriority) -> EdgeAnchorsGroupCoefficients {
        let expression = self.constant.priority(priority)
        expression.set(constantRelativity: relativity)
        return expression
    }
}
