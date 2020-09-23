load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_sslconfig():
    if "sslconfig" not in native.existing_rules():
        java_import_external(
            name = "sslconfig",
            jar_urls = [
                "https://repo1.maven.org/maven2/com/typesafe/ssl-config-core_2.12/0.4.2/ssl-config-core_2.12-0.4.2.jar",
            ],
            jar_sha256 = "c9f16f354a2285d47f73188a0abee6c1e8be3f302b634a22c0a61810c10f4aaa",
        )
