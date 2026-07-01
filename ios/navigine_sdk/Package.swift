// swift-tools-version:5.9
import PackageDescription

let navigineLinkerSettings: [LinkerSetting] = [
    .linkedFramework("CoreGraphics"),
    .linkedFramework("Foundation"),
    .linkedFramework("OpenGLES"),
    .linkedFramework("CoreMotion"),
    .linkedFramework("CoreFoundation"),
    .linkedFramework("UIKit"),
    .linkedFramework("QuartzCore"),
    .linkedFramework("SystemConfiguration"),
    .linkedFramework("CoreLocation"),
    .linkedFramework("CoreText"),
    .linkedFramework("CoreBluetooth"),
    .linkedFramework("GLKit"),
    .linkedFramework("Metal"),
    .linkedLibrary("c++"),
    .unsafeFlags(["-ObjC", "-all_load"]),
]

let package = Package(
    name: "navigine_sdk",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "navigine-sdk",
            targets: ["navigine_sdk"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/Navigine/Indoor-Navigation-iOS-Mobile-SDK-2.0-Flutter.git",
            exact: "2.26.1"
        ),
    ],
    targets: [
        .target(
            name: "navigine_sdk",
            dependencies: [
                .product(name: "NavigineFlutter", package: "Indoor-Navigation-iOS-Mobile-SDK-2.0-Flutter"),
            ],
            path: "Sources/navigine_sdk",
            linkerSettings: navigineLinkerSettings
        ),
    ]
)
