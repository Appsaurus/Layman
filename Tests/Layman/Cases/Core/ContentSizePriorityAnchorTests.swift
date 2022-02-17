//
//  ContentSizeAnchorTests.swift
//  Layman
//
//  Created by Brian Strobach on 2/7/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@testable import Layman
import XCTest

class ContentSizeAnchorTests: LaymanTestCase {

    func testContentSizePriority() {
        view1.contentSizePriority ~ .low
        XCTAssertEqual(view1.contentHuggingPriority(for: .vertical), .low)
        XCTAssertEqual(view1.contentCompressionResistancePriority(for: .vertical), .low)
        XCTAssertEqual(view1.contentHuggingPriority(for: .horizontal), .low)
        XCTAssertEqual(view1.contentCompressionResistancePriority(for: .horizontal), .low)
    }
    func testVerticalContentSizePriority() {
        view1.verticalContentSizePriority ~ .low
        XCTAssertEqual(view1.contentHuggingPriority(for: .vertical), .low)
        XCTAssertEqual(view1.contentCompressionResistancePriority(for: .vertical), .low)
    }
    func testHorizontalContentSizePriority() {
        view1.horizontalContentSizePriority ~ .low
        XCTAssertEqual(view1.contentHuggingPriority(for: .horizontal), .low)
        XCTAssertEqual(view1.contentCompressionResistancePriority(for: .horizontal), .low)
    }
    func testContentHuggingPriority() {
        view1.contentHuggingPriority ~ .low
        XCTAssertEqual(view1.contentHuggingPriority(for: .horizontal), .low)
        XCTAssertEqual(view1.contentHuggingPriority(for: .vertical), .low)
    }
    func testVerticalContentHuggingPriority() {
        view1.verticalContentHuggingPriority ~ .low
        XCTAssertEqual(view1.contentHuggingPriority(for: .vertical), .low)
    }
    func testHorizontalContentHuggingPriority() {
        view1.horizontalContentHuggingPriority ~ .low
        XCTAssertEqual(view1.contentHuggingPriority(for: .horizontal), .low)
    }
    func testCompressionResistancePriority() {
        view1.compressionResistancePriority ~ .low
        XCTAssertEqual(view1.contentCompressionResistancePriority(for: .vertical), .low)
        XCTAssertEqual(view1.contentCompressionResistancePriority(for: .horizontal), .low)
    }
    func testVerticalCompressionResistancePriority() {
        view1.verticalCompressionResistancePriority ~ .low
        XCTAssertEqual(view1.contentCompressionResistancePriority(for: .vertical), .low)
    }
    func testHorizontalCompressionResistancePriority() {
        view1.horizontalCompressionResistancePriority ~ .low
        XCTAssertEqual(view1.contentCompressionResistancePriority(for: .horizontal), .low)
    }

}
