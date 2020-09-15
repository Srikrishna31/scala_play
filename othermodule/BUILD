
scala_library(
    name = "othermodule",
    srcs = glob(["src/main/scala/othermodule/*.scala"]),
    deps = [],
    visibility = ["//bazeltest:__pkg__"]
)

scala_test (
    name = "test-othermodule",
    srcs = ["src/test/scala/othermodule/WorkerSpec.scala"],
    deps = [":othermodule"]
)


