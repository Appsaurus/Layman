//
//  LayoutRelationship.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/3/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import Foundation
import UIKit
import Swiftest


public protocol LayoutAnchorType {}
extension LayoutAnchor: LayoutAnchorType {}


public protocol LayoutExpressionBuilder: class{
    var configuration: LayoutConfiguration { get set }
}

extension LayoutExpressionBuilder{
    @discardableResult
    public func configured(with configuration: LayoutConfiguration) -> Self{
        self.configuration = configuration
        return self
    }

    @discardableResult
    public func with(constant: LayoutConstant) -> Self{
        configuration.constant = constant
        return self
    }

    @discardableResult
    public func with(multiplier: LayoutMultiplier) -> Self{
        configuration.multiplier = multiplier
        return self
    }

    @discardableResult
    public func with(priority: LayoutPriority) -> Self{
        configuration.priority = priority
        return self
    }
}

public class LayoutExpression<A: AnchorType>: LayoutExpressionBuilder {

    public var anchor: LayoutAnchor<A>
    public var configuration: LayoutConfiguration

    public init(anchor: LayoutAnchor<A>, configuration: LayoutConfiguration = .default) {
        self.anchor = anchor
        self.configuration = configuration
    }


}

public struct LayoutDimensionEquation {

    public var anchor: LayoutDimension
    public var relation: Constraint.Relation
    public var configuration: LayoutConfiguration


    public var constraint: Constraint{

        let constraint: Constraint = {
            switch relation{
            case .lessThanOrEqual:
                return anchor.constraint(lessThanOrEqualToConstant: configuration.constant)
            case .equal:
                return anchor.constraint(equalToConstant: configuration.constant)
            case .greaterThanOrEqual:
                return anchor.constraint(greaterThanOrEqualToConstant: configuration.constant)
            }
        }()
        return constraint.configured(with: configuration)

    }
}


public struct LayoutEquation<AT: AnchorType> {

    public var anchor: LayoutAnchor<AT>
    public var relation: Constraint.Relation
    public var relatedAnchor: LayoutAnchor<AT>
    public var configuration: LayoutConfiguration

    public init(_ anchor: LayoutAnchor<AT>,
                _ relation: Constraint.Relation,
                _ relatedAnchor: LayoutAnchor<AT>,
                _ configuration: LayoutConfiguration = .default) {
        self.anchor = anchor
        self.relation = relation
        self.relatedAnchor = relatedAnchor
        self.configuration = configuration
    }

    public init(_ anchor: LayoutAnchor<AT>,
                _ relation: Constraint.Relation,
                _ relatedExpression: LayoutExpression<AT>) {
        self.init(anchor,
                  relation,
                  relatedExpression.anchor,
                  relatedExpression.configuration)
    }


    public var constraint: Constraint{
        let constraint: Constraint = {
            switch relation{
            case .lessThanOrEqual:
                return anchor.constraint(lessThanOrEqualTo: relatedAnchor)
            case .equal:
                return anchor.constraint(equalTo: relatedAnchor)
            case .greaterThanOrEqual:
                return anchor.constraint(greaterThanOrEqualTo: relatedAnchor)
            }
        }()
        return constraint.activated(with: configuration)
    }
}


public class MultiTermLayoutExpression<F: AnchorType, S: AnchorType>: LayoutExpressionBuilder {

    public var anchors: LayoutAnchors<F, S>
    public var configuration: LayoutConfiguration

    public init(anchors: LayoutAnchors<F, S>, configuration: LayoutConfiguration = .default) {
        self.anchors = anchors
        self.configuration = configuration
    }
}

public struct MultiTermLayoutEquation<F: AnchorType, S: AnchorType> {

    public var anchors: LayoutAnchors<F, S>
    public var relation: Constraint.Relation
    public var relatedAnchors: LayoutAnchors<F, S>
    public var configuration: LayoutConfiguration

    public init(_ anchors: LayoutAnchors<F, S>,
                _ relation: Constraint.Relation,
                _ relatedAnchors: LayoutAnchors<F, S>,
                _ configuration: LayoutConfiguration = .default) {
        self.anchors = anchors
        self.relation = relation
        self.relatedAnchors = relatedAnchors
        self.configuration = configuration
    }

    public init(_ anchors: LayoutAnchors<F, S>,
                _ relation: Constraint.Relation,
                _ relatedExpression: MultiTermLayoutExpression<F,S>) {
        self.init(anchors,
                  relation,
                  relatedExpression.anchors,
                  relatedExpression.configuration)
    }


    public var constraints: ConstraintPair{
        return (LayoutEquation(anchors.first, relation, relatedAnchors.first, configuration).constraint,
                LayoutEquation(anchors.second, relation, relatedAnchors.second, configuration).constraint)
    }
}

public struct LayoutAnchors<F: AnchorType, S: AnchorType> {
    public var first: LayoutAnchor<F>
    public var second: LayoutAnchor<S>

    public init(_ first: LayoutAnchor<F>, _ second: LayoutAnchor<S>) {
        self.first = first
        self.second = second
    }
}
