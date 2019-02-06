////
////  AutoLayout.swift
////  Pods
////
////  Created by Brian Strobach on 1/19/17. (used KGNAutoLayout as basis)
////
////
//
//import UIKit
//import Swiftest
//// swiftlint:disable line_length file_length
//public typealias ConstraintDictionary = [ConstraintAttribute: Constraint]
//public typealias ConstraintDictionaryMap = [View: ConstraintDictionary]
//
//public protocol LayoutItem {}
//extension View: LayoutItem {}
//
//@available(iOS 9.0, *)
//extension UILayoutGuide: LayoutItem {}
//
//// MARK: - Expand size of superview
//extension View {
//    public func autoForceSuperviewToMatchContentSize(insetBy insets: UIEdgeInsets = .zero, priority: LayoutPriority? = .required) {
//        autoForceSuperviewToMatchContentWidth(insetBy: insets, priority: priority)
//        autoForceSuperviewToMatchContentHeight(insetBy: insets, priority: priority)
//    }
//    
//    public func autoForceSuperviewToMatchContentWidth(insetBy insets: UIEdgeInsets = .zero, priority: LayoutPriority? = .required) {
//        anchorLeftToSuperview(constant: insets.left)
//        anchorRightToSuperview(constant: -insets.right)
//        autoSizeWidth(to: 0.0, relatedBy: .greaterThanOrEqual, priority: priority)
//        autoEnforceContentSize()
//    }
//    
//    public func autoForceSuperviewToMatchContentHeight(insetBy insets: UIEdgeInsets = .zero, priority: LayoutPriority? = .required) {
//        anchorTopToSuperview(constant: insets.top)
//        anchorBottomToSuperview(constant: -insets.bottom)
//        autoSizeHeight(to: 0.0, relatedBy: .greaterThanOrEqual, priority: priority)
//        autoEnforceContentSize()
//    }
//    
//}
//// MARK: - Pin: Superview
//extension View {
//    
//    @discardableResult
//    public func autoPinToSuperviewMargins(margins: Attributes = .margins, withInsets insets: UIEdgeInsets = .zero, relatedBy: Constraint.Relation = .equal, priority: LayoutPriority? = .required) -> ConstraintDictionary {
//        return autoPin(to: margins, of: assertSuperview(), withInsets: insets, relatedBy: relatedBy, priority: priority)
//    }
//    
//    @discardableResult
//    public func autoPinToSuperviewMargins(excludingMargins: Attributes, withInsets insets: UIEdgeInsets = .zero, relatedBy: Constraint.Relation = .equal, priority: LayoutPriority? = .required) -> ConstraintDictionary {
//        return autoPin(toMarginsOf: assertSuperview(), excludingMargins: excludingMargins, withInsets: insets, relatedBy: relatedBy, priority: priority)
//    }
//    
//    @discardableResult
//    public func autoPinToSuperview(edges: Attributes = .sides, withInsets insets: UIEdgeInsets = .zero, relatedBy: Constraint.Relation = .equal, priority: LayoutPriority? = .required) -> ConstraintDictionary {
//        return autoPin(to: edges, of: assertSuperview(), withInsets: insets, relatedBy: relatedBy, priority: priority)
//    }
//    
//    @discardableResult
//    public func autoPinToSuperview(edges: Attributes = .sides, withOffset offset: CGFloat, relatedBy: Constraint.Relation = .equal, priority: LayoutPriority? = .required) -> ConstraintDictionary {
//        return autoPinToSuperview(edges: edges, withInsets: LayoutInset(padding: offset), relatedBy: relatedBy, priority: priority)
//    }
//    
//    @discardableResult
//    public func autoPinToSuperview(excludingEdges: Attributes, withInsets insets: UIEdgeInsets = .zero, relatedBy: Constraint.Relation = .equal, priority: LayoutPriority? = .required) -> ConstraintDictionary {
//        return autoPin(toEdgesOf: assertSuperview(), excludingEdges: excludingEdges, withInsets: insets, relatedBy: relatedBy, priority: priority)
//    }
//    
//    @discardableResult
//    public func autoPinToSuperview(edge: ConstraintAttribute, withOffset offset: CGFloat = 0, relatedBy: Constraint.Relation = .equal, priority: LayoutPriority? = .required) -> Constraint {
//        return self.autoPin(edge: edge, toEdgeOf: assertSuperview(), withOffset: offset, relatedBy: relatedBy, priority: priority)
//    }
//    
//}
//
//// MARK: - Pin: to margins
//extension View {
//    
//    @discardableResult
//    public func autoPinToSuperviewMargin(_ attribute: ConstraintAttribute, withOffset offset: CGFloat = 0, relatedBy: Constraint.Relation = .equal, priority: LayoutPriority? = .required) -> Constraint {
//        return autoPin(attribute, toMarginOf: assertSuperview(), withOffset: offset, relatedBy: relatedBy, priority: priority)
//    }
//    
//    @discardableResult
//    public func autoPin(_ attribute: ConstraintAttribute, toMarginOf item: LayoutItem, withOffset offset: CGFloat = 0, relatedBy: Constraint.Relation = .equal, priority: LayoutPriority? = .required) -> Constraint {
//        return autoPin(edge: attribute, toEdge: attribute.margin, of: item, withOffset: offset, relatedBy: relatedBy, priority: priority)
//    }
//    
//    @discardableResult
//    public func autoPin(toMarginsOf item: LayoutItem, excludingMargins: Attributes = [], withInsets insets: UIEdgeInsets = .zero, relatedBy: Constraint.Relation = .equal, priority: LayoutPriority? = .required) -> ConstraintDictionary {
//        var attributes: Attributes = .margins
//        attributes.removeAll(where: {excludingMargins.contains($0)})
//        return autoPin(to: attributes, of: item, withInsets: insets, relatedBy: relatedBy, priority: priority)
//        
//    }
//    
//}
//// MARK: - Pin: to edges
//extension View {
//    
//    @discardableResult
//    public func autoPin(toEdgesOf item: LayoutItem, excludingEdges: Attributes = [], withInsets insets: UIEdgeInsets = .zero, relatedBy: Constraint.Relation = .equal, priority: LayoutPriority? = .required) -> ConstraintDictionary {
//        var attributes: Attributes = .sides
//        attributes.removeAll(where: {excludingEdges.contains($0)})
//        return autoPin(to: attributes, of: item, withInsets: insets, relatedBy: relatedBy, priority: priority)
//        
//    }
//    
//    @discardableResult
//    public func autoPin(to edges: Attributes = .sides, of item: LayoutItem, withInsets insets: UIEdgeInsets = .zero, relatedBy: Constraint.Relation = .equal, priority: LayoutPriority? = .required) -> ConstraintDictionary {
//        var constraints: ConstraintDictionary = [:]
//        for edge in edges {
//            constraints[edge] = autoPin(edge: edge, toEdgeOf: item, withOffset: insets.layoutOffsetValue(edgeAttribute: edge), relatedBy: relatedBy, priority: priority)
//        }
//        return constraints
//    }
//    
//    @discardableResult
//    public func autoPin(edge: ConstraintAttribute, toEdgeOf item: LayoutItem, withOffset offset: CGFloat = 0, relatedBy: Constraint.Relation = .equal, priority: LayoutPriority? = .required) -> Constraint {
//        return autoPin(edge: edge, toEdge: edge, of: item, withOffset: offset, relatedBy: relatedBy, priority: priority)
//    }
//    
//    @discardableResult
//    public func autoPin(edge: ConstraintAttribute, toEdge: ConstraintAttribute, of item: LayoutItem, withOffset offset: CGFloat = 0, relatedBy: Constraint.Relation = .equal, priority: LayoutPriority? = .required) -> Constraint {
//        var offset = offset
//        var relatedBy = relatedBy
//        switch edge {
//        case .right, .bottom, .trailing, .rightMargin, .bottomMargin, .trailingMargin:
//            offset.negate()
//            switch relatedBy {
//            case .lessThanOrEqual:
//                relatedBy = .greaterThanOrEqual
//            case .greaterThanOrEqual:
//                relatedBy = .lessThanOrEqual
//            default: break
//            }
//        default: break
//        }
//        return self.autoConstrain(attribute: edge, ofItem: self, toAttribute: toEdge, ofItem: item, constant: offset, relatedBy: relatedBy, priority: priority)
//    }
//    
//}
//// MARK: - Center
//extension View {
//    
//    @discardableResult
//    public func autoCenterInSuperview(withXOffset xOffset: CGFloat = 0, withYOffset yOffset: CGFloat = 0, relatedBy: Constraint.Relation = .equal, priority: LayoutPriority? = .required) -> ConstraintDictionary {
//        return [
//            .centerX: self.autoCenterHorizontallyInSuperview(withOffset: xOffset, relatedBy: relatedBy, priority: priority),
//            .centerY: self.autoCenterVerticallyInSuperview(withOffset: yOffset, relatedBy: relatedBy, priority: priority)
//        ]
//    }
//    
//    @discardableResult
//    public func autoCenterHorizontallyInSuperview(withOffset offset: CGFloat = 0, relatedBy: Constraint.Relation = .equal, multiplier: CGFloat = 1, priority: LayoutPriority? = .required) -> Constraint {
//        return self.autoCenterHorizontally(to: assertSuperview(), withOffset: offset, relatedBy: relatedBy, multiplier: multiplier, priority: priority)
//    }
//    @discardableResult
//    public func autoCenterVerticallyInSuperview(withOffset offset: CGFloat = 0, relatedBy: Constraint.Relation = .equal, multiplier: CGFloat = 1, priority: LayoutPriority? = .required) -> Constraint {
//        return self.autoCenterVertically(to: assertSuperview(), withOffset: offset, relatedBy: relatedBy, multiplier: multiplier, priority: priority)
//    }
//    
//    @discardableResult
//    public func autoCenterHorizontally(to item: LayoutItem, withOffset offset: CGFloat = 0, relatedBy: Constraint.Relation = .equal, multiplier: CGFloat = 1, priority: LayoutPriority? = .required) -> Constraint {
//        return self.autoConstrain(attribute: .centerX, toAttribute: .centerX, ofItem: item, multiplier: multiplier, constant: offset, relatedBy: relatedBy, priority: priority)
//    }
//    
//    @discardableResult
//    public func autoCenterVertically(to item: LayoutItem, withOffset offset: CGFloat = 0, relatedBy: Constraint.Relation = .equal, multiplier: CGFloat = 1, priority: LayoutPriority? = .required) -> Constraint {
//        return self.autoConstrain(attribute: .centerY, toAttribute: .centerY, ofItem: item, multiplier: multiplier, constant: offset, relatedBy: relatedBy, priority: priority)
//    }
//    
//}
//
//// MARK: - Size
//extension View {
//    
//    @discardableResult
//    public func autoSizeWidth(to width: CGFloat, relatedBy: Constraint.Relation = .equal, multiplier: CGFloat = 1, priority: LayoutPriority? = .required) -> Constraint {
//        return self.autoConstrain(attribute: .width, multiplier: multiplier, constant: width, relatedBy: relatedBy, priority: priority)
//    }
//    
//    @discardableResult
//    public func autoSizeHeight(to height: CGFloat, relatedBy: Constraint.Relation = .equal, multiplier: CGFloat = 1, priority: LayoutPriority? = .required) -> Constraint {
//        return self.autoConstrain(attribute: .height, multiplier: multiplier, constant: height, relatedBy: relatedBy, priority: priority)
//    }
//    
//    @discardableResult
//    public func autoSizeToSquare(withSideLength size: CGFloat, relatedBy: Constraint.Relation = .equal, priority: LayoutPriority? = .required) -> (width: Constraint, height: Constraint) {
//        
//        self.autoSizeAspectRatio(to: .square)
//        return (
//            self.autoSizeWidth(to: size, relatedBy: relatedBy, priority: priority),
//            self.autoSizeHeight(to: size, relatedBy: relatedBy, priority: priority)
//        )
//    }
//    
//    @discardableResult
//    public func autoSize(to size: CGSize, relatedBy: Constraint.Relation = .equal, multiplier: CGFloat = 1, priority: LayoutPriority? = .required) -> ConstraintDictionary {
//        return [
//            .width: self.autoSizeWidth(to: size.width, relatedBy: relatedBy, multiplier: multiplier, priority: priority),
//            .height: self.autoSizeHeight(to: size.height, relatedBy: relatedBy, multiplier: multiplier, priority: priority)
//        ]
//    }
//    
//    @discardableResult
//    @available(*, deprecated: 1.0)
//    public func autoSize(toSize size: CGSize, relatedBy: Constraint.Relation = .equal, multiplier: CGFloat = 1, priority: LayoutPriority? = .required) -> (width: Constraint, height: Constraint) {
//        return (
//            self.autoSizeWidth(to: size.width, relatedBy: relatedBy, multiplier: multiplier, priority: priority),
//            self.autoSizeHeight(to: size.height, relatedBy: relatedBy, multiplier: multiplier, priority: priority)
//        )
//    }
//    
//    @discardableResult
//    @available(*, deprecated: 1.0)
//    public func autoSizeAspectRatio(to aspectRatio: CGFloat? = nil) -> Constraint {
//        let ratio = aspectRatio ?? frame.size.height / frame.size.width
//        return self.autoConstrain(attribute: .height, toAttribute: .width, ofItem: self, multiplier: ratio, constant: 0.0, relatedBy: .equal)
//    }
//    
//    /// Creates a constraint that enforces aspect ratio based on size of a masterDimension (Defaults to .width).
//    /// It is assumed that a masterDimension's constraint is already set elsewhere.
//    @discardableResult
//    public func autoSizeAspectRatio(to aspectRatio: LayoutAspectRatio, masterAttribute: ConstraintAttribute = .width, priority: LayoutPriority? = .required) -> Constraint {
//        assert(masterAttribute == .width || masterAttribute == .height, "Only height and width constraints apply to aspect ratio.")
//        
//        let slaveAttribute: ConstraintAttribute = masterAttribute == .width ? .height : .width
//        let ratio: CGFloat = masterAttribute == .width ? 1.0/aspectRatio.ratio : aspectRatio.ratio        
//        return self.autoConstrain(attribute: slaveAttribute, toAttribute: masterAttribute, ofItem: self, multiplier: ratio, constant: 0.0, relatedBy: .equal, priority: priority)
//    }
//}
//
//// MARK: - Matching Size
//
//extension View {
//    
//    /// Centers in and matches size of superview. Paramaters only apply to size constraints.
//    @discardableResult
//    public func autoCenterAndMatchSizeOfSuperview(withSizeOffset offset: CGFloat = 0, relatedBy: Constraint.Relation = .equal, multiplier: CGFloat = 1, priority: LayoutPriority? = .required) -> ConstraintDictionary {
//        return autoCenterInSuperview().merged(with: autoMatchSizeOfSuperview(withOffset: offset, relatedBy: relatedBy, multiplier: multiplier, priority: priority))
//    }
//    
//    @discardableResult
//    public func autoMatchSizeOfSuperview(withOffset offset: CGFloat = 0, relatedBy: Constraint.Relation = .equal, multiplier: CGFloat = 1, priority: LayoutPriority? = .required) -> ConstraintDictionary {
//        return autoMatchSize(of: assertSuperview(), withOffset: offset, relatedBy: relatedBy, multiplier: multiplier, priority: priority)
//    }
//    
//    @discardableResult
//    public func autoMatchSize(of item: LayoutItem, withOffset offset: CGFloat = 0, relatedBy: Constraint.Relation = .equal, multiplier: CGFloat = 1, priority: LayoutPriority? = .required) -> ConstraintDictionary {
//        return [
//            .width: self.autoMatchWidth(of: item, withOffset: offset, relatedBy: relatedBy, multiplier: multiplier, priority: priority),
//            .height: self.autoMatchHeight(of: item, withOffset: offset, relatedBy: relatedBy, multiplier: multiplier, priority: priority)
//        ]
//    }
//    
//    @discardableResult
//    public func autoMatchHeightOfSuperview(withOffset offset: CGFloat = 0, relatedBy: Constraint.Relation = .equal, multiplier: CGFloat = 1, priority: LayoutPriority? = .required) -> Constraint {
//        return autoMatchHeight(of: assertSuperview(), withOffset: offset, relatedBy: relatedBy, multiplier: multiplier, priority: priority)
//    }
//    
//    @discardableResult
//    public func autoMatchWidthOfSuperview(withOffset offset: CGFloat = 0, relatedBy: Constraint.Relation = .equal, multiplier: CGFloat = 1, priority: LayoutPriority? = .required) -> Constraint {
//        return autoMatchWidth(of: assertSuperview(), withOffset: offset, relatedBy: relatedBy, multiplier: multiplier, priority: priority)
//    }
//    
//    @discardableResult
//    public func autoMatchWidth(of item: LayoutItem, withOffset offset: CGFloat = 0, relatedBy: Constraint.Relation = .equal, multiplier: CGFloat = 1, priority: LayoutPriority? = .required) -> Constraint {
//        return autoConstrain(attribute: .width, toAttribute: .width, ofItem: item, multiplier: multiplier, constant: offset, relatedBy: relatedBy, priority: priority)
//    }
//    
//    @discardableResult
//    public func autoMatchHeight(of item: LayoutItem, withOffset offset: CGFloat = 0, relatedBy: Constraint.Relation = .equal, multiplier: CGFloat = 1, priority: LayoutPriority? = .required) -> Constraint {
//        return autoConstrain(attribute: .height, toAttribute: .height, ofItem: item, multiplier: multiplier, constant: offset, relatedBy: relatedBy, priority: priority)
//    }
//    
//}
//
//// MARK: - General Constraint building
//extension View {
//    
//    @discardableResult
//    public func autoConstrainToSuperview(attribute: ConstraintAttribute, toAttribute: ConstraintAttribute? = nil, multiplier: CGFloat = 1, constant: CGFloat = 0, relatedBy: Constraint.Relation = .equal, priority: LayoutPriority? = .required) -> Constraint {
//        
//        return autoConstrain(attribute: attribute, ofItem: self, toAttribute: toAttribute ?? attribute, ofItem: superview!, multiplier: multiplier, constant: constant, relatedBy: relatedBy, priority: priority)
//        
//    }
//    
//    @discardableResult
//    public func autoConstrain(attribute: ConstraintAttribute, toAttribute: ConstraintAttribute = .notAnAttribute, ofItem toItem: LayoutItem? = nil, multiplier: CGFloat = 1, constant: CGFloat = 0, relatedBy: Constraint.Relation = .equal, priority: LayoutPriority? = .required) -> Constraint {
//        
//        return autoConstrain(attribute: attribute, ofItem: self, toAttribute: toAttribute, ofItem: toItem, multiplier: multiplier, constant: constant, relatedBy: relatedBy, priority: priority)
//        
//    }
//}
//
//// MARK: - Private
//extension View {
//    @discardableResult
//    fileprivate func autoConstrain<C: Constraint>(attribute: ConstraintAttribute, ofItem item: LayoutItem, toAttribute: ConstraintAttribute = .notAnAttribute, ofItem toItem: LayoutItem? = nil, multiplier: CGFloat = 1, constant: CGFloat = 0, relatedBy: Constraint.Relation = .equal, priority: LayoutPriority? = .required) -> C {
//        
//        if let view = item as? View {
//            view.translatesAutoresizingMaskIntoConstraints = false
//        }
//        let constraint = C(
//            item: item, attribute: attribute,
//            relatedBy: relatedBy,
//            toItem: toItem, attribute: toAttribute,
//            multiplier: multiplier, constant: constant
//        )
//        if priority != nil {
//            constraint.priority = priority!
//        }
//        constraint.isActive = true
//        guard let toItem = toItem as? View else {
//            self.addConstraint(constraint)
//            return constraint
//        }
//        guard let commonSuperview = self.nearestCommonSuperviewWith(other: toItem) else {
//            assertionFailure("Views that share constraints must share a common superview.")
//            return constraint
//        }
//        
//        commonSuperview.addConstraint(constraint)
//        return constraint
//    }
//    
//    @discardableResult
//    fileprivate func autoConstrain(attributes: Attributes, ofItem item: LayoutItem, toItem: LayoutItem?, relatedBy: Constraint.Relation = .equal, multiplier: CGFloat = 1, constant: CGFloat = 0, priority: LayoutPriority? = .required) -> ConstraintDictionary {
//        
//        var constraintDict: ConstraintDictionary = [:]
//        for attribute in attributes {
//            let toAttribute = toItem == nil ? .notAnAttribute : attribute
//            let constraint = autoConstrain(attribute: attribute, ofItem: item, toAttribute: toAttribute, ofItem: toItem, multiplier: multiplier, constant: constant, relatedBy: relatedBy, priority: priority)
//            constraintDict[attribute] = constraint
//        }
//        return constraintDict
//    }
//}
//
//extension UIEdgeInsets {
////    @available(iOS, obsoleted: 11.0, message: "Because fuck apple")
////    public init(top: CGFloat = 0.0, left: CGFloat = 0.0, bottom: CGFloat = 0.0, right: CGFloat = 0.0 ) {
////        self.init()
////        self.top = top
////        self.left = left
////        self.right = right
////        self.bottom = bottom
////    }
//    
//    func layoutOffsetValue(edgeAttribute: ConstraintAttribute) -> CGFloat {
//        switch edgeAttribute {
//        case .top, .topMargin:
//            return self.top
//        case .bottom, .bottomMargin:
//            return self.bottom
//        case .left, .leading, .leftMargin, .leadingMargin:
//            return self.left
//        case .right, .trailing, .rightMargin, .trailingMargin:
//            return self.right
//        default:
//            assertionFailure("Invalid edge attribute")
//            return 0
//        }
//    }
//}
//
//extension Array where Element: View {
//    
//    /// Autostacks an array of views vertically inside a common superview. Requires that all views share the same superview.
//    ///
//    /// - Returns: Constraints mapped to each view
//    @discardableResult
//    public func autoStackVertically() -> ConstraintDictionaryMap {
//        var constraintMap: ConstraintDictionaryMap = [:]
//        guard let firstView = self.first else {
//            return constraintMap
//        }
//        
//        guard self[safe: 1] != nil else {//If only one view exists
//            constraintMap[firstView] = firstView.autoPinToSuperview()
//            return constraintMap
//        }
//        
//        for (index, view) in self.enumerated() {
//            if index == 0 {
//                constraintMap[view] = view.autoPinToSuperview(excludingEdges: [.bottom])
//            } else {
//                constraintMap[view] = view.autoPinToSuperview(edges: .leftAndRight)
//                constraintMap[view]?[.top] = view.autoPin(edge: .top, toEdge: .bottom, of: self[index - 1])
//                if index == self.lastIndex {
//                    constraintMap[view]?[.bottom] = view.autoPinToSuperview(edge: .bottom)
//                }
//            }
//        }
//        return constraintMap
//    }
//    
//    @discardableResult
//    public func autoStackVertically(insetFromSuperview insets: UIEdgeInsets = .zero) -> ConstraintDictionaryMap {
//        return autoStackVertically(insetFromSuperview: insets, spacing: 0)
//    }
//    /// Autostacks an array of views vertically inside a common superview. Requires that all views share the same superview.
//    ///
//    /// - Returns: Constraints mapped to each view
//    @discardableResult
//    public func autoStackVertically(insetFromSuperview insets: UIEdgeInsets = .zero, spacing: CGFloat...) -> ConstraintDictionaryMap {
//        
//        assert(spacing.count == 0 || spacing.count == self.count - 1 || spacing.count == 1, "Invalid number of paramters for spacing")
//        var constraintMap: ConstraintDictionaryMap = [:]
//        guard let firstView = self.first else {
//            return constraintMap
//        }
//        
//        guard self[safe: 1] != nil else {//If only one view exists
//            constraintMap[firstView] = firstView.autoPinToSuperview(withInsets: insets)
//            return constraintMap
//        }
//        
//        for (index, view) in self.enumerated() {
//            if index == 0 {
//                constraintMap[view] = view.autoPinToSuperview(excludingEdges: [.bottom], withInsets: insets)
//            } else {
//                constraintMap[view] = view.autoPinToSuperview(edges: .leftAndRight, withInsets: insets)
//                let space = spacing[safe: index - 1] ?? spacing[safe: 0] ?? 0
//                constraintMap[view]?[.top] = view.autoPin(edge: .top, toEdge: .bottom, of: self[index - 1], withOffset: space)
//                if index == self.lastIndex {
//                    constraintMap[view]?[.bottom] = view.autoPinToSuperview(edge: .bottom, withOffset: insets.bottom)
//                }
//            }
//        }
//        return constraintMap
//    }
//    
//    /// Autostacks an array of views horizontally inside a common superview. Requires that all views share the same superview.
//    ///
//    /// - Parameters:
//    ///   - insetFromSuperView: distance to pad views from superview
//    /// - Returns: Constraints mapped to each view
//    
//    @discardableResult
//    public func autoStackHorizontally(insetFromSuperview insets: UIEdgeInsets = .zero) -> ConstraintDictionaryMap {
//        return autoStackHorizontally(insetFromSuperview: insets, spacing: 0)
//    }
//    
//    /// Autostacks an array of views horizontally inside a common superview. Requires that all views share the same superview.
//    ///
//    /// - Parameters:
//    ///   - insetFromSuperView: distance to pad views from superview
//    ///   - spacing: spaces between views, can be single value or specific value for each gap between views (1 less than total view count)
//    /// - Returns: Constraints mapped to each view
//    @discardableResult
//    public func autoStackHorizontally(insetFromSuperview insets: UIEdgeInsets = .zero, spacing: CGFloat...) -> ConstraintDictionaryMap {
//        var constraintMap: ConstraintDictionaryMap = [:]
//        assert(spacing.count == 0 || spacing.count == self.count - 1 || spacing.count == 1, "Invalid number of paramters for spacing")
//        guard let firstView = self.first else {
//            return constraintMap
//        }
//        
//        guard self[safe: 1] != nil else {//If only one view exists
//            constraintMap[firstView] = firstView.autoPinToSuperview(withInsets: insets)
//            return constraintMap
//        }
//        
//        for (index, view) in self.enumerated() {
//            let space = spacing[safe: index - 1] ?? spacing[safe: 0] ?? 0
//            if index == 0 {
//                constraintMap[view] = view.autoPinToSuperview(excludingEdges: [.right], withInsets: UIEdgeInsets.init(top: insets.top, left: insets.left, bottom: insets.bottom, right: 0))
//            } else {
//                constraintMap[view] = view.autoPinToSuperview(edges: .topAndBottom, withInsets: UIEdgeInsets.init(top: insets.top, left: 0, bottom: insets.bottom, right: 0))
//                constraintMap[view]?[.left] = view.autoPin(edge: .left, toEdge: .right, of: self[index - 1], withOffset: space)
//                if index == self.lastIndex {
//                    constraintMap[view]?[.right] = view.autoPinToSuperview(edge: .right, withOffset: insets.right)
//                }
//            }
//        }
//        return constraintMap
//    }
//    
//    public func autoEnforceContentSize(_ priority: LayoutPriority = .required, forAxes axes: [Constraint.Axis] = [.vertical, .horizontal]) {
//        autoEnforceContentHugging(priority, forAxes: axes)
//        autoEnforceCompressionResistance(priority, forAxes: axes)
//        
//    }
//    
//    public func autoEnforceContentHugging(_ priority: LayoutPriority = .required, forAxes axes: [Constraint.Axis] = [.vertical, .horizontal]) {
//        for view in self {
//            view.autoEnforceContentSize(priority, forAxes: axes)
//        }
//    }
//    
//    public func autoEnforceCompressionResistance(_ priority: LayoutPriority = .required, forAxes axes: [Constraint.Axis] = [.vertical, .horizontal]) {
//        for view in self {
//            view.autoEnforceCompressionResistance(priority, forAxes: axes)
//        }
//    }
//}
//
//extension View {
//    public func swap(subview: View, with replacementView: View) {
//        addSubview(replacementView)
//        for constraint: Constraint in self.constraints {
//            if constraint.firstItem as? View == subview {
//                addConstraint(Constraint(item: replacementView, attribute: constraint.firstAttribute, relatedBy: constraint.relation, toItem: constraint.secondItem, attribute: constraint.secondAttribute, multiplier: constraint.multiplier, constant: constraint.constant))
//            } else if constraint.secondItem as? View == subview {
//                addConstraint(Constraint(item: constraint.firstItem as Any, attribute: constraint.firstAttribute, relatedBy: constraint.relation, toItem: replacementView, attribute: constraint.secondAttribute, multiplier: constraint.multiplier, constant: constraint.constant))
//            }
//        }
//        subview.removeFromSuperview()
//    }
//}
//
//extension View {
//    public class func parentViewFittingContent(of view: View, insetBy insets: UIEdgeInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)) -> View {
//        let layoutView: View = View()
//        layoutView.addSubview(view)
//        view.autoForceSuperviewToMatchContentSize(insetBy: insets)
//        return layoutView
//    }
//}
//
//extension View {
//    public func layoutDynamicHeight(forWidth width: CGFloat) {
//        translatesAutoresizingMaskIntoConstraints = false
//        let widthConstraint = autoSizeWidth(to: width)
//        addConstraint(widthConstraint)
//        forceAutolayoutPass()
//        let height = systemLayoutSizeFitting(View.layoutFittingExpandedSize).height
//        removeConstraint(widthConstraint)
//        frame = CGRect(x: 0, y: 0, width: width, height: height)
//        translatesAutoresizingMaskIntoConstraints = true
//    }
//}
