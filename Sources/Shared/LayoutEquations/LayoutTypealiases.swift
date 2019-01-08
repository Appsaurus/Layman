//
//  LayoutTypealiases.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/3/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

#if canImport(Cocoa)
import Cocoa
#else
import UIKit
#endif

import Swiftest

public typealias Constraint = NSLayoutConstraint
public typealias ConstraintPair = (first: Constraint, second: Constraint)
public typealias Constraints = [Constraint]



public typealias LayoutAnchor = NSLayoutAnchor

public typealias AnchorType = AnyObject

//MARK: Typed Anchors

public typealias XAxisAnchor = NSLayoutXAxisAnchor
public typealias XAxisAnchors = LayoutAnchors<XAxisAnchor, XAxisAnchor>

public typealias YAxisAnchor = NSLayoutYAxisAnchor
public typealias YAxisAnchors = LayoutAnchors<YAxisAnchor, YAxisAnchor>

public typealias LayoutDimension = NSLayoutDimension
public typealias SizeAnchors = LayoutAnchors<LayoutDimension, LayoutDimension>


//MARK: Layout Configuration
public typealias LayoutMultiplier = CGFloat
public typealias LayoutConstant = CGFloat
public typealias LayoutPriority = UILayoutPriority

//MARK: Layout Constants
public typealias LayoutInset = UIEdgeInsets
public typealias LayoutSize = CGSize



// MARK: - ConstraintGroup

public struct SideConstraints {

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

