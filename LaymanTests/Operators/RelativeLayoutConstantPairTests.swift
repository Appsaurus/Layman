//
//  RelativeLayoutConstantPairTests.swift
//  Layman
//
//  Created by Brian Strobach on 3/6/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
@testable import Layman

class RelativeLayoutConstantPairTests: LaymanTestCase {

    // MARK: - HorizontalEdges == Inset/Outset
    func testView1HorizontalEdgesEqualToConstantInset() {
        let constraints = view1.horizontalEdgeAnchors .= .inset(100, 200)
        constraints.first.assert(view1, .leading, .equal, parentView, .leading, constant: 100)
        constraints.second.assert(view1, .trailing, .equal, parentView, .trailing, constant: -200)
    }

    func testView1HorizontalEdgesEqualToConstantOutset() {
        let constraints = view1.horizontalEdgeAnchors .= .outset(100, 200)
        constraints.first.assert(view1, .leading, .equal, parentView, .leading, constant: -100)
        constraints.second.assert(view1, .trailing, .equal, parentView, .trailing, constant: 200)
    }

    // MARK: - VerticalEdges == Inset/Outset
    func testView1VerticalEdgesEqualToConstantInset() {
        let constraints = view1.verticalEdgeAnchors .= .inset(100, 200)
        constraints.first.assert(view1, .top, .equal, parentView, .top, constant: 100)
        constraints.second.assert(view1, .bottom, .equal, parentView, .bottom, constant: -200)
    }

    func testView1VerticalEdgesEqualToConstantOutset() {
        let constraints = view1.verticalEdgeAnchors .= .outset(100, 200)
        constraints.first.assert(view1, .top, .equal, parentView, .top, constant: -100)
        constraints.second.assert(view1, .bottom, .equal, parentView, .bottom, constant: 200)
    }

    // MARK: - CenterXY == Inset/Outset
    func testView1CenterXYEqualToConstantInset() {
        let constraints = view1.centerXY .= .inset(100, 200)
        constraints.first.assert(view1, .centerX, .equal, parentView, .centerX, constant: 100)
        constraints.second.assert(view1, .centerY, .equal, parentView, .centerY, constant: 200)
    }

    func testView1CenterXYEqualToConstantOutset() {
        let constraints = view1.centerXY .= .outset(100, 200)
        constraints.first.assert(view1, .centerX, .equal, parentView, .centerX, constant: 100)
        constraints.second.assert(view1, .centerY, .equal, parentView, .centerY, constant: 200)
    }

    // MARK: - TopTrailing == Inset/Outset
    func testView1TopTrailingEqualToConstantInset() {
        let constraints = view1.topTrailingAnchors .= .inset(100, 200)
        constraints.first.assert(view1, .trailing, .equal, parentView, .trailing, constant: -100)
        constraints.second.assert(view1, .top, .equal, parentView, .top, constant: 200)
    }

    func testView1TopTrailingEqualToConstantOutset() {
        let constraints = view1.topTrailingAnchors .= .outset(100, 200)
        constraints.first.assert(view1, .trailing, .equal, parentView, .trailing, constant: 100)
        constraints.second.assert(view1, .top, .equal, parentView, .top, constant: -200)
    }

    // MARK: - ArrayHorizontalEdges == Inset/Outset
    func testViewArrayHorizontalEdgesEqualToConstantInset() {
        let constraints = viewArray.horizontalEdgeAnchors .= .inset(100, 200)
        constraints.first.assert(viewArray, .leading, .equal, parentView, .leading, constant: 100)
        constraints.second.assert(viewArray, .trailing, .equal, parentView, .trailing, constant: -200)
    }

    func testViewArrayHorizontalEdgesEqualToConstantOutset() {
        let constraints = viewArray.horizontalEdgeAnchors .= .outset(100, 200)
        constraints.first.assert(viewArray, .leading, .equal, parentView, .leading, constant: -100)
        constraints.second.assert(viewArray, .trailing, .equal, parentView, .trailing, constant: 200)
    }

    // MARK: - ArrayVerticalEdges == Inset/Outset
    func testViewArrayVerticalEdgesEqualToConstantInset() {
        let constraints = viewArray.verticalEdgeAnchors .= .inset(100, 200)
        constraints.first.assert(viewArray, .top, .equal, parentView, .top, constant: 100)
        constraints.second.assert(viewArray, .bottom, .equal, parentView, .bottom, constant: -200)
    }

    func testViewArrayVerticalEdgesEqualToConstantOutset() {
        let constraints = viewArray.verticalEdgeAnchors .= .outset(100, 200)
        constraints.first.assert(viewArray, .top, .equal, parentView, .top, constant: -100)
        constraints.second.assert(viewArray, .bottom, .equal, parentView, .bottom, constant: 200)
    }

    // MARK: - ArrayCenterXY == Inset/Outset
    func testViewArrayCenterXYEqualToConstantInset() {
        let constraints = viewArray.centerXY .= .inset(100, 200)
        constraints.first.assert(viewArray, .centerX, .equal, parentView, .centerX, constant: 100)
        constraints.second.assert(viewArray, .centerY, .equal, parentView, .centerY, constant: 200)
    }

    func testViewArrayCenterXYEqualToConstantOutset() {
        let constraints = viewArray.centerXY .= .outset(100, 200)
        constraints.first.assert(viewArray, .centerX, .equal, parentView, .centerX, constant: 100)
        constraints.second.assert(viewArray, .centerY, .equal, parentView, .centerY, constant: 200)
    }

    // MARK: - TopTrailing == Inset/Outset
    func testViewArrayTopTrailingEqualToConstantInset() {
        let constraints = viewArray.topTrailingAnchors .= .inset(100, 200)
        constraints.first.assert(viewArray, .trailing, .equal, parentView, .trailing, constant: -100)
        constraints.second.assert(viewArray, .top, .equal, parentView, .top, constant: 200)
    }

    func testViewArrayTopTrailingEqualToConstantOutset() {
        let constraints = viewArray.topTrailingAnchors .= .outset(100, 200)
        constraints.first.assert(viewArray, .trailing, .equal, parentView, .trailing, constant: 100)
        constraints.second.assert(viewArray, .top, .equal, parentView, .top, constant: -200)
    }
}

