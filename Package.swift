// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "UXUI",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "UXUI",
            targets: ["UXUI"])
    ],
    dependencies: [
        .package(url: "https://github.com/eonist/With.git", .branch("master")),
        .package(url: "https://github.com/eonist/Spatial.git", .branch("master")),
        .package(url: "https://github.com/passguardapp/DarkMode.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "UXUI",
            dependencies: ["With", "Spatial", "DarkMode"]),
        .testTarget(
            name: "UXUITests",
            dependencies: ["UXUI", "With", "Spatial", "DarkMode"])
    ]
)
