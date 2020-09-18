scala_binary(
    name = "App",
    main_class = "app.Main",
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
