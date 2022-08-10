load('@build_bazel_rules_swift//swift:swift.bzl', 'swift_library')
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")

swift_library(
    name = "Source",
    srcs = glob(["*.swift"]),
    deps = [],
)

ios_application(
    name = "PocApp",
    minimum_os_version = "13.0",
    deps = [":Source"],
    infoplists = ["Info.plist"],
    families = ["iphone"],
    bundle_id = "com.ambarseptian.BazelExample",
    provisioning_profile = "//MobileProvision:Example",
    visibility = ["//visibility:public"],
)