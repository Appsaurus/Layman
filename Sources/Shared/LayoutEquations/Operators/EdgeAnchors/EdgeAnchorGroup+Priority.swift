//
//  EdgeAnchorGroup+Priority.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/19/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutInset {
    @discardableResult
    public func with(priority: LayoutPriority) -> EdgeAnchorsConfiguration {
        return EdgeAnchorsConfiguration(
            LayoutConfiguration().with(constant: top).with(priority: priority),
            LayoutConfiguration().with(constant: left).with(priority: priority),
            LayoutConfiguration().with(constant: bottom).with(priority: priority),
            LayoutConfiguration().with(constant: right).with(priority: priority)
        )
    }
}
