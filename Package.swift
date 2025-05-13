// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "AccuraKYC",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "AccuraKYC",
            targets: ["AccuraKYC"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "AccuraKYC",
            path: "./AccuraOCR.framework"
        )
    ]
)
