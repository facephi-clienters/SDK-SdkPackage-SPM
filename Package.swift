 // swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "sdk",
    platforms: [.iOS(.v9)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "sdk",
            targets: ["SDK-SdkPackage-SPM", "sdk"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/facephi-clienters/SDK-CorePackage-SPM.git", .exactItem("2.11.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SDK-SdkPackage-SPM",
            dependencies: ["SDK-CorePackage-SPM", "sdk"]),
        .binaryTarget(name: "sdk",
        url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/SDK/FPHISDKMainComponent/2.11.0/sdk.zip",
        checksum: "0e24ec5fe9d561855f98c81d0d5706ac82ec1205d7dd0d5345e85dd5d39e77d2"),
    ]
)
