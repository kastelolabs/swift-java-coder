// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "JavaCoder",
    products:[
        .library(
            name: "JavaCoder",
            targets:["JavaCoder"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/readdle/java_swift.git", .branch("master")),
        .package(url: "https://github.com/readdle/swift-anycodable.git", .upToNextMinor(from: "1.0.2")),
    ],
    targets: [
        .target(name: "JavaCoder", dependencies: ["java_swift", "AnyCodable"], path: "Sources"),
    ],
    swiftLanguageVersions: [4]
)
