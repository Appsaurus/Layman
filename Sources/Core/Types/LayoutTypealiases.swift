//
//  LayoutTypealiases.swift
//  Layman
//
//  Created by Brian Strobach on 1/3/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

#if canImport(AppKit)
import AppKit
public typealias View = NSView
internal typealias Window = NSWindow
internal typealias ViewController = NSViewController
public typealias LayoutGuide = NSLayoutGuide
public typealias StackView = NSStackView

#else
import UIKit
public typealias View = UIView
internal typealias Window = UIWindow
internal typealias ViewController = UIViewController
public typealias LayoutGuide = UILayoutGuide
public typealias StackView = UIStackView

#endif

// MARK: Constraint
public typealias Constraint = NSLayoutConstraint
public typealias Constraints = [Constraint]
public typealias ConstraintPairs = [ConstraintPair]

// MARK: Attribute
public typealias ConstraintAttribute = Constraint.Attribute
public typealias ConstraintAttributes = [ConstraintAttribute]

// MARK: Anchor
public typealias LayoutAnchor = NSLayoutAnchor
public typealias AnchorType = AnyObject
public typealias AnchorVariable = AnchorType & LayoutVariable
public typealias AnyLayoutAnchor = LayoutAnchor<AnchorType>

public typealias LayoutFrame = CGRect

// MARK: Layout Configuration
public typealias LayoutConstant = CGFloat
public typealias LayoutConstantTuple = (first: LayoutConstant, second: LayoutConstant)

public typealias LayoutMultiplier = LayoutConstantWrapper
public typealias LayoutDivisor = LayoutConstant

#if canImport(AppKit)
public typealias LayoutPriority = Constraint.Priority
#else
public typealias LayoutPriority = UILayoutPriority
#endif

// MARK: Layout Constants
public typealias LayoutSize = CGSize

// MARK: Typed Anchors
public typealias XAxisAnchor = NSLayoutXAxisAnchor
public typealias YAxisAnchor = NSLayoutYAxisAnchor
public typealias LayoutDimension = NSLayoutDimension

// MARK: Typed Anchor Arrays
public typealias XAxisAnchors = [XAxisAnchor]
public typealias YAxisAnchors = [YAxisAnchor]
public typealias LayoutDimensions = [LayoutDimension]
public typealias AspectRatioAnchors = [AspectRatioAnchor]

// MARK: Typed Anchor Pairs
public typealias XAxisAnchorPair = LayoutAnchorPair<XAxisAnchor, XAxisAnchor>
public typealias YAxisAnchorPair = LayoutAnchorPair<YAxisAnchor, YAxisAnchor>
public typealias XYAxesAnchorPair = LayoutAnchorPair<XAxisAnchor, YAxisAnchor>
public typealias LayoutDimensionPair = LayoutAnchorPair<LayoutDimension, LayoutDimension>

// MARK: Typed Anchor Pair Arrays
public typealias XAxisAnchorPairs = [XAxisAnchorPair]
public typealias YAxisAnchorPairs = [YAxisAnchorPair]
public typealias XYAxesAnchorPairs = [XYAxesAnchorPair]
public typealias LayoutDimensionPairs = [LayoutDimensionPair]

// MARK: Typed Anchor Group Array
public typealias EdgeAnchorGroups = [EdgeAnchorGroup]

// MARK: Expressions
public typealias XAxisAnchorExpression = LayoutAnchorExpression<XAxisAnchor>
public typealias YAxisAnchorExpression = LayoutAnchorExpression<YAxisAnchor>
public typealias LayoutDimensionExpression = LayoutAnchorExpression<LayoutDimension>

// MARK: Anchor Expressions Arrays
public typealias XAxisAnchorExpressions = [XAxisAnchorExpression]
public typealias YAxisAnchorExpressions = [YAxisAnchorExpression]
public typealias LayoutDimensionExpressions = [LayoutDimensionExpression]

// MARK: Anchor Pair Expressions
public typealias XAxisAnchorPairExpression = LayoutAnchorPairExpression<XAxisAnchor, XAxisAnchor>
public typealias YAxisAnchorPairExpression = LayoutAnchorPairExpression<YAxisAnchor, YAxisAnchor>
public typealias XYAxesAnchorPairExpression = LayoutAnchorPairExpression<XAxisAnchor, YAxisAnchor>
public typealias LayoutDimensionPairExpression = LayoutAnchorPairExpression<LayoutDimension, LayoutDimension>

// MARK: Anchor Pair Expressions Arrays
public typealias XAxisAnchorPairExpressions = [XAxisAnchorPairExpression]
public typealias YAxisAnchorPairExpressions = [YAxisAnchorPairExpression]
public typealias LayoutDimensionPairExpressions = [LayoutDimensionPairExpression]

public typealias XYAxesAnchorPairExpressions = [XYAxesAnchorPairExpression]
public typealias EdgeAnchorGroupExpressions = [EdgeAnchorGroupExpression]

// MARK: Typed Anchor Pair Relationships
public typealias XAxisAnchorPairEquation = LayoutAnchorPairEquation<XAxisAnchor, XAxisAnchor>
public typealias YAxisAnchorPairEquation = LayoutAnchorPairEquation<YAxisAnchor, YAxisAnchor>
public typealias LayoutDimensionPairEquation = LayoutAnchorPairEquation<LayoutDimension, LayoutDimension>
public typealias XYAxesAnchorPairEquation = LayoutAnchorPairEquation<XAxisAnchor, YAxisAnchor>
