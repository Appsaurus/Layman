//
//  LayoutTypealiases.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/3/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import UIKit
import Swiftest

public typealias LayoutInset = UIEdgeInsets
public typealias Constraint = NSLayoutConstraint
public typealias Constraints = [Constraint]
public typealias Priority = UILayoutPriority

public typealias ConstraintDictionary = [Attribute: Constraint]
public typealias ConstraintDictionaryMap = [UIView: ConstraintDictionary]



public typealias LayoutRelationshipComparator<Value: Comparable> = (Value, Value) -> Bool

public typealias Relation = Constraint.Relation

public typealias LayoutAnchor = NSLayoutAnchor
public typealias AnchorType = AnyObject

public typealias XAxisAnchor = NSLayoutXAxisAnchor
public typealias YAxisAnchor = NSLayoutYAxisAnchor
public typealias DimensionAnchor = NSLayoutDimension

public typealias LayoutMultiplier = CGFloat
public typealias LayoutConstant = CGFloat


// MARK: - Axis Group

public struct ConstraintPair {
    public var first: Constraint
    public var second: Constraint
}

// MARK: - ConstraintGroup

public struct ConstraintGroup {

    public var top: Constraint
    public var leading: Constraint
    public var bottom: Constraint
    public var trailing: Constraint

    public var horizontal: [Constraint] {
        return [leading, trailing]
    }

    public var vertical: [Constraint] {
        return [top, bottom]
    }

    public var all: [Constraint] {
        return [top, leading, bottom, trailing]
    }

}
