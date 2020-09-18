scala_library(
    name = "app",
    srcs = ["src/main/scala/app/Main.scala"],
    visibility = ["//:__pkg__"],
    deps = [
        "//module",
        "@beautiful-scala",
        "@javax-inject",
        "@joda-time",
        "@play",
        "@play-ahc-ws",
        "@play-json",
        "@play-slick",
        "@play-twirl",
        "@play-ws",
        "@play-ws-standalone",
        "@play-ws-standalone-json",
        "@play-ws-standalone-xml",
        "@scala-js",
        "@scalaz",
    ],
)

scala_test(
    name = "test-app",
    srcs = ["src/test/scala/app/MainSpec.scala"],
    visibility = ["//visibility:private"],
    deps = [":app"],
)
