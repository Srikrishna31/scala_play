load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_async_http():
    if "async-http" not in native.existing_rules():
        java_import_external(
            name = "async-http",
            jar_urls = [
                "https://repo1.maven.org/maven2/org/asynchttpclient/async-http-client/2.9.0/async-http-client-2.9.0.jar",
            ],
            jar_sha256 = "3ec3c9764f7f8480022b62412dafd2906531cf54527f9a06ffd9631a344cd417",
        )
