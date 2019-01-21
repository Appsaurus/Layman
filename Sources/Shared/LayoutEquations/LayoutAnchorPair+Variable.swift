//
//  LayoutAnchorPair+Variable.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/20/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import UIKit

public class LayoutAnchorPair<F: AnchorType, S: AnchorType>: MixedLayoutModelReferencePair<LayoutAnchor<F>, LayoutAnchor<S>> {}
//
//extension LayoutAnchorPair: Variable {
//
//    public typealias E = LayoutPairExpression<F, S>
//
//    public func times(_ multiplier: LayoutMultiplier) -> E {
//        let config = LayoutPairConfiguration(.multiplier(multiplier), .multiplier(multiplier))
//        return LayoutPairExpression<F, S>(anchor: self, configuration: config)
//    }
//
//    public func plus(_ constant: LayoutConstant) -> E {
//        let config: LayoutPairConfiguration = LayoutPairConfiguration(.constant(constant), .constant(constant))
//        return LayoutPairExpression(anchor: self, configuration: config)
//    }
//
//}

//extension LayoutAnchorPair: LeftHandExpression{
//    public typealias E = LayoutPairExpression<F,S>
//    public typealias LinearEquation = LayoutPairRelationship<F,S>
//
//    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutAnchorPair<F, S>) -> LayoutPairRelationship<F, S> {
//        assertionFailure(String(describing: self) + " is abstract. You must implement " + #function)
//        return LayoutPairRelationship<F, S>(self, relation, rhs)
//    }
//
//    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutPairExpression<F, S>) -> LayoutPairRelationship<F, S> {
//        assertionFailure(String(describing: self) + " is abstract. You must implement " + #function)
//        return LayoutPairRelationship<F, S>(self, relation, rhs)
//    }
//}

public typealias XAxisAnchorPairRelationship = LayoutPairRelationship<XAxisAnchor, XAxisAnchor>
//extension LayoutAnchorPair where F == XAxisAnchor, S == XAxisAnchor {
////extension LeftHandExpression where Self == LayoutAnchorPair<XAxisAnchor, XAxisAnchor> {
//
//    public func relation(_ relation: Constraint.Relation, _ rhs: XAxisAnchorPair) -> XAxisAnchorPairRelationship {
//        return XAxisAnchorPairRelationship(self, relation, rhs)
//    }
//
//    public func relation(_ relation: Constraint.Relation, _ rhs: XAxisAnchorPairExpression) -> XAxisAnchorPairRelationship {
//        return XAxisAnchorPairRelationship(self, relation, rhs)
//
//    }
//}
//
public typealias YAxisAnchorPairRelationship = LayoutPairRelationship<YAxisAnchor, YAxisAnchor>
//extension LayoutAnchorPair where F == YAxisAnchor, S == YAxisAnchor {
//    //extension LeftHandExpression where Self == LayoutAnchorPair<YAxisAnchor, YAxisAnchor> {
//
//    public func relation(_ relation: Constraint.Relation, _ rhs: YAxisAnchorPair) -> YAxisAnchorPairRelationship {
//        return YAxisAnchorPairRelationship(self, relation, rhs)
//    }
//
//    public func relation(_ relation: Constraint.Relation, _ rhs: YAxisAnchorPairExpression) -> YAxisAnchorPairRelationship {
//        return YAxisAnchorPairRelationship(self, relation, rhs)
//
//    }
//}
//
//
public typealias LayoutDimensionPairRelationship = LayoutPairRelationship<LayoutDimension, LayoutDimension>
//extension LayoutAnchorPair where F == LayoutDimension, S == LayoutDimension {
////extension LeftHandExpression where Self == LayoutAnchorPair<LayoutDimension, LayoutDimension> {
//
//    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutDimensionPair) -> LayoutDimensionPairRelationship {
//        return LayoutDimensionPairRelationship(self, relation, rhs)
//    }
//
//    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutDimensionPairExpression) -> LayoutDimensionPairRelationship {
//        return LayoutDimensionPairRelationship(self, relation, rhs)
//
//    }
//}
//
//
public typealias XYAxesAnchorPairRelationship = LayoutPairRelationship<XAxisAnchor, YAxisAnchor>
//extension LayoutAnchorPair where F == XAxisAnchor, S == YAxisAnchor {
////extension LeftHandExpression where Self == LayoutAnchorPair<XAxisAnchor, YAxisAnchor> {
//
//    public func relation(_ relation: Constraint.Relation, _ rhs: XYAxesAnchorPair) -> XYAxesAnchorPairRelationship {
//        return XYAxesAnchorPairRelationship(self, relation, rhs)
//    }
//
//    public func relation(_ relation: Constraint.Relation, _ rhs: XYAxesAnchorPairExpression) -> XYAxesAnchorPairRelationship {
//        return XYAxesAnchorPairRelationship(self, relation, rhs)
//
//    }
//}
//
//
//extension LayoutAnchorPair where F == XAxisAnchor, S == YAxisAnchor{
//    @discardableResult
//    public func equal(to rhs: XYAxesAnchorPair) -> ConstraintPair {
//        return relation(.equal, rhs).solution
//    }
//
//    @discardableResult
//    public func equal(to rhs: XYAxesAnchorPairExpression) -> ConstraintPair {
//        return relation(.equal, rhs).solution
//    }
//
//    @discardableResult
//    public func equal(to rhs: [XYAxesAnchorPair]) -> [ConstraintPair] {
//        return rhs.map { relation(.equal, $0).solution }
//    }
//
//    @discardableResult
//    public func equal(to rhs: [XYAxesAnchorPairExpression]) -> [ConstraintPair] {
//        return rhs.map { relation(.equal, $0).solution }
//    }
//
//    @discardableResult
//    public func lessThanOrEqual(to rhs: XYAxesAnchorPair) -> ConstraintPair {
//        return relation(.lessThanOrEqual, rhs).solution
//    }
//
//    @discardableResult
//    public func lessThanOrEqual(to rhs: XYAxesAnchorPairExpression) -> ConstraintPair {
//        return relation(.lessThanOrEqual, rhs).solution
//    }
//
//    @discardableResult
//    public func lessThanOrEqual(to rhs: [XYAxesAnchorPair]) -> [ConstraintPair] {
//        return rhs.map { relation(.lessThanOrEqual, $0).solution }
//    }
//
//    @discardableResult
//    public func lessThanOrEqual(to rhs: [XYAxesAnchorPairExpression]) -> [ConstraintPair] {
//        return rhs.map { relation(.lessThanOrEqual, $0).solution }
//    }
//
//    @discardableResult
//    public func greaterThanOrEqual(to rhs: XYAxesAnchorPair) -> ConstraintPair {
//        return relation(.greaterThanOrEqual, rhs).solution
//    }
//
//    @discardableResult
//    public func greaterThanOrEqual(to rhs: XYAxesAnchorPairExpression) -> ConstraintPair {
//        return relation(.greaterThanOrEqual, rhs).solution
//    }
//
//    @discardableResult
//    public func greaterThanOrEqual(to rhs: [XYAxesAnchorPair]) -> [ConstraintPair] {
//        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
//    }
//    @discardableResult
//    public func greaterThanOrEqual(to rhs: [XYAxesAnchorPairExpression]) -> [ConstraintPair] {
//        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
//    }
//}
