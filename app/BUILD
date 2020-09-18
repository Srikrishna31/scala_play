scala_library(
    name = "app",
    srcs = ["src/main/scala/app/Main.scala"],
    visibility = ["//:__pkg__"],
    deps = [
        "//module",
        "@beautiful-scala",
        "@joda-time",
        "@play",
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
