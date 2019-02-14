//
//  ConstraintAttribute+Categories.swift
//  Layman
//
//  Created by Brian Strobach on 2/6/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension ConstraintAttribute {

    public enum Category {
        case leading
        case trailing
        case xAxis
        case leadingXAxis
        case centerXAxis
        case trailingXAxis
        case yAxis
        case leadingYAxis
        case centerYAxis
        case trailingYAxis

        public static var leadingTypes: Set<ConstraintAttribute> = leadingXAxisTypes.union(leadingYAxisTypes)

        public static var trailingTypes: Set<ConstraintAttribute> = trailingXAxisTypes.union(trailingYAxisTypes)

        // MARK: XAxis
        public static var xAxisTypes: Set<ConstraintAttribute> = trailingXAxisTypes.union(centerXAxisTypes).union(leadingXAxisTypes)

        public static var leadingXAxisTypes: Set<ConstraintAttribute> = [.left, .leading, .leftMargin, .leadingMargin]

        public static var centerXAxisTypes: Set<ConstraintAttribute> = [.centerX, .centerXWithinMargins]

        public static var trailingXAxisTypes: Set<ConstraintAttribute> = [.right, .trailing, .rightMargin, .trailingMargin]

        // MARK: YAxis
        public static var yAxisTypes: Set<ConstraintAttribute> = trailingYAxisTypes.union(centerYAxisTypes).union(leadingYAxisTypes)

        public static var leadingYAxisTypes: Set<ConstraintAttribute> = [.top, .topMargin]

        public static var centerYAxisTypes: Set<ConstraintAttribute> = [.centerY, .centerYWithinMargins]

        public static var trailingYAxisTypes: Set<ConstraintAttribute> = [.bottom, .bottomMargin]

    }

    public func isCategory(_ category: Category) -> Bool {
        switch category {
        case .leading:
            return Category.leadingTypes.contains(self)
        case .trailing:
            return Category.trailingTypes.contains(self)
        case .xAxis:
            return Category.xAxisTypes.contains(self)
        case .leadingXAxis:
            return Category.leadingXAxisTypes.contains(self)
        case .centerXAxis:
            return Category.centerXAxisTypes.contains(self)
        case .trailingXAxis:
            return Category.trailingXAxisTypes.contains(self)
        case .yAxis:
            return Category.yAxisTypes.contains(self)
        case .leadingYAxis:
            return Category.leadingYAxisTypes.contains(self)
        case .centerYAxis:
            return Category.centerYAxisTypes.contains(self)
        case .trailingYAxis:
            return Category.trailingYAxisTypes.contains(self)
        }
    }
}
