// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "AccuraKYC",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "AccuraKYCWrapper", targets: ["AccuraKYCWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/AFNetworking/AFNetworking", from: "4.0.1"),
        .package(url: "https://github.com/SVProgressHUD/SVProgressHUD", from: "2.3.1"),
    ],
    targets: [
        .target(
            name: "AccuraKYCWrapper",
            dependencies: [
                "AccuraKYC",
                "AFNetworking",
                "SVProgressHUD"
            ]
        ),
        .binaryTarget(
            name: "AccuraKYC",
            url: "https://github.com/M7MD1315/KYC-SDK-iOS/releases/download/v1.0.0/AccuraOCR.xcframework.zip",
            checksum: "c1bfcacd64daf12a0b1c6a6c1353cbdefac10114c163178bdc990992dfe5e3c9"
        )
    ]
)
