// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Project Dinner",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "Project Dinner",
            targets: ["FMPhotoPicker"])
    ],
    targets: [
        .target(
            name: "FMPhotoPicker",
            path: "FMPhotoPicker/FMPhotoPicker",
            exclude: ["./Info.plist"],
            resources: [
                .process("./source/Assets.xcassets"),
            ]),
    ],
    swiftLanguageVersions: [.v5]
)
