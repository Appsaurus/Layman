//
//  LayoutRelationship.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/3/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import Swiftest


public protocol LayoutAnchorType {}
extension LayoutAnchor: LayoutAnchorType {}
extension EdgeAnchors : LayoutAnchorType {}
extension LayoutAnchors : LayoutAnchorType {}


public class LayoutExpression<A: AnchorType> {

    public var anchor: LayoutAnchor<A>
    public var configuration: LayoutConfiguration

    public init(anchor: LayoutAnchor<A>, configuration: LayoutConfiguration = .default) {
        self.anchor = anchor
        self.configuration = configuration
    }

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

public struct LayoutRelationship<A: AnchorType> {

    public var anchor: LayoutAnchor<A>
    public var relation: Constraint.Relation
    public var relatedAnchor: LayoutAnchor<A>?
    public var configuration: LayoutConfiguration

    public init(_ anchor: LayoutAnchor<A>,
                _ relation: Constraint.Relation,
                _ relatedAnchor: LayoutAnchor<A>?,
                _ configuration: LayoutConfiguration = .default) {
        self.anchor = anchor
        self.relation = relation
        self.relatedAnchor = relatedAnchor
        self.configuration = configuration
    }

    public init(_ anchor: LayoutAnchor<A>,
                _ relation: Constraint.Relation,
                _ relatedExpression: LayoutExpression<A>) {
        self.init(anchor,
                  relation,
                  relatedExpression.anchor,
                  relatedExpression.configuration)
    }


    public var constraint: Constraint{

        if let relatedAnchor = relatedAnchor {
            return constraintRelated(to: relatedAnchor)
        }

        if let anchor = anchor as? LayoutDimension {
            return sizeConstraint(for: anchor)
        }
        preconditionFailure("LayoutRelationship must contain two anchors or one anchor of type LayoutDimension")
    }
    
    internal func constraintRelated(to relatedAnchor: LayoutAnchor<A>) -> Constraint{
        var constraint: Constraint = {
            switch relation{
            case .lessThanOrEqual:
                return anchor.constraint(lessThanOrEqualTo: relatedAnchor)
            case .equal:
                return anchor.constraint(equalTo: relatedAnchor)
            case .greaterThanOrEqual:
                return anchor.constraint(greaterThanOrEqualTo: relatedAnchor)
            }
        }()

        switch constraint.secondAttribute{
        case .right, .bottom, .trailing, .rightMargin, .bottomMargin, .trailingMargin:
            configuration.constant.negate()
            switch relation{
            case .lessThanOrEqual:
                constraint = anchor.constraint(greaterThanOrEqualTo: relatedAnchor)
            case .greaterThanOrEqual:
                constraint = anchor.constraint(lessThanOrEqualTo: relatedAnchor)
            default: break
            }
        default: break
        }
        return constraint.activated(with: configuration)
    }

    internal func sizeConstraint(for anchor: LayoutDimension) -> Constraint{
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
        return constraint.activated(with: configuration)
    }
}

public struct LayoutConstantRelationship<A: LayoutAnchor<LayoutDimension>>{

    public var anchor: LayoutAnchor<A>
    public var relation: Constraint.Relation
    public var configuration: LayoutConfiguration

    public init(_ anchor: LayoutAnchor<A>,
                _ relation: Constraint.Relation,
                _ configuration: LayoutConfiguration = .default) {
        self.anchor = anchor
        self.relation = relation
        self.configuration = configuration
    }

    public init(_ anchor: LayoutAnchor<A>,
                _ relation: Constraint.Relation,
                _ relatedExpression: LayoutExpression<A>) {
        self.init(anchor,
                  relation,
                  relatedExpression.configuration)
    }


    public var constraint: Constraint{
        let dimension = anchor as! LayoutDimension
        let constraint: Constraint = {
            switch relation{
            case .lessThanOrEqual:
                return dimension.constraint(lessThanOrEqualToConstant: configuration.constant)
            case .equal:
                return dimension.constraint(equalToConstant: configuration.constant)
            case .greaterThanOrEqual:
                return dimension.constraint(greaterThanOrEqualToConstant: configuration.constant)
            }
        }()
        return constraint.configured(with: configuration)

    }
}


public class LayoutPairExpression<F: AnchorType, S: AnchorType> {

    public var anchors: LayoutAnchors<F, S>
    public var configurations: LayoutPairConfiguration

    public init(anchors: LayoutAnchors<F, S>, configurations: LayoutPairConfiguration = .default) {
        self.anchors = anchors
        self.configurations = configurations
    }

    public init(anchors: LayoutAnchors<F, S>, configuration: LayoutConfiguration) {
        self.anchors = anchors
        self.configurations = LayoutPairConfiguration(configuration, configuration)
    }

    @discardableResult
    public func configured(with configuration: LayoutConfiguration) -> Self{
        self.configurations = LayoutPairConfiguration(configuration, configuration)
        return self
    }

    @discardableResult
    public func with(constant: LayoutConstant) -> Self{
        configurations.first.constant = constant
        configurations.second.constant = constant
        return self
    }

    @discardableResult
    public func with(multiplier: LayoutMultiplier) -> Self{
        configurations.first.multiplier = multiplier
        configurations.second.multiplier = multiplier
        return self
    }

    @discardableResult
    public func with(priority: LayoutPriority) -> Self{
        configurations.first.priority = priority
        configurations.second.priority = priority
        return self
    }
}

public struct LayoutPairRelationship<F: AnchorType, S: AnchorType> {

    public var anchors: LayoutAnchors<F, S>
    public var relation: Constraint.Relation
    public var relatedAnchors: LayoutAnchors<F, S>
    public var configurations: LayoutPairConfiguration

    public init(_ anchors: LayoutAnchors<F, S>,
                _ relation: Constraint.Relation,
                _ relatedAnchors: LayoutAnchors<F, S>,
                _ configurations: LayoutPairConfiguration = .default) {
        self.anchors = anchors
        self.relation = relation
        self.relatedAnchors = relatedAnchors
        self.configurations = configurations
    }

    public init(_ anchors: LayoutAnchors<F, S>,
                _ relation: Constraint.Relation,
                _ relatedExpression: LayoutPairExpression<F,S>) {
        self.init(anchors,
                  relation,
                  relatedExpression.anchors,
                  relatedExpression.configurations)
    }


    public var constraints: ConstraintPair{
        return (LayoutRelationship(anchors.first, relation, relatedAnchors.first, configurations.first).constraint,
                LayoutRelationship(anchors.second, relation, relatedAnchors.second, configurations.second).constraint)
    }
}

public class PairOf<O>: Paired<O, O>{}

public class Paired<F, S>{
    public var first: F
    public var second: S

    public init(_ first: F, _ second: S) {
        self.first = first
        self.second = second
    }

}
public class LayoutAnchors<F: AnchorType, S: AnchorType>: Paired<LayoutAnchor<F>, LayoutAnchor<S>> {
//    public var first: LayoutAnchor<F>
//    public var second: LayoutAnchor<S>
//
//    public init(_ first: LayoutAnchor<F>, _ second: LayoutAnchor<S>) {
//        self.first = first
//        self.second = second
//    }
}

public class LayoutPairConfiguration: Paired<LayoutConfiguration, LayoutConfiguration> {
    public static var `default` = LayoutPairConfiguration(.default)

//    public var first: LayoutConfiguration
//    public var second: LayoutConfiguration
//
//    public init(_ first: LayoutConfiguration, _ second: LayoutConfiguration) {
//        self.first = first
//        self.second = second
//    }

    public convenience init(_ configuration: LayoutConfiguration) {
        self.init(configuration, configuration)
    }

}
