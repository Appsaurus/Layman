//
//  RelativeLayoutConstantTuple.swift
//  Layman
//
//  Created by Brian Strobach on 2/14/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public typealias RelativeLayoutConstantTuple = Relative<LayoutConstantTuple>

extension Relative where LayoutConstant == LayoutConstantTuple {

    public static func inset(_ padding: Layman.LayoutConstant) -> RelativeLayoutConstantTuple {
        return inset(padding, padding)
    }

    public static func outset(_ padding: Layman.LayoutConstant) -> RelativeLayoutConstantTuple {
        return outset(padding, padding)
    }

    public static func outset(_ first: Layman.LayoutConstant,
                              _ second: Layman.LayoutConstant) -> RelativeLayoutConstantTuple {
        return RelativeLayoutConstantTuple(relativity: .outset, constant: (first, second))
    }

    public static func inset(_ first: Layman.LayoutConstant,
                             _ second: Layman.LayoutConstant) -> RelativeLayoutConstantTuple {
        return RelativeLayoutConstantTuple(relativity: .inset, constant: (first, second))
    }
}
