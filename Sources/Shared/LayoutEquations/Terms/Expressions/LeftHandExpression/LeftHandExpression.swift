//
//  LeftHandExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/21/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol LeftHandExpression {
    associatedtype RightHandExpression
    associatedtype LinearEquation: UILayoutKit.LinearEquation
    typealias Solution = LinearEquation.Solution

    func relation(_ relation: LinearEquation.Relation, _ rhs: Self) -> LinearEquation
    func relation(_ relation: LinearEquation.Relation, _ rhs: RightHandExpression) -> LinearEquation
    func relation(_ relation: LinearEquation.Relation, _ rhs: LinearEquation.E.C.Constant) -> LinearEquation
    func relation(_ relation: LinearEquation.Relation, _ rhs: LinearEquation.E.C) -> LinearEquation
}

extension LeftHandExpression where Self == LinearEquation.V{

//    func relation(_ relation: LinearEquation.Relation, _ rhs: Self) -> LinearEquation {
//        return LinearEquation.init(self, relation, rhs)
//    }
//
//    func relation(_ relation: LinearEquation.Relation, _ rhs: RightHandExpression) -> LinearEquation {
//        return LinearEquation.init(self, relation, rhs)
//    }

    func relation(_ relation: LinearEquation.Relation, _ rhs: LinearEquation.E.C.Constant) -> LinearEquation {
        return LinearEquation.init(self, relation, rhs)
    }

    func relation(_ relation: LinearEquation.Relation, _ rhs: LinearEquation.E.C) -> LinearEquation {
        return LinearEquation.init(self, relation, rhs)
    }

}


//extension LeftHandExpression where
//    LinearEquation.E.V == RightHandExpression.V,
//    LinearEquation.E.C == RightHandExpression.C,
//    LinearEquation.E.V == Self
//{
//
//    func relation(_ relation: Constraint.Relation, _ rhs: Self) -> LinearEquation{
//        return LinearEquation.init(self, relation, rhs)
//    }
//    func relation(_ relation: Constraint.Relation, _ rhs: RightHandExpression) -> LinearEquation{
//        return LinearEquation.init(self, relation, rhs)
//    }
//    func relation(_ relation: Constraint.Relation, _ rhs: LinearEquation.E.C.Constant) -> LinearEquation{
//        return LinearEquation.init(self, relation, rhs)
//    }
//    func relation(_ relation: Constraint.Relation, _ rhs: LinearEquation.E.C) -> LinearEquation{
//        return LinearEquation.init(self, relation, rhs)
//    }
////    public func relation(_ relation: Constraint.Relation, _ rhs: Self) -> LinearEquation {
////
////    }
////    public func relation(_ relation: Constraint.Relation, _ rhs: RightHandExpression) -> LinearEquation {
////        return LinearEquation.init(self, relation, rhs)
////    }
////
////    public func relation(_ relation: Constraint.Relation, _ rhs: RightHandExpression.C.Constant) -> LinearEquation {
////        return LinearEquation.init(self, relation, rhs)
////    }
////
////    public func relation(_ relation: Constraint.Relation, _ rhs: RightHandExpression.C) -> LinearEquation {
////        return LinearEquation.init(self, relation, rhs)
////    }
//}

public protocol LeftHandLayoutExpression: LeftHandExpression where LinearEquation.Relation == Constraint.Relation {}
extension LeftHandLayoutExpression {

    @discardableResult
    public func equal(to rhs: Self) -> Solution {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: RightHandExpression) -> Solution {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: [Self]) -> [Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }

    @discardableResult
    public func equal(to rhs: [RightHandExpression]) -> [Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: Self) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: RightHandExpression) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [Self]) -> [Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [RightHandExpression]) -> [Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: Self) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: RightHandExpression) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [Self]) -> [Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [RightHandExpression]) -> [Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
}
