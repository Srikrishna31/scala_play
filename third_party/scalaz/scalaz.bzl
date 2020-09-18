
load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_scalaz():
    if "scalaz" not in native.existing_rules():
        java_import_external(
            name = "scalaz",
            jar_sha256 = "2a2aa659787475a8f61b3498a9daa06718d3451af6a0b548b55c6e033fbec0f9",
            jar_urls = [
                "https://repo1.maven.org/maven2/org/scalaz/scalaz-full_2.10/6.0.4/scalaz-full_2.10-6.0.4.jar",
            ],
        )
