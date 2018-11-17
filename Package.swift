import PackageDescription

let package = Package(
    name: "Gdk",
    dependencies: [
        .Package(url: "https://github.com/rpinz/CGdk", majorVersion: 1),
        .Package(url: "https://github.com/rpinz/SwiftGdkPixbuf", majorVersion: 2),
        .Package(url: "https://github.com/rpinz/SwiftPangoCairo", majorVersion: 2)
    ],
    swiftLanguageVersions: [3, 4]
)
