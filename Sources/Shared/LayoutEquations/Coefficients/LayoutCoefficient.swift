//
//  LayoutCoefficient.swift
//  Layman
//
//  Created by Brian Strobach on 1/3/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public enum LayoutConstantRelativity {
    case inset
    case outset
    case shift
}
public final class LayoutCoefficient: LayoutConstantInitable {

    public var constant: LayoutConstant = 0.0
    public var multiplier: LayoutMultiplier?
    public var priority: LayoutPriority = .required
    public var constantRelativity: LayoutConstantRelativity = .shift
    public var active: Bool = true

    public init() {}

    public convenience init(_ constant: LayoutConstant) {
        self.init()
        self.set(constant: constant)
    }

    public convenience init(_ relativeConstant: RelativeLayoutConstant) {
        self.init()
        self.set(relativeConstant: relativeConstant)
    }

    internal func copy() -> LayoutCoefficient {
        let config = LayoutCoefficient()
        config.active = active
        config.constant = constant
        config.multiplier = multiplier
        config.priority = priority
        return config
    }

}

public typealias LayoutCoefficientTuple = (first: LayoutCoefficient, second: LayoutCoefficient)

extension LayoutCoefficient {

    @discardableResult
    public func with(active: Bool) -> LayoutCoefficient {
        self.active = active
        return self
    }
}

extension LayoutCoefficient: CoefficientModel {

    public func set(constant: LayoutConstant) {
        self.constant = constant
    }

    public func set(relativeConstant: RelativeLayoutConstant) {
        constant = relativeConstant.constant
        constantRelativity = relativeConstant.relativity
    }

    public func set(multiplier: LayoutMultiplier) {
        self.multiplier = multiplier
        constant *= multiplier.value
    }

    public func set(priority: LayoutPriority) {
        self.priority = priority
    }

}

extension LayoutCoefficient {
    public func set(divisor: LayoutDivisor) {
        let dividend = multiplier?.value ?? 1.0
        set(multiplier: LayoutMultiplier(dividend / divisor))
    }

    public func relativeConstantValue(for attribute: Constraint.Attribute) -> LayoutConstant {
        switch constantRelativity {
        case .inset:
            return attribute.isCategory(.trailing) ? -constant : constant
        case .outset:
            return attribute.isCategory(.leading) ? -constant : constant
        case .shift:
            return constant
        }
    }
}
