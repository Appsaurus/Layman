//
//  LinearEquation.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/20/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol LinearEquatable {
    associatedtype Solution
    var solution: Solution { get }
}

public protocol Coefficient {
    //    var constant: LayoutConstant { get set }
    //    var multiplier: LayoutMultiplier { get set }
}
public protocol Expression: class {

    associatedtype V//: Variable where V.Expression == Self
    associatedtype C: Coefficient
    //    var anchor: V { get set } //variable
    var configuration: C { get set } //coefficients
    //    init(anchor: V, configuration: LayoutConfiguration)
    func configured(with configuration: LayoutConfiguration) -> Self
    func with(constant: LayoutConstant) -> Self
    func with(multiplier: LayoutMultiplier) -> Self
}

extension Expression {
    @discardableResult
    public func configured(with configuration: C) -> Self {
        self.configuration = configuration
        return self
    }
}

extension LayoutRelationship: LinearEquatable {
    public typealias Solution = Constraint

    public var solution: Constraint {
        return constraint
    }
}

extension Array: LinearEquatable where Element: LinearEquatable {
    public typealias Solution = [Element.Solution]

    public var solution: Solution {
        return map { $0.solution }
    }
}

//extension View {
//    public func relation(_ relation: Constraint.Relation, _ rhs: XAxisAnchorExpression) -> XAxisAnchorRelationship {
//        return self[keyPath: ...rhs.anchor].relation(relation, rhs)
//    }
//
//    public func relation(_ relation: Constraint.Relation, _ rhs: YAxisAnchorExpression) -> YAxisAnchorRelationship {
//        return self[keyPath: ...rhs.anchor].relation(relation, rhs)
//    }
//
//    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutDimensionExpression) -> LayoutDimensionRelationship {
//        return self[keyPath: ...rhs.anchor].relation(relation, rhs)
//    }
//
//    public func relation(_ relation: Constraint.Relation, _ rhs: XAxisAnchorPairExpression) -> XAxisAnchorPairRelationship {
//        return self[keyPath: ...rhs.anchor].relation(relation, rhs)
//    }
//
//    public func relation(_ relation: Constraint.Relation, _ rhs: YAxisAnchorPairExpression) -> YAxisAnchorPairRelationship {
//        return self[keyPath: ...rhs.anchor].relation(relation, rhs)
//    }
//
//    public func relation(_ relation: Constraint.Relation, _ rhs: XYAxesAnchorPairExpression) -> XYAxesAnchorPairRelationship {
//        return self[keyPath: ...rhs.anchor].relation(relation, rhs)
//    }
//}
//
//extension Array where Element: View {
//
//}
