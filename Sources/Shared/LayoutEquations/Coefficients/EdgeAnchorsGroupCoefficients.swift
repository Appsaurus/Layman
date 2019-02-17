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

//    public static func constant(_ constant: LayoutConstant) -> EdgeAnchorsGroupCoefficients {
//        return EdgeAnchorsGroupCoefficients().with(constant: constant)
//    }
//    public static func multiplier(_ multiplier: LayoutMultiplier) -> EdgeAnchorsGroupCoefficients {
//        return EdgeAnchorsGroupCoefficients().times(multiplier)
//    }
//    public static func priority(_ priority: LayoutPriority) -> EdgeAnchorsGroupCoefficients {
//        return EdgeAnchorsGroupCoefficients().priority(priority)
//    }
//

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

extension EdgeAnchorsGroupCoefficients {
    @discardableResult
    public func with(relativeConstant: RelativeLayoutConstant) -> EdgeAnchorsGroupCoefficients {
        set(relativeConstant: relativeConstant)
        return self
    }
}
