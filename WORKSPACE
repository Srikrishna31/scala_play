load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# bazel-skylib 1.0.3 released 2020.08.27 (https://github.com/bazelbuild/bazel-skylib/releases/tag/1.0.3)
skylib_version = "1.0.3"

http_archive(
    name = "bazel_skylib",
    sha256 = "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
    type = "tar.gz",
    url = "https://github.com/bazelbuild/bazel-skylib/releases/download/{}/bazel-skylib-{}.tar.gz".format(skylib_version, skylib_version),
)

load("//third_party:google_protobuff.bzl", "load_google_protobuff")

load_google_protobuff()

load("//third_party:rules_scala.bzl", "load_rules_scala")

load_rules_scala()

load("//third_party:register_scala.bzl", "register_scala_toolchain")

register_scala_toolchain()

load("//third_party:rules_jvm_external.bzl", "load_rules_jvm_external")

load_rules_jvm_external()

load("//third_party:rules_play.bzl", "load_play_routes", "load_play_twirl")

load_play_routes()

# For some reason, twirl is not loading up. Need to investigate
# deeper and fix the problem.
#load_play_twirl()
#
#load("@io_bazel_rules_twirl//:workspace.bzl", "twirl_repositories")
#
#twirl_repositories()
#
#load("@twirl//:defs.bzl", twirl_pinned_maven_install = "pinned_maven_install")
#
#twirl_pinned_maven_install()

# Unfortunately, this cannot be moved inside a .bzl file, since that requires to
# create too many bazel files, as play_routes_repositories is needed for the next
# load statement to succeed and thereby for a successful call to play_routes_pinned_maven_install.
load("@io_bazel_rules_play_routes//:workspace.bzl", "play_routes_repositories")

play_routes_repositories("2.7")

load("@play_routes//:defs.bzl", play_routes_pinned_maven_install = "pinned_maven_install")

play_routes_pinned_maven_install()

bind(
    name = "default-play-routes-compiler-cli",
    actual = "@io_bazel_rules_play_routes//default-compiler-clis:scala_2_12_play_2_7",
)

load("//third_party:dependencies.bzl", "load_deps")

load_deps()
