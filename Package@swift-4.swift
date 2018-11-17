// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Gdk",
    products: [
        .library(
            name: "Gdk",
            targets: ["Gdk"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/rpinz/CGdk",
            .branch("master")),
        .package(
            url: "https://github.com/rpinz/SwiftGdkPixbuf",
            .branch("master")),
        .package(
            url: "https://github.com/rpinz/SwiftPangoCairo",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "Gdk",
            dependencies: ["GdkPixbuf", "PangoCairo"],
            path: "Sources"),
        .testTarget(
            name: "GdkTests",
            dependencies: ["Gdk"])
    ],
    swiftLanguageVersions: [4]
)
