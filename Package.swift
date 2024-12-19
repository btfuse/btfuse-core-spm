// swift-tools-version:6.0

import PackageDescription

/*
Copyright 2025 Breautek

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

let package = Package(
    name: "BTFuse",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "BTFuse", targets: ["BTFuse"]),
        .library(name: "BTFuseTestTools", targets: ["BTFuseTestTools"])
    ],
    targets: [
        .binaryTarget(
            name: "BTFuse",
            url: "https://github.com/btfuse/fuse/releases/tag/ios/core/0.8.12-spm/BTFuse.xcframework.zip",
            checksum: "338bf324fa66a0270a59d644c5ad0047ebaf1f17"
        ),
        .binaryTarget(
            name: "BTFuseTestTools",
            url: "https://github.com/btfuse/fuse/releases/tag/ios/core/0.8.12-spm/BTFuseTestTools.xcframework.zip",
            checksum: "1e11ea1fb58c16e8f44f883f2bafaa73efccdf71"
        ),
        .target(
            name: "BTFuseTestTools",
            dependencies: ["BTFuse"]
        )
    ]
)
