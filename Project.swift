import ProjectDescription

let project = Project(
    name: "TurtleApp-iOS",
    targets: [
        .target(
            name: "TurtleApp-iOS",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.TurtleApp-iOS",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["TurtleApp-iOS/**"],
            resources: ["TurtleApp-iOS/Resources/**"],
            dependencies: []
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
