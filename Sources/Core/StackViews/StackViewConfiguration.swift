//
//  StackViewConfiguration.swift
//  Layman
//
//  Created by Brian Strobach on 1/3/20.
//  Copyright © 2020 Brian Strobach. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
public struct StackViewConfiguration {

    public var axis: NSLayoutConstraint.Axis
    public var distribution: UIStackView.Distribution
    public var alignment: UIStackView.Alignment
    public var spacing: CGFloat

    static public var defaultSpacing: CGFloat = 10.0

    //Horizontal
    static public func fillHorizontal(alignment: UIStackView.Alignment = .fill, spacing: CGFloat = defaultSpacing) -> StackViewConfiguration {
        return StackViewConfiguration(axis: .horizontal, distribution: .fill, alignment: alignment, spacing: spacing)
    }
    static public func fillEquallyHorizontal(alignment: UIStackView.Alignment = .fill, spacing: CGFloat = defaultSpacing) -> StackViewConfiguration {
        return StackViewConfiguration(axis: .horizontal, distribution: .fillEqually, alignment: alignment, spacing: spacing)
    }
    static public func fillProportionatelyHorizontal(alignment: UIStackView.Alignment = .center, spacing: CGFloat = defaultSpacing) -> StackViewConfiguration {
        return StackViewConfiguration(axis: .horizontal, distribution: .fillProportionally, alignment: alignment, spacing: spacing)
    }
    static public func equalSpacingHorizontal(alignment: UIStackView.Alignment = .leading, spacing: CGFloat = defaultSpacing) -> StackViewConfiguration {
        return StackViewConfiguration(axis: .horizontal, distribution: .equalSpacing, alignment: alignment, spacing: spacing)
    }

    //Vertical
    static public func fillVertical(alignment: UIStackView.Alignment = .fill, spacing: CGFloat = defaultSpacing) -> StackViewConfiguration {
        return StackViewConfiguration(axis: .vertical, distribution: .fill, alignment: alignment, spacing: spacing)
    }
    static public func fillEquallyVertical(alignment: UIStackView.Alignment = .fill, spacing: CGFloat = defaultSpacing) -> StackViewConfiguration {
        return StackViewConfiguration(axis: .vertical, distribution: .fillEqually, alignment: alignment, spacing: spacing)
    }
    static public func fillProportionatelyVertical(alignment: UIStackView.Alignment = .fill, spacing: CGFloat = defaultSpacing) -> StackViewConfiguration {
        return StackViewConfiguration(axis: .vertical, distribution: .fillProportionally, alignment: alignment, spacing: spacing)
    }
    static public func equalSpacingVertical(alignment: UIStackView.Alignment = .leading, spacing: CGFloat = defaultSpacing) -> StackViewConfiguration {
        return StackViewConfiguration(axis: .vertical, distribution: .equalSpacing, alignment: alignment, spacing: spacing)
    }
}

@available(iOS 9.0, *)
extension UIStackView {

    public convenience init(frame: CGRect = .zero, stackViewConfiguration config: StackViewConfiguration, arrangedSubviews: [UIView] = []) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.frame = frame
        apply(stackViewConfiguration: config)
    }

    public func apply(stackViewConfiguration config: StackViewConfiguration) {
        alignment = config.alignment
        spacing = config.spacing
        distribution = config.distribution
        axis = config.axis
    }
}
