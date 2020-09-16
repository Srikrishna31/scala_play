scala_library(
    name = "module",
    srcs = glob(["src/main/scala/module/*.scala"]),
    visibility = ["//app:__pkg__"],
    deps = [],
)

scala_test(
    name = "test-module",
    srcs = ["src/test/scala/module/WorkerSpec.scala"],
    visibility = ["//visibility:private"],
    deps = [":module"],
)
