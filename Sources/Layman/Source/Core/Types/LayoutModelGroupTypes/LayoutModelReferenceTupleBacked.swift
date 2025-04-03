//
//  LayoutModelReferenceTupleBacked.swift
//  Layman
//
//  Created by Brian Strobach on 1/11/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol LayoutModelReferenceTupleBacked {
    associatedtype F
    associatedtype S
    var first: F { get set }
    var second: S { get set }
    init(_ first: F, _ second: S)
}


public class MixedLayoutModelReferencePair<F, S>: LayoutModelReferenceTupleBacked {
    public var first: F
    public var second: S

    public required init(_ first: F, _ second: S) {
        self.first = first
        self.second = second
    }
}

public class LayoutModelReferencePair<T>: MixedLayoutModelReferencePair<T, T> {
    public convenience init(_ duplicatedItem: @autoclosure () -> T) {
        self.init(duplicatedItem(), duplicatedItem())
    }

}
