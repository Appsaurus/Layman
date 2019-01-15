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

public typealias Constraint = NSLayoutConstraint
public typealias Constraints = [Constraint]
public typealias ConstraintPair = (first: Constraint, second: Constraint)
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

// MARK: Typed Anchor Pairs
public typealias XAxisAnchorPair = LayoutAnchorPair<XAxisAnchor, XAxisAnchor>
public typealias YAxisAnchorPair = LayoutAnchorPair<YAxisAnchor, YAxisAnchor>
public typealias SizeAnchorPair = LayoutAnchorPair<LayoutDimension, LayoutDimension>
public typealias CenterAnchorPair = LayoutAnchorPair<XAxisAnchor, YAxisAnchor>

// MARK: Typed Anchor Pair Arrays
public typealias XAxisAnchorPairs = [XAxisAnchorPair]
public typealias YAxisAnchorPairs = [YAxisAnchorPair]
public typealias SizeAnchorPairs = [SizeAnchorPair]
public typealias CenterAnchorPairs = [CenterAnchorPair]

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
public typealias SizeAnchorExpression = LayoutPairExpression<LayoutDimension, LayoutDimension>
public typealias CenterAnchorPairExpression = LayoutPairExpression<XAxisAnchor, YAxisAnchor>

// MARK: Anchor Expressions Arrays
public typealias XAxisAnchorExpressions = [XAxisAnchorExpression]
public typealias YAxisAnchorExpressions = [YAxisAnchorExpression]
public typealias LayoutDimensionExpressions = [LayoutDimensionExpression]
public typealias CenterAnchorPairExpressions = [CenterAnchorPairExpression]
public typealias EdgeAnchorGroupExpressions = [EdgeAnchorGroupExpression]

// MARK: Layout Configuration
public typealias LayoutMultiplier = CGFloat
public typealias LayoutConstant = CGFloat
public typealias LayoutPriority = UILayoutPriority

// MARK: Layout Constants
public typealias LayoutInset = UIEdgeInsets
public typealias LayoutSize = CGSize

//public protocol LayoutAnchorType {}
//extension LayoutAnchor: LayoutAnchorType {}
//extension LayoutAnchors : LayoutAnchorType {}
//extension EdgeAnchors : LayoutAnchorType {}

public protocol SideCorrelated {
    associatedtype VerticalSideType
    associatedtype HorizontalSideType
    var top: VerticalSideType { get set }
    var leading: HorizontalSideType { get set }
    var bottom: VerticalSideType { get set }
    var trailing: HorizontalSideType { get set }
    
    init(_ top: VerticalSideType,
         _ leading: HorizontalSideType,
         _ bottom: VerticalSideType,
         _ trailing: HorizontalSideType)
}

extension SideCorrelated {
    public typealias HorizontalSides = (leading: HorizontalSideType, trailing: HorizontalSideType)
    public typealias VerticalSides = (top: VerticalSideType, bottom: VerticalSideType)

    public init<S: SideCorrelated>(_ other: S)
        where S.HorizontalSideType == HorizontalSideType, S.VerticalSideType == VerticalSideType {
            self.init(other.top, other.leading, other.bottom, other.trailing)
    }
    public var horizontal: HorizontalSides {
        return HorizontalSides(leading, trailing)
    }
    
    public var vertical: VerticalSides {
        return VerticalSides(top, bottom)
    }
}

extension SideCorrelated where HorizontalSideType == VerticalSideType {
    public typealias SideType = HorizontalSideType
    public var all: [SideType] {
        return [top, leading, bottom, trailing]
    }

    public init(_ allSides: SideType) {
        self.init(allSides, allSides, allSides, allSides)
    }
}

public class SidesTuple<HorizontalSideType, VerticalSideType>: SideCorrelated {
    
    public var top: VerticalSideType
    public var leading: HorizontalSideType
    public var bottom: VerticalSideType
    public var trailing: HorizontalSideType
    
    required public init(_ top: VerticalSideType,
                         _ leading: HorizontalSideType,
                         _ bottom: VerticalSideType,
                         _ trailing: HorizontalSideType) {
        self.top = top
        self.leading = leading
        self.bottom = bottom
        self.trailing = trailing
    }
}
