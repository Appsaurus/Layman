// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  OperatorDefinitions.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

precedencegroup RelationPrecedence {
    associativity: none
    higherThan: ComparisonPrecedence
    lowerThan: AdditionPrecedence
}

infix operator .= : RelationPrecedence

infix operator ≤ : RelationPrecedence

infix operator ≥ : RelationPrecedence

infix operator .+ : AdditionPrecedence

infix operator .- : AdditionPrecedence

infix operator .* : MultiplicationPrecedence

infix operator ./ : MultiplicationPrecedence

// MARK: Group Operators

// Inset Inequality Operator
infix operator ≥≤  : RelationPrecedence

infix operator ≤≥ : RelationPrecedence
