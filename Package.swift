// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPTabBarController",
    platforms: [.iOS(.v11)],
    products: [
        .library(name: "SPTabBarController",targets: ["SPTabBarController"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "SPTabBarController",dependencies: []),
        .testTarget(name: "SPTabBarControllerTests",dependencies: ["SPTabBarController"]),
    ]
)
