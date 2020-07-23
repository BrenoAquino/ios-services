// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "TMDBServices",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
    ],
    products: [
        .library(name: "TMDBServices", targets: ["TMDBServices"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Moya/Moya", from: "14.0.0"),
        .package(url: "https://github.com/Quick/Quick", from: "3.0.0"),
    ],
    targets: [
        .target(name: "TMDBServices", dependencies: ["Moya"]),
        .testTarget(name: "TMDBServicesTests", dependencies: ["TMDBServices", "Quick"]),
    ]
)
