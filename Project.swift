import ProjectDescription

let project = Project(
    name: "TurtleApp-iOS",
    packages: [
        .package(path: "Packages/TurtleUI"),
        .package(path: "Packages/TurtleModules")
    ],
    targets: [
        .target(
            name: "TurtleApp-iOS",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.TurtleApp-iOS",
            deploymentTargets: .iOS("16.0"),
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                    "LSApplicationCategoryType": "public.app-category.education",
                ]
            ),
            sources: ["TurtleApp-iOS/**"],
            resources: ["TurtleApp-iOS/Resources/**"],
            dependencies: [
                .package(product: "TurtleUI", type: .runtime),
                .package(product: "TurtleModules", type: .runtime)
            ]
        ),
        .target(
            name: "TurtleApp-iOSTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.TurtleApp-iOSTests",
            infoPlist: .default,
            sources: ["TurtleApp-iOSTests/**"],
            resources: [],
            dependencies: [.target(name: "TurtleApp-iOS")]
        ),
        .target(
            name: "TurtleApp-iOSUITests",
            destinations: .iOS,
            product: .uiTests,
            bundleId: "io.tuist.TurtleApp-iOSUITests",
            infoPlist: .default,
            sources: ["TurtleApp-iOSUITests/**"],
            resources: [],
            dependencies: [.target(name: "TurtleApp-iOS")]
        ),
    ]
)
