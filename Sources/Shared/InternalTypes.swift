//
//  InternalTypes.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/11/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

internal typealias MixedTuplePair<F, S> = (first: F, second: S)
internal typealias TuplePair<T> = (first: T, second: T)

internal class Pair<T>: Paired<T, T> {
    internal convenience init(_ duplicatedItem: T) {
        self.init(duplicatedItem, duplicatedItem)
    }
}

internal class Paired<F, S> {
    internal var values: (F, S)

    internal var first: F {
        get {
            return values.0
        }
        set {
            values.0 = newValue
        }
    }
    internal var second: S {
        get {
            return values.1
        }
        set {
            values.1 = newValue
        }
    }

    internal init(_ first: F, _ second: S) {
        self.values = (first, second)
    }
}

