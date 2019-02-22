//
//  SideCorrelated.swift
//  Layman
//
//  Created by Brian Strobach on 1/16/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

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

    public init(_ allSides: @autoclosure () -> SideType) {
        self.init(allSides(), allSides(), allSides(), allSides())
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

    public convenience init(top: VerticalSideType,
                            leading: HorizontalSideType,
                            bottom: VerticalSideType,
                            trailing: HorizontalSideType) {
        self.init(top, leading, bottom, trailing)
    }

    public init(_ vertical: VerticalSideType,
                _ horizontal: HorizontalSideType) {
        self.top = vertical
        self.leading = horizontal
        self.bottom = vertical
        self.trailing = horizontal
    }

}
