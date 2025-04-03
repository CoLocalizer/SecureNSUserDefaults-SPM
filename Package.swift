// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SecureNSUserDefaults",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "SecureNSUserDefaults",
            targets: ["SecureNSUserDefaults"]
        ),
    ],
    targets: [
        .target(
            name: "SecureNSUserDefaults",
            path: "Sources/SecureNSUserDefaults",
            publicHeadersPath: "."
        )
    ]
)

