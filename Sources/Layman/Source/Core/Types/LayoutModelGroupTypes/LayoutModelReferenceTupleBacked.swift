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
    var values: (first: F, second: S) { get set }
    init(_ first: F, _ second: S)
}

extension LayoutModelReferenceTupleBacked {
    public var first: F {
        get {
            return values.0
        }
        set {
            values.0 = newValue
        }
    }
    public var second: S {
        get {
            return values.1
        }
        set {
            values.1 = newValue
        }
    }

}

public class MixedLayoutModelReferencePair<F, S>: LayoutModelReferenceTupleBacked {
    public var values: (first: F, second: S)

    public required init(_ first: F, _ second: S) {
        self.values = (first, second)
    }
}

public class LayoutModelReferencePair<T>: MixedLayoutModelReferencePair<T, T> {
    public convenience init(_ duplicatedItem: @autoclosure () -> T) {
        self.init(duplicatedItem(), duplicatedItem())
    }

}
