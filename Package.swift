// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TLNetTool",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TLNetTool",
            targets: ["TLNetTool"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name:"Alamofire", url: "https://gitee.com/charleston/Alamofire.git", .upToNextMajor(from: "5.4.0")),
        .package(name: "Kingfisher", url: "https://gitee.com/charleston/Kingfisher.git", .upToNextMajor(from: "5.15.0")),
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TLNetTool",
            dependencies: ["Alamofire", "Kingfisher"]
        ),
    ]
)
