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

    public static func outset(_ horizontal: LayoutConstant,
                              _ vertical: LayoutConstant) -> RelativeLayoutConstantTuple {

        return RelativeLayoutConstantTuple(relativity: .outset, constant: (first: horizontal, second: vertical))
    }

    public static func inset(_ horizontal: LayoutConstant,
                             _ vertical: LayoutConstant) -> RelativeLayoutConstantTuple {
        return RelativeLayoutConstantTuple(relativity: .inset, constant: (first: horizontal, second: vertical))
    }

    public static func outset(horizontal: LayoutConstant,
                              vertical: LayoutConstant) -> RelativeLayoutConstantTuple {

        return outset(horizontal, vertical)
    }

    public static func inset(horizontal: LayoutConstant,
                             vertical: LayoutConstant) -> RelativeLayoutConstantTuple {
        return inset(horizontal, vertical)
    }

    public init(_ relativeConstant: RelativeLayoutConstant) {
        self.init(relativity: relativeConstant.relativity, constant: (first: relativeConstant.constant, second: relativeConstant.constant))
    }

    public static func constant(_ relativeConstant: RelativeLayoutConstant) -> RelativeLayoutConstantTuple {
        return .init(relativeConstant)
    }
}
