//
//  LayoutAnchor+View.swift
//  Layman
//
//  Created by Brian Strobach on 1/23/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import ObjectiveC
import UIKit

private struct AssociatedKeys {
    static var owningObject = "LayoutAnchor_owningObject"
    static var keyPath = "LayoutAnchor_keyPath"
}

extension LayoutAnchor where AnchorType == LayoutDimension {

    public var owningItem: LayoutAnchorable? {
        get {
            guard let item = objc_getAssociatedObject(self, &AssociatedKeys.owningObject) as? LayoutAnchorable else {
                let item = constraint(equalTo: self).firstItem as? LayoutAnchorable
                self.owningItem = item
                return item
            }
            return item
        }

        set {
            if let newValue = newValue {
                objc_setAssociatedObject(
                    self,
                    &AssociatedKeys.owningObject,
                    newValue as LayoutAnchorable?,
                    .OBJC_ASSOCIATION_ASSIGN
                )
            }
        }
    }

    public var keyPath: KeyPath<LayoutAnchorable, LayoutDimension>? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.keyPath) as? KeyPath<LayoutAnchorable, LayoutDimension>
        }

        set {
            if let newValue = newValue {
                objc_setAssociatedObject(
                    self,
                    &AssociatedKeys.keyPath,
                    newValue as KeyPath<LayoutAnchorable, LayoutDimension>?,
                    .OBJC_ASSOCIATION_RETAIN_NONATOMIC
                )
            }
        }
    }

    public func retain(keyPath: KeyPath<LayoutAnchorable, LayoutDimension>, owningItem: Any) -> Self {
        self.owningItem = owningItem as? LayoutAnchorable
        self.keyPath = keyPath
        return self
    }

    public var view: View? {
        return owningItem as? View
    }

    public var superview: View? {
        return view?.superview
    }

    public var matchingParentAnchor: LayoutDimension? {
        return superview?[keyPath: ...self]
    }

    public var assertSuperview: View {
        guard let superview = superview else {
            assertionFailure("Attempted to infer matching superview anchor with on view with no superview.")
            return View()
        }
        return superview
    }

    public var assertMatchingParentAnchor: LayoutDimension {
        return assertSuperview[keyPath: ...self]
    }
}

extension LayoutAnchor where AnchorType == XAxisAnchor {

    public var owningItem: LayoutAnchorable? {
        get {
            guard let item = objc_getAssociatedObject(self, &AssociatedKeys.owningObject) as? LayoutAnchorable else {
                let item = constraint(equalTo: self).firstItem as? LayoutAnchorable
                self.owningItem = item
                return item
            }
            return item
        }

        set {
            if let newValue = newValue {
                objc_setAssociatedObject(
                    self,
                    &AssociatedKeys.owningObject,
                    newValue as LayoutAnchorable?,
                    .OBJC_ASSOCIATION_ASSIGN
                )
            }
        }
    }

    public var keyPath: KeyPath<LayoutAnchorable, XAxisAnchor>? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.keyPath) as? KeyPath<LayoutAnchorable, XAxisAnchor>
        }

        set {
            if let newValue = newValue {
                objc_setAssociatedObject(
                    self,
                    &AssociatedKeys.keyPath,
                    newValue as KeyPath<LayoutAnchorable, XAxisAnchor>?,
                    .OBJC_ASSOCIATION_RETAIN_NONATOMIC
                )
            }
        }
    }

    public func retain(keyPath: KeyPath<LayoutAnchorable, XAxisAnchor>, owningItem: Any) -> Self {
        self.owningItem = owningItem as? LayoutAnchorable
        self.keyPath = keyPath
        return self
    }

    public var view: View? {
        return owningItem as? View
    }

    public var superview: View? {
        return view?.superview
    }

    public var matchingParentAnchor: XAxisAnchor? {        
        return superview?[keyPath: ...self]
    }

    public var assertSuperview: View {
        guard let superview = superview else {
            assertionFailure("Attempted to infer matching superview anchor with on view with no superview.")
            return View()
        }
        return superview
    }

    public var assertMatchingParentAnchor: XAxisAnchor {
        return assertSuperview[keyPath: ...self]
    }
}

extension LayoutAnchor where AnchorType == YAxisAnchor {

    public var owningItem: LayoutAnchorable? {
        get {
            guard let item = objc_getAssociatedObject(self, &AssociatedKeys.owningObject) as? LayoutAnchorable else {
                let item = constraint(equalTo: self).firstItem as? LayoutAnchorable
                self.owningItem = item
                return item
            }
            return item
        }

        set {
            if let newValue = newValue {
                objc_setAssociatedObject(
                    self,
                    &AssociatedKeys.owningObject,
                    newValue as LayoutAnchorable?,
                    .OBJC_ASSOCIATION_ASSIGN
                )
            }
        }
    }

    public var keyPath: KeyPath<LayoutAnchorable, YAxisAnchor>? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.keyPath) as? KeyPath<LayoutAnchorable, YAxisAnchor>
        }

        set {
            if let newValue = newValue {
                objc_setAssociatedObject(
                    self,
                    &AssociatedKeys.keyPath,
                    newValue as KeyPath<LayoutAnchorable, YAxisAnchor>?,
                    .OBJC_ASSOCIATION_RETAIN_NONATOMIC
                )
            }
        }
    }

    public func retain(keyPath: KeyPath<LayoutAnchorable, YAxisAnchor>, owningItem: Any) -> Self {
        self.owningItem = owningItem as? LayoutAnchorable
        self.keyPath = keyPath
        return self
    }

    public var view: View? {
        return owningItem as? View
    }

    public var superview: View? {
        return view?.superview
    }

    public var matchingParentAnchor: YAxisAnchor? {
        return superview?[keyPath: ...self]
    }

    public var assertSuperview: View {
        guard let superview = superview else {
            assertionFailure("Attempted to infer matching superview anchor with on view with no superview.")
            return View()
        }
        return superview
    }

    public var assertMatchingParentAnchor: YAxisAnchor {
        return assertSuperview[keyPath: ...self]
    }
}

extension LayoutAnchorPair {
    public var assertSuperview: View {
        guard let superview = owningItem as? View else {
            assertionFailure("Attempted to infer matching superview anchor with on view with no superview.")
            return View()
        }
        return superview
    }
}
extension EdgeAnchorGroup {

    public var views: [View] {
        return [top.view, leading.view, bottom.view, trailing.view].compactMap {$0}
    }

    public var superviews: [View] {
        return views.map { $0.superview }.compactMap {$0}
    }

    public var assertSuperview: View {
        guard let superview = superviews.first else {
            assertionFailure("Attempted to infer matching superview anchor with on view with no superview.")
            return View()
        }
        return superview
    }
}
