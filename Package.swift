// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Layman",
    platforms: [
        .iOS(.v12),
        .macOS(.v12),
        .tvOS(.v15),
        .watchOS(.v8),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Layman",
            targets: [
                "Layman",
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Appsaurus/SwiftTestUtils", from: "0.1.7"),
        .package(url: "https://github.com/mattgallagher/CwlPreconditionTesting", from: "2.1.0"),
        .package(url: "https://github.com/mattgallagher/CwlCatchException", from: "2.1.1"),
        .package(url: "https://github.com/krzysztofzablocki/Sourcery.git", from: "2.2.6")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Layman",
            dependencies: [
            ],
            path: "Sources/Layman/",
            resources: [
                .process("Resources"),
            ]
        ),
        .testTarget(
            name: "LaymanTests",
            dependencies: [
                "Layman",
                "SwiftTestUtils",
                "CwlPreconditionTesting",
                "CwlCatchException"
                
            ],
            path: "Tests/Layman/",
            exclude: [
                "Resources/README.md",
                "Toolbox/README.md",
            ],
            resources: [
                .process("Resources"),
            ]
        ),
    ]
)
