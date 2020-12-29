load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_scalaxml():
    if "scala_xml" not in native.existing_rules():
        java_import_external(
            name = "scala_xml",
            jar_urls = [
                "https://repo1.maven.org/maven2/org/scala-lang/modules/scala-xml_2.12/2.0.0-M3/scala-xml_2.12-2.0.0-M3.jar",
            ],
            jar_sha256 = "df37ce6e06abfd4c6dd6d1f8005041fc79416ff07cb326ac6f027422deb5e79a",
        )
