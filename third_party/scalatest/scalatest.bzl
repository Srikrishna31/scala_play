load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_scalatest():
    if "scalatest" not in native.existing_rules():
        java_import_external(
            name = "scalatest",
            jar_urls = [
                "https://repo1.maven.org/maven2/org/scalatest/scalatest_2.12/3.1.4/scalatest_2.12-3.1.4.jar",
            ],
            jar_sha256 = "",
        )
