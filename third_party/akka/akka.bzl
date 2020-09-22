load("//third_party:java_deps.bzl", "AKKA_PREF", "add_java_dependencies")

deps = (
    ("akka-actor", AKKA_PREF + "akka-actor_2.12/2.6.9/akka-actor_2.12-2.6.9.jar", "cb875fa0f30a481509f00180acefd83eeac6db4e97996a6ff2996273e0bd227c"),
    ("akka-http", AKKA_PREF + "akka-http_2.12/10.2.0/akka-http_2.12-10.2.0.jar", "8e93e20ce86494e3999110b0f23e2d4437e037bada2c92fa52e03c70d4a1da8c"),
    ("akka-stream", AKKA_PREF + "akka-stream_2.12/2.6.9/akka-stream_2.12-2.6.9.jar ", "370d84d8ba7862793c06e586fcbe8b852c543df265abf9c7133466fa36c15eb6"),
)

def load_akka():
    add_java_dependencies(deps)
