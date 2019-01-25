// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// sourcery:file:OperatorDefinitions
//
//  OperatorDefinitions.swift
//  UILayoutKit
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

