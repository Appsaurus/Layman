//
//  RelativeLayoutConstant.swift
//  Layman
//
//  Created by Brian Strobach on 2/14/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public struct Relative<LayoutConstant> {
    var relativity: LayoutConstantRelativity
    var constant: LayoutConstant

    public init(relativity: LayoutConstantRelativity, constant: LayoutConstant) {
        self.relativity = relativity
        self.constant = constant
    }

    public static func inset(constant: LayoutConstant) -> Relative<LayoutConstant> {
        return Relative<LayoutConstant>(relativity: .inset, constant: constant)
    }

    public static func outset(constant: LayoutConstant) -> Relative<LayoutConstant> {
        return Relative<LayoutConstant>(relativity: .outset, constant: constant)
    }
}

public typealias RelativeLayoutConstant = Relative<LayoutConstant>



extension LayoutConstant {
    public var inset: RelativeLayoutConstant {
        return RelativeLayoutConstant(relativity: .inset, constant: self)
    }

    public var outset: RelativeLayoutConstant {
        return RelativeLayoutConstant(relativity: .outset, constant: self)
    }
}


