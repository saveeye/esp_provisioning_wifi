// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "saveeye_provisioning",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "saveeye-provisioning", targets: ["saveeye_provisioning"])
    ],
    dependencies: [
        .package(url: "https://github.com/espressif/esp-idf-provisioning-ios.git", from: "3.0.3")
    ],
    targets: [
        .target(
            name: "saveeye_provisioning",
            dependencies: [
                .product(name: "ESPProvision", package: "esp-idf-provisioning-ios")
            ]
        )
    ]
)
