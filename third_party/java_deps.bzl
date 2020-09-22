load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

ARTIFACTORY = "https://repo1.maven.org/maven2/"
SUFFIX = "com/typesafe/"

URL_PREF = ARTIFACTORY + SUFFIX
PLAY_PREF = URL_PREF + "play/"

def add_java_dependencies(deps):
    for dep in deps:
        if dep[0] not in native.existing_rules():
            java_import_external(
                name = dep[0],
                jar_urls = [
                    dep[1],
                ],
                jar_sha256 = dep[2],
            )
