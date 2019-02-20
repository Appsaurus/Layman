//
//  LinearEquation.swift
//  Layman
//
//  Created by Brian Strobach on 1/20/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol LinearEquationTyped {
    associatedtype LinearEquation: LinearEquationProtocol
    typealias RightHandExpression = LinearEquation.Expression
    typealias Solution = LinearEquation.Solution
    typealias LayoutVariable = LinearEquation.Variable
    typealias Expression = LinearEquation.Expression
    typealias Coefficient = Expression.Coefficients
    typealias Multiplier = LayoutMultiplier
}

public protocol LinearEquationSolving {
    associatedtype Expression: Layman.Expression
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

public protocol LinearEquationProtocol: Expression, LinearEquationSolving where Expression.Variable == Variable, Expression.Coefficients == Coefficients {
    var relation: LayoutRelation { get set }
    var relatedVariable: Variable? { get set }
    init(_ variable: Variable, _ relation: LayoutRelation, _ relatedExpression: Expression)
    init(_ variable: Variable, _ relation: LayoutRelation, _ relatedVariable: Variable)
    init(_ variable: Variable, _ relation: LayoutRelation, _ relatedVariable: Variable?, _ coefficients: Coefficients)
    init(_ variable: Variable, _ relation: LayoutRelation, _ constant: LayoutConstant)
    init(_ variable: Variable, _ relation: LayoutRelation, _ constant: RelativeLayoutConstant)
    init(_ variable: Variable, _ relation: LayoutRelation, _ coefficient: LayoutCoefficient)
    init(_ view: View, _ relation: LayoutRelation, _ variable: Variable)
    init(_ variable: Variable, _ relation: LayoutRelation, _ view: View)
    init(_ view: View, _ relation: LayoutRelation, _ expression: Expression)
    static func inferred(variable: Variable, for view: View) -> Variable
}

extension LinearEquationProtocol {

    public init(variable: Variable) {
        self.init(variable: variable, coefficients: .default)
    }

    public init(_ variable: Variable,
                _ relation: LayoutRelation,
                _ relatedExpression: Expression) {
        self.init(variable,
                  relation,
                  relatedExpression.variable,
                  relatedExpression.coefficients)
    }

    public init(_ variable: Variable, _ relation: LayoutRelation, _ relatedVariable: Variable) {
        self.init(variable, relation, relatedVariable, .default)
    }

    public init(_ variable: Variable, _ relation: LayoutRelation, _ coefficients: Coefficients) {
        self.init(variable, relation, nil, coefficients)
    }

    public init(_ variable: Variable,
                _ relation: LayoutRelation,
                _ constant: LayoutConstant) {
        self.init(variable, relation, .constant(constant))
    }

    public init(variable: Variable, coefficients: Coefficients) {
        self.init(variable, .equal, nil, coefficients)
    }

    public init(_ variable: Variable, _ relation: LayoutRelation, _ relativeConstant: RelativeLayoutConstant) {
        self.init(variable, relation, nil, Coefficients().with(relativeConstant: relativeConstant))
    }

    public init(_ variable: Variable, _ relation: LayoutRelation, _ view: View) {
        self.init(variable, relation, Self.inferred(variable: variable, for: view))
    }

    public init(_ view: View, _ relation: LayoutRelation, _ variable: Variable) {
        self.init(Self.inferred(variable: variable, for: view), relation, variable)
    }

    public init(_ view: View, _ relation: LayoutRelation, _ expression: Expression) {
        self.init(Self.inferred(variable: expression.variable, for: view), relation, expression)
    }

}
