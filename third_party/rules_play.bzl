load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def load_play_routes():
    rules_play_routes_version = "bfaca5f186f2c3b989c80fd00f37a53b84406b3d"
    http_archive(
        name = "io_bazel_rules_play_routes",
        sha256 = "b0ae17af402e88da31fa41b16a6cf1d8eea53d693dd6b4c0c219d421078a2af5",
        strip_prefix = "rules_play_routes-{}".format(rules_play_routes_version),
        type = "zip",
        url = "https://github.com/lucidsoftware/rules_play_routes/archive/{}.zip".format(rules_play_routes_version),
    )

def load_play_twirl():
    # This currently has problems downloading, so is disabled - ie. not used.
    # update version as needed
    rules_twirl_version = "9ac789845e3a481fe520af57bd47a4261edb684f"
    http_archive(
        name = "io_bazel_rules_twirl",
        sha256 = "b1698a2a59b76dc9df233314c2a1ca8cee4a0477665cff5eafd36f92057b2044",
        strip_prefix = "rules_twirl-{}".format(rules_twirl_version),
        type = "zip",
        url = "https://github.com/lucidsoftware/rules_twirl/archive/{}.zip".format(rules_twirl_version),
    )
