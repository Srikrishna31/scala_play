load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_beautiful_scala():
    if "beautiful-scala" not in native.existing_rules():
        java_import_external(
            name = "beautiful-scala",
            jar_sha256 = "e785d472820a489d5eeadcdaf752afd8a6d6809650c90a4e61ac2c7290de0dcc",
            jar_urls = [
                "https://repo1.maven.org/maven2/com/beautiful-scala/scalastyle_2.12/1.5.0/scalastyle_2.12-1.5.0.jar",
            ],
        )
