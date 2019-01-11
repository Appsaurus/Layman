//
//  EdgeAnchorsOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/9/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.

//extension SideCorrelated where HorizontalSideType == XAxisAnchor, VerticalSideType == YAxisAnchor{
//    public var horizontalAnchors: LayoutAnchors<HorizontalSideType, HorizontalSideType> {
//        return .init(leading, trailing)
//    }
//
//    public var verticalAnchors: LayoutAnchors<VerticalSideType, VerticalSideType> {
//        return .init(top, bottom)
//    }
//}

// MARK: Equal
// MARK: Anchors == Expression
@discardableResult
public func == (lhs: EdgeAnchors, rhs: EdgeAnchorsExpression) -> SideConstraints {
    let top = lhs.top == rhs.top + rhs.configurations.top
    let leading = lhs.leading == rhs.leading + rhs.configurations.leading
    let bottom = lhs.bottom == rhs.bottom + rhs.configurations.bottom
    let trailing = lhs.trailing == rhs.trailing + rhs.configurations.trailing
    return SideConstraints(top, leading, bottom, trailing)
}

// MARK: Anchors == Anchors
@discardableResult
public func == (lhs: EdgeAnchors, rhs: EdgeAnchors) -> SideConstraints {
    let top = lhs.top == rhs.top
    let leading = lhs.leading == rhs.leading
    let bottom = lhs.bottom == rhs.bottom
    let trailing = lhs.trailing == rhs.trailing
    return SideConstraints(top, leading, bottom, trailing)
}

@discardableResult
public func + <A>(lhs: LayoutAnchor<A>, rhs: LayoutConfiguration) -> LayoutExpression<A> {
    return LayoutExpression(anchor: lhs, configuration: rhs)
}
@discardableResult
public func + <F, S>(lhs: LayoutAnchors<F, S>, rhs: (first: LayoutConfiguration, second: LayoutConfiguration)) -> LayoutPairExpression<F, S> {
    return LayoutPairExpression(anchors: lhs, configurations: LayoutPairConfiguration(rhs.first, rhs.second))
}
