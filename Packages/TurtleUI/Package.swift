// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TurtleUI",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "TurtleUI", targets: ["TurtleUI"]),
    ],
    targets: [
        .target(name: "TurtleUI"),
    ]
)
