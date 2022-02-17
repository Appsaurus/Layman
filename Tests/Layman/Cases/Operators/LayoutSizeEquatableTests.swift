//
//  LayoutSizeEquatableTests.swift
//  Layman
//
//  Created by Brian Strobach on 3/6/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@testable import Layman
import XCTest

class LayoutSizeEquatableTests: LaymanTestCase {

    func testView1SizeEqualToLayoutSize() {
        let constraints = view1.size .= LayoutSize(width: 100, height: 200)
        constraints.first.assert(view1, .width, .equal, constant: 100)
        constraints.second.assert(view1, .height, .equal, constant: 200)
    }

    func testView1SizeEqualToSizeTuple() {
        let constraints = view1.size .= (100, 200)
        constraints.first.assert(view1, .width, .equal, constant: 100)
        constraints.second.assert(view1, .height, .equal, constant: 200)
    }

    func testView1SizeEqualToSizeCoefficientsTuple() {
        let constraints = view1.size .= (100 ~ .low, 200 ~ .high)
        constraints.first.assert(view1, .width, .equal, constant: 100, priority: .low)
        constraints.second.assert(view1, .height, .equal, constant: 200, priority: .high)
    }

    func testInferredView1SizeEqualToLayoutSize() {
        let constraints = view1 .= LayoutSize(width: 100, height: 200)
        constraints.first.assert(view1, .width, .equal, constant: 100)
        constraints.second.assert(view1, .height, .equal, constant: 200)
    }

    func testInferredView1SizeEqualToSizeTuple() {
        let constraints = view1 .= (100, 200)
        constraints.first.assert(view1, .width, .equal, constant: 100)
        constraints.second.assert(view1, .height, .equal, constant: 200)
    }
}
