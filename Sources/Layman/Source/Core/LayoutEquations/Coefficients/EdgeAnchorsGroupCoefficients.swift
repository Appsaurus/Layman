//
//  EdgeAnchorsGroupCoefficients.swift
//  Layman
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class EdgeAnchorsGroupCoefficients: SidesTuple<LayoutCoefficient, LayoutCoefficient> {
    public convenience init() { self.init(.default) }
}

extension EdgeAnchorsGroupCoefficients: CoefficientMutating {

    public func set(constant: LayoutConstant) {
        all.forEach { $0.set(constant: constant) }
    }

    public func set(multiplier: LayoutMultiplier) {
        all.forEach { $0.set(multiplier: multiplier) }
    }

    public func set(priority: LayoutPriority) {
        all.forEach { $0.set(priority: priority) }
    }

    public func set(divisor: LayoutDivisor) {
        all.forEach { $0.set(divisor: divisor) }
    }

    public func set(relativeConstant: RelativeLayoutConstant) {
        all.forEach { $0.set(relativeConstant: relativeConstant) }
    }

    public func set(constantRelativity: LayoutConstantRelativity) {
        all.forEach { $0.constantRelativity = constantRelativity }
    }
}

extension EdgeAnchorsGroupCoefficients: LayoutConstantTupleInitable {
    public convenience init(_ relativeConstant: RelativeLayoutConstant) {
        self.init(.constant(relativeConstant))
    }

    public convenience init(_ constant: LayoutConstant) {
        self.init((constant, constant))
    }
    
    public convenience init(_ relativeConstantTuple: RelativeLayoutConstantTuple) {
        self.init(.constant(relativeConstantTuple.first), .constant(relativeConstantTuple.second))
    }

    public convenience init(_ constantTuple: LayoutConstantTuple) {
        self.init(.constant(constantTuple.first), .constant(constantTuple.second))
    }

    @discardableResult
    public func with(relativeConstant: RelativeLayoutConstant) -> EdgeAnchorsGroupCoefficients {
        set(relativeConstant: relativeConstant)
        return self
    }
}
