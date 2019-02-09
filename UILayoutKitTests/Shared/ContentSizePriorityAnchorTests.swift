//
//  ContentSizePriorityAnchorTests.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 2/7/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@testable import UILayoutKit
import XCTest

class ContentSizePriorityAnchorTests: UILayoutKitTestCase {

    func testContentSizePriorityAnchor() {
        view1.contentSizePriorityAnchor ~ .low
        XCTAssertEqual(view1.contentHuggingPriority(for: .vertical), .low)
        XCTAssertEqual(view1.contentCompressionResistancePriority(for: .vertical), .low)
        XCTAssertEqual(view1.contentHuggingPriority(for: .horizontal), .low)
        XCTAssertEqual(view1.contentCompressionResistancePriority(for: .horizontal), .low)
    }
    func testVerticalContentSizePriorityAnchor() {
        view1.verticalContentSizePriorityAnchor ~ .low
        XCTAssertEqual(view1.contentHuggingPriority(for: .vertical), .low)
        XCTAssertEqual(view1.contentCompressionResistancePriority(for: .vertical), .low)
    }
    func testHorizontalContentSizePriorityAnchor() {
        view1.horizontalContentSizePriorityAnchor ~ .low
        XCTAssertEqual(view1.contentHuggingPriority(for: .horizontal), .low)
        XCTAssertEqual(view1.contentCompressionResistancePriority(for: .horizontal), .low)
    }
    func testContentHuggingAnchor() {
        view1.contentHuggingAnchor ~ .low
        XCTAssertEqual(view1.contentHuggingPriority(for: .horizontal), .low)
        XCTAssertEqual(view1.contentHuggingPriority(for: .vertical), .low)
    }
    func testVerticalContentHuggingAnchor() {
        view1.verticalContentHuggingAnchor ~ .low
        XCTAssertEqual(view1.contentHuggingPriority(for: .vertical), .low)
    }
    func testHorizontalContentHuggingAnchor() {
        view1.horizontalContentHuggingAnchor ~ .low
        XCTAssertEqual(view1.contentHuggingPriority(for: .horizontal), .low)
    }
    func testCompressionResistanceAnchor() {
        view1.compressionResistanceAnchor ~ .low
        XCTAssertEqual(view1.contentCompressionResistancePriority(for: .vertical), .low)
        XCTAssertEqual(view1.contentCompressionResistancePriority(for: .horizontal), .low)
    }
    func testVerticalCompressionResistanceAnchor() {
        view1.verticalCompressionResistanceAnchor ~ .low
        XCTAssertEqual(view1.contentCompressionResistancePriority(for: .vertical), .low)
    }
    func testHorizontalCompressionResistanceAnchor() {
        view1.horizontalCompressionResistanceAnchor ~ .low
        XCTAssertEqual(view1.contentCompressionResistancePriority(for: .horizontal), .low)
    }

}
