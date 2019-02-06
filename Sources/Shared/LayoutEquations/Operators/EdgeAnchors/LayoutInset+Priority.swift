//
//  EdgeAnchorGroup+Priority.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/19/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutInset {
    @discardableResult
    public func priority(_ priority: LayoutPriority) -> EdgeAnchorsGroupCoefficients {
        return EdgeAnchorsGroupCoefficients(
            LayoutCoefficient().with(constant: top).priority(priority),
            LayoutCoefficient().with(constant: left).priority(priority),
            LayoutCoefficient().with(constant: bottom).priority(priority),
            LayoutCoefficient().with(constant: right).priority(priority)
        )
    }
}
