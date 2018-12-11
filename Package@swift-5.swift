// swift-tools-version:5.0

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
            url: "https://github.com/rpinz/SwiftGdkPixbuf",
            .branch("master")),
        .package(
            url: "https://github.com/rpinz/SwiftPangoCairo",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "Gdk",
            dependencies: ["CGdk","GdkPixbuf", "PangoCairo"],
            path: "Sources"),
        .testTarget(
            name: "GdkTests",
            dependencies: ["Gdk"]),
        .systemLibrary(
            name: "CGdk",
            path: "Library/CGdk",
            pkgConfig: "gdk-3.0",
            providers: [
                .brew(["libgtk-3"]),
                .apt(["libgtk-3-dev"])
            ])
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
