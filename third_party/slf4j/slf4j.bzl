load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_slf4j():
    if "slf4j" not in native.existing_rules():
        java_import_external(
            name = "slf4j",
            jar_sha256 = "8df06cc146b8638a24cefb669d20f4bdb2c4497d5047c548a0a190df6f97c3a5",
            jar_urls = [
                "https://repo1.maven.org/maven2/org/slf4j/slf4j-api/2.0.0-alpha1/slf4j-api-2.0.0-alpha1.jar",
            ],
        )
