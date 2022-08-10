workspace(name = "BazelPoc")

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "build_bazel_rules_swift",
    sha256 = "12057b7aa904467284eee640de5e33853e51d8e31aae50b3fb25d2823d51c6b8",
    url = "https://github.com/bazelbuild/rules_swift/releases/download/1.0.0/rules_swift.1.0.0.tar.gz",
)

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()

# WARNING: as we forked `rules_swift`, need to make sure the underlaying `rules_swift` on `rules_apple` version 
# fork rules_apple to add add product_module_name on apple_resource_bundle(https://github.com/wendys-github-bot/rules_apple/tree/support_product_module_name)
# rules_apple use rules_swift
# make sure to always sync it with our forked version, so our forked version will always have same version.
#
# we also modify coverage to be able to read LLVM_PROFILE_FILE from env https://github.com/wendys-github-bot/rules_apple/commit/ea7eaea73cfb7e1f94f08cd0409b24dae36fa4ac
#
FORKED_RULES_APPLE_COMMIT = '808ee6d6b1dfd90b19a72553d6443906ca5b49db'
http_archive(
    name = "build_bazel_rules_apple",
    sha256 = "2c6d78759ffed41fcd33e9760bb0fdda34e29e854d72d291e00addabfd75fecc",
    strip_prefix = "rules_apple-%s" % FORKED_RULES_APPLE_COMMIT,
    url = "https://github.com/wendys-github-bot/rules_apple/archive/%s.zip" % FORKED_RULES_APPLE_COMMIT,
)

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()