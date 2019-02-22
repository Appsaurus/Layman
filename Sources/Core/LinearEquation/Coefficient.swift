//
//  Coefficient.swift
//  Layman
//
//  Created by Brian Strobach on 2/7/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol CoefficientMutating {
    func set(constant: LayoutConstant)
    func set(relativeConstant: RelativeLayoutConstant)
    func set(multiplier: LayoutMultiplier)
    func set(priority: LayoutPriority)

//    static func constant(_ constant: Constant) -> Self
//    static func multiplier(_ multiplier: Multiplier) -> Self
//    static func priority(_ priority: Priority) -> Self
    init()

}

extension CoefficientMutating {
    static public var `default`: Self { return .init() }

    public func with(constant: LayoutConstant) -> Self {
        set(constant: constant)
        return self
    }

    public func with(relativeConstant: RelativeLayoutConstant) -> Self {
        set(relativeConstant: relativeConstant)
        return self
    }

    public func times(_ multiplier: LayoutMultiplier) -> Self {
        set(multiplier: multiplier)
        return self
    }

    public func priority(_ priority: LayoutPriority) -> Self {
        set(priority: priority)
        return self
    }

    public static func multiplier(_ multiplier: LayoutMultiplier) -> Self {
        return Self().times(multiplier)
    }

    public static func multiplier(_ multiplier: LayoutConstant) -> Self {
        return .multiplier(LayoutMultiplier(multiplier))
    }

    public static func priority(_ priority: LayoutPriority) -> Self {
        return Self().priority(priority)
    }
}

public protocol CoefficientModel: CoefficientMutating {
    var constant: LayoutConstant { get set }
    var multiplier: LayoutMultiplier? { get set }
    var priority: LayoutPriority { get set }
}

extension CoefficientModel {
    @discardableResult
    public func divided(by divisor: LayoutDivisor) -> Self {
        set(divisor: divisor)
        return self
    }

    public func set(divisor: LayoutDivisor) {
        set(multiplier: LayoutMultiplier(multiplier?.value ?? 1.0 / divisor))
    }
}
