// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TurtleModules",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "TurtleModules", targets: ["TurtleModules"]),
    ],
    dependencies: [
        .package(path: "../TurtleUI")
    ],
    targets: [
        .target(
            name: "TurtleModules",
            dependencies: [
                .product(name: "TurtleUI", package: "TurtleUI")
            ]
        ),
    ]
)
