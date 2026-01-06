// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMax",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaMax",
            targets: ["AdiscopeMediaMaxTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.4.0"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMax"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMax",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.1/AdiscopeMediaMax.zip",
            checksum: "4ddd00ee5840bbf27bd748c6da970b5e60a6f8a57e5f302ef6365e8f6825b488"
        ),
    ]
)
