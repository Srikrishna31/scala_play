load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_play():
    if "play" not in native.existing_rules():
        java_import_external(
            name = "play",
            jar_urls = [
                "https://repo1.maven.org/maven2/com/typesafe/play/play_2.12/2.8.2/play_2.12-2.8.2.jar",
            ],
            jar_sha256 = "",
        )
