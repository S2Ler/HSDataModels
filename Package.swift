// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "HSDataModels",
  platforms: [
    .macOS(.v10_14)
  ],
  products: [
    .library(
      name: "HSDataModels",
      targets: ["HSDataModels"]),
  ],
  targets: [
    .target(
      name: "HSDataModels",
      dependencies: []),
    .testTarget(
      name: "HSDataModelsTests",
      dependencies: ["HSDataModels"]),
  ],
  swiftLanguageVersions: [.v5]
)
