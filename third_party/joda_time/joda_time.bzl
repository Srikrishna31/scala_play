load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_joda_time():
    if "joda_time" not in native.existing_rules():
        java_import_external(
            name = "joda-time",
            jar_sha256 = "4ee73e7ff8e2df0d4e3408cf1a1527a59f265dd9fb43fb9b2eb818d87f93759e",
            jar_urls = [
                "https://repo1.maven.org/maven2/joda-time/joda-time/2.10.5/joda-time-2.10.5.jar",
            ],
        )
