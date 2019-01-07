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
public typealias ConstraintPair = (first: Constraint, second: Constraint)

public typealias LayoutPriority = UILayoutPriority

extension LayoutPriority: CGFloatConvertible, CGFloatInitializable {
    public init(_ cgFloat: CGFloat) {
        self.init(cgFloat.float)
    }

    public var cgFloat: CGFloat {
        return rawValue.cgFloat
    }
}

extension LayoutPriority: ExpressibleByIntegerLiteral{
    public typealias IntegerLiteralType = Int
    public init(integerLiteral value: Int) {
        self.init(value.float)
    }
}

//public typealias Relation = Constraint.Relation

public typealias LayoutAnchor = NSLayoutAnchor
public typealias AnchorType = AnyObject

public typealias XAxisAnchor = NSLayoutXAxisAnchor
public typealias XAxisAnchors = LayoutAnchors<XAxisAnchor, XAxisAnchor>

public typealias YAxisAnchor = NSLayoutYAxisAnchor
public typealias YAxisAnchors = LayoutAnchors<YAxisAnchor, YAxisAnchor>

public typealias LayoutDimension = NSLayoutDimension
public typealias LayoutDimensions = LayoutAnchors<LayoutDimension, LayoutDimension>

public typealias LayoutMultiplier = CGFloat
public typealias LayoutConstant = CGFloat


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

//MARK: UILayoutPriority shorthand sugar

extension UILayoutPriority{
    /// Shorthand syntax for UILayoutPriority.defaultHigh
    public static var high: UILayoutPriority{
        return .defaultHigh
    }

    /// Shorthand syntax for UILayoutPriority.defaultLow
    public static var low: UILayoutPriority{
        return .defaultLow
    }

    /// Shorthand syntax for UILayoutPriority.fittingSizeLevel
    public static var fittingSize: UILayoutPriority{
        return .fittingSizeLevel
    }
}
