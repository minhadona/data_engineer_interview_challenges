// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "example",
    dependencies: [
        .package(name: "SwiftKueryORM", url: "https://github.com/Kitura/Swift-Kuery-ORM.git", from: "0.6.1"),
        .package(url: "https://github.com/IBM-Swift/SwiftKueryMySQL.git", from: "2.0.2")
    ],
    targets: [
        .target(name: "example", dependencies: ["SwiftKueryORM", "SwiftKueryMySQL"]),
    ]
)
