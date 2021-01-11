load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

rules_scala_version = "9bd9ffd3e52ab9e92b4f7b43051d83231743f231"

def load_rules_scala():
    http_archive(
        name = "io_bazel_rules_scala",
        sha256 = "438bc03bbb971c45385fde5762ab368a3321e9db5aa78b96252736d86396a9da",
        strip_prefix = "rules_scala-%s" % rules_scala_version,
        type = "zip",
        url = "https://github.com/bazelbuild/rules_scala/archive/%s.zip" % rules_scala_version,
    )
