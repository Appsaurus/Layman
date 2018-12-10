// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "UILayoutKit",
	products: [
		.library(name: "UILayoutKit", targets: ["UILayoutKit"])
	],
	dependencies: [],
	targets: [
	.target(name: "UILayoutKit", dependencies: [], path: "Sources/Shared"),
		.testTarget(name: "UILayoutKitTests", dependencies: ["UILayoutKit"], path: "UILayoutKitTests/Shared")
	]
)
