// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "package2",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "package2",
            targets: ["package2"]),
    ],
    dependencies: [
      .package(url: "https://github.com/ReactiveCocoa/ReactiveSwift.git", from: "7.2.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "package2", dependencies: ["ReactiveSwift"]),
        .testTarget(
            name: "package2Tests",
            dependencies: ["package2"]
        ),
    ]
)