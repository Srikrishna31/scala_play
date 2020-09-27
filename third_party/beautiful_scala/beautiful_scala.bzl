load("@rules_jvm_external//:defs.bzl", "maven_install")
load("//third_party:java_deps.bzl", "ARTIFACTORY")
load("@rules_jvm_external//:specs.bzl", "maven")

def load_beautiful_scala():
    maven_install(
        name = "maven",
        artifacts = [
            #            maven.artifact(
            #                group = "com.beautiful-scala",
            #                artifact = "scalastyle_2.12",
            #                version = "1.5.0",
            #            ),
            "com.beautiful-scala:scalastyle_2.12:1.5.0",
        ],
        repositories = [
            ARTIFACTORY,
        ],
    )
