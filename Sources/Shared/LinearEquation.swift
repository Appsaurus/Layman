//
//  LinearEquation.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/20/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol LinearEquationTyped {
    associatedtype LinearEquation: UILayoutKit.LinearEquation
    typealias RightHandExpression = LinearEquation.Expression
    typealias Solution = LinearEquation.Solution
    typealias LayoutVariable = LinearEquation.Variable
    typealias Relation = LinearEquation.Relation
    typealias Expression = LinearEquation.Expression
    typealias Coefficient = Expression.Coefficients
    typealias Constant = Coefficient.Constant
    typealias Multiplier = Coefficient.Multiplier
}

public protocol LinearEquationSolving {
    associatedtype Expression: UILayoutKit.Expression
    associatedtype Solution
    var solution: Solution { get }

}

extension Array: LinearEquationSolving where Element: LinearEquationSolving {
    public typealias Expression = Element.Expression
    public typealias Solution = [Element.Solution]    

    public var solution: Solution {
        return map { $0.solution }
    }
}

public protocol LinearEquation: Expression, LinearEquationSolving where Expression.Variable == Variable, Expression.Coefficients == Coefficients {
    associatedtype Relation
    var relation: Relation { get set }
    var relatedVariable: Variable? { get set }
    init(_ variable: Variable, _ relation: Relation, _ relatedExpression: Expression)
    init(_ variable: Variable, _ relation: Relation, _ relatedVariable: Variable)
    init(_ variable: Variable, _ relation: Relation, _ relatedVariable: Variable?, _ coefficients: Coefficients)
    init(_ variable: Variable, _ relation: Relation, _ constant: Coefficients.Constant)
}

extension LinearEquation {

    public init(_ variable: Variable,
                _ relation: Relation,
                _ relatedExpression: Expression) {
        self.init(variable,
                  relation,
                  relatedExpression.variable,
                  relatedExpression.coefficients)
    }

    public init(_ variable: Variable, _ relation: Relation, _ relatedVariable: Variable) {
        self.init(variable, relation, relatedVariable, .default)
    }

    public init(_ variable: Variable, _ relation: Relation, _ coefficients: Coefficients) {
        self.init(variable, relation, nil, coefficients)
    }

    public init(_ variable: Variable,
                _ relation: Relation,
                _ constant: Coefficients.Constant) {
        self.init(variable, relation, .constant(constant))
    }
}

public protocol Expression: class {

    associatedtype Variable
    var variable: Variable { get set }

    associatedtype Coefficients: CoefficientMutating
    var coefficients: Coefficients { get set }
    func with(coefficients: Coefficients) -> Self
    func with(constant: Coefficients.Constant) -> Self
    func times(_ multiplier: Coefficients.Multiplier) -> Self
    func priority(_ priority: Coefficients.Priority) -> Self
}

extension Expression {

    @discardableResult
    public func with(coefficients: Coefficients) -> Self {
        self.coefficients = coefficients
        return self
    }

    @discardableResult
    public func priority(_ priority: Coefficients.Priority) -> Self {
        coefficients.set(priority: priority)
        return self
    }

    @discardableResult
    public func with(constant: Coefficients.Constant) -> Self {
        coefficients.set(constant: constant)
        return self
    }

    @discardableResult
    public func times(_ multiplier: Coefficients.Multiplier) -> Self {
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
    static var `default`: Self { get }

}

extension CoefficientMutating {

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
}

public protocol CoefficientReferencing: CoefficientMutating {
    var constant: Constant { get set }
    var multiplier: Multiplier? { get set }
    var priority: Priority { get set }
    init()
}

extension CoefficientReferencing {

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

//public protocol CoefficientTyped {
//    associatedtype Coefficient: CoefficientMutating
//    typealias Constant = Coefficient.Constant
//    typealias Multiplier = Coefficient.Multiplier
//    typealias Divisor = Coefficient.Constant
//}
