//
//  RelativeLayoutPadding.swift
//  Layman
//
//  Created by Brian Strobach on 2/14/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public typealias RelativeLayoutPadding = Relative<LayoutPadding>

extension Relative where LC == LayoutPadding {

    public var top: RelativeLayoutConstant {
        return RelativeLayoutConstant(relativity: relativity, constant: constant.top)
    }

    public var leading: RelativeLayoutConstant {
        return RelativeLayoutConstant(relativity: relativity, constant: constant.leading)
    }

    public var bottom: RelativeLayoutConstant {
        return RelativeLayoutConstant(relativity: relativity, constant: constant.bottom)
    }

    public var trailing: RelativeLayoutConstant {
        return RelativeLayoutConstant(relativity: relativity, constant: constant.trailing)
    }
    public static func inset(_ padding: LayoutConstant) -> RelativeLayoutPadding {
        return RelativeLayoutPadding(relativity: .inset, constant: .constant(padding))
    }

    public static func outset(top: LayoutConstant,
                              leading: LayoutConstant,
                              bottom: LayoutConstant,
                              trailing: LayoutConstant) -> RelativeLayoutPadding {
        return RelativeLayoutPadding(relativity: .outset, constant: .init(top, leading, bottom, trailing))
    }

    public static func inset(top: LayoutConstant,
                             leading: LayoutConstant,
                             bottom: LayoutConstant,
                             trailing: LayoutConstant) -> RelativeLayoutPadding {
        return RelativeLayoutPadding(relativity: .inset, constant: .init(top, leading, bottom, trailing))
    }

    public static func outset(_ padding: LayoutConstant) -> RelativeLayoutPadding {
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
