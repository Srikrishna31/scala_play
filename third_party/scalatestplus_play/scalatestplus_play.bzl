load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

def load_scalatestplus_play():
    if "scalatestplus-play" not in native.existing_rules():
        java_import_external(
            name = "scalatestplus-play",
            jar_urls = [
                "https://repo1.maven.org/maven2/org/scalatestplus/play/scalatestplus-play_2.12/5.1.0/scalatestplus-play_2.12-5.1.0.jar",
            ],
            jar_sha256 = "52f3618cd331792ef0ee8563548c21cc43842de1e768763923373a583e41ef0f",
        )
