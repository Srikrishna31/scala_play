load("//third_party:java_deps.bzl", "ARTIFACTORY", "PLAY_PREF", "add_java_dependencies")
load("//third_party/aopalliance:aopalliance.bzl", "load_aopalliance")
load("//third_party/play_framework/async_http:async_http.bzl", "load_async_http")
load("//third_party/play_framework/config:config.bzl", "load_config")
load("@rules_jvm_external//:defs.bzl", "maven_install")

deps = (
    ("build-link", PLAY_PREF + "build-link/2.8.7/build-link-2.8.7.jar", ""),
    ("play", PLAY_PREF + "play_2.12/2.8.7/play_2.12-2.8.7.jar", ""),
    ("play-ahc-ws-standalone", PLAY_PREF + "play-ahc-ws-standalone_2.12/2.1.2/play-ahc-ws-standalone_2.12-2.1.2.jar", "8168ede83b4d933ae27cefceb03f62ffa3d7aace76c50a7682ba07cc101110a7"),
    ("play-akka-http-server", PLAY_PREF + "play-akka-http-server_2.12/2.8.7/play-akka-http-server_2.12-2.8.7.jar", ""),
    ("play-exceptions", PLAY_PREF + "play-exceptions/2.8.7/play-exceptions-2.8.7.jar", ""),
    ("play-functional", PLAY_PREF + "play-functional_2.12/2.6.10/play-functional_2.12-2.6.10.jar", ""),
    ("play-guice", PLAY_PREF + "play-guice_2.12/2.8.7/play-guice_2.12-2.8.7.jar", ""),
    ("play-json", PLAY_PREF + "play-json_2.12/2.9.1/play-json_2.12-2.9.1.jar", "d7ec516c5dd32f1fbf79b35b5aa1217a80c203c5d0c9fb0a695ec8653694247b"),
    ("play-logback", PLAY_PREF + "play-logback_2.12/2.6.18/play-logback_2.12-2.6.18.jar", ""),
    ("play-netty-utils", PLAY_PREF + "play-netty-utils/2.6.9/play-netty-utils-2.6.9.jar", ""),
    ("play-server", PLAY_PREF + "play-server_2.12/2.8.7/play-server_2.12-2.8.7.jar", ""),
    ("play-slick", PLAY_PREF + "play-slick_2.12/5.0.0/play-slick_2.12-5.0.0.jar", "edbaf07b341ff9bf74409f2f66246218ade045a0d3c9d68b9d17efa81a7cfa6b"),
    ("play-specs", PLAY_PREF + "play-specs2_2.12/2.8.7/play-specs2_2.12-2.8.7.jar", ""),
    ("play-streams", PLAY_PREF + "play-streams_2.12/2.8.7/play-streams_2.12-2.8.7.jar", ""),
    ("play-test", PLAY_PREF + "play-test_2.12/2.8.7/play-test_2.12-2.8.7.jar", ""),
    ("play-twirl", PLAY_PREF + "twirl-api_2.12/1.5.0/twirl-api_2.12-1.5.0.jar", "cb2cb22597d34d07832c0412523be92ab6b16f6f35f12d69c449a0b3bb8d523c"),
    ("play-ws", PLAY_PREF + "play-ws_2.12/2.8.7/play-ws_2.12-2.8.7.jar", ""),
    ("play-ws-standalone", PLAY_PREF + "play-ws-standalone_2.12/2.1.2/play-ws-standalone_2.12-2.1.2.jar", "97b73ee65109eaf524b8eb679b15267e7da71c353818c233019b7c4ea781c2af"),
    ("play-ws-standalone-json", PLAY_PREF + "play-ws-standalone-json_2.12/2.1.2/play-ws-standalone-json_2.12-2.1.2.jar", "6d3827abba59e6a82481baa6142873478e8a67897f4909e683e9d56a19982af6"),
    ("play-ws-standalone-xml", PLAY_PREF + "play-ws-standalone-xml_2.12/2.1.2/play-ws-standalone-xml_2.12-2.1.2.jar", "34629697469d07c7b1e0d83762babb8864653e441393c26b5f2af73a1b3c665b"),
    ("shaded-asynchttpclient", PLAY_PREF + "shaded-asynchttpclient/2.1.2/shaded-asynchttpclient-2.1.2.jar", "a33a3cbc18d7da3a7c370b1ade1d84a93c0a8815cbb9937b140a2b71350e0274"),
    ("shaded-oauth", PLAY_PREF + "shaded-oauth/2.1.2/shaded-oauth-2.1.2.jar", "23df6e444d3251f01faa997beef44aefb3e29465b641cb232bbb672fd478a29c"),
)

def load_play_framework1():
    maven_install(
        artifacts = [
        ],
        repositories = [
            ARTIFACTORY,
        ],
    )

def load_play_framework():
    add_java_dependencies(deps)
    load_aopalliance()
    load_async_http()
    load_config()
