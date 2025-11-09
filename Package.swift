// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "SwiftBox2D",
    products: [
        .library(
            name: "box2d",
            targets: ["box2d"]
        ),
        .library(
            name: "SwiftBox2D",
            targets: ["SwiftBox2D"]
        ),
    ],
    targets: [
        .target(
            name: "box2d",
            cSettings: [
                .define("BOX2D_ENABLE_SIMD"),
            ]
        ),
        .target(
            name: "SwiftBox2D",
            dependencies: ["box2d"],
            exclude: [
                "Extensions/b2Vec2+Ext.swift",
                "Extensions/b2Mat22+Ext.swift",
                "Extensions/b2Rot+Ext.swift",
                "Extensions/b2Transform+Ext.swift",
                "Extensions/b2QueryFilter+Ext.swift",
                "Extensions/b2DebugDraw+Ext.swift",
                "Extensions/Defs",
                "Generated/Geometry/B2Vec2+Ext.swift",
                "Generated/Geometry/B2Mat22+Ext.swift",
                "Generated/Geometry/B2Rot+Ext.swift",
                "Generated/Geometry/B2Transform+Ext.swift",
                "Generated/Geometry/B2Circle+Ext.swift",
                "Generated/Geometry/B2AABB+Ext.swift",
                "Generated/B2Capsule+Ext.swift",
                "Generated/B2Segment+Ext.swift",
                "Generated/B2QueryFilter+Ext.swift",
                "Generated/B2HexColor+Ext.swift",
                "Generated/B2Polygon+Ext.swift",
                "Generated/B2BodyType+Ext.swift",
                "Generated/B2ShapeType+Ext.swift",
                "Generated/B2JointType+Ext.swift"
            ]
        ),
        .testTarget(
            name: "SwiftBox2DTests",
            dependencies: ["SwiftBox2D"]
        ),
    ]
)
