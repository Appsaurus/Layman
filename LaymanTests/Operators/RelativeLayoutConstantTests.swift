//
//  RelativeLayoutConstantTests.swift
//  Layman
//
//  Created by Brian Strobach on 3/5/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@testable import Layman
import XCTest

class RelativeLayoutConstantTests: LaymanTestCase {

    // MARK: - XAxis == Inset/Outset
    func testView1LeadingEqualToConstantInset() {
        let constraints = view1.leadingAnchor .= .inset(200)
        constraints.assert(view1, .leading, .equal, parentView, .leading, constant: 200)
    }

    func testView1LeadingEqualToConstantOutset() {
        let constraints = view1.leadingAnchor .= .outset(200)
        constraints.assert(view1, .leading, .equal, parentView, .leading, constant: -200)
    }

    func testView1TrailingEqualToConstantInset() {
        let constraints = view1.trailingAnchor .= .inset(200)
        constraints.assert(view1, .trailing, .equal, parentView, .trailing, constant: -200)
    }

    func testView1TrailingEqualToConstantOutset() {
        let constraints = view1.trailingAnchor .= .outset(200)
        constraints.assert(view1, .trailing, .equal, parentView, .trailing, constant: 200)
    }

    // MARK: - YAxis == Inset/Outset

    func testView1TopEqualToConstantInset() {
        let constraints = view1.topAnchor .= .inset(200)
        constraints.assert(view1, .top, .equal, parentView, .top, constant: 200)
    }

    func testView1TopEqualToConstantOutset() {
        let constraints = view1.topAnchor .= .outset(200)
        constraints.assert(view1, .top, .equal, parentView, .top, constant: -200)
    }

    func testView1BottomEqualToConstantInset() {
        let constraints = view1.bottomAnchor .= .inset(200)
        constraints.assert(view1, .bottom, .equal, parentView, .bottom, constant: -200)
    }

    func testView1BottomEqualToConstantOutset() {
        let constraints = view1.bottomAnchor .= .outset(200)
        constraints.assert(view1, .bottom, .equal, parentView, .bottom, constant: 200)
    }

    // MARK: - XAxisArray == Inset/Outset
    func testViewArrayLeadingEqualToConstantInset() {
        let constraints = view1.leadingAnchor .= .inset(200)
        constraints.assert(view1, .leading, .equal, parentView, .leading, constant: 200)
    }

    func testViewArrayLeadingEqualToConstantOutset() {
        let constraints = view1.leadingAnchor .= .outset(200)
        constraints.assert(view1, .leading, .equal, parentView, .leading, constant: -200)
    }

    func testViewArrayTrailingEqualToConstantInset() {
        let constraints = view1.trailingAnchor .= .inset(200)
        constraints.assert(view1, .trailing, .equal, parentView, .trailing, constant: -200)
    }

    func testViewArrayTrailingEqualToConstantOutset() {
        let constraints = view1.trailingAnchor .= .outset(200)
        constraints.assert(view1, .trailing, .equal, parentView, .trailing, constant: 200)
    }

    // MARK: - YAxisArray == Inset/Outset
    func testViewArrayTopEqualToConstantInset() {
        let constraints = viewArray.topAnchor .= .inset(200)
        constraints.assert(viewArray, .top, .equal, parentView, .top, constant: 200)
    }

    func testViewArrayTopEqualToConstantOutset() {
        let constraints = viewArray.topAnchor .= .outset(200)
        constraints.assert(viewArray, .top, .equal, parentView, .top, constant: -200)
    }

    func testViewArrayBottomEqualToConstantInset() {
        let constraints = viewArray.bottomAnchor .= .inset(200)
        constraints.assert(viewArray, .bottom, .equal, parentView, .bottom, constant: -200)
    }

    func testViewArrayBottomEqualToConstantOutset() {
        let constraints = viewArray.bottomAnchor .= .outset(200)
        constraints.assert(viewArray, .bottom, .equal, parentView, .bottom, constant: 200)
    }
}
