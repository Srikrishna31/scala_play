load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_scala_js():
    if "scala-js" not in native.existing_rules():
        java_import_external(
            name = "scala-js",
            jar_sha256 = "208d1ebc5194f764b1a6e73192a147757327526e17836ec7aa0c35e8a9de49b9",
            jar_urls = [
                "https://repo1.maven.org/maven2/org/scala-js/scalajs-library_2.12/1.2.0/scalajs-library_2.12-1.2.0.jar",
            ],
        )
