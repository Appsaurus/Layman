//
//  LayoutTypealiases.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/3/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

#if canImport(AppKit)
import AppKit
public typealias View = NSView
internal typealias Window = NSWindow
internal typealias ViewController = NSViewController
internal typealias LayoutGuide = NSLayoutGuide

#else
import UIKit
public typealias View = UIView
internal typealias Window = UIWindow
internal typealias ViewController = UIViewController
internal typealias LayoutGuide = UILayoutGuide

#endif

public typealias Constraint = NSLayoutConstraint
public typealias Constraints = [Constraint]
public typealias ConstraintPair = (first: Constraint, second: Constraint)
public typealias ConstraintPairs = [ConstraintPair]
public typealias SideConstraints = SidesTuple<Constraint, Constraint>

public typealias ConstraintAttribute = Constraint.Attribute
public typealias ConstraintAttributes = [ConstraintAttribute]

public typealias LayoutAnchor = NSLayoutAnchor
public typealias AnchorType = AnyObject
public typealias AnyLayoutAnchor = LayoutAnchor<AnchorType>
public class LayoutAnchorPair<F, S>: MixedLayoutModelReferencePair<LayoutAnchor<F>, LayoutAnchor<S>> where F: AnchorType, S: AnchorType {}

// MARK: Typed Anchors
public typealias XAxisAnchor = NSLayoutXAxisAnchor
public typealias YAxisAnchor = NSLayoutYAxisAnchor
public typealias LayoutDimension = NSLayoutDimension

// MARK: Typed Anchor Arrays
public typealias XAxisAnchors = [XAxisAnchor]
public typealias YAxisAnchors = [YAxisAnchor]
public typealias LayoutDimensions = [LayoutDimension]


public protocol LayoutAnchorType{}
extension XAxisAnchor: LayoutAnchorType{}
extension YAxisAnchor: LayoutAnchorType{}
extension LayoutDimension: LayoutAnchorType{}

// MARK: Typed Anchor Pairs
public typealias XAxisAnchorPair = LayoutAnchorPair<XAxisAnchor, XAxisAnchor>
public typealias YAxisAnchorPair = LayoutAnchorPair<YAxisAnchor, YAxisAnchor>
public typealias XYAxesAnchorPair = LayoutAnchorPair<XAxisAnchor, YAxisAnchor>
public typealias SizeAnchorPair = LayoutAnchorPair<LayoutDimension, LayoutDimension>

// MARK: Typed Anchor Pair Arrays
public typealias XAxisAnchorPairs = [XAxisAnchorPair]
public typealias YAxisAnchorPairs = [YAxisAnchorPair]
public typealias XYAxesAnchorPairs = [XYAxesAnchorPair]
public typealias SizeAnchorPairs = [SizeAnchorPair]

// MARK: Typed Anchor Group
public class EdgeAnchorGroup: SidesTuple<XAxisAnchor, YAxisAnchor> {}

// MARK: Typed Anchor Group Array
public typealias EdgeAnchorGroups = [EdgeAnchorGroup]

// MARK: Expressions
public typealias XAxisAnchorExpression = LayoutExpression<XAxisAnchor>
public typealias YAxisAnchorExpression = LayoutExpression<YAxisAnchor>
public typealias LayoutDimensionExpression = LayoutExpression<LayoutDimension>

// MARK: Anchor Pair Expressions
public typealias XAxisAnchorPairExpression = LayoutPairExpression<XAxisAnchor, XAxisAnchor>
public typealias YAxisAnchorPairExpression = LayoutPairExpression<YAxisAnchor, YAxisAnchor>
public typealias XYAxesAnchorPairExpression = LayoutPairExpression<XAxisAnchor, YAxisAnchor>
public typealias SizeAnchorExpression = LayoutPairExpression<LayoutDimension, LayoutDimension>

// MARK: Anchor Expressions Arrays
public typealias XAxisAnchorExpressions = [XAxisAnchorExpression]
public typealias YAxisAnchorExpressions = [YAxisAnchorExpression]
public typealias LayoutDimensionExpressions = [LayoutDimensionExpression]

// MARK: Anchor Pair Expressions Arrays
public typealias XAxisAnchorPairExpressions = [XAxisAnchorPairExpression]
public typealias YAxisAnchorPairExpressions = [YAxisAnchorPairExpression]
public typealias SizeAnchorExpressions = [SizeAnchorExpression]

public typealias XYAxesAnchorPairExpressions = [XYAxesAnchorPairExpression]
public typealias EdgeAnchorGroupExpressions = [EdgeAnchorGroupExpression]

// MARK: Layout Configuration
public typealias LayoutMultiplier = CGFloat
public typealias LayoutConstant = CGFloat

#if canImport(AppKit)
public typealias LayoutPriority = Constraint.Priority
public typealias LayoutInset = NSEdgeInsets
#else
public typealias LayoutPriority = UILayoutPriority
public typealias LayoutInset = UIEdgeInsets
#endif

// MARK: Layout Constants
public typealias LayoutSize = CGSize
