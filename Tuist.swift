
import ProjectDescription

let tuist = Tuist(project: .tuist(
    compatibleXcodeVersions: .all,
    swiftVersion: nil,
    plugins: [],
    generationOptions: .options(
        resolveDependenciesWithSystemScm: false,
        disablePackageVersionLocking: false,
        clonedSourcePackagesDirPath: nil,
        staticSideEffectsWarningTargets: .all,
        defaultConfiguration: nil,
        optionalAuthentication: false
    ),
    installOptions: .options(passthroughSwiftPackageManagerArguments: []))
)
