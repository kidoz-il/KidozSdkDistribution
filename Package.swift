// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let version = "1.0.4"
let moduleName = "KidozSDK"
let checksum = "977b36d2e1a546a233207e5d2f7c172288237a2d8202c05ba9df12eb6236a1db"

let package = Package(
    name: moduleName,
    platforms: [
        .iOS(.v13) //, .macCatalyst(.v15), .macOS(.v10_15)
    ],
    products: [
        .library(
            name: moduleName,
            targets: [moduleName]
        )
    ],
    targets: [
        .binaryTarget(
            name: moduleName,
            url: "https://github.com/kidoz-il/KidozSdkDistribution/releases/download/\(version)/\(moduleName).xcframework.zip",
            checksum: checksum
        )
    ]
)
