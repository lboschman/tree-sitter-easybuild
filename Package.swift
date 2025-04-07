// swift-tools-version:5.3

import Foundation
import PackageDescription

var sources = ["src/parser.c"]
if FileManager.default.fileExists(atPath: "src/scanner.c") {
    sources.append("src/scanner.c")
}

let package = Package(
    name: "TreeSitterEasybuild",
    products: [
        .library(name: "TreeSitterEasybuild", targets: ["TreeSitterEasybuild"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tree-sitter/swift-tree-sitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterEasybuild",
            dependencies: [],
            path: ".",
            sources: sources,
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterEasybuildTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterEasybuild",
            ],
            path: "bindings/swift/TreeSitterEasybuildTests"
        )
    ],
    cLanguageStandard: .c11
)
