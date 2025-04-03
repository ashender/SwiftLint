// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftLint",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftLint",
            targets: ["SwiftLint"]),
    ],
    dependencies: [
      .package(url: "https://github.com/ReactiveCocoa/ReactiveSwift.git", from: "6.7.0"),
      .package(url: "https://github.com/braze-inc/braze-swift-sdk", exact: "11.9.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftLint",
            dependencies: ["ReactiveSwift"]),
        .testTarget(
            name: "SwiftLintTests",
            dependencies: ["SwiftLint"]
        ),
    ]
)
