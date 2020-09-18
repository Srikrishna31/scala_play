load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def _load_play():
    if "play" not in native.existing_rules():
        java_import_external(
            name = "play",
            jar_urls = [
                "https://repo1.maven.org/maven2/com/typesafe/play/play_2.12/2.8.2/play_2.12-2.8.2.jar",
            ],
            jar_sha256 = "",
        )

def _load_play_twirl():
    #templating engine
    if "play-twirl" not in native.existing_rules():
        java_import_external(
            name = "play-twirl",
            jar_urls = [
                "https://repo1.maven.org/maven2/com/typesafe/play/twirl-api_2.12/1.5.0/twirl-api_2.12-1.5.0.jar",
            ],
            jar_sha256 = "cb2cb22597d34d07832c0412523be92ab6b16f6f35f12d69c449a0b3bb8d523c",
        )

def _load_play_json():
    #json manipulation
    if "play-json" not in native.existing_rules():
        java_import_external(
            name = "play-json",
            jar_urls = [
                "https://repo1.maven.org/maven2/com/typesafe/play/play-json_2.12/2.9.1/play-json_2.12-2.9.1.jar",
            ],
            jar_sha256 = "d7ec516c5dd32f1fbf79b35b5aa1217a80c203c5d0c9fb0a695ec8653694247b",
        )

def _load_play_ahc_ws():
    if "play-ahc-ws" not in native.existing_rules():
        java_import_external(
            name = "play-ahc-ws",
            jar_urls = [
                "https://repo1.maven.org/maven2/com/typesafe/play/play-ahc-ws-standalone_2.12/2.1.2/play-ahc-ws-standalone_2.12-2.1.2.jar",
            ],
            jar_sha256 = "8168ede83b4d933ae27cefceb03f62ffa3d7aace76c50a7682ba07cc101110a7",
        )

def _load_play_ws():
    #HTTP REST Request API
    if "play-ws" not in native.existing_rules():
        java_import_external(
            name = "play-ws",
            jar_urls = [
                "https://repo1.maven.org/maven2/com/typesafe/play/play-ws_2.12/2.8.2/play-ws_2.12-2.8.2.jar",
            ],
            jar_sha256 = "6d2b0fae07ed37e494241c803ca1f088a97cf9520758355a803d0528022c9905",
        )

def _load_play_slick():
    #Database access
    if "play-slick" not in native.existing_rules():
        java_import_external(
            name = "play-slick",
            jar_urls = [
                "https://repo1.maven.org/maven2/com/typesafe/play/play-slick_2.12/5.0.0/play-slick_2.12-5.0.0.jar",
            ],
            jar_sha256 = "edbaf07b341ff9bf74409f2f66246218ade045a0d3c9d68b9d17efa81a7cfa6b",
        )

def load_play_framework():
    _load_play()
    _load_play_ahc_ws()
    _load_play_json()
    _load_play_slick()
    _load_play_twirl()
    _load_play_ws()
