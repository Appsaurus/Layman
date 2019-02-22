//
//  View+ContentSizePriorityAnchors.swift
//  Layman
//
//  Created by Brian Strobach on 2/7/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public enum ContentSizePriorityAnchor {
    case contentSizePriorityAnchor(View)
    case verticalContentSizePriorityAnchor(View)
    case horizontalContentSizePriorityAnchor(View)

    case contentHuggingAnchor(View)
    case verticalContentHuggingAnchor(View)
    case horizontalContentHuggingAnchor(View)

    case compressionResistanceAnchor(View)
    case verticalCompressionResistanceAnchor(View)
    case horizontalCompressionResistanceAnchor(View)

    func priority(_ priority: LayoutPriority) {
        switch self {

        case .contentSizePriorityAnchor(let view):
            view.enforceContentSize(priority)
        case .verticalContentSizePriorityAnchor(let view):
            view.enforceContentSize(priority, forAxes: [.vertical])
        case .horizontalContentSizePriorityAnchor(let view):
            view.enforceContentSize(priority, forAxes: [.horizontal])
        case .contentHuggingAnchor(let view):
             view.hugContent(priority)
        case .verticalContentHuggingAnchor(let view):
            view.hugContent(priority, forAxes: [.vertical])
        case .horizontalContentHuggingAnchor(let view):
            view.hugContent(priority, forAxes: [.horizontal])
        case .compressionResistanceAnchor(let view):
            view.resistCompression(priority)
        case .verticalCompressionResistanceAnchor(let view):
            view.resistCompression(priority, forAxes: [.vertical])
        case .horizontalCompressionResistanceAnchor(let view):
            view.resistCompression(priority, forAxes: [.horizontal])
        }
    }
}

extension View {
    public var contentSizePriorityAnchor: ContentSizePriorityAnchor {
        return .contentSizePriorityAnchor(self)
    }
    public var verticalContentSizePriorityAnchor: ContentSizePriorityAnchor {
        return .verticalContentSizePriorityAnchor(self)
    }
    public var horizontalContentSizePriorityAnchor: ContentSizePriorityAnchor {
        return .horizontalContentSizePriorityAnchor(self)
    }
    public var contentHuggingAnchor: ContentSizePriorityAnchor {
        return .contentHuggingAnchor(self)
    }
    public var verticalContentHuggingAnchor: ContentSizePriorityAnchor {
        return .verticalContentHuggingAnchor(self)
    }
    public var horizontalContentHuggingAnchor: ContentSizePriorityAnchor {
        return .horizontalContentHuggingAnchor(self)
    }
    public var compressionResistanceAnchor: ContentSizePriorityAnchor {
        return .compressionResistanceAnchor(self)
    }
    public var verticalCompressionResistanceAnchor: ContentSizePriorityAnchor {
        return .verticalCompressionResistanceAnchor(self)
    }
    public var horizontalCompressionResistanceAnchor: ContentSizePriorityAnchor {
        return .horizontalCompressionResistanceAnchor(self)
    }
}

extension Collection where Element: View {
    public var contentSizePriorityAnchor: [ContentSizePriorityAnchor] {
        return map { $0.contentSizePriorityAnchor }
    }
    public var verticalContentSizePriorityAnchor: [ContentSizePriorityAnchor] {
        return map { $0.verticalContentSizePriorityAnchor }
    }
    public var horizontalContentSizePriorityAnchor: [ContentSizePriorityAnchor] {
        return map { $0.horizontalContentSizePriorityAnchor }
    }
    public var contentHuggingAnchor: [ContentSizePriorityAnchor] {
        return map { $0.contentHuggingAnchor }
    }
    public var verticalContentHuggingAnchor: [ContentSizePriorityAnchor] {
        return map { $0.verticalContentHuggingAnchor }
    }
    public var horizontalContentHuggingAnchor: [ContentSizePriorityAnchor] {
        return map { $0.horizontalContentHuggingAnchor }
    }
    public var compressionResistanceAnchor: [ContentSizePriorityAnchor] {
        return map { $0.compressionResistanceAnchor }
    }
    public var verticalCompressionResistanceAnchor: [ContentSizePriorityAnchor] {
        return map { $0.verticalCompressionResistanceAnchor }
    }
    public var horizontalCompressionResistanceAnchor: [ContentSizePriorityAnchor] {
        return map { $0.horizontalCompressionResistanceAnchor }
    }
}
