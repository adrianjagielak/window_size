// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "window_size",
  platforms: [
    .macOS("10.15")
  ],
  products: [
    .library(name: "window-size", targets: ["window_size"])
  ],
  dependencies: [],
  targets: [
    .target(
      name: "window_size",
      dependencies: [
        "window_size_objc"
      ]
    ),
    .target(
      name: "window_size_objc",
      dependencies: [],
      publicHeadersPath: "include/window_size_objc",
      cSettings: [
        .headerSearchPath("include/window_size_objc")
      ]
    ),
  ]
)
