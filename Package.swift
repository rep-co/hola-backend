// swift-tools-version:5.9

import PackageDescription

let package = Package(
  name: "hola-backend",
  platforms: [
    .iOS(.v17),
    .macOS(.v14),
  ],
  dependencies: [
    .package(url: "https://github.com/vapor/vapor.git", from: "4.83.1"),
    .package(url: "https://github.com/pointfreeco/swift-tagged", from: "0.10.0"),
    .package(url: "https://github.com/pointfreeco/swift-identified-collections", from: "1.0.0"),
    .package(url: "https://github.com/pointfreeco/vapor-routing", from: "0.1.3"),
  ],
  targets: [
    .executableTarget(
      name: "App",
      dependencies: [
        "PackController",
        "DevelopersController",
        "ThemeController",
        .product(name: "Vapor", package: "vapor"),
        .product(name: "VaporRouting", package: "vapor-routing"),
      ],
      swiftSettings: [
        .enableExperimentalFeature("StrictConcurrency=complete")
      ]
    ),
    .target(
      name: "Packs",
      dependencies: [
        .product(name: "Tagged", package: "swift-tagged"),
        .product(name: "IdentifiedCollections", package: "swift-identified-collections"),
      ],
      swiftSettings: [
        .enableExperimentalFeature("StrictConcurrency=complete")
      ]
    ),
    .target(
      name: "PackController",
      dependencies: [
        "Packs",
        .product(name: "Vapor", package: "vapor"),
        .product(name: "VaporRouting", package: "vapor-routing"),
      ],
      swiftSettings: [
        .enableExperimentalFeature("StrictConcurrency=complete")
      ]
    ),
    .target(
      name: "Developers",
      dependencies: [
        .product(name: "Tagged", package: "swift-tagged"),
        .product(name: "IdentifiedCollections", package: "swift-identified-collections"),
      ],
      swiftSettings: [
        .enableExperimentalFeature("StrictConcurrency=complete")
      ]
    ),
    .target(
      name: "DevelopersController",
      dependencies: [
        "Developers",
        .product(name: "Vapor", package: "vapor"),
        .product(name: "VaporRouting", package: "vapor-routing"),
      ],
      swiftSettings: [
        .enableExperimentalFeature("StrictConcurrency=complete")
      ]
    ),
    .target(
      name: "Theme",
      dependencies: [
        .product(name: "Tagged", package: "swift-tagged"),
      ],
      swiftSettings: [
        .enableExperimentalFeature("StrictConcurrency=complete")
      ]
    ),
    .target(
      name: "ThemeController",
      dependencies: [
        "Theme",
        .product(name: "Vapor", package: "vapor"),
        .product(name: "VaporRouting", package: "vapor-routing"),
      ],
      swiftSettings: [
        .enableExperimentalFeature("StrictConcurrency=complete")
      ]
    ),
  ]
)
