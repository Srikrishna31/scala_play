load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_aopalliance():
    if "aopalliance" not in native.existing_rules():
        java_import_external(
            name = "aopalliance",
            jar_urls = [
                "https://repo1.maven.org/maven2/aopalliance/aopalliance/1.0/aopalliance-1.0.jar",
            ],
            jar_sha256 = "0addec670fedcd3f113c5c8091d783280d23f75e3acb841b61a9cdb079376a08",
        )
