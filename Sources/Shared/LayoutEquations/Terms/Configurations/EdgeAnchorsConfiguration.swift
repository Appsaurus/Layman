//
//  EdgeAnchorsConfiguration.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class EdgeAnchorsConfiguration: SidesTuple<LayoutConfiguration, LayoutConfiguration> {
    public static var `default`: EdgeAnchorsConfiguration { return .init(.default) }
}
