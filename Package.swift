// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Sodium",
    products: [
        .library(
            name: "Sodium",
            targets: ["Sodium"]),
    ],
    dependencies: [
        .package(name: "Clibsodium", url: "https://github.com/junelife/clibsodium-xcframework", Package.Dependency.Requirement.branch("adarsh/spm-test")),
    ],
    targets: [
        .target(
            name: "Sodium",
            dependencies: ["Clibsodium"],
            path: "Sodium",
            exclude: ["libsodium", "Info.plist"]),
        .testTarget(
            name: "SodiumTests",
            dependencies: ["Sodium"],
            exclude: ["Info.plist"]),
    ]
)
