//
//  View+ContentSizeAnchors.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 2/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public enum ContentSizeAnchor {
    case contentSizeAnchor(View)
    case contentHeightAnchor(View)
    case contentWidthAnchor(View)
}

extension View {
    public var contentSizeAnchor: ContentSizeAnchor {
        return .contentSizeAnchor(self)
    }
    public var contentHeightAnchor: ContentSizeAnchor {
        return .contentHeightAnchor(self)
    }
    public var contentWidthAnchor: ContentSizeAnchor {
        return .contentWidthAnchor(self)
    }
}

extension Collection where Element: View {
    public var contentSizeAnchor: [ContentSizeAnchor] {
        return map { $0.contentSizeAnchor }
    }
    public var contentHeightAnchor: [ContentSizeAnchor] {
        return map { $0.contentHeightAnchor }
    }
    public var contentWidthAnchor: [ContentSizeAnchor] {
        return map { $0.contentWidthAnchor }
    }
}

public final class ContentSizeConfiguration {
    public var contentSizeAnchor: ContentSizeAnchor
    public var priority: LayoutPriority
//    public var inset: LayoutInset

    public init(_ contentSizeAnchor: ContentSizeAnchor, _ priority: LayoutPriority = .required) {
        self.contentSizeAnchor = contentSizeAnchor
        self.priority = priority
    }
}
