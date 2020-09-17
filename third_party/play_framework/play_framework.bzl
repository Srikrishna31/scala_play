load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_play():
    if "play" not in native.existing_rules():
        java_import_external(
            name = "play",
            jar_urls = [
                "https://repo1.maven.org/maven2/com/typesafe/play/play_2.13/2.8.2/play_2.13-2.8.2.jar",
            ],
            jar_sha256 = "321c8a9fdf44914d12d1076430390677dd6d5689b7085a11edb00539f46cbaf4",
        )
