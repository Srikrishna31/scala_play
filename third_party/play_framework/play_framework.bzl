load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

deps = (
    ("play", "https://repo1.maven.org/maven2/com/typesafe/play/play_2.12/2.8.2/play_2.12-2.8.2.jar", "5a9d5f9c26b10e74390048aed19f0a6694f04f290b5f8f05e9f3cf45e902746e"),
    ("play-ahc-ws", "https://repo1.maven.org/maven2/com/typesafe/play/play-ahc-ws-standalone_2.12/2.1.2/play-ahc-ws-standalone_2.12-2.1.2.jar", "8168ede83b4d933ae27cefceb03f62ffa3d7aace76c50a7682ba07cc101110a7"),
    ("play-json", "https://repo1.maven.org/maven2/com/typesafe/play/play-json_2.12/2.9.1/play-json_2.12-2.9.1.jar", "d7ec516c5dd32f1fbf79b35b5aa1217a80c203c5d0c9fb0a695ec8653694247b"),
    ("play-slick", "https://repo1.maven.org/maven2/com/typesafe/play/play-slick_2.12/5.0.0/play-slick_2.12-5.0.0.jar", "edbaf07b341ff9bf74409f2f66246218ade045a0d3c9d68b9d17efa81a7cfa6b"),
    ("play-twirl", "https://repo1.maven.org/maven2/com/typesafe/play/twirl-api_2.12/1.5.0/twirl-api_2.12-1.5.0.jar", "cb2cb22597d34d07832c0412523be92ab6b16f6f35f12d69c449a0b3bb8d523c"),
    ("play-ws", "https://repo1.maven.org/maven2/com/typesafe/play/play-ws_2.12/2.8.2/play-ws_2.12-2.8.2.jar", "6d2b0fae07ed37e494241c803ca1f088a97cf9520758355a803d0528022c9905"),
    ("play-ws-standalone", "https://repo1.maven.org/maven2/com/typesafe/play/play-ws-standalone_2.12/2.1.2/play-ws-standalone_2.12-2.1.2.jar", "97b73ee65109eaf524b8eb679b15267e7da71c353818c233019b7c4ea781c2af"),
    ("play-ws-standalone-json", "https://repo1.maven.org/maven2/com/typesafe/play/play-ws-standalone-json_2.12/2.1.2/play-ws-standalone-json_2.12-2.1.2.jar", "6d3827abba59e6a82481baa6142873478e8a67897f4909e683e9d56a19982af6"),
    ("play-ws-standalone-xml", "https://repo1.maven.org/maven2/com/typesafe/play/play-ws-standalone-xml_2.12/2.1.2/play-ws-standalone-xml_2.12-2.1.2.jar", "34629697469d07c7b1e0d83762babb8864653e441393c26b5f2af73a1b3c665b"),
)

def load_play_framework():
    for dep in deps:
        if dep[0] not in native.existing_rules():
            java_import_external(
                name = dep[0],
                jar_urls = [
                    dep[1],
                ],
                jar_sha256 = dep[2],
            )
