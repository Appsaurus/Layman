//
//  Temp.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import Foundation
import Swiftest

public protocol KeyPathBuildable: class {
    func with(_ keyPathValuePairs: KeyPathValuePairs<Self>) -> Self
    func with(_ keyPathValuePair: KeyPathValuePair<Self>...) -> Self
    func with<T>(_ keyPath: WritableKeyPath<Self, T>, _ value: T) -> Self
}

extension KeyPathBuildable {
    @discardableResult
    public func with(_ keyPathValuePair: KeyPathValuePair<Self>...) -> Self{
        return with(keyPathValuePair)
    }

    @discardableResult
    public func with<T>(_ keyPath: WritableKeyPath<Self, T>, _ value: T) -> Self{
        return with(keyPath.with(value: value))
    }

    @discardableResult
    public func with(_ keyPathValuePairs: KeyPathValuePairs<Self>) -> Self{
        return self += keyPathValuePairs
    }
}


public typealias MixedTuplePair<F, S> = (first: F, second: S)
public typealias TuplePair<T> = (first: T, second: T)

public class Pair<T>: Paired<T, T>{
    public convenience init(_ duplicatedItem: T) {
        self.init(duplicatedItem, duplicatedItem)
    }
}


public class Paired<F, S>{
    public var values: (F, S)

    public var first: F{
        get{
            return values.0
        }
        set{
            values.0 = newValue
        }
    }
    public var second: S{
        get{
            return values.1
        }
        set{
            values.1 = newValue
        }
    }

    public init(_ first: F, _ second: S) {
        self.values = (first, second)
    }

}

extension Defaultable where Self: EmptyInitializable{
    public static var `default`: Self { return .init() }
}

public protocol Defaultable {
    static var `default`: Self { get }
}

public protocol DefaultMutable {
    static var `default`: Self { get set }
}

public protocol DefaultConstructorMutable: Defaultable {
    static var defaultConstructor: ClosureOut<Self> { get set }
}
extension DefaultConstructorMutable{
    public static var `default`: Self{
        return defaultConstructor()
    }
}
