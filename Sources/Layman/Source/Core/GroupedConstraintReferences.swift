//
//  GroupedConstraintReferences.swift
//  Layman
//
//  Created by Brian Strobach on 3/9/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
import ObjectiveC

extension Collection where Element: ConstraintReferencing {
    public var heirarchy: ConstraintHeirarchy {
        return reduce(into: ConstraintHeirarchy()) { (result, constraints) in
            for element in constraints.all {
                for view in [element.firstView, element.secondView].compactMap({$0}) {
                    var viewContraints = result[view, default: [:]]
                    var viewConstraintMap = viewContraints[element.firstAttribute, default: []]
                    viewConstraintMap.append(element)
                    viewContraints[element.firstAttribute] = viewConstraintMap
                    result[view] = viewContraints
                }
            }
        }
    }
}

public typealias ConstraintAttributeMap = [ConstraintAttribute: Constraints]

// ConstraintAttributeMap Extensions
extension Dictionary where Key == ConstraintAttribute, Value == Constraints {
    public func merging(with constraints: ConstraintAttributeMap) -> ConstraintAttributeMap {
        return self.merging(constraints) { (constraints, otherConstraints) -> Constraints in
            return constraints + otherConstraints
        }
    }

    public mutating func update(with constraints: Constraint...) {
        update(with: constraints)
    }
    public mutating func update(with constraints: [Constraint]) {
        for constraint in constraints {
            var array = self[constraint.firstAttribute] ?? []
            array.append(constraint)
            self[constraint.firstAttribute] = array
        }
    }

    public mutating func update(with constraints: ConstraintPair...) {
        update(with: constraints)
    }

    public mutating func update(with constraints: [ConstraintPair]) {
        for constraintPair in constraints {
            update(with: constraintPair.first)
            update(with: constraintPair.second)
        }
    }

    public mutating func update(with constraints: SideConstraints...) {
        update(with: constraints)
    }
    public mutating func update(with constraints: [SideConstraints]) {
        for sideConstraints in constraints {
            update(with: sideConstraints.top)
            update(with: sideConstraints.leading)
            update(with: sideConstraints.bottom)
            update(with: sideConstraints.trailing)
        }
    }
}

public typealias ConstraintHeirarchy = [View: ConstraintAttributeMap]

// ConstraintHeirarchy Extensions
public extension Dictionary where Key == View, Value == ConstraintAttributeMap {
    func merging(with constraintHeirarchy: ConstraintHeirarchy) -> ConstraintHeirarchy {
        return self.merging(constraintHeirarchy) { (map, otherMap) -> ConstraintAttributeMap in
            return map.merging(otherMap, uniquingKeysWith: { (constraints, otherConstraints) -> Constraints in
                return [constraints, otherConstraints].flatMap {$0}
            })
        }
    }

    mutating func update(with constraints: Constraint...) {
        update(with: constraints)
    }
    mutating func update(with constraints: [Constraint]) {
        for constraint in constraints {
            self[constraint.view, default: [:]].update(with: constraint)
        }
    }

    mutating func update(with constraints: ConstraintPair...) {
        update(with: constraints)
    }

    mutating func update(with constraints: [ConstraintPair]) {
        for constraintPair in constraints {
            update(with: constraintPair.first)
            update(with: constraintPair.second)
        }
    }

    mutating func update(with constraints: SideConstraints...) {
        update(with: constraints)
    }
    mutating func update(with constraints: [SideConstraints]) {
        for sideConstraints in constraints {
            update(with: sideConstraints.top)
            update(with: sideConstraints.leading)
            update(with: sideConstraints.bottom)
            update(with: sideConstraints.trailing)
        }
    }
}
