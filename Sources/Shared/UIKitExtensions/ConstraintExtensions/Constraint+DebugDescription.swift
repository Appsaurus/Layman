//
//  Constraint+DebugDescription.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 2/5/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

#if canImport(AppKit)
import AppKit
#else
import UIKit
#endif

extension Constraint {

    override open var description: String {

        var description = ""
        if let firstItem = self.firstItem {
            var itemDescription = "\(descriptionForObject(firstItem))"
            if firstView == secondView?.superview {
                itemDescription = "Super\(itemDescription.lowercasingFirstLetter())"
            }
            description += itemDescription
        }

        if self.firstAttribute != .notAnAttribute {
            description += ".\(descriptionForAttribute(self.firstAttribute))"
        }

        description += " \(descriptionForRelation(self.relation))"

        if let secondItem = self.secondItem {
            var itemDescription = "\(descriptionForObject(secondItem))"
            if secondView == firstView?.superview {
                itemDescription = "Super\(itemDescription.lowercasingFirstLetter())"
            }
        }

        if self.secondAttribute != .notAnAttribute {
            description += ".\(descriptionForAttribute(self.secondAttribute))"
        }

        if self.multiplier != 1.0 {
            description += " * \(multiplier.roundedString)"
        }

        if self.secondAttribute == .notAnAttribute {
            description += " \(self.constant.roundedString)"
        } else {
            if self.constant > 0.0 {
                description += " + \(self.constant.roundedString)"
            } else if self.constant < 0.0 {
                description += " - \(abs(self.constant).roundedString)"
            }
        }

        if self.priority.rawValue != 1000.0 {
            description += " ~ \(self.priority)"
        }

        var constraintMetadata = "🆔: \(descriptionForObject(self))"
        if let location = layoutDebugInfo?.sourceLocation {
            constraintMetadata += " 👉 \(location)"
        }

        return "| \(description) | \(constraintMetadata)"
    }

}

private extension LayoutConstant {
    var roundedString: String {
        return String(format: "%.2f", self)
    }
}

private func descriptionForRelation(_ relation: Constraint.Relation) -> String {
    switch relation {
    case .equal:                return "="
    case .greaterThanOrEqual:   return "≥"
    case .lessThanOrEqual:      return "≤"
    }
}

// swiftlint:disable:next cyclomatic_complexity
private func descriptionForAttribute(_ attribute: Constraint.Attribute) -> String {
    #if canImport(AppKit)
    switch attribute {
    case .notAnAttribute:       return "notAnAttribute"
    case .top:                  return "top"
    case .left:                 return "left"
    case .bottom:               return "bottom"
    case .right:                return "right"
    case .leading:              return "leading"
    case .trailing:             return "trailing"
    case .width:                return "width"
    case .height:               return "height"
    case .centerX:              return "centerX"
    case .centerY:              return "centerY"
    case .lastBaseline:         return "lastBaseline"
    case .firstBaseline:        return "firstBaseline"
    }
    #else
    switch attribute {
    case .notAnAttribute:       return "notAnAttribute"
    case .top:                  return "top"
    case .left:                 return "left"
    case .bottom:               return "bottom"
    case .right:                return "right"
    case .leading:              return "leading"
    case .trailing:             return "trailing"
    case .width:                return "width"
    case .height:               return "height"
    case .centerX:              return "centerX"
    case .centerY:              return "centerY"
    case .lastBaseline:         return "lastBaseline"
    case .firstBaseline:        return "firstBaseline"
    case .topMargin:            return "topMargin"
    case .leftMargin:           return "leftMargin"
    case .bottomMargin:         return "bottomMargin"
    case .rightMargin:          return "rightMargin"
    case .leadingMargin:        return "leadingMargin"
    case .trailingMargin:       return "trailingMargin"
    case .centerXWithinMargins: return "centerXWithinMargins"
    case .centerYWithinMargins: return "centerYWithinMargins"
    default: return "Unknown"
    }
    #endif

}

private func descriptionForObject(_ object: AnyObject) -> String {

    guard let debugInfo = (object as? LayoutDebugLabeled)?.layoutDebugInfo else {
        let pointerDescription = String(format: "%p", UInt(bitPattern: ObjectIdentifier(object)))
        return {
            switch object {
            case is View: return "View(\(pointerDescription))"
            case is Constraint: return pointerDescription
            case is LayoutGuide: return "LayoutGuide(\(pointerDescription))"
            default: return type(of: object).description()
            }
        }()
    }
    return "\(debugInfo.name)"
}

extension String {
    func lowercasingFirstLetter() -> String {
        return prefix(1).lowercased() + self.dropFirst()
    }

    mutating func lowercaseFirstLetter() {
        self = self.lowercasingFirstLetter()
    }
}
