//
//  LayoutAnchor+Attribute.swift
//  UILayoutKit
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

extension EdgeAnchorGroup {

    public var attributes: SidesTuple<ConstraintAttribute, ConstraintAttribute> {
        return SidesTuple(top.attribute,
                          leading.attribute,
                          bottom.attribute,
                          trailing.attribute)
    }
}
