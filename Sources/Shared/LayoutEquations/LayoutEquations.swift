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
    public func with(priority: Priority) -> Self{
        configuration.priority = priority
        return self
    }
}

public struct LayoutDimensionEquation {
    
    public var anchor: DimensionAnchor
    public var relation: Relation
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

public struct LayoutRelationEquation<AT: AnchorType, LA: LayoutAnchor<AT>> {
    
    public var anchor: LA
    public var relation: Relation
    public var relatedAnchor: LA
    public var configuration: LayoutConfiguration
    
    public init(anchor: LA,
                relation: Relation,
                relatedAnchor: LA,
                configuration: LayoutConfiguration = .default) {
        self.anchor = anchor
        self.relation = relation
        self.relatedAnchor = relatedAnchor
        self.configuration = configuration
    }
    
    public init<LE>(anchor: LA,
                    relation: Relation,
                    relatedExpression: LE) where LE : LayoutExpression<LA> {
        self.init(anchor: anchor,
                  relation: relation,
                  relatedAnchor: relatedExpression.anchor as! LA,
                  configuration: relatedExpression.configuration)
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

public struct AnchorPair<F: AnyObject, S: AnyObject>{
    public var first: LayoutAnchor<F>
    public var second: LayoutAnchor<S>
}


