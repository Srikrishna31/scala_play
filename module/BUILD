scala_library(
    name = "othermodule",
    srcs = glob(["src/main/scala/module/*.scala"]),
    visibility = ["//app:__pkg__"],
    deps = [],
)

scala_test(
    name = "test-othermodule",
    srcs = ["src/test/scala/module/WorkerSpec.scala"],
    visibility = ["//visibility:private"],
    deps = [":module"],
)
