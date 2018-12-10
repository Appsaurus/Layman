//
//  AutoLayout.swift
//  Pods
//
//  Created by Brian Strobach on 1/19/17. (used KGNAutoLayout as basis)
//
//

import UIKit
import DinoDNA

public typealias ConstraintDictionary = [NSLayoutConstraint.Attribute : NSLayoutConstraint]
public typealias ConstraintDictionaryMap = [UIView : ConstraintDictionary]
public protocol LayoutItem {}
extension UIView: LayoutItem {}

@available(iOS 9.0, *)
extension UILayoutGuide: LayoutItem {}

public enum AutoLayoutAspectRatio{
    case wide // 16:9
    case standard // 4:3
    case square
    case custom(width: CGFloat, height: CGFloat)
    case customSize(size: CGSize)
    case customRatio(ratio: CGFloat)
    
    public var ratio: CGFloat{
        switch self {
        case .wide:
            return 16.0/9.0
        case .standard:
            return 4.0/3.0
        case .square:
            return 1.0
        case .custom(let ratio):
            return ratio.width/ratio.height
        case .customSize(let size):
            return size.w / size.h
        case .customRatio(let ratio):
            return ratio
        }
    }
}

extension NSLayoutConstraint.Attribute{
    func toMargin() -> NSLayoutConstraint.Attribute{
        switch self{
        case .top, .topMargin:
            return .topMargin
        case .bottom, .bottomMargin:
            return .bottomMargin
        case .right, .rightMargin:
            return .rightMargin
        case .left, .leftMargin:
            return .leftMargin
        case .centerX, .centerXWithinMargins:
            return .centerXWithinMargins
        case .centerY, .centerYWithinMargins:
            return .centerYWithinMargins
        case .leading, .leadingMargin:
            return .leadingMargin
        case .trailing, .trailingMargin:
            return .trailingMargin
        default:
            assertionFailure()
            return .top
        }
    }
}

//MARK: -Expand size of superview
extension UIView{
    public func autoForceSuperviewToMatchContentSize(insetBy insets: UIEdgeInsets = .zero, priority: UILayoutPriority? = .required){
		autoForceSuperviewToMatchContentWidth(insetBy: insets, priority: priority)
		autoForceSuperviewToMatchContentHeight(insetBy: insets, priority: priority)
    }

	public func autoForceSuperviewToMatchContentWidth(insetBy insets: UIEdgeInsets = .zero, priority: UILayoutPriority? = .required){
		anchorLeftToSuperview(constant: insets.left)
		anchorRightToSuperview(constant: -insets.right)
		autoSizeWidth(to: 0.0, relatedBy: .greaterThanOrEqual, priority: priority)
		autoEnforceContentSize()
	}

	public func autoForceSuperviewToMatchContentHeight(insetBy insets: UIEdgeInsets = .zero, priority: UILayoutPriority? = .required){
		anchorTopToSuperview(constant: insets.top)
		anchorBottomToSuperview(constant: -insets.bottom)
		autoSizeHeight(to: 0.0, relatedBy: .greaterThanOrEqual, priority: priority)
		autoEnforceContentSize()
	}


}
// MARK: - Pin: Superview
extension UIView {
    
    fileprivate func assertSuperview() -> UIView{
        assert(superview != nil, "Åttempted to create constraint between a view and its superview without a superview.")
        return superview!
    }
    
    @discardableResult
    public func autoPinToSuperviewMargins(margins: [NSLayoutConstraint.Attribute] = .margins, withInsets insets: UIEdgeInsets = .zero, relatedBy: NSLayoutConstraint.Relation = .equal, priority: UILayoutPriority? = .required) -> ConstraintDictionary {
        return autoPin(to: margins, of: assertSuperview(), withInsets: insets, relatedBy: relatedBy, priority: priority)
    }
    
    @discardableResult
    public func autoPinToSuperviewMargins(excludingMargins: [NSLayoutConstraint.Attribute], withInsets insets: UIEdgeInsets = .zero, relatedBy: NSLayoutConstraint.Relation = .equal, priority: UILayoutPriority? = .required) -> ConstraintDictionary {
        return autoPin(toMarginsOf: assertSuperview(), excludingMargins: excludingMargins, withInsets: insets, relatedBy: relatedBy, priority: priority)
    }
    
    @discardableResult
    public func autoPinToSuperview(edges: [NSLayoutConstraint.Attribute] = .sides, withInsets insets: UIEdgeInsets = .zero, relatedBy: NSLayoutConstraint.Relation = .equal, priority: UILayoutPriority? = .required) -> ConstraintDictionary {
        return autoPin(to: edges, of: assertSuperview(), withInsets: insets, relatedBy: relatedBy, priority: priority)
    }
    
    @discardableResult
    public func autoPinToSuperview(edges: [NSLayoutConstraint.Attribute] = .sides, withOffset offset: CGFloat, relatedBy: NSLayoutConstraint.Relation = .equal, priority: UILayoutPriority? = .required) -> ConstraintDictionary {
        return autoPinToSuperview(edges: edges, withInsets: UIEdgeInsets.init(padding: offset), relatedBy: relatedBy, priority: priority)
    }
    
    @discardableResult
    public func autoPinToSuperview(excludingEdges: [NSLayoutConstraint.Attribute], withInsets insets: UIEdgeInsets = .zero, relatedBy: NSLayoutConstraint.Relation = .equal, priority: UILayoutPriority? = .required) -> ConstraintDictionary {
        return autoPin(toEdgesOf: assertSuperview(), excludingEdges: excludingEdges, withInsets: insets, relatedBy: relatedBy, priority: priority)
    }
    
    @discardableResult
    public func autoPinToSuperview(edge: NSLayoutConstraint.Attribute, withOffset offset: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, priority: UILayoutPriority? = .required) -> NSLayoutConstraint {
        return self.autoPin(edge: edge, toEdgeOf: assertSuperview(), withOffset: offset, relatedBy: relatedBy, priority: priority)
    }
    
    
}

// MARK: - Pin: to margins
extension UIView{
    
    @discardableResult
    public func autoPinToSuperviewMargin(_ attribute: NSLayoutConstraint.Attribute, withOffset offset: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, priority: UILayoutPriority? = .required) -> NSLayoutConstraint {
        return autoPin(attribute, toMarginOf: assertSuperview(), withOffset: offset, relatedBy: relatedBy, priority: priority)
    }
    
    @discardableResult
    public func autoPin(_ attribute: NSLayoutConstraint.Attribute, toMarginOf item: LayoutItem, withOffset offset: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, priority: UILayoutPriority? = .required) -> NSLayoutConstraint {
        return autoPin(edge: attribute, toEdge: attribute.toMargin(), of: item, withOffset: offset, relatedBy: relatedBy, priority: priority)
    }
    
    @discardableResult
    public func autoPin(toMarginsOf item: LayoutItem, excludingMargins: [NSLayoutConstraint.Attribute] = [], withInsets insets: UIEdgeInsets = .zero, relatedBy: NSLayoutConstraint.Relation = .equal, priority: UILayoutPriority? = .required) -> ConstraintDictionary {
		var attributes: [NSLayoutConstraint.Attribute] = .margins
        attributes.removeObjects(excludingMargins)
        return autoPin(to: attributes, of: item, withInsets: insets, relatedBy: relatedBy, priority: priority)
        
    }
    
}
// MARK: - Pin: to edges
extension UIView {
    
    
    @discardableResult
    public func autoPin(toEdgesOf item: LayoutItem, excludingEdges: [NSLayoutConstraint.Attribute] = [], withInsets insets: UIEdgeInsets = .zero, relatedBy: NSLayoutConstraint.Relation = .equal, priority: UILayoutPriority? = .required) -> ConstraintDictionary {
		var attributes: [NSLayoutConstraint.Attribute] = .sides
        attributes.removeObjects(excludingEdges)
        return autoPin(to: attributes, of: item, withInsets: insets, relatedBy: relatedBy, priority: priority)
        
    }
    
    @discardableResult
    public func autoPin(to edges: [NSLayoutConstraint.Attribute] = .sides, of item: LayoutItem, withInsets insets: UIEdgeInsets = .zero, relatedBy: NSLayoutConstraint.Relation = .equal, priority: UILayoutPriority? = .required) -> ConstraintDictionary {
        var constraints: ConstraintDictionary = [:]
        for edge in edges{
            constraints[edge] = autoPin(edge: edge, toEdgeOf: item, withOffset: insets.layoutOffsetValue(edgeAttribute: edge), relatedBy: relatedBy, priority: priority)
        }
        return constraints
    }
    
    @discardableResult
    public func autoPin(edge: NSLayoutConstraint.Attribute, toEdgeOf item: LayoutItem, withOffset offset: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, priority: UILayoutPriority? = .required) -> NSLayoutConstraint {
        return autoPin(edge: edge, toEdge: edge, of: item, withOffset: offset, relatedBy: relatedBy, priority: priority)
    }
    
    
    
    
    @discardableResult
    public func autoPin(edge: NSLayoutConstraint.Attribute, toEdge: NSLayoutConstraint.Attribute, of item: LayoutItem, withOffset offset: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, priority: UILayoutPriority? = .required) -> NSLayoutConstraint {
        var offset = offset
        var relatedBy = relatedBy
        switch edge{
        case .right, .bottom, .trailing, .rightMargin, .bottomMargin, .trailingMargin:
            offset.negate()
            switch relatedBy{
            case .lessThanOrEqual:
                relatedBy = .greaterThanOrEqual
            case .greaterThanOrEqual:
                relatedBy = .lessThanOrEqual
            default: break
            }
        default: break
        }
        return self.autoConstrain(attribute: edge, ofItem: self, toAttribute: toEdge, ofItem: item, constant: offset, relatedBy: relatedBy, priority: priority)
    }
    
    
}
// MARK: - Center
extension UIView {
    
    @discardableResult
    public func autoCenterInSuperview(withXOffset xOffset: CGFloat = 0, withYOffset yOffset: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, priority: UILayoutPriority? = .required) -> ConstraintDictionary{
        return [
            .centerX : self.autoCenterHorizontallyInSuperview(withOffset: xOffset, relatedBy: relatedBy, priority: priority),
            .centerY : self.autoCenterVerticallyInSuperview(withOffset: yOffset, relatedBy: relatedBy, priority: priority)
        ]
    }
    
    
    @discardableResult
    public func autoCenterHorizontallyInSuperview(withOffset offset: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, multiplier: CGFloat = 1, priority: UILayoutPriority? = .required) -> NSLayoutConstraint {
        return self.autoCenterHorizontally(to: assertSuperview(), withOffset: offset, relatedBy: relatedBy, multiplier: multiplier, priority: priority)
    }
    @discardableResult
    public func autoCenterVerticallyInSuperview(withOffset offset: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, multiplier: CGFloat = 1, priority: UILayoutPriority? = .required) -> NSLayoutConstraint {
        return self.autoCenterVertically(to: assertSuperview(), withOffset: offset, relatedBy: relatedBy, multiplier: multiplier, priority: priority)
    }
    
    @discardableResult
    public func autoCenterHorizontally(to item: LayoutItem, withOffset offset: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, multiplier: CGFloat = 1, priority: UILayoutPriority? = .required) -> NSLayoutConstraint {
        return self.autoConstrain(attribute: .centerX, toAttribute: .centerX, ofItem: item, multiplier: multiplier, constant: offset, relatedBy: relatedBy, priority: priority)
    }
    
    @discardableResult
    public func autoCenterVertically(to item: LayoutItem, withOffset offset: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, multiplier: CGFloat = 1, priority: UILayoutPriority? = .required) -> NSLayoutConstraint {
        return self.autoConstrain(attribute: .centerY, toAttribute: .centerY, ofItem: item, multiplier: multiplier, constant: offset, relatedBy: relatedBy, priority: priority)
    }
    
}

// MARK: - Size
extension UIView {
    
    @discardableResult
    public func autoSizeWidth(to width: CGFloat, relatedBy: NSLayoutConstraint.Relation = .equal, multiplier: CGFloat = 1, priority: UILayoutPriority? = .required) -> NSLayoutConstraint {
        return self.autoConstrain(attribute: .width, multiplier: multiplier, constant: width, relatedBy: relatedBy, priority: priority)
    }
    
    
    @discardableResult
    public func autoSizeHeight(to height: CGFloat, relatedBy: NSLayoutConstraint.Relation = .equal, multiplier: CGFloat = 1, priority: UILayoutPriority? = .required) -> NSLayoutConstraint {
        return self.autoConstrain(attribute: .height, multiplier: multiplier, constant: height, relatedBy: relatedBy, priority: priority)
    }
    
    @discardableResult
    public func autoSizeToSquare(withSideLength size: CGFloat, relatedBy: NSLayoutConstraint.Relation = .equal, priority: UILayoutPriority? = .required) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        
        self.autoSizeAspectRatio(to: .square)
        return (
            self.autoSizeWidth(to: size, relatedBy: relatedBy, priority: priority),
            self.autoSizeHeight(to: size, relatedBy: relatedBy, priority: priority)
        )
    }
    
    
    @discardableResult
    public func autoSize(to size: CGSize, relatedBy: NSLayoutConstraint.Relation = .equal, multiplier: CGFloat = 1, priority: UILayoutPriority? = .required) -> ConstraintDictionary {
        return [
            .width : self.autoSizeWidth(to: size.width, relatedBy: relatedBy, multiplier: multiplier, priority: priority),
            .height : self.autoSizeHeight(to: size.height, relatedBy: relatedBy, multiplier: multiplier, priority: priority)
        ]
    }
    
    @discardableResult
    @available(*, deprecated: 1.0)
    public func autoSize(toSize size: CGSize, relatedBy: NSLayoutConstraint.Relation = .equal, multiplier: CGFloat = 1, priority: UILayoutPriority? = .required) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            self.autoSizeWidth(to: size.width, relatedBy: relatedBy, multiplier: multiplier, priority: priority),
            self.autoSizeHeight(to: size.height, relatedBy: relatedBy, multiplier: multiplier, priority: priority)
        )
    }
    
    @discardableResult
    @available(*, deprecated: 1.0)
    public func autoSizeAspectRatio(to aspectRatio: CGFloat? = nil) -> NSLayoutConstraint {
        let ratio = aspectRatio ?? frame.size.height / frame.size.width
        return self.autoConstrain(attribute: .height, toAttribute: .width, ofItem: self, multiplier: ratio, constant: 0.0, relatedBy: .equal)
    }
    
    /// Creates a constraint that enforces aspect ratio based on size of a masterDimension (Defaults to .width).
    /// It is assumed that a masterDimension's constraint is already set elsewhere.
    @discardableResult
    public func autoSizeAspectRatio(to aspectRatio: AutoLayoutAspectRatio, masterAttribute: NSLayoutConstraint.Attribute = .width, priority: UILayoutPriority? = .required) -> NSLayoutConstraint {
        assert(masterAttribute == .width || masterAttribute == .height, "Only height and width constraints apply to aspect ratio.")
        
        let slaveAttribute: NSLayoutConstraint.Attribute = masterAttribute == .width ? .height : .width
        let ratio: CGFloat = masterAttribute == .width ? 1.0/aspectRatio.ratio : aspectRatio.ratio        
        return self.autoConstrain(attribute: slaveAttribute, toAttribute: masterAttribute, ofItem: self, multiplier: ratio, constant: 0.0, relatedBy: .equal, priority: priority)
    }
}

// MARK: - Matching Size

extension UIView{
    
    
    /// Centers in and matches size of superview. Paramaters only apply to size constraints.
    @discardableResult
    public func autoCenterAndMatchSizeOfSuperview(withSizeOffset offset: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, multiplier: CGFloat = 1, priority: UILayoutPriority? = .required) -> ConstraintDictionary {
        return autoCenterInSuperview().merged(with: autoMatchSizeOfSuperview(withOffset: offset, relatedBy: relatedBy, multiplier: multiplier, priority: priority))
    }
    
    
    @discardableResult
    public func autoMatchSizeOfSuperview(withOffset offset: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, multiplier: CGFloat = 1, priority: UILayoutPriority? = .required) -> ConstraintDictionary {
        return autoMatchSize(of: assertSuperview(), withOffset: offset, relatedBy: relatedBy, multiplier: multiplier, priority: priority)
    }
    
    @discardableResult
    public func autoMatchSize(of item: LayoutItem, withOffset offset: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, multiplier: CGFloat = 1, priority: UILayoutPriority? = .required) -> ConstraintDictionary {
        return [
            .width : self.autoMatchWidth(of: item, withOffset: offset, relatedBy: relatedBy, multiplier: multiplier, priority: priority),
            .height: self.autoMatchHeight(of: item, withOffset: offset, relatedBy: relatedBy, multiplier: multiplier, priority: priority)
        ]
    }
    
    @discardableResult
    public func autoMatchHeightOfSuperview(withOffset offset: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, multiplier: CGFloat = 1, priority: UILayoutPriority? = .required) -> NSLayoutConstraint {
        return autoMatchHeight(of: assertSuperview(), withOffset: offset, relatedBy: relatedBy, multiplier: multiplier, priority: priority)
    }
    
    @discardableResult
    public func autoMatchWidthOfSuperview(withOffset offset: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, multiplier: CGFloat = 1, priority: UILayoutPriority? = .required) -> NSLayoutConstraint {
        return autoMatchWidth(of: assertSuperview(), withOffset: offset, relatedBy: relatedBy, multiplier: multiplier, priority: priority)
    }
    
    @discardableResult
    public func autoMatchWidth(of item: LayoutItem, withOffset offset: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, multiplier: CGFloat = 1, priority: UILayoutPriority? = .required) -> NSLayoutConstraint {
        return autoConstrain(attribute: .width, toAttribute: .width, ofItem: item, multiplier: multiplier, constant: offset, relatedBy: relatedBy, priority: priority)
    }
    
    @discardableResult
    public func autoMatchHeight(of item: LayoutItem, withOffset offset: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, multiplier: CGFloat = 1, priority: UILayoutPriority? = .required) -> NSLayoutConstraint {
        return autoConstrain(attribute: .height, toAttribute: .height, ofItem: item, multiplier: multiplier, constant: offset, relatedBy: relatedBy, priority: priority)
    }
    
}

// MARK: - General Constraint building
extension UIView {
    
    @discardableResult
    public func autoConstrainToSuperview(attribute: NSLayoutConstraint.Attribute, toAttribute: NSLayoutConstraint.Attribute? = nil, multiplier: CGFloat = 1, constant: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, priority: UILayoutPriority? = .required) -> NSLayoutConstraint {
        
        return autoConstrain(attribute: attribute, ofItem: self, toAttribute: toAttribute ?? attribute, ofItem: superview!, multiplier: multiplier, constant: constant, relatedBy: relatedBy, priority: priority)
        
    }
    
    @discardableResult
    public func autoConstrain(attribute: NSLayoutConstraint.Attribute, toAttribute: NSLayoutConstraint.Attribute = .notAnAttribute, ofItem toItem: LayoutItem? = nil, multiplier: CGFloat = 1, constant: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, priority: UILayoutPriority? = .required) -> NSLayoutConstraint {
        
        return autoConstrain(attribute: attribute, ofItem: self, toAttribute: toAttribute, ofItem: toItem, multiplier: multiplier, constant: constant, relatedBy: relatedBy, priority: priority)
        
    }
}

//MARK: - Private
extension UIView{
    @discardableResult
    fileprivate func autoConstrain<Constraint : NSLayoutConstraint>(attribute: NSLayoutConstraint.Attribute, ofItem item: LayoutItem, toAttribute: NSLayoutConstraint.Attribute = .notAnAttribute, ofItem toItem: LayoutItem? = nil, multiplier: CGFloat = 1, constant: CGFloat = 0, relatedBy: NSLayoutConstraint.Relation = .equal, priority: UILayoutPriority? = .required) -> Constraint {
        
        if let view = item as? UIView {
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        let constraint = Constraint(
            item: item, attribute: attribute,
            relatedBy: relatedBy,
            toItem: toItem, attribute: toAttribute,
            multiplier: multiplier, constant: constant
        )
        if priority != nil {
            constraint.priority = priority!
        }
        constraint.isActive = true
        guard let toItem = toItem as? UIView else{
            self.addConstraint(constraint)
            return constraint
        }
        guard let commonSuperview = self.nearestCommonSuperviewWith(other: toItem) else{
            assertionFailure("Views that share constraints must share a common superview.")
            return constraint
        }
        
        commonSuperview.addConstraint(constraint)
        return constraint
    }
    
    @discardableResult
    fileprivate func autoConstrain(attributes: [NSLayoutConstraint.Attribute], ofItem item: LayoutItem, toItem: LayoutItem?, relatedBy: NSLayoutConstraint.Relation = .equal, multiplier: CGFloat = 1, constant: CGFloat = 0, priority: UILayoutPriority? = .required) -> ConstraintDictionary {
        
        var constraintDict: ConstraintDictionary = [:]
        for attribute in attributes{
            let toAttribute = toItem == nil ? .notAnAttribute : attribute
            let constraint = autoConstrain(attribute: attribute, ofItem: item, toAttribute: toAttribute, ofItem: toItem, multiplier: multiplier, constant: constant, relatedBy: relatedBy, priority: priority)
            constraintDict[attribute] = constraint
        }
        return constraintDict
    }
}

//MARK: General Convenience Autolayout Extensions
public extension UIView{
    
    public func addActiveConstraints(_ constraints: [NSLayoutConstraint]){
        constraints.forEach{$0.isActive = true}
        addConstraints(constraints)
    }
    
    public func autoEnforceContentSize(_ priority: UILayoutPriority = .required, forAxes axes: [NSLayoutConstraint.Axis] = [.vertical, .horizontal]){
        autoEnforceContentHugging(priority, forAxes: axes)
        autoEnforceCompressionResistance(priority, forAxes: axes)
    }
    
    
    public func autoEnforceContentHugging(_ priority: UILayoutPriority = .required, forAxes axes: [NSLayoutConstraint.Axis] = [.vertical, .horizontal]){
        axes.forEach { (axis) in
            setContentHuggingPriority(priority, for: axis)
        }
        
    }
    
    public func autoEnforceCompressionResistance(_ priority: UILayoutPriority = .required, forAxes axes: [NSLayoutConstraint.Axis] = [.vertical, .horizontal]){
        axes.forEach { (axis) in
            setContentCompressionResistancePriority(priority, for: axis)
        }
    }
    
    public func forceAutolayoutPass(){
        setNeedsLayout()
        layoutIfNeeded()
    }
    
    public func constraint(for attribute: NSLayoutConstraint.Attribute, relatedTo view: UIView? = nil) -> NSLayoutConstraint?{
        let allConstraints = constraints + (superview?.constraints ?? [])
        let contraintsToCheck = view != nil ? constraintsRelated(to: view!) : allConstraints
        for constraint in contraintsToCheck{
            if (constraint.firstItem as? UIView == self && constraint.firstAttribute == attribute){
                return constraint
            }
            if(constraint.secondItem as? UIView == self && constraint.secondAttribute == attribute){
                return constraint
            }
        }
        return nil
    }
    
    public func constraintsRelated(to view: UIView) -> [NSLayoutConstraint]{
        let allConstraints = constraints + (superview?.constraints ?? [])
        return allConstraints.compactMap({ (constraint: NSLayoutConstraint) -> NSLayoutConstraint? in
            guard let firstView = constraint.firstItem as? UIView, let secondView = constraint.secondItem as? UIView else { return nil }
            return firstView == view || secondView == view ? constraint : nil
        })
    }
}

//MARK: View Heirarchy
extension UIView {
    
    public func nearestCommonSuperviewWith(other: UIView) -> UIView? {
        return self.viewHierarchy().intersection(other.self.viewHierarchy()).first
    }
    
    private func viewHierarchy() -> Set<UIView> {
        return Set(UIView.hierarchyFor(view: self, accumulator: []))
    }
    
    static private func hierarchyFor(view: UIView?, accumulator: [UIView]) -> [UIView] {
        guard let view = view else {
            return accumulator
        }
        return UIView.hierarchyFor(view: view.superview, accumulator: accumulator + [view])
    }
    
}

//MARK - Other

extension Collection where Element == NSLayoutConstraint.Attribute{
	public static var sides: [NSLayoutConstraint.Attribute]{
		return [.top, .bottom, .left, .right]
	}

	public static var topAndBottom: [NSLayoutConstraint.Attribute]{
		return [.top, .bottom]
	}


	public static var leftAndRight: [NSLayoutConstraint.Attribute]{
		return [.left, .right]
	}


	public static var topRight: [NSLayoutConstraint.Attribute]{
		return [.top, .right]
	}
	public static var topLeft: [NSLayoutConstraint.Attribute]{
		return [.top, .left]
	}

	//MARK: Margins
	public static var margins: [NSLayoutConstraint.Attribute]{
		return [.topMargin, .bottomMargin, .leftMargin, .rightMargin]
	}
	public static var leftAndRightMargins: [NSLayoutConstraint.Attribute]{
		return [.leftMargin, .rightMargin]
	}
	public static var topAndBottomMargins: [NSLayoutConstraint.Attribute]{
		return [.topMargin, .bottomMargin]
	}

	public static var bottomRight: [NSLayoutConstraint.Attribute]{
		return [.bottom, .right]
	}
	public static var bottomLeft: [NSLayoutConstraint.Attribute]{
		return [.bottom, .left]
	}

	public static var topRightMargins: [NSLayoutConstraint.Attribute]{
		return [.topMargin, .rightMargin]
	}
	public static var topLeftMargins: [NSLayoutConstraint.Attribute]{
		return [.topMargin, .leftMargin]
	}

	public static var bottomRightMargins: [NSLayoutConstraint.Attribute]{
		return [.bottomMargin, .rightMargin]
	}
	public static var bottomLeftMargins: [NSLayoutConstraint.Attribute]{
		return [.bottomMargin, .leftMargin]
	}
}

extension UIEdgeInsets{
    @available(iOS, obsoleted: 11.0, message: "Because fuck apple")
    public init(top: CGFloat = 0.0, left: CGFloat = 0.0, bottom: CGFloat = 0.0, right: CGFloat = 0.0 ) {
        self.init()
        self.top = top
        self.left = left
        self.right = right
        self.bottom = bottom
    }
    
    func layoutOffsetValue(edgeAttribute: NSLayoutConstraint.Attribute) -> CGFloat{
        switch edgeAttribute{
        case .top, .topMargin:
            return self.top
        case .bottom, .bottomMargin:
            return self.bottom
        case .left, .leading, .leftMargin, .leadingMargin:
            return self.left
        case .right, .trailing, .rightMargin, .trailingMargin:
            return self.right
        default:
            assertionFailure("Invalid edge attribute")
            return 0
        }
    }
}

extension Array where Element: UIView{
    
    /// Autostacks an array of views vertically inside a common superview. Requires that all views share the same superview.
    ///
    /// - Returns: Constraints mapped to each view
    @discardableResult
    public func autoStackVertically() -> ConstraintDictionaryMap{
        var constraintMap: ConstraintDictionaryMap = [:]
        guard let firstView = self.first else{
            return constraintMap
        }
        
        guard self[safe: 1] != nil else{//If only one view exists
            constraintMap[firstView] = firstView.autoPinToSuperview()
            return constraintMap
        }
        
        
        for (index, view) in self.enumerated() {
            if index == 0{
                constraintMap[view] = view.autoPinToSuperview(excludingEdges: [.bottom])
            }
            else{
                constraintMap[view] = view.autoPinToSuperview(edges: .leftAndRight)
                constraintMap[view]?[.top] = view.autoPin(edge: .top, toEdge: .bottom, of: self[index - 1])
                if index == self.lastIndex{
                    constraintMap[view]?[.bottom] = view.autoPinToSuperview(edge: .bottom)
                }
            }
        }
        return constraintMap
    }
    
    
    
    
    /// Autostacks an array of views horizontally inside a common superview. Requires that all views share the same superview.
    ///
    /// - Parameters:
    ///   - insetFromSuperView: distance to pad views from superview
    /// - Returns: Constraints mapped to each view
    
    @discardableResult
    public func autoStackHorizontally(insetFromSuperview insets: UIEdgeInsets = .zero) -> ConstraintDictionaryMap{
        return autoStackHorizontally(insetFromSuperview: insets, spacing: 0)
    }
    
    
    /// Autostacks an array of views horizontally inside a common superview. Requires that all views share the same superview.
    ///
    /// - Parameters:
    ///   - insetFromSuperView: distance to pad views from superview
    ///   - spacing: spaces between views, can be single value or specific value for each gap between views (1 less than total view count)
    /// - Returns: Constraints mapped to each view
    @discardableResult
    public func autoStackHorizontally(insetFromSuperview insets: UIEdgeInsets = .zero, spacing: CGFloat...) -> ConstraintDictionaryMap{
        var constraintMap: ConstraintDictionaryMap = [:]
        assert(spacing.count == 0 || spacing.count == self.count - 1 || spacing.count == 1, "Invalid number of paramters for spacing")
        guard let firstView = self.first else{
            return constraintMap
        }
        
        guard self[safe: 1] != nil else{//If only one view exists
            constraintMap[firstView] = firstView.autoPinToSuperview(withInsets: insets)
            return constraintMap
        }
        
        
        for (index, view) in self.enumerated() {
            let space = spacing[safe: index - 1] ?? spacing[safe: 0] ?? 0
            if index == 0{
                constraintMap[view] = view.autoPinToSuperview(excludingEdges: [.right], withInsets: UIEdgeInsets.init(top: insets.top, left: insets.left, bottom: insets.bottom, right: 0))
            }
            else{
                constraintMap[view] = view.autoPinToSuperview(edges: .topAndBottom, withInsets: UIEdgeInsets.init(top: insets.top, left: 0, bottom: insets.bottom, right: 0))
                constraintMap[view]?[.left] = view.autoPin(edge: .left, toEdge: .right, of: self[index - 1], withOffset: space)
                if index == self.lastIndex{
                    constraintMap[view]?[.right] = view.autoPinToSuperview(edge: .right, withOffset: insets.right)
                }
            }
        }
        return constraintMap
    }
    
    public func autoEnforceContentSize(_ priority: UILayoutPriority = .required, forAxes axes: [NSLayoutConstraint.Axis] = [.vertical, .horizontal]){
        autoEnforceContentHugging(priority, forAxes: axes)
        autoEnforceCompressionResistance(priority, forAxes: axes)
        
    }
    
    public func autoEnforceContentHugging(_ priority: UILayoutPriority = .required, forAxes axes: [NSLayoutConstraint.Axis] = [.vertical, .horizontal]){
        for view in self{
            view.autoEnforceContentSize(priority, forAxes: axes)
        }
    }
    
    public func autoEnforceCompressionResistance(_ priority: UILayoutPriority = .required, forAxes axes: [NSLayoutConstraint.Axis] = [.vertical, .horizontal]){
        for view in self{
            view.autoEnforceCompressionResistance(priority, forAxes: axes)
        }
    }
}


extension UIView{
    public func swap(subview: UIView, with replacementView: UIView) {
        addSubview(replacementView)
        for constraint: NSLayoutConstraint in self.constraints {
            if constraint.firstItem as? UIView == subview {
                addConstraint(NSLayoutConstraint(item: replacementView, attribute: constraint.firstAttribute, relatedBy: constraint.relation, toItem: constraint.secondItem, attribute: constraint.secondAttribute, multiplier: constraint.multiplier, constant: constraint.constant))
            }
            else if constraint.secondItem as? UIView == subview {
                addConstraint(NSLayoutConstraint(item: constraint.firstItem as Any, attribute: constraint.firstAttribute, relatedBy: constraint.relation, toItem: replacementView, attribute: constraint.secondAttribute, multiplier: constraint.multiplier, constant: constraint.constant))
            }
        }
        subview.removeFromSuperview()
    }
}

extension UIView{
    public class func parentViewFittingContent(of view: UIView, insetBy insets: UIEdgeInsets = UIEdgeInsets(padding: 20)) -> UIView{
        let layoutView: UIView = UIView()
        layoutView.addSubview(view)
        view.autoForceSuperviewToMatchContentSize(insetBy: insets)
        return layoutView
    }
}


extension UIView{
	public func layoutDynamicHeight(forWidth width: CGFloat){
		translatesAutoresizingMaskIntoConstraints = false
		let widthConstraint = autoSizeWidth(to: width)
		addConstraint(widthConstraint)
		forceAutolayoutPass()
		let height = systemLayoutSizeFitting(UIView.layoutFittingExpandedSize).height
		removeConstraint(widthConstraint)
		frame = CGRect(x: 0, y: 0, width: width, height: height)
		translatesAutoresizingMaskIntoConstraints = true
	}
}
