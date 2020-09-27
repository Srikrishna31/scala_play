load("@rules_jvm_external//:defs.bzl", "maven_install")
load("//third_party:java_deps.bzl", "ARTIFACTORY")

def load_scala_guice():
    maven_install(
        name = "maven",
        artifacts = [
            "net.codingwell:scala-guice_2.12:4.2.11",
        ],
        repositories = [
            ARTIFACTORY,
        ],
    )
