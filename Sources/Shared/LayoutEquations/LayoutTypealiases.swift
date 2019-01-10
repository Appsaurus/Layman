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
public typealias Constraints = [Constraint]
public typealias ConstraintPair = TuplePair<Constraint>
public typealias SideConstraints = SidesTuple<Constraint, Constraint>

public typealias ConstraintAttribute = Constraint.Attribute
public typealias ConstraintAttributes = [ConstraintAttribute]

public typealias LayoutAnchor = NSLayoutAnchor
public typealias AnchorType = AnyObject
public typealias AnyLayoutAnchor = LayoutAnchor<AnchorType>
public class LayoutAnchors<F, S>: Paired<LayoutAnchor<F>, LayoutAnchor<S>> where F: AnchorType, S: AnchorType {}

//MARK: Typed Anchors
public typealias XAxisAnchor = NSLayoutXAxisAnchor
public typealias YAxisAnchor = NSLayoutYAxisAnchor
public typealias LayoutDimension = NSLayoutDimension

//MARK: Grouped Anchor Types
public typealias XAxisAnchors = LayoutAnchors<XAxisAnchor, XAxisAnchor>
public typealias YAxisAnchors = LayoutAnchors<YAxisAnchor, YAxisAnchor>
public typealias SizeAnchors = LayoutAnchors<LayoutDimension, LayoutDimension>
public typealias CenterAnchors = LayoutAnchors<XAxisAnchor, YAxisAnchor>
public class EdgeAnchors: SidesTuple<XAxisAnchor, YAxisAnchor>{}


//MARK: Layout Configuration
public typealias LayoutMultiplier = CGFloat
public typealias LayoutConstant = CGFloat
public typealias LayoutPriority = UILayoutPriority

//MARK: Expressions
public typealias XAxisAnchorsExpression = LayoutPairExpression<XAxisAnchor, XAxisAnchor>
public typealias YAxisAnchorsExpression = LayoutPairExpression<YAxisAnchor, YAxisAnchor>
public typealias LayoutDimensionExpression = LayoutExpression<LayoutDimension>
public typealias CenterAnchorsExpression = LayoutPairExpression<XAxisAnchor, YAxisAnchor>

//MARK: Layout Constants
public typealias LayoutInset = UIEdgeInsets
public typealias LayoutSize = CGSize


//public protocol LayoutAnchorType {}
//extension LayoutAnchor: LayoutAnchorType {}
//extension LayoutAnchors : LayoutAnchorType {}
//extension EdgeAnchors : LayoutAnchorType {}

public protocol SideCorrelated{
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

extension SideCorrelated{
    
    public init<S: SideCorrelated>(_ other: S)
        where S.HorizontalSideType == HorizontalSideType, S.VerticalSideType == VerticalSideType {
            self.init(other.top, other.leading, other.bottom, other.trailing)
    }
    public var horizontal: Pair<HorizontalSideType> {
        return Pair<HorizontalSideType>(leading, trailing)
    }
    
    public var vertical: Pair<VerticalSideType> {
        return Pair<VerticalSideType>(top, bottom)
    }
}


extension SideCorrelated where HorizontalSideType == VerticalSideType{
    public typealias SideType = HorizontalSideType
    public var all: [SideType] {
        return [top, leading, bottom, trailing]
    }

    public init(_ allSides: SideType) {
        self.init(allSides, allSides, allSides, allSides)
    }
}

public class SidesTuple<HorizontalSideType, VerticalSideType>: SideCorrelated{
    
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
