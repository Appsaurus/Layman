//
//  LayoutPadding.swift
//  Layman
//
//  Created by Brian Strobach on 2/14/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import CoreGraphics

public final class LayoutPadding: SidesTuple<LayoutConstant, LayoutConstant> {
    public static var zero: LayoutPadding {
        return LayoutPadding(0)
    }

    public static func constant(_ padding: LayoutConstant) -> LayoutPadding {
        return LayoutPadding(padding)
    }
}
