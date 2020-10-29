// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "UXUI",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "UXUI",
            targets: ["UXUI"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/eonist/With.git", .branch("master")),
        .package(url: "https://github.com/eonist/Spatial.git", .branch("master")),
        .package(url: "https://github.com/passguardapp/DarkMode.git", .branch("master"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "UXUI",
            dependencies: ["With", "Spatial", "DarkMode"]),
        .testTarget(
            name: "UXUITests",
            dependencies: ["UXUI", "With", "Spatial", "DarkMode"])
    ]
)
