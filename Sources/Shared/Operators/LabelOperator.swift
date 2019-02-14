//
//  ConstraintLabel.swift
//  Layman
//
//  Created by Brian Strobach on 2/6/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

precedencegroup LabelPrecedence {
    associativity: none
    lowerThan: AssignmentPrecedence
}

infix operator ~~ : LabelPrecedence

@discardableResult
public func ~~ <V: View>(lhs: V, rhs: String) -> V {
    return lhs.labeled(rhs, nil, nil)
}

@discardableResult
public func ~~ (lhs: Constraint, rhs: String) -> Constraint {
    return lhs.labeled(rhs, nil, nil)
}

@discardableResult
public func ~~ (lhs: ConstraintPair, rhs: String) -> ConstraintPair {
    return lhs.labeled(rhs, nil, nil)
}

@discardableResult
public func ~~ (lhs: SideConstraints, rhs: String) -> SideConstraints {
    return lhs.labeled(rhs, nil, nil)
}

//public class SourceCodeLocatableString {
//    var value: String
//    var file: String
//    var line: UInt
//    public init(stringLiteral: String, _ file: String = #file, _ line: UInt = #line){
//        self.value = stringLiteral
//        self.file = file
//        self.line = line
//    }
//}
