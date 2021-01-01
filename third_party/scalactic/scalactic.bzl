load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_scalactic():
    if "scalactic" not in native.existing_rules():
        java_import_external(
            name = "scalactic",
            jar_urls = [
                "https://repo1.maven.org/maven2/org/scalactic/scalactic_sjs1_2.12/3.1.4/scalactic_sjs1_2.12-3.1.4.jar",
            ],
            jar_sha256 = "781fb872da68d7510e1b12fad1870b6b93e555fa413db8ba790af903dc635efa",
        )
