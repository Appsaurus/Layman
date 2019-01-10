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

public typealias Pair<I> = (first: I, second: I)
public typealias Constraint = NSLayoutConstraint
public typealias ConstraintPair = Pair<Constraint>
public typealias Constraints = [Constraint]
public typealias ConstraintAttribute = Constraint.Attribute
public typealias ConstraintAttributes = [ConstraintAttribute]


public typealias LayoutAnchor = NSLayoutAnchor
//public typealias LayoutAnchors<A: AnchorType> = [LayoutAnchor<A>]

public typealias AnchorType = AnyObject
public typealias AnyLayoutAnchor = LayoutAnchor<AnchorType>

//MARK: Typed Anchors
public typealias XAxisAnchor = NSLayoutXAxisAnchor
public typealias XAxisAnchors = LayoutAnchors<XAxisAnchor, XAxisAnchor>

public typealias YAxisAnchor = NSLayoutYAxisAnchor
public typealias YAxisAnchors = LayoutAnchors<YAxisAnchor, YAxisAnchor>

public typealias LayoutDimension = NSLayoutDimension
public typealias SizeAnchors = LayoutAnchors<LayoutDimension, LayoutDimension>

public typealias CenterAnchors = LayoutAnchors<XAxisAnchor, YAxisAnchor>

//MARK: Layout Configuration
public typealias LayoutMultiplier = CGFloat
public typealias LayoutConstant = CGFloat
public typealias LayoutPriority = UILayoutPriority

//MARK: Layout Constants
public typealias LayoutInset = UIEdgeInsets
public typealias LayoutSize = CGSize



// MARK: - ConstraintGroup

public protocol SideCorrelated{
    associatedtype VerticalSideType
    associatedtype HorizontalSideType
    var top: VerticalSideType { get set }
    var leading: HorizontalSideType { get set }
    var bottom: VerticalSideType { get set }
    var trailing: HorizontalSideType { get set }

    init(top: VerticalSideType,
         leading: HorizontalSideType,
         bottom: VerticalSideType,
         trailing: HorizontalSideType)
//    init(horizontal: Pair<HorizontalSideType>, vertical: Pair<VerticalSideType>)
}

extension SideCorrelated{

    public init<S: SideCorrelated>(_ other: S)
        where S.HorizontalSideType == HorizontalSideType, S.VerticalSideType == VerticalSideType {
        self.init(top: other.top, leading: other.leading, bottom: other.bottom, trailing: other.trailing)
    }
}

extension SideCorrelated where HorizontalSideType == VerticalSideType{
    public typealias SideType = HorizontalSideType
    public var all: [SideType] {
        return [top, leading, bottom, trailing]
    }
}

public class SideCorrelatedStruct<H, V>: SideCorrelated{
    public typealias HorizontalSideType = H
    public typealias VerticalSideType = V

    public var top: V
    public var leading: H
    public var bottom: V
    public var trailing: H

    required public init(top: V,
                leading: H,
                bottom: V,
                trailing: H) {
        self.top = top
        self.leading = leading
        self.bottom = bottom
        self.trailing = trailing
    }

    public var horizontal: PairOf<H> {
        return PairOf<H>(leading, trailing)
    }

    public var vertical: PairOf<V> {
        return PairOf<V>(top, bottom)
    }
}

public typealias SideConstraints = SideCorrelatedStruct<Constraint, Constraint>
