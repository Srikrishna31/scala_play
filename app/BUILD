scala_library(
    name = "controllers",
    srcs = [
        "src/main/scala/controllers/HomeController.scala",
        ":routes-basic",
    ],
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

play_routes(
    name = "routes-basic",
    srcs = [
        "//conf:route-files",
    ],
    generate_reverse_router = True,
    include_play_imports = True,
)

scala_test(
    name = "test-app",
    srcs = ["src/test/scala/controllers/MainSpec.scala"],
    visibility = ["//visibility:private"],
    deps = [":app"],
)
