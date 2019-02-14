// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "Layman",
	products: [
		.library(name: "Layman", targets: ["Layman"])
	],
	dependencies: [],
	targets: [
	.target(name: "Layman", dependencies: [], path: "Sources/Shared"),
		.testTarget(name: "LaymanTests", dependencies: ["Layman"], path: "LaymanTests/Shared")
	]
)
