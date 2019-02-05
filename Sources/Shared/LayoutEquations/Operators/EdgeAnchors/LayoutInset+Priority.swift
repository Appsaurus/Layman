//
//  EdgeAnchorGroup+Priority.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/19/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutInset {
    @discardableResult
    public func priority(_ priority: LayoutPriority) -> EdgeAnchorsConfiguration {
        return EdgeAnchorsConfiguration(
            LayoutConfiguration().with(constant: top).priority(priority),
            LayoutConfiguration().with(constant: left).priority(priority),
            LayoutConfiguration().with(constant: bottom).priority(priority),
            LayoutConfiguration().with(constant: right).priority(priority)
        )
    }
}
