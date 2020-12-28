load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_scalaparsercombinator():
    if "scala_parser_combinator" not in native.existing_rules():
        java_import_external(
            name = "scala_parser_combinator",
            jar_urls = [
                "https://repo1.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.12/1.2.0-M1/scala-parser-combinators_2.12-1.2.0-M1.jar",
            ],
            jar_sha256 = "09fa07799e4d0c60d8002c458176af639f3c5e55093b9f45350d46d58ed8ab79",
        )
