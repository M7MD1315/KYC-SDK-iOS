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
            url: "https://github.com/M7MD1315/KYC-SDK-iOS/releases/download/v1.0.0/AccuraOCR.xcframework.zip",
            checksum: "c1bfcacd64daf12a0b1c6a6c1353cbdefac10114c163178bdc990992dfe5e3c9"
        )
    ]
)
