//
//  InternalTypes.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/11/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// swiftlint:disable type_name
internal protocol TuplePairBacked {
    associatedtype F
    associatedtype S
    var values: (F, S) { get set }
    init(_ first: F, _ second: S)
}

extension TuplePairBacked {
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

open class LayoutModelReferencePair<T>: MixedLayoutModelReferencePair<T, T> {
    public convenience init(_ duplicatedItem: T) {
        self.init(duplicatedItem, duplicatedItem)
    }
}

open class MixedLayoutModelReferencePair<F, S>: TuplePairBacked {
    public var values: (F, S)

    public required init(_ first: F, _ second: S) {
        self.values = (first, second)
    }
}
//
//internal struct PairStruct<T>: TuplePairBacked {
//    public typealias F = T
//    public typealias S = T
//
//    public var values: (T, T)
//
//    public init(_ first: T, _ second: T) {
//        self.values = (first, second)
//    }
//
//    public init(_ duplicatedItem: T) {
//        self.init(duplicatedItem, duplicatedItem)
//    }
//}
//
//internal struct MixedPairStruct<F, S>: TuplePairBacked {
//    public var values: (F, S)
//
//    public init(_ first: F, _ second: S) {
//        self.values = (first, second)
//    }
//}
