load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_play():
    if "play" not in native.existing_rules():
        java_import_external(
            name = "play",
            jar_urls = [
                "https://repo1.maven.org/maven2/com/typesafe/play/play_2.12/2.8.2/play_2.12-2.8.2.jar",
            ],
            jar_sha256 = "",
        )

    #json manipulation
    if "play-json" not in native.existing_rules():
        java_import_external(
            name = "play-json",
            jar_urls = [
                "https://repo1.maven.org/maven2/com/typesafe/play/play-json_2.12/2.9.1/play-json_2.12-2.9.1.jar"
            ],
            jar_sha256 = "",
        )

    #templating engine
    if "twirl" not in native.existing_rules():
        java_import_external(
            name = "twirl",
            jar_urls = [
                "https://repo1.maven.org/maven2/com/typesafe/play/twirl-api_2.12/1.5.0/twirl-api_2.12-1.5.0.jar"
            ],
            jar_sha256 = "",
        )

    #HTTP REST Request API
    if "play-ws" not in native.existing_rules():
        java_import_external(
            name = "play-ws",
            jar_urls = [
                "https://repo1.maven.org/maven2/com/typesafe/play/play-ws_2.12/2.8.2/play-ws_2.12-2.8.2.jar"
            ],
            jar_sha256 = "",
        )

    #Database access
    if "play-slick" not in native.existing_rules():
        java_import_external(
            name = "play-slick",
            jar_urls = [
                "https://repo1.maven.org/maven2/com/typesafe/play/play-slick_2.12/5.0.0/play-slick_2.12-5.0.0.jar"
            ],
            jar_sha256 = "",
        )
