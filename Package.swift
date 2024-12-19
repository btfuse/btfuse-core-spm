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
            url: "https://github.com/btfuse/fuse/releases/tag/ios/core/0.8.12-spm.2/BTFuse.xcframework.zip",
            checksum: "c53769fd062406cb7175eeca5b7fba30727658a2"
        ),
        .binaryTarget(
            name: "BTFuseTestTools",
            url: "https://github.com/btfuse/fuse/releases/tag/ios/core/0.8.12-spm.2/BTFuseTestTools.xcframework.zip",
            checksum: "c20971e0c088fde9bac9ce1d02d18c07b06a7f83"
        )
    ]
)
