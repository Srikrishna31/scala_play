scala_library(
    name = "app",
    srcs = ["src/main/scala/app/Main.scala"],
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
    srcs = ["src/test/scala/app/MainSpec.scala"],
    visibility = ["//visibility:private"],
    deps = [":app"],
)
