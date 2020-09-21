load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")
load("//third_party/play_framework/async_http:async_http.bzl", "load_async_http")
load("//third_party/play_framework/config:config.bzl", "load_config")

ARTIFACTORY = "https://repo1.maven.org/maven2/"
SUFFIX = "com/typesafe/"

URL_PREF = ARTIFACTORY + SUFFIX
deps = (
    ("play", URL_PREF + "play/play_2.12/2.8.2/play_2.12-2.8.2.jar", "5a9d5f9c26b10e74390048aed19f0a6694f04f290b5f8f05e9f3cf45e902746e"),
    ("play-ahc-ws", URL_PREF + "play/play-ahc-ws-standalone_2.12/2.1.2/play-ahc-ws-standalone_2.12-2.1.2.jar", "8168ede83b4d933ae27cefceb03f62ffa3d7aace76c50a7682ba07cc101110a7"),
    ("play-json", URL_PREF + "play/play-json_2.12/2.9.1/play-json_2.12-2.9.1.jar", "d7ec516c5dd32f1fbf79b35b5aa1217a80c203c5d0c9fb0a695ec8653694247b"),
    ("play-slick", URL_PREF + "play-slick_2.12/5.0.0/play-slick_2.12-5.0.0.jar", "edbaf07b341ff9bf74409f2f66246218ade045a0d3c9d68b9d17efa81a7cfa6b"),
    ("play-twirl", URL_PREF + "play/twirl-api_2.12/1.5.0/twirl-api_2.12-1.5.0.jar", "cb2cb22597d34d07832c0412523be92ab6b16f6f35f12d69c449a0b3bb8d523c"),
    ("play-ws", URL_PREF + "play/play-ws_2.12/2.8.2/play-ws_2.12-2.8.2.jar", "6d2b0fae07ed37e494241c803ca1f088a97cf9520758355a803d0528022c9905"),
    ("play-ws-standalone", URL_PREF + "play/play-ws-standalone_2.12/2.1.2/play-ws-standalone_2.12-2.1.2.jar", "97b73ee65109eaf524b8eb679b15267e7da71c353818c233019b7c4ea781c2af"),
    ("play-ws-standalone-json", URL_PREF + "play/play-ws-standalone-json_2.12/2.1.2/play-ws-standalone-json_2.12-2.1.2.jar", "6d3827abba59e6a82481baa6142873478e8a67897f4909e683e9d56a19982af6"),
    ("play-ws-standalone-xml", URL_PREF + "play/play-ws-standalone-xml_2.12/2.1.2/play-ws-standalone-xml_2.12-2.1.2.jar", "34629697469d07c7b1e0d83762babb8864653e441393c26b5f2af73a1b3c665b"),
    ("shaded-asynchttpclient", URL_PREF + "play/shaded-asynchttpclient/2.1.2/shaded-asynchttpclient-2.1.2.jar", "a33a3cbc18d7da3a7c370b1ade1d84a93c0a8815cbb9937b140a2b71350e0274"),
    ("shaded-oauth", URL_PREF + "play/shaded-oauth/2.1.2/shaded-oauth-2.1.2.jar", "23df6e444d3251f01faa997beef44aefb3e29465b641cb232bbb672fd478a29c"),
    ("play-akka-http-server", URL_PREF + "play/play-akka-http-server_2.12/2.8.2/play-akka-http-server_2.12-2.8.2.jar", "bfdbf0053d4ae2691cfc92463bddad2366e6b409e6bcd4c3004b8a2302ab2bf9"),
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
    load_async_http()
    load_config()
