//
//  Coefficient.swift
//  Layman
//
//  Created by Brian Strobach on 2/7/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol CoefficientMutating {
    associatedtype Constant
    associatedtype Multiplier
    associatedtype Priority
    func set(constant: Constant)
    func set(multiplier: Multiplier)
    func set(priority: Priority)

//    static func constant(_ constant: Constant) -> Self
//    static func multiplier(_ multiplier: Multiplier) -> Self
//    static func priority(_ priority: Priority) -> Self
    init()

}

extension CoefficientMutating {
    static public var `default`: Self { return .init() }

    public func with(constant: Constant) -> Self {
        set(constant: constant)
        return self
    }

    public func times(_ multiplier: Multiplier) -> Self {
        set(multiplier: multiplier)
        return self
    }

    public func priority(_ priority: Priority) -> Self {
        set(priority: priority)
        return self
    }

    public static func constant(_ constant: Constant) -> Self {
        return Self().with(constant: constant)
    }
    public static func multiplier(_ multiplier: Multiplier) -> Self {
        return Self().times(multiplier)
    }
    public static func priority(_ priority: Priority) -> Self {
        return Self().priority(priority)
    }
}

public protocol CoefficientModel: CoefficientMutating {
    var constant: Constant { get set }
    var multiplier: Multiplier? { get set }
    var priority: Priority { get set }

}
