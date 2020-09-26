load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

rules_scala_version = "a2f5852902f5b9f0302c727eead52ca2c7b6c3e2"

def load_rules_scala():
    http_archive(
        name = "io_bazel_rules_scala",
        sha256 = "8c48283aeb70e7165af48191b0e39b7434b0368718709d1bced5c3781787d8e7",
        strip_prefix = "rules_scala-%s" % rules_scala_version,
        type = "zip",
        url = "https://github.com/bazelbuild/rules_scala/archive/%s.zip" % rules_scala_version,
    )
