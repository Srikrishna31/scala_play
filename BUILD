scala_binary(
    name = "App",
    jvm_flags = [
        "-Dhttp.port=9000",
        "-Dapplication.name=my-service",
    ],
    main_class = "play.core.server.ProdServerStart",
    #    main_class = "play.core.server.DevServerStart",
    resource_strip_prefix = "conf",
    resources = [
        "//conf:app-conf",
    ],
    deps = [
        "//app:app_lib",
    ],
)

alias(
    name = "package-app",
    actual = ":App_deploy.jar",
)

test_suite(
    name = "app-test",
    tests = [
        "//app:test-controllers",
        "//module:test-module",
    ],
)
