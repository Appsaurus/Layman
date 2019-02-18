//
//  LayoutPairConfiguration.swift
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class LayoutCoefficientPair: LayoutModelReferencePair<LayoutCoefficient> {
    public convenience init() { self.init(.default) }
    public static func size(_ size: LayoutSize) -> LayoutCoefficientPair {
        return LayoutCoefficientPair(.constant(size.width), .constant(size.height))
    }
}

extension LayoutCoefficientPair: CoefficientMutating {

    public func set(constant: LayoutConstant) {
        first.set(constant: constant)
        second.set(constant: constant)
    }

    public func set(constantTuple: LayoutConstantTuple) {
        first.set(constant: constantTuple.first)
        second.set(constant: constantTuple.second)
    }

    public func set(relativeConstant: RelativeLayoutConstant) {
        first.set(relativeConstant: relativeConstant)
        second.set(relativeConstant: relativeConstant)
    }

    public func set(relativeConstantTuple: RelativeLayoutConstantTuple) {
        first.set(relativeConstant: relativeConstantTuple.first)
        second.set(relativeConstant: relativeConstantTuple.second)
    }

    public func set(multiplier: LayoutMultiplier) {
        first.set(multiplier: multiplier)
        second.set(multiplier: multiplier)
    }

    public func set(priority: LayoutPriority) {
        first.set(priority: priority)
        second.set(priority: priority)
    }

    public func set(divisor: LayoutDivisor) {
        first.set(divisor: divisor)
        second.set(divisor: divisor)
    }
}

extension LayoutCoefficientPair: LayoutConstantInitable, LayoutConstantTupleInitable {
    public convenience init(_ constantTuple: LayoutConstantTuple) {
        self.init()
        self.set(constantTuple: constantTuple)
    }

    public convenience init(_ relativeConstantTuple: RelativeLayoutConstantTuple) {
        self.init()
        self.set(relativeConstantTuple: relativeConstantTuple)
    }

    public convenience init(_ constant: LayoutConstant) {
        self.init()
        self.set(constant: constant)
    }
    
    public convenience init(_ relativeConstant: RelativeLayoutConstant) {
        self.init()
        self.set(relativeConstant: relativeConstant)
    }
    
    public static func multiplier(_ multiplier: LayoutMultiplier) -> LayoutCoefficientPair {
        return LayoutCoefficientPair(.multiplier(multiplier))
    }

//    public static func constant(_ constantTuple: LayoutConstantTuple) -> LayoutCoefficientPair {
//        return LayoutCoefficientPair(.constant(constantTuple.first), .constant(constantTuple.second))
//    }
//
//    public static func constant(_ relativeConstant: RelativeLayoutConstant) -> LayoutCoefficientPair {
//        return LayoutCoefficientPair(.constant(relativeConstant), .constant(relativeConstant))
//    }
//
//    public static func constant(_ relativeConstantTuple: RelativeLayoutConstantTuple) -> LayoutCoefficientPair {
//        return LayoutCoefficientPair(.constant(relativeConstantTuple.first), .constant(relativeConstantTuple.second))
//    }
}

public protocol LayoutConstantInitable {
    static func constant(_ constant: LayoutConstant) -> Self
    static func constant(_ relativeConstant: RelativeLayoutConstant) -> Self

    init(_ constant: LayoutConstant)
    init(_ relativeConstant: RelativeLayoutConstant)
}

extension LayoutConstantInitable {
    public static func constant(_ constant: LayoutConstant) -> Self {
        return Self.init(constant)
    }

    public static func constant(_ relativeConstant: RelativeLayoutConstant) -> Self {
        return Self.init(relativeConstant)
    }
}

public protocol LayoutConstantTupleInitable: LayoutConstantInitable {
    static func constant(_ constantTuple: LayoutConstantTuple) -> Self
    static func constant(_ relativeConstantTuple: RelativeLayoutConstantTuple) -> Self

    init(_ constantTuple: LayoutConstantTuple)
    init(_ relativeConstantTuple: RelativeLayoutConstantTuple)
}

extension LayoutConstantTupleInitable {
    public static func constant(_ constantTuple: LayoutConstantTuple) -> Self {
        return Self.init(constantTuple)
    }

//    public static func constant(_ relativeConstant: RelativeLayoutConstant) -> Self {
//        return Self.init(relativeConstant)
//    }

    public static func constant(_ relativeConstantTuple: RelativeLayoutConstantTuple) -> Self {
        return Self.init(relativeConstantTuple)
    }

}

public protocol TupleVariableLinearEquation: LinearEquation where Coefficients: LayoutConstantTupleInitable {
    init(_ variable: Variable, _ relation: LayoutRelation, _ constant: LayoutConstantTuple)
    init(_ variable: Variable, _ relation: LayoutRelation, _ constant: RelativeLayoutConstantTuple)
    init(_ variable: Variable, _ relation: LayoutRelation, _ coefficients: LayoutCoefficientTuple)
    init(_ variable: Variable, _ relation: LayoutRelation, _ coefficients: LayoutCoefficientPair)

}

extension TupleVariableLinearEquation {
    public init(_ variable: Variable, _ relation: LayoutRelation, _ constant: RelativeLayoutConstantTuple) {
        self.init(variable, relation, .constant(constant))
    }

    public init(_ variable: Variable, _ relation: LayoutRelation, _ constant: LayoutConstantTuple) {
        self.init(variable, relation, .constant(constant))
    }

    public init(_ variable: Variable, _ relation: LayoutRelation, _ coefficient: LayoutCoefficient) {
        self.init(variable, relation, (coefficient.copy(), coefficient.copy()))
    }

    public init(_ variable: Variable, _ relation: LayoutRelation, _ coefficients: LayoutCoefficientTuple) {
        self.init(variable, relation, LayoutCoefficientPair(coefficients.first, coefficients.second))
    }
}
