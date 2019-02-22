//
//  StackViewTests.swift
//  Layman
//
//  Created by Brian Strobach on 2/20/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@testable import Layman
import XCTest
import CwlPreconditionTesting

class StackViewTests: LaymanTestCase {

    let view3 = View()
    let view4 = View()
    let view5 = View()
    let view6 = View()
    let view7 = View()
    let view8 = View()
    let view9 = View()
    let stackView = StackView()

    override func setUp() {
        super.setUp()
        parentView.addSubview(stackView)
    }
    func testBasicStackView() {
        stackView.stack(view1, 10, view2, 50, view3, 100, view4)
        [view1, view2, view3, view4].forEach { XCTAssertTrue(stackView.arrangedSubviews.contains($0)) }
        if #available(iOS 11.0, *) {
            XCTAssert(stackView.customSpacing(after: view1) == 10)
            XCTAssert(stackView.customSpacing(after: view2) == 50)
            XCTAssert(stackView.customSpacing(after: view3) == 100)
        }
    }

    func testNestedStackView() {
        stackView
            .on(.vertical)
            .stack(
                view1,
                5,
                [view2, 10, view3],
                15,
                [view4, 20, view5, 25, view6],
                30,
                view7,
                view8,
                view9
        )
        [view1, view7, view8, view9].forEach { XCTAssertTrue(stackView.arrangedSubviews.contains($0)) }
        guard let firstNestedStack = stackView.arrangedSubviews.first(where: { (view) -> Bool in
            guard let stackView = view as? StackView else { return false }
            return stackView.arrangedSubviews == [view2, view3] && stackView.axis == .horizontal
        }) as? StackView else {
            XCTFail("Nested stackview missing")
            return
        }
        if #available(iOS 11.0, *) {
            XCTAssert(stackView.customSpacing(after: view1) == 5)
            XCTAssert(firstNestedStack.customSpacing(after: view2) == 10)
            XCTAssert(stackView.customSpacing(after: firstNestedStack) == 15)
        }

        guard let secondNestedStack = stackView.arrangedSubviews.first(where: { (view) -> Bool in
            guard let stackView = view as? StackView else { return false }
            return stackView.arrangedSubviews == [view4, view5, view6] && stackView.axis == .horizontal
        }) as? StackView else {
            XCTFail("Nested stackview missing")
            return
        }

        if #available(iOS 11.0, *) {
            XCTAssert(stackView.customSpacing(after: secondNestedStack) == 30)
            XCTAssert(secondNestedStack.customSpacing(after: view4) == 20)
            XCTAssert(secondNestedStack.customSpacing(after: view5) == 25)
        }
    }
}
