// swift-tools-version:5.6

/**
*  Splash plugin for Publish
*  Copyright (c) John Sundell 2019
*  MIT license, see LICENSE file for details
*/

import PackageDescription

let package = Package(
    name: "SplashPublishPluginVE",
    platforms: [.macOS(.v12)],
    products: [
        .library(
            name: "SplashPublishPluginVE",
            targets: ["SplashPublishPluginVE"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/robomex/PublishVE.git", from: "0.9.2"),
        .package(url: "https://github.com/johnsundell/Splash.git", from: "0.16.0")
    ],
    targets: [
        .target(
            name: "SplashPublishPluginVE",
            dependencies: ["Splash", "PublishVE"]
        ),
        .testTarget(
            name: "SplashPublishPluginTests",
            dependencies: ["SplashPublishPluginVE"]
        ),
    ]
)
