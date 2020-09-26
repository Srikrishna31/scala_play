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
    rules_twirl_version = "f0d0cc6951796e0f530ed1470f1b93930e6cb3b1"
    http_archive(
        name = "io_bazel_rules_twirl",
        sha256 = "d52b3db5486f94bad5e0638136b23860b5a7105a35adc60094e1ad60c06c38dc",
        strip_prefix = "rules_twirl-{}".format(rules_twirl_version),
        type = "zip",
        url = "https://github.com/lucidsoftware/rules_twirl/archive/{}.zip".format(rules_twirl_version),
    )
