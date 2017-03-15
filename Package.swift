//
//  Package.swift
//  SwiftImageDemo-iOS
//
//  Created by Christopher Hatton on 09/10/2016.
//  Copyright © 2016 Chris Hatton. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "SwiftImageDemo-iOS"
    targets: [],
    dependencies: [
	.Package(url: "https://github.com/chris-hatton/SwiftImage.git",      majorVersion: 1),
	.Package(url: "https://github.com/chris-hatton/SwiftImage-iOS.git",  majorVersion: 1),
	.Package(url: "https://github.com/chris-hatton/SwiftVision.git",     majorVersion: 1),
	.Package(url: "https://github.com/chris-hatton/SwiftVision-iOS.git", majorVersion: 1)
    ]
)
