// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "HSDataModels",
    products: [
        .library(
            name: "HSDataModels",
            targets: ["HSDataModels"]),
    ],
    dependencies: [
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "HSDataModels",
            dependencies: []),
        .testTarget(
            name: "HSDataModelsTests",
            dependencies: ["HSDataModels"]),
    ],
    swiftLanguageVersions: [.v4_2]
)
