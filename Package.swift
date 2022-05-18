// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FacebookImagePicker",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "FacebookImagePicker",
            targets: ["FacebookImagePicker"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/facebook/facebook-ios-sdk", .upToNextMajor(from: Version("13.2.0")))
        
    ],
    targets: [
        .target(
            name: "FacebookImagePicker",
            dependencies: [
                .productItem(name: "FacebookCore",
                             package: "facebook-ios-sdk",
                             condition: .when(platforms: [.iOS])),
                .productItem(name: "FacebookLogin",
                             package: "facebook-ios-sdk",
                             condition: .when(platforms: [.iOS]))
            ]),
        .testTarget(
            name: "FacebookImagePickerTests",
            dependencies: ["FacebookImagePicker"]),
    ]
)
