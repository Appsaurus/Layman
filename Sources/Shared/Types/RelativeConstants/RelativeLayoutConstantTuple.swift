//
//  RelativeLayoutConstantTuple.swift
//  Layman
//
//  Created by Brian Strobach on 2/14/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public typealias RelativeLayoutConstantTuple = Relative<LayoutConstantTuple>

extension Relative where LC == LayoutConstantTuple {

    public var first: RelativeLayoutConstant {
        return RelativeLayoutConstant(relativity: relativity, constant: constant.first)
    }

    public var second: RelativeLayoutConstant {
        return RelativeLayoutConstant(relativity: relativity, constant: constant.second)
    }

    public static func inset(_ padding: LayoutConstant) -> RelativeLayoutConstantTuple {
        return inset(padding, padding)
    }

    public static func outset(_ padding: LayoutConstant) -> RelativeLayoutConstantTuple {
        return outset(padding, padding)
    }

    public static func outset(_ first: LayoutConstant,
                              _ second: LayoutConstant) -> RelativeLayoutConstantTuple {

        return RelativeLayoutConstantTuple(relativity: .outset, constant: (first: first, second: second))
    }

    public static func inset(_ first: LayoutConstant,
                             _ second: LayoutConstant) -> RelativeLayoutConstantTuple {
        return RelativeLayoutConstantTuple(relativity: .inset, constant: (first: first, second: second))
    }
}
