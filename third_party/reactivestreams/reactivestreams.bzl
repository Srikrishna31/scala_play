load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_reactivestreams():
    if "reactivestreams" not in native.existing_rules():
        java_import_external(
            name = "reactivestreams",
            jar_sha256 = "1dee0481072d19c929b623e155e14d2f6085dc011529a0a0dbefc84cf571d865",
            jar_urls = [
                "https://repo1.maven.org/maven2/org/reactivestreams/reactive-streams/1.0.3/reactive-streams-1.0.3.jar",
            ],
        )
