// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ImageMorphing",
    platforms: [.iOS(.v15), .macOS(.v12), .tvOS(.v15)],
    products: [
        .library(
            name: "ImageMorphing",
            targets: ["ImageMorphing"]),
    ],
    targets: [
        .target(
            name: "ImageMorphing",
            dependencies: [])
    ]
)
