load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_config():
    if "config" not in native.existing_rules():
        java_import_external(
            name = "config",
            jar_urls = [
                "https://repo1.maven.org/maven2/com/typesafe/config/1.4.0/config-1.4.0.jar",
            ],
            jar_sha256 = "",
        )
