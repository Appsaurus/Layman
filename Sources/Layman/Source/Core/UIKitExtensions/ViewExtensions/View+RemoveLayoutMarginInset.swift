//
//  View+RemoveLayoutMarginInset.swift
//  Layman
//
//  Created by Brian Strobach on 4/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import UIKit

public extension View {
    func removeLayoutMarginsInset(removingSafeAreaInset: Bool = false) {
        layoutMarginsInset = .zero
        if #available(iOS 11.0, *) {
            if removingSafeAreaInset { insetsLayoutMarginsFromSafeArea = false }
        }
    }

    var layoutMarginsInset: UIEdgeInsets {
        get {
            if #available(iOS 11.0, *) {
                return directionalLayoutMargins.toEdgeInsets
            }
            return layoutMargins
        }
        set {
            layoutMargins = newValue
            if #available(iOS 11.0, *) {
                return directionalLayoutMargins = newValue.toDirectionalEdgeInsets
            }
        }
    }
}

@available(iOS 11.0, *)
public extension NSDirectionalEdgeInsets {
    var toEdgeInsets: UIEdgeInsets {
        switch UIApplication.shared.userInterfaceLayoutDirection {
        case .leftToRight:
            return UIEdgeInsets(top: top, left: leading, bottom: bottom, right: trailing)
        case .rightToLeft:
            return UIEdgeInsets(top: top, left: trailing, bottom: bottom, right: leading)
        @unknown default:
            return UIEdgeInsets(top: top, left: leading, bottom: bottom, right: trailing)
        }
    }
}

@available(iOS 11.0, *)
extension UIEdgeInsets {
    var toDirectionalEdgeInsets: NSDirectionalEdgeInsets {
        switch UIApplication.shared.userInterfaceLayoutDirection {
        case .leftToRight:
                return NSDirectionalEdgeInsets(top: top, leading: left, bottom: bottom, trailing: right)
        case .rightToLeft:
            return NSDirectionalEdgeInsets(top: top, leading: right, bottom: bottom, trailing: left)
        @unknown default:
            return NSDirectionalEdgeInsets(top: top, leading: left, bottom: bottom, trailing: right)
        }
    }
}

extension UIView {
    var userInterfaceLayoutDirection: UIUserInterfaceLayoutDirection {
        if #available(iOS 9.0, *) {
            return UIView.userInterfaceLayoutDirection(for: self.semanticContentAttribute)
        } else {
            return UIApplication.shared.userInterfaceLayoutDirection
        }
    }
}

public extension ViewController {
    func removeLayoutMarginsInset(removingSafeAreaInset: Bool = false, respectSystemMinimum: Bool = false ) {
        view.removeLayoutMarginsInset(removingSafeAreaInset: removingSafeAreaInset)
        guard #available(iOS 11.0, *), !respectSystemMinimum  else {
            return
        }
        viewRespectsSystemMinimumLayoutMargins = false
    }
}
