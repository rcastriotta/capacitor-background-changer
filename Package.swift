// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorBackgroundChanger",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorBackgroundChanger",
            targets: ["BackgroundChangerPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "BackgroundChangerPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/BackgroundChangerPlugin"),
        .testTarget(
            name: "BackgroundChangerPluginTests",
            dependencies: ["BackgroundChangerPlugin"],
            path: "ios/Tests/BackgroundChangerPluginTests")
    ]
)