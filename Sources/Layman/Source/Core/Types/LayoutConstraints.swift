//
//  LayoutConstraints.swift
//  Layman
//
//  Created by Brian Strobach on 2/28/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public class ConstraintPair: LayoutModelReferencePair<Constraint> {}
public class SideConstraints: SidesTuple<Constraint, Constraint> {}

public protocol ConstraintReferencing {
    var all: Constraints { get }
}

extension ConstraintReferencing {
    @discardableResult
    public func priority(_ priority: LayoutPriority) -> Self {
        all.forEach { $0.priority = priority }
        return self
    }
}

extension ConstraintPair: ConstraintReferencing {
    public var all: Constraints {
        return [first, second]
    }
}

extension SideConstraints: ConstraintReferencing {}

extension Constraint: ConstraintReferencing {
    public var all: Constraints {
        return [self]
    }
}

extension Collection where Element: ConstraintReferencing {
    public var all: Constraints {
        return flatMap { $0.all }
    }
}
