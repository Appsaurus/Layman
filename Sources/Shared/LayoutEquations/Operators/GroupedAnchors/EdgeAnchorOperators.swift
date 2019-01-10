//
//  EdgeAnchorOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/9/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.

extension SideCorrelated where HorizontalSideType == XAxisAnchor, VerticalSideType == YAxisAnchor{
    public var horizontalAnchors: LayoutAnchors<HorizontalSideType, HorizontalSideType> {
        return .init(leading, trailing)
    }

    public var verticalAnchors: LayoutAnchors<VerticalSideType, VerticalSideType> {
        return .init(top, bottom)
    }
}
public class EdgeAnchors: SideCorrelatedStruct<XAxisAnchor, YAxisAnchor>{

    
    //    public func expression(with priority: LayoutPriority) -> EdgeAnchorsExpression{
    //        return EdgeAnchorsExpression(top: top ~ priority,
    //                              leading: leading ~ priority,
    //                              bottom: bottom ~ priority,
    //                              trailing: trailing ~ priority)
    //    }
}
public class EdgeAnchorsExpression: SideCorrelatedStruct<XAxisAnchor, YAxisAnchor>{
    public var configurations: EdgeAnchorsConfiguration = .default
    
    public convenience init(anchors: EdgeAnchors, configurations: EdgeAnchorsConfiguration = .default){
        self.init(anchors)
        self.configurations = configurations
    }
    
    required public init(top: YAxisAnchor,
                         leading: XAxisAnchor,
                         bottom: YAxisAnchor,
                         trailing: XAxisAnchor) {
        super.init(top: top, leading: leading, bottom: bottom, trailing: trailing)
    }
    
    @discardableResult
    public func configured(with configurations: EdgeAnchorsConfiguration) -> Self{
        self.configurations = configurations
        return self
    }
    
    @discardableResult
    public func configured(with configuration: LayoutConfiguration) -> Self{
        self.configurations = EdgeAnchorsConfiguration(top: configuration,
                                                       leading: configuration,
                                                       bottom: configuration,
                                                       trailing: configuration)
        return self
    }
    
    @discardableResult
    public func with(constant: LayoutConstant) -> Self{
        configurations.all.forEach{$0.constant = constant}
        return self
    }
    
    @discardableResult
    public func with(multiplier: LayoutMultiplier) -> Self{
        configurations.all.forEach{$0.multiplier = multiplier}
        return self
    }
    
    @discardableResult
    public func with(priority: LayoutPriority) -> Self{
        configurations.all.forEach{$0.priority = priority}
        return self
    }
}

public class EdgeAnchorsConfiguration: SideCorrelatedStruct<LayoutConfiguration, LayoutConfiguration>{
    public static var `default` = EdgeAnchorsConfiguration(top: .default,
                                                           leading: .default,
                                                           bottom: .default,
                                                           trailing: .default)
    
    
    
}


@discardableResult
public func + <A>(lhs: LayoutAnchor<A>, rhs: LayoutConfiguration) -> LayoutExpression<A> {
    return LayoutExpression(anchor: lhs, configuration: rhs)
}
@discardableResult
public func + <F, S>(lhs: LayoutAnchors<F, S>, rhs: PairOf<LayoutConfiguration>) -> LayoutPairExpression<F, S> {
    return LayoutPairExpression(anchors: lhs, configurations: LayoutPairConfiguration(rhs.first, rhs.second))
}

//MARK: Equal
//MARK: Anchors == Expression
@discardableResult
public func == (lhs: EdgeAnchors, rhs: EdgeAnchorsExpression) -> SideConstraints{
    let top = lhs.top == rhs.top + rhs.configurations.top
    let leading = lhs.leading == rhs.leading + rhs.configurations.leading
    let bottom = lhs.bottom == rhs.bottom + rhs.configurations.bottom
    let trailing = lhs.trailing == rhs.trailing + rhs.configurations.trailing
    return SideConstraints(top: top, leading: leading, bottom: bottom, trailing: trailing)
}

//MARK: Equal
//MARK: Anchors == Expression
@discardableResult
public func == (lhs: EdgeAnchors, rhs: EdgeAnchors) -> SideConstraints{
    let top = lhs.top == rhs.top
    let leading = lhs.leading == rhs.leading
    let bottom = lhs.bottom == rhs.bottom
    let trailing = lhs.trailing == rhs.trailing
    return SideConstraints(top: top, leading: leading, bottom: bottom, trailing: trailing)
}

@discardableResult
public func + (lhs: EdgeAnchors, rhs: LayoutInset) -> EdgeAnchorsExpression{
    
    let configuration = EdgeAnchorsConfiguration(
        top: .constant(rhs.top),
        leading: .constant(rhs.left),
        bottom: .constant(rhs.bottom),
        trailing: .constant(rhs.right)
    )
    return EdgeAnchorsExpression(lhs).configured(with: configuration)
}

@discardableResult
public func + (lhs: EdgeAnchors, rhs: LayoutConstant) -> EdgeAnchorsExpression{
    return lhs + LayoutInset(padding: rhs)
}

@discardableResult
public func ~ (lhs: EdgeAnchors, rhs: LayoutPriority) -> EdgeAnchorsExpression {
    return EdgeAnchorsExpression(lhs) ~ rhs
}

@discardableResult
public func ~ (lhs: EdgeAnchorsExpression, rhs: LayoutPriority) -> EdgeAnchorsExpression {
    return lhs.with(priority: rhs)
}


@discardableResult
public func ~ (lhs: LayoutInset, rhs: LayoutPriority) -> EdgeAnchorsConfiguration {
    return EdgeAnchorsConfiguration(
        top: lhs.top ~ rhs,
        leading: lhs.left ~ rhs,
        bottom: lhs.bottom ~ rhs,
        trailing: lhs.right ~ rhs
    )
}
