//
//  LayoutModelReferencePair.swift
//  Layman
//
//  Created by Brian Strobach on 1/11/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public class MixedLayoutModelReferencePair<F, S> {
    public var values: (first: F, second: S)
    
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
    public required init(_ first: F, _ second: S) {
        self.values = (first, second)
    }
}

public class LayoutModelReferencePair<T>: MixedLayoutModelReferencePair<T, T> {
    public convenience init(_ duplicatedItem: @autoclosure () -> T) {
        self.init(duplicatedItem(), duplicatedItem())
    }

    public required init(_ first: T, _ second: T) {
        super.init(first, second)
    }
}
