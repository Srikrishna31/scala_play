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

load("//third_party:dependencies.bzl", "load_deps")

load_deps()
