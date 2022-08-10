load("@build_bazel_rules_apple//apple:ios.bzl", "ios_ui_test")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = 'Source',
    module_name = 'PocUITests',
    srcs = glob(['**/*.swift'])
)

ios_ui_test(
    name = "PocUITests",
    minimum_os_version = "13.0",
    deps = [":Source"],
    infoplists = [":Info.plist"],
    test_host = '//ios/PocApp',
    visibility = ["//visibility:public"],
)

