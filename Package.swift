// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "TMDBServices",
    products: [
        .library(name: "TMDBServices", targets: ["TMDBServices"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Moya/Moya", .upToNextMajor(from: "14.0.0")),
        .package(url: "https://github.com/Quick/Quick", .upToNextMajor(from: "3.0.0")),
        .package(url: "https://github.com/Quick/Nimble", .upToNextMajor(from: "9.0.0"))
    ],
    targets: [
        .target(name: "TMDBServices", dependencies: ["Moya"]),
        .testTarget(name: "TMDBServicesTests", dependencies: ["TMDBServices", "", "Quick", "Nimble"]),
    ]
)
