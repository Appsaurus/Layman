//
//  RelativeLayoutConstant.swift
//  Layman
//
//  Created by Brian Strobach on 2/14/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public struct Relative<LC> {
    var relativity: LayoutConstantRelativity
    var constant: LC

    public init(relativity: LayoutConstantRelativity, constant: LC) {
        self.relativity = relativity
        self.constant = constant
    }

    public static func inset(_ constant: LC) -> Relative<LC> {
        return Relative<LC>(relativity: .inset, constant: constant)
    }

    public static func outset(_ constant: LC) -> Relative<LC> {
        return Relative<LC>(relativity: .outset, constant: constant)
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
