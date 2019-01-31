//
//  ConstraintGroup.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/3/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import UIKit

internal extension Collection where Element: Equatable & Hashable {
    var set: Set<Element> {
        return Set<Element>(self)
    }
}

internal extension Set {
    var array: [Element] {
        return Array(self)
    }

}

public typealias Attributes = [ConstraintAttribute]

public func - (lhs: Attributes, rhs: Attributes) -> Attributes {
    return lhs.set.subtracting(rhs).array
}

public func + (lhs: Attributes, rhs: Attributes) -> Attributes {
    return lhs.set.union(rhs).array
}

extension Collection where Element == ConstraintAttribute {

    public static var edges: Attributes {
        return [.top, .leading, .bottom, .trailing]
    }

    public static func edgesExcluding(_ edges: Attributes) -> Attributes {
        return .edges - edges
    }

    public static var sides: Attributes {
        return [.top, .left, .bottom, .right]
    }

    public static func sidesExcluding(_ sides: Attributes) -> Attributes {
        return .sides - sides
    }

    public static var vertical: Attributes {
        return topAndBottom
    }

    public static var horizontal: Attributes {
        return leadingAndTrailing
    }

    public static var topAndBottom: Attributes {
        return [.top, .bottom]
    }

    public static var leftAndRight: Attributes {
        return [.left, .right]
    }

    public static var leadingAndTrailing: Attributes {
        return [.leading, .trailing]
    }

    public static var topRight: Attributes {
        return [.top, .right]
    }
    public static var topLeft: Attributes {
        return [.top, .left]
    }

    // MARK: Margins
    public static var margins: Attributes {
        return [.topMargin, .leadingMargin, .bottomMargin, .trailingMargin]
    }

    public static func marginsExcluding(_ margins: Attributes) -> Attributes {
        return .margins - margins
    }

    public static var marginSides: Attributes {
        return [.topMargin, .leftMargin, .bottomMargin, .rightMargin]
    }

    public static func marginSidesExcluding(_ margins: Attributes) -> Attributes {
        return .marginSides - margins
    }

    public static var verticalMargins: Attributes {
        return topAndBottomMargins
    }

    public static var horizontalMargins: Attributes {
        return leadingAndTrailingMargins
    }

    public static var leftAndRightMargins: Attributes {
        return [.leftMargin, .rightMargin]
    }

    public static var leadingAndTrailingMargins: Attributes {
        return [.leadingMargin, .trailingMargin]
    }

    public static var topAndBottomMargins: Attributes {
        return [.topMargin, .bottomMargin]
    }

    public static var bottomRight: Attributes {
        return [.bottom, .right]
    }
    public static var bottomLeft: Attributes {
        return [.bottom, .left]
    }

    public static var topRightMargins: Attributes {
        return [.topMargin, .rightMargin]
    }
    public static var topLeftMargins: Attributes {
        return [.topMargin, .leftMargin]
    }

    public static var bottomRightMargins: Attributes {
        return [.bottomMargin, .rightMargin]
    }
    public static var bottomLeftMargins: Attributes {
        return [.bottomMargin, .leftMargin]
    }
}

public protocol AttributeRepresentable {
    var flatAttributes: [ConstraintAttribute] { get }
}

extension ConstraintAttribute: AttributeRepresentable {

    public var flatAttributes: [ConstraintAttribute] {
        return [self]
    }
}

//extension Array: AttributeRepresentable where Element == ConstraintAttribute{
//    public var flatAttributes: [ConstraintAttribute] {
//        return self.compactMap({$0})
//    }
//}

extension Array: AttributeRepresentable where Element == AttributeRepresentable {
    public var flatAttributes: [ConstraintAttribute] {
        return self.compactMap({$0.flatAttributes}).flattened
    }
}

extension Array where Element == ConstraintAttribute {
    public var toMargins: Array {
        return map {$0.margin}
    }
}

extension ConstraintAttribute {
    public var margin: ConstraintAttribute {
        switch self {
        case .top, .topMargin:
            return .topMargin
        case .bottom, .bottomMargin:
            return .bottomMargin
        case .right, .rightMargin:
            return .rightMargin
        case .left, .leftMargin:
            return .leftMargin
        case .centerX, .centerXWithinMargins:
            return .centerXWithinMargins
        case .centerY, .centerYWithinMargins:
            return .centerYWithinMargins
        case .leading, .leadingMargin:
            return .leadingMargin
        case .trailing, .trailingMargin:
            return .trailingMargin
        default:
            return self
        }
    }
}
