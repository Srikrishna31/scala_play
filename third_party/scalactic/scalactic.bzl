load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_scalactic():
    if "scalactic" not in native.existing_rules():
        java_import_external(
            name = "scalactic",
            jar_urls = [
                "https://repo1.maven.org/maven2/org/scalactic/scalactic_2.12/3.1.4/scalactic_2.12-3.1.4.jar",
            ],
            jar_sha256 = "b1df40d13f0e077659ecd0cd78be02791b9c0659c2ab0c352e6528306084fbc8",
        )
