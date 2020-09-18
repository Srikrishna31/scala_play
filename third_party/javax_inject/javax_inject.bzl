load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_javax_inject():
    if "javax-inject" not in native.existing_rules():
        java_import_external(
            name = "javax-inject",
            jar_urls = [
                "https://repo1.maven.org/maven2/javax/inject/javax.inject/1/javax.inject-1.jar",
            ],
            jar_sha256 = "",
        )
