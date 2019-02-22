//
//  View+ContentSizeAnchors.swift
//  Layman
//
//  Created by Brian Strobach on 2/7/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public enum ContentSizeAnchor {
    case contentSizePriority(View)
    case verticalContentSizePriority(View)
    case horizontalContentSizePriority(View)

    case contentHuggingPriority(View)
    case verticalContentHuggingPriority(View)
    case horizontalContentHuggingPriority(View)

    case compressionResistancePriority(View)
    case verticalCompressionResistancePriority(View)
    case horizontalCompressionResistancePriority(View)

    @discardableResult
    public func priority(_ priority: LayoutPriority) -> View {
        switch self {
        case .contentSizePriority(let view):
            return view.enforceContentSize(priority)            
        case .verticalContentSizePriority(let view):
            return view.enforceContentSize(priority, forAxes: [.vertical])            
        case .horizontalContentSizePriority(let view):
            return view.enforceContentSize(priority, forAxes: [.horizontal])            
        case .contentHuggingPriority(let view):
             return view.hugContent(priority)            
        case .verticalContentHuggingPriority(let view):
            return view.hugContent(priority, forAxes: [.vertical])            
        case .horizontalContentHuggingPriority(let view):
            return view.hugContent(priority, forAxes: [.horizontal])            
        case .compressionResistancePriority(let view):
            return view.resistCompression(priority)            
        case .verticalCompressionResistancePriority(let view):
            return view.resistCompression(priority, forAxes: [.vertical])            
        case .horizontalCompressionResistancePriority(let view):
            return view.resistCompression(priority, forAxes: [.horizontal])            
        }
    }
}

extension View {
    public var contentSizePriority: ContentSizeAnchor {
        return .contentSizePriority(self)
    }
    public var verticalContentSizePriority: ContentSizeAnchor {
        return .verticalContentSizePriority(self)
    }
    public var horizontalContentSizePriority: ContentSizeAnchor {
        return .horizontalContentSizePriority(self)
    }
    public var contentHuggingPriority: ContentSizeAnchor {
        return .contentHuggingPriority(self)
    }
    public var verticalContentHuggingPriority: ContentSizeAnchor {
        return .verticalContentHuggingPriority(self)
    }
    public var horizontalContentHuggingPriority: ContentSizeAnchor {
        return .horizontalContentHuggingPriority(self)
    }
    public var compressionResistancePriority: ContentSizeAnchor {
        return .compressionResistancePriority(self)
    }
    public var verticalCompressionResistancePriority: ContentSizeAnchor {
        return .verticalCompressionResistancePriority(self)
    }
    public var horizontalCompressionResistancePriority: ContentSizeAnchor {
        return .horizontalCompressionResistancePriority(self)
    }
}

extension Collection where Element: View {
    public var contentSizePriority: [ContentSizeAnchor] {
        return map { $0.contentSizePriority }
    }
    public var verticalContentSizePriority: [ContentSizeAnchor] {
        return map { $0.verticalContentSizePriority }
    }
    public var horizontalContentSizePriority: [ContentSizeAnchor] {
        return map { $0.horizontalContentSizePriority }
    }
    public var contentHuggingPriority: [ContentSizeAnchor] {
        return map { $0.contentHuggingPriority }
    }
    public var verticalContentHuggingPriority: [ContentSizeAnchor] {
        return map { $0.verticalContentHuggingPriority }
    }
    public var horizontalContentHuggingPriority: [ContentSizeAnchor] {
        return map { $0.horizontalContentHuggingPriority }
    }
    public var compressionResistancePriority: [ContentSizeAnchor] {
        return map { $0.compressionResistancePriority }
    }
    public var verticalCompressionResistancePriority: [ContentSizeAnchor] {
        return map { $0.verticalCompressionResistancePriority }
    }
    public var horizontalCompressionResistancePriority: [ContentSizeAnchor] {
        return map { $0.horizontalCompressionResistancePriority }
    }
}
