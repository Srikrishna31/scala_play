scala_library(
    name = "controllers",
    srcs = ["src/main/scala/controllers/HomeController.scala"],
    visibility = ["//:__pkg__"],
    deps = [
        "//module",
        "//third_party/play_framework:play-framework",
        "@beautiful-scala",
        "@javax-inject",
        "@joda-time",
        "@scala-js",
        "@scalaz",
    ],
)

scala_test(
    name = "test-app",
    srcs = ["src/test/scala/controllers/MainSpec.scala"],
    visibility = ["//visibility:private"],
    deps = [":app"],
)
