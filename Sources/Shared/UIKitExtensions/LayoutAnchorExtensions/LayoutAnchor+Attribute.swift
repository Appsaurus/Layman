//
//  LayoutAnchor+Attribute.swift
//  Layman
//
//  Created by Brian Strobach on 1/23/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// Somewhat hacky way to resolve an attribute from an NSLayoutAnchor

extension LayoutAnchor where AnchorType == LayoutDimension {

    public var attribute: ConstraintAttribute {
        return constraint(equalTo: self).firstAttribute
    }

}

extension LayoutAnchor where AnchorType == XAxisAnchor {

    public var attribute: ConstraintAttribute {
        return constraint(equalTo: self).firstAttribute
    }
}

extension LayoutAnchor where AnchorType == YAxisAnchor {

    public var attribute: ConstraintAttribute {
        return constraint(equalTo: self).firstAttribute
    }
}

extension ConstraintAttribute {
    public static func from<A>(_ anchor: LayoutAnchor<A>) -> ConstraintAttribute {
        switch anchor {
        case let anchor as XAxisAnchor:
            return anchor.attribute
        case let anchor as YAxisAnchor:
            return anchor.attribute
        case let anchor as LayoutDimension:
            return anchor.attribute
        default:
            assertionFailure("Unknown Anchor Type")
            return .height
        }
    }
}

extension EdgeAnchorGroup {

    public var attributes: SidesTuple<ConstraintAttribute, ConstraintAttribute> {
        return SidesTuple(top.attribute,
                          leading.attribute,
                          bottom.attribute,
                          trailing.attribute)
    }
}
