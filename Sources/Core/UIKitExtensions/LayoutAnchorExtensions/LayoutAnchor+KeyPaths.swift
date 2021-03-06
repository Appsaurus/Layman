//
//  LayoutAnchor+KeyPaths.swift
//  Layman
//
//  Created by Brian Strobach on 1/16/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

#if canImport(AppKit)
import AppKit
#else
import UIKit
#endif

internal protocol KeyPathExtracting {
    associatedtype Root
    associatedtype Value
    associatedtype Input

    static func keyPath(_ input: Input) -> K
}

extension KeyPathExtracting {
    typealias K = KeyPath<Root, Value>
}

internal protocol AnchorKeyPathExtracting: KeyPathExtracting where Value: AnchorType {
    associatedtype Root = LayoutAnchorable
    associatedtype Input = LayoutAnchor<Value>
    static var constraintKeyPathMap: [ConstraintAttribute: K] { get }
}

extension AnchorKeyPathExtracting {

    internal static func keyPath(_ input: LayoutAnchor<Value>) -> K {
        let keyPath: K? = {
            switch input {
            case let xAxisAnchor as XAxisAnchor:
                return xAxisAnchor.keyPath as? K
            case let yAxisAnchor as YAxisAnchor:
                return yAxisAnchor.keyPath as? K
            case let layoutDimension as LayoutDimension:
                return layoutDimension.keyPath as? K
            default: return nil
            }
        }()

        if let keyPath = keyPath {
            return keyPath
        }

        let attribute = input.constraint(equalTo: input).firstAttribute
        guard let derivedKeyPath = constraintKeyPathMap[attribute] else {
            preconditionFailure(String(describing: input) + " cannot be converted into \(attribute) constraint attribute.")
        }
        return derivedKeyPath
    }
}
internal class XAxisKeyPathExctractor: AnchorKeyPathExtracting {
    typealias Value = XAxisAnchor
    static let constraintKeyPathMap: [ConstraintAttribute: KeyPath<LayoutAnchorable, XAxisAnchor>] = [
        .left: \.leftAnchor,
        .right: \.rightAnchor,
        .leading: \.leadingAnchor,
        .trailing: \.trailingAnchor,
        .centerX: \.centerXAnchor,
        .leftMargin: \.leftAnchor,
        .rightMargin: \.rightAnchor,
        .leadingMargin: \.leadingAnchor,
        .trailingMargin: \.trailingAnchor,
        .centerXWithinMargins: \.centerXAnchor
    ]

}

internal class YAxisKeyPathExctractor: AnchorKeyPathExtracting {
    typealias Value = YAxisAnchor
    static let constraintKeyPathMap: [ConstraintAttribute: KeyPath<LayoutAnchorable, YAxisAnchor>] = [
        .top: \.topAnchor,
        .bottom: \.bottomAnchor,
        .centerY: \.centerYAnchor,
        //        .lastBaseline: \.lastBaselineAnchor,
        //        .firstBaseline: \.firstBaselineAnchor,
        .topMargin: \.topAnchor,
        .bottomMargin: \.bottomAnchor,
        .centerYWithinMargins: \.centerYAnchor
    ]

}

internal class LayoutDimensionKeyPathExctractor: AnchorKeyPathExtracting {
    typealias Value = LayoutDimension
    static let constraintKeyPathMap: [ConstraintAttribute: KeyPath<LayoutAnchorable, LayoutDimension>] = [
        .width: \.widthAnchor,
        .height: \.heightAnchor
    ]

}

// MARK: XAxisAnchor

internal prefix func ... (_ anchor: LayoutAnchor<XAxisAnchor>) -> KeyPath<LayoutAnchorable, XAxisAnchor> {
    return XAxisKeyPathExctractor.keyPath(anchor)
}

internal prefix func ... (_ anchorExpression: XAxisAnchorExpression) -> KeyPath<LayoutAnchorable, XAxisAnchor> {
    return ...anchorExpression.variable
}

// MARK: YAxisAnchor

internal prefix func ... (_ anchor: LayoutAnchor<YAxisAnchor>) -> KeyPath<LayoutAnchorable, YAxisAnchor> {
    return YAxisKeyPathExctractor.keyPath(anchor)
}

internal prefix func ... (_ anchorExpression: YAxisAnchorExpression) -> KeyPath<LayoutAnchorable, YAxisAnchor> {
    return ...anchorExpression.variable
}

// MARK: LayoutDimension

internal prefix func ... (_ anchor: LayoutAnchor<LayoutDimension>) -> KeyPath<LayoutAnchorable, LayoutDimension> {
    return LayoutDimensionKeyPathExctractor.keyPath(anchor)
}

internal prefix func ... (_ anchorExpression: LayoutDimensionExpression) -> KeyPath<LayoutAnchorable, LayoutDimension> {
    return ...anchorExpression.variable
}

internal prefix func ... <F, S>(_ anchorPair: LayoutAnchorPair<F, S>) -> KeyPath<LayoutAnchorable, LayoutAnchorPair<F, S>> {
    let keyPath: AnyKeyPath = {
        switch anchorPair {
        case let xPair as XAxisAnchorPair:
            return ...xPair
        case let yPair as YAxisAnchorPair:
            return ...yPair
        case let xyPair as XYAxesAnchorPair:
            return ...xyPair
        case let sizePair as LayoutDimensionPair:
            return ...sizePair
        default:
            preconditionFailure()
        }
    }()

    guard let typedKeyPath = keyPath as? KeyPath<LayoutAnchorable, LayoutAnchorPair<F, S>> else {
        preconditionFailure()
    }
    return typedKeyPath
}
// MARK: XAxisAnchorPair
internal prefix func ... (_ anchorPair: XAxisAnchorPair) -> KeyPath<LayoutAnchorable, XAxisAnchorPair> {
    let firstAnchorAttribute = anchorPair.first.attribute
    let secondAnchorAttribute = anchorPair.second.attribute
    switch (firstAnchorAttribute, secondAnchorAttribute) {
    case (.leading, .trailing):
        return \.horizontalEdgeAnchors
    default:
        preconditionFailure("\(anchorPair.first) and \(anchorPair.second) with attributes \(firstAnchorAttribute) and \(secondAnchorAttribute) cannot be inferred as XAxisAnchorPair.")
    }
}

internal prefix func ... (_ anchorPairExpression: XAxisAnchorPairExpression) -> KeyPath<LayoutAnchorable, XAxisAnchorPair> {
    return ...anchorPairExpression.variable
}

// MARK: YAxisAnchorPair
internal prefix func ... (_ anchorPair: YAxisAnchorPair) -> KeyPath<LayoutAnchorable, YAxisAnchorPair> {
    let firstAnchorAttribute = anchorPair.first.attribute
    let secondAnchorAttribute = anchorPair.second.attribute
    switch (firstAnchorAttribute, secondAnchorAttribute) {
    case (.top, .bottom):
        return \.verticalEdgeAnchors
    default:
        preconditionFailure("\(anchorPair.first) and \(anchorPair.second) with attributes \(firstAnchorAttribute) and \(secondAnchorAttribute) cannot be inferred as YAxisAnchorPair.")
    }
}

internal prefix func ... (_ anchorPairExpression: YAxisAnchorPairExpression) -> KeyPath<LayoutAnchorable, YAxisAnchorPair> {
    return ...anchorPairExpression.variable
}

// MARK: LayoutDimensionPair
internal prefix func ... (_ anchorPair: LayoutDimensionPair) -> KeyPath<LayoutAnchorable, LayoutDimensionPair> {
    let firstAnchorAttribute = anchorPair.first.attribute
    let secondAnchorAttribute = anchorPair.second.attribute
    guard firstAnchorAttribute == .width, secondAnchorAttribute == .height else {
        preconditionFailure("\(anchorPair.first) and \(anchorPair.second) with attributes \(firstAnchorAttribute) and \(secondAnchorAttribute) cannot be inferred as LayoutDimensionPair.")
    }
    return \.sizeAnchors
}

internal prefix func ... (_ anchorPairExpression: LayoutDimensionPairExpression) -> KeyPath<LayoutAnchorable, LayoutDimensionPair> {
    return ...anchorPairExpression.variable
}

// MARK: XYAxesAnchorPair
internal prefix func ... (_ anchorPair: XYAxesAnchorPair) -> KeyPath<LayoutAnchorable, XYAxesAnchorPair> {
    let firstAnchorAttribute = anchorPair.first.attribute
    let secondAnchorAttribute = anchorPair.second.attribute
    switch (firstAnchorAttribute, secondAnchorAttribute) {
    case (.leading, .top):
        return \.topLeadingAnchors
    case (.trailing, .top):
        return \.topTrailingAnchors
    case (.leading, .bottom):
        return \.bottomLeadingAnchors
    case (.trailing, .bottom):
        return \.bottomTrailingAnchors
    case (.left, .top):
        return \.topLeftAnchors
    case (.right, .top):
        return \.topRightAnchors
    case (.left, .bottom):
        return \.bottomLeftAnchors
    case (.right, .bottom):
        return \.bottomRightAnchors
    case (.centerX, .centerY):
        return \.centerAnchors
    default:
        preconditionFailure("\(anchorPair.first) and \(anchorPair.second) with attributes \(firstAnchorAttribute) and \(secondAnchorAttribute) cannot be inferred as XYAxesAnchorPair.")
    }
}

internal prefix func ... (_ anchorPairExpression: XYAxesAnchorPairExpression) -> KeyPath<LayoutAnchorable, XYAxesAnchorPair> {
    return ...anchorPairExpression.variable
}

// MARK: EdgeAnchorGroup

internal prefix func ... (_ anchorGroup: EdgeAnchorGroup) -> KeyPath<LayoutAnchorable, EdgeAnchorGroup> {
    return \LayoutAnchorable.edgeAnchors
}

internal prefix func ... (_ anchorGroupExpression: EdgeAnchorGroupExpression) -> KeyPath<LayoutAnchorable, EdgeAnchorGroup> {
    return \LayoutAnchorable.edgeAnchors
}
