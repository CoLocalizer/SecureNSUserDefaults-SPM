// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SecureNSUserDefaults",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "SecureNSUserDefaults",
            targets: ["SecureNSUserDefaults"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/kelp404/CocoaSecurity.git", from: "1.2.1")
    ],
    targets: [
        .target(
            name: "SecureNSUserDefaults",
            dependencies: [
                .product(name: "CocoaSecurity", package: "CocoaSecurity")
            ],
            path: "Sources/SecureNSUserDefaults",
            publicHeadersPath: "."
        )
    ]
)

