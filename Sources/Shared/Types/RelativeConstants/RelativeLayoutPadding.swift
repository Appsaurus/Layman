//
//  RelativeLayoutPadding.swift
//  Layman
//
//  Created by Brian Strobach on 2/14/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public typealias RelativeLayoutPadding = Relative<LayoutPadding>

extension Relative where LayoutConstant == LayoutPadding {

    public static func inset(_ padding: Layman.LayoutConstant) -> RelativeLayoutPadding {
        return RelativeLayoutPadding(relativity: .inset, constant: .constant(padding))
    }

    public static func outset(top: Layman.LayoutConstant,
                              leading: Layman.LayoutConstant,
                              bottom: Layman.LayoutConstant,
                              trailing: Layman.LayoutConstant) -> RelativeLayoutPadding {
        return RelativeLayoutPadding(relativity: .outset, constant: .init(top, leading, bottom, trailing))
    }

    public static func inset(top: Layman.LayoutConstant,
                             leading: Layman.LayoutConstant,
                             bottom: Layman.LayoutConstant,
                             trailing: Layman.LayoutConstant) -> RelativeLayoutPadding {
        return RelativeLayoutPadding(relativity: .inset, constant: .init(top, leading, bottom, trailing))
    }

    public static func outset(_ padding: Layman.LayoutConstant) -> RelativeLayoutPadding {
        return RelativeLayoutPadding(relativity: .outset, constant: .constant(padding))
    }
}

extension LayoutPadding {
    public var inset: RelativeLayoutPadding {
        return RelativeLayoutPadding(relativity: .inset, constant: self)
    }

    public var outset: RelativeLayoutPadding {
        return RelativeLayoutPadding(relativity: .outset, constant: self)
    }
}
