// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TMDBServices",
    platforms: [
        .iOS(.v10),
        .tvOS(.v10),
        .macOS(.v10_14)
    ],
    products: [
        .library(name: "TMDBServices", targets: ["TMDBServices"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Moya/Moya", from: "14.0.0"),
        .package(url: "https://github.com/Quick/Quick", from: "3.0.0"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "9.0.0"),
    ],
    targets: [
        .target(name: "TMDBServices", dependencies: ["Moya"], resources: [.process("Resources")]),
        .testTarget(name: "TMDBServicesTests", dependencies: ["TMDBServices", "Quick", "Nimble"], resources: [.process("Resources")]),
    ]
)
