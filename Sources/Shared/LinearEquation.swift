//
//  LinearEquation.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/20/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol LinearEquationSolving {
    associatedtype E: Expression
    associatedtype Solution
    var solution: Solution { get }

}

extension Array: LinearEquationSolving where Element: LinearEquationSolving {
    public typealias E = Element.E
    public typealias Solution = [Element.Solution]

    public var solution: Solution {
        return map { $0.solution }
    }
}

public protocol LinearEquation: Expression, LinearEquationSolving where E.V == V, E.C == C {
    associatedtype Relation
    var relation: Relation { get set }
    var relatedAnchor: V? { get set }
    init(_ variable: V, _ relation: Relation, _ relatedAnchor: V?, _ coefficients: C )
    init(_ variable: V, _ relation: Relation, _ constant: C.Constant)
}

extension LinearEquation {

    public init(_ variable: V,
                _ relation: Relation,
                _ relatedExpression: E) {
        self.init(variable,
                  relation,
                  relatedExpression.variable,
                  relatedExpression.coefficients)
    }

    public init(_ anchor: V, _ relation: Relation, _ coefficients: C) {
        self.init(anchor, relation, nil, coefficients)
    }

    public init(_ variable: V,
                _ relation: Relation,
                _ constant: C.Constant) {
        self.init(variable, relation, .constant(constant))
    }
}

public protocol Expression: class {

    associatedtype V
    var variable: V { get set }

    associatedtype C: CoefficientMutating
    var coefficients: C { get set } //coefficients
    //    init(anchor: V, coefficients: C)
    func with(coefficients: C) -> Self
    func with(constant: C.Constant) -> Self
    func with(multiplier: C.Multiplier) -> Self
    func with(priority: C.Priority) -> Self
}

extension Expression {

    @discardableResult
    public func with(coefficients: C) -> Self {
        self.coefficients = coefficients
        return self
    }

    @discardableResult
    public func with(priority: C.Priority) -> Self {
        coefficients.set(priority: priority)
        return self
    }

    @discardableResult
    public func with(constant: C.Constant) -> Self {
        coefficients.set(constant: constant)
        return self
    }

    @discardableResult
    public func with(multiplier: C.Multiplier) -> Self {
        coefficients.set(multiplier: multiplier)
        return self
    }
}

public protocol CoefficientMutating {
    associatedtype Constant
    associatedtype Multiplier
    associatedtype Priority
    func set(constant: Constant)
    func set(multiplier: Multiplier)
    func set(priority: Priority)

    static func constant(_ constant: Constant) -> Self
    static func multiplier(_ multiplier: Multiplier) -> Self
    static func priority(_ priority: Priority) -> Self
}

extension CoefficientMutating {

    public func with(constant: Constant) -> Self {
        set(constant: constant)
        return self
    }

    public func with(multiplier: Multiplier) -> Self {
        set(multiplier: multiplier)
        return self
    }

    public func with(priority: Priority) -> Self {
        set(priority: priority)
        return self
    }
}

public protocol Coeficient: CoefficientMutating {
    var constant: Constant { get set }
    var multiplier: Multiplier { get set }
    var priority: Priority { get set }
    init()
}

extension Coeficient {

    public static func constant(_ constant: Constant) -> Self {
        return Self().with(constant: constant)
    }
    public static func multiplier(_ multiplier: Multiplier) -> Self {
        return Self().with(multiplier: multiplier)
    }
    public static func priority(_ priority: Priority) -> Self {
        return Self().with(priority: priority)
    }
}

extension Array where Element: Expression {

    public func with(constant: Element.C.Constant) -> [Element] {
        return map { $0.with(constant: constant) }
    }

//    public func with(multiplier: Element.C.Multiplier) -> [Element] {
//        return map  { $0.with(multiplier: multiplier)}
//    }
//
//    public func with(priority: Element.C.Priority) -> [Element] {
//        return map { $0.with(priority: priority) }
//    }
}
