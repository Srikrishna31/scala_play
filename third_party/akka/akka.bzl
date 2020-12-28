load("@rules_jvm_external//:defs.bzl", "maven_install")
load("//third_party:java_deps.bzl", "AKKA_PREF", "ARTIFACTORY", "add_java_dependencies")

deps = (
    ("akka-actor", AKKA_PREF + "akka-actor_2.12/2.6.9/akka-actor_2.12-2.6.9.jar", "cb875fa0f30a481509f00180acefd83eeac6db4e97996a6ff2996273e0bd227c"),
    ("akka-actor-typed", AKKA_PREF + "akka-actor-typed_2.12/2.6.9/akka-actor-typed_2.12-2.6.9.jar", "00438452834606416c871e74f45341b3d86d1cc23ebedfd71e830a59f6dda0e7"),
    ("akka-http", AKKA_PREF + "akka-http_2.12/10.2.2/akka-http_2.12-10.2.2.jar", ""),
    ("akka-http-core", AKKA_PREF + "akka-http-core_2.12/10.2.2/akka-http-core_2.12-10.2.2.jar", ""),
    ("akka-http2-support", AKKA_PREF + "akka-http2-support_2.12/10.2.2/akka-http2-support_2.12-10.2.2.jar", ""),
    ("akka-parsing", AKKA_PREF + "akka-parsing_2.12/10.2.2/akka-parsing_2.12-10.2.2.jar", ""),
    ("akka-protobuf", AKKA_PREF + "akka-protobuf_2.12/2.6.9/akka-protobuf_2.12-2.6.9.jar", "eac092a05e5528ecb61308c4a59bae9d98e74b380712f0f5441826740606ba4b"),
    ("akka-slf4j", AKKA_PREF + "akka-slf4j_2.12/2.6.9/akka-slf4j_2.12-2.6.9.jar", "2a209a02b387a852401bc213286be6fdc64c04fc5780b56ceb240f2650324c13"),
    ("akka-stream", AKKA_PREF + "akka-stream_2.12/2.6.9/akka-stream_2.12-2.6.9.jar ", "370d84d8ba7862793c06e586fcbe8b852c543df265abf9c7133466fa36c15eb6"),
)

def load_akka():
    add_java_dependencies(deps)

#    maven_install(
#        name = "maven",
#        artifacts = [
#            "com.typesafe.akka:akka-actor_2.12:2.6.9",
#            "com.typesafe.akka:akka-http_2.12:10.2.0",
#            "com.typesafe.akka:akka-stream_2.12:2.6.9",
#        ],
#        repositories = [
#            ARTIFACTORY,
#        ],
#    )
