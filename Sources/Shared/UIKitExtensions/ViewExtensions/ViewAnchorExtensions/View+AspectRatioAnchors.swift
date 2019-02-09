//
//  View+AspectRatioAnchors.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/17/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public enum AspectRatioAnchor {
    case standard(View)
    case inverse(View)
}

extension View {
    public var aspectRatioAnchor: AspectRatioAnchor {
        return .standard(self)
    }

    public var aspectRatioInverseAnchor: AspectRatioAnchor {
        return .inverse(self)
    }
}

extension Collection where Element: View {
    public var aspectRatioAnchor: [AspectRatioAnchor] {
        return map {.standard($0)}
    }

    public var aspectRatioInverseAnchor: [AspectRatioAnchor] {
        return map {.inverse($0)}
    }
}
