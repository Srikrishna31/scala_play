load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_guice():
    if "guice" not in native.existing_rules():
        java_import_external(
            name = "guice",
            jar_urls = [
                "https://repo1.maven.org/maven2/com/google/inject/guice/4.2.3/guice-4.2.3.jar",
            ],
            jar_sha256 = "",
        )
