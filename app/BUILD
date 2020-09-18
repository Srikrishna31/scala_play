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
        "@play-json",
        "@play-slick",
        "@play-twirl",
        "@play-ws",
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
