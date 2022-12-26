// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "AESegmentedControl",
    platforms: [.iOS(.v8)],
    products: [
        .library(name: "AESegmentedControl",
                 targets: ["AESegmentedControl"])
    ],
    targets: [
        .target(
            name: "AESegmentedControl",
            path: "AESegmentedControl"
        )
    ],
    swiftLanguageVersions: [.v5,.v4_2]
)
