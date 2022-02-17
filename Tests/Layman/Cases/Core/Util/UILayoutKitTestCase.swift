//
//  SharedTestUtils.swift
//  Layman
//
//  Created by Brian Strobach on 1/16/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

#if canImport(AppKit)
import AppKit
#else
import UIKit
#endif

@testable import Layman
import XCTest
import SwiftTestUtils

class LaymanTestCase: XCTestCase {

//    lazy var benchmarker: BenchmarkGroup = BenchmarkGroup()

    let parentView = View()
    let view1 = View()
    let view2 = View()

    let relatedView = View()
    let relatedView2 = View()

    var viewArray: [UIView] {
        return [view1, view2]
    }

    var relatedViewArray: [UIView] {
        return [relatedView, relatedView2]
    }
    let window = Window()

    override func setUp() {
        super.setUp()
        UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
        #if canImport(AppKit)
        window.contentView!.addSubview(parentView)
        #else
        window.addSubview(parentView)
        #endif
        [view1, view2, relatedView, relatedView2].forEach { (view) in
            parentView.addSubview(view)
        }

        parentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

    }

//    override func tearDown() {
//        super.tearDown()
//        guard benchmarker.benchmarks.count > 0 else { return }
//        print(benchmarker.formattedTimeReport)
//    }

//    @discardableResult
//    public func benchmark(_ key: String = #function, block: () -> Void) -> Benchmark {
//        return benchmarker.measure(key, block: block)
//    }

    internal func invertRelationIfNeeded(_ attribute: ConstraintAttribute,
                                         _ relation: Constraint.Relation) -> Constraint.Relation {
        guard attribute.isCategory(.trailing) else { return relation }
        return relation.inverted
    }

    internal func invertConstantIfNeeded(_ attribute: ConstraintAttribute,
                                         _ constant: LayoutConstant) -> LayoutConstant {
        guard attribute.isCategory(.trailing) else { return constant }
        return -constant
    }
}
