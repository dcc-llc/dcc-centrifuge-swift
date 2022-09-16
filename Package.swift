// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "DCCSwiftCentrifuge",
    products: [
        .library(name: "DCCSwiftCentrifuge", targets: ["DCCSwiftCentrifuge"]),
    ],
    dependencies: [
        .package(url: "https://github.com/daltoniam/Starscream", from:"3.0.6"),
        .package(url: "https://github.com/apple/swift-protobuf", from:"1.7.0"),
        .package(url: "https://github.com/apple/swift-log", from: "1.4.0")
    ],
    targets: [
        .target(
            name: "DCCSwiftCentrifuge",
            dependencies: ["Starscream", "SwiftProtobuf", "Logging"]
        ),
        .testTarget(
            name: "SwiftCentrifugeTests",
            dependencies: ["DCCSwiftCentrifuge"]
        )
    ]
)
