scala_library(
    name = "app_lib",
    srcs = [],
    visibility = ["//:__pkg__"],
    deps = [
        ":controllers",
        ":model",
    ],
)

scala_library(
    name = "controllers",
    srcs = [
        "src/main/scala/Module.scala",
        "src/main/scala/controllers/HomeController.scala",
        ":routes-basic",
        ":twirl-templates",
    ],
    deps = [
        "//module",
        "//third_party/akka",
        "//third_party/play_framework:play-framework",
        "//third_party/scala_guice:scala-guice",
        "@beautiful-scala",
        "@guice",
        "@javax-inject",
        "@joda-time",
        "@scala-js",
        "@scalaz",
    ],
)

scala_library(
    name = "model",
    srcs = [],
    deps = [
    ],
)

twirl_templates(
    name = "twirl-templates",
    srcs = [
        "src/main/scala/views/Application/index.scala.html",
        "src/main/scala/views/Application/main.scala.html",
    ],
    include_play_imports = True,
    source_directory = "src/main/scala/views/Application",
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
    deps = [":app_lib"],
)
