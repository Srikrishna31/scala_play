load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

ARTIFACTORY = "https://repo1.maven.org/maven2/"
SUFFIX = "com/typesafe/"

URL_PREF = ARTIFACTORY + SUFFIX
deps = (
    ("akka-actor", URL_PREF + "akka/akka-actor_2.12/2.6.9/akka-actor_2.12-2.6.9.jar", "cb875fa0f30a481509f00180acefd83eeac6db4e97996a6ff2996273e0bd227c"),
    ("akka-http", URL_PREF + "akka/akka-http_2.12/10.2.0/akka-http_2.12-10.2.0.jar", "8e93e20ce86494e3999110b0f23e2d4437e037bada2c92fa52e03c70d4a1da8c"),
    ("akka-stream", URL_PREF + "akka/akka-stream_2.12/2.6.9/akka-stream_2.12-2.6.9.jar ", "370d84d8ba7862793c06e586fcbe8b852c543df265abf9c7133466fa36c15eb6"),
)

def load_akka():
    for dep in deps:
        if dep[0] not in native.existing_rules():
            java_import_external(
                name = dep[0],
                jar_urls = [
                    dep[1],
                ],
                jar_sha256 = dep[2],
            )
