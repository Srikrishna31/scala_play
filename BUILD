scala_binary(
    name = "App",
    jvm_flags = [
        "-Dhttp.port=9000",
        "-Dapplication.name=my-service",
    ],
    main_class = "play.core.server.ProdServerStart",
    resource_strip_prefix = "conf",
    resources = [
        "//conf:app-conf",
    ],
    deps = [
        "//app",
    ],
)

alias(
    name = "package-app",
    actual = ":App_deploy.jar",
)

test_suite(
    name = "app-test",
    tests = [
        "//app:test-app",
        "//module:test-module",
    ],
)
