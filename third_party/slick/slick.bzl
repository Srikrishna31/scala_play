load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_slick():
    if "slick" not in native.existing_rules():
        java_import_external(
            name = "slick",
            jar_urls = [
                "https://repo1.maven.org/maven2/com/typesafe/slick/slick_2.12/3.3.3/slick_2.12-3.3.3.jar",
            ],
            jar_sha256 = "65ec5e8e62db2cfabe47205c149abf191951780f0d74b772d22be1d1f16dfe21",
        )
