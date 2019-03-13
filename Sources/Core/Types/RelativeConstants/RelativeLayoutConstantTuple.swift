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

    public static func outset(_ vertical: LayoutConstant,
                              _ horizontal: LayoutConstant) -> RelativeLayoutConstantTuple {

        return RelativeLayoutConstantTuple(relativity: .outset, constant: (first: vertical, second: horizontal))
    }

    public static func inset(_ vertical: LayoutConstant,
                             _ horizontal: LayoutConstant) -> RelativeLayoutConstantTuple {
        return RelativeLayoutConstantTuple(relativity: .inset, constant: (first: vertical, second: horizontal))
    }

    public static func outset(vertical: LayoutConstant,
                              horizontal: LayoutConstant) -> RelativeLayoutConstantTuple {

        return outset(vertical, horizontal)
    }

    public static func inset(vertical: LayoutConstant,
                             horizontal: LayoutConstant) -> RelativeLayoutConstantTuple {
        return inset(vertical, horizontal)
    }

    public init(_ relativeConstant: RelativeLayoutConstant) {
        self.init(relativity: relativeConstant.relativity, constant: (first: relativeConstant.constant, second: relativeConstant.constant))
    }

    public static func constant(_ relativeConstant: RelativeLayoutConstant) -> RelativeLayoutConstantTuple {
        return .init(relativeConstant)
    }
}
