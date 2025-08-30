// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "WallpaperSetter",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "WallpaperSetter",
            targets: ["WallpaperSetterPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "WallpaperSetterPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/WallpaperSetterPlugin"),
        .testTarget(
            name: "WallpaperSetterPluginTests",
            dependencies: ["WallpaperSetterPlugin"],
            path: "ios/Tests/WallpaperSetterPluginTests")
    ]
)