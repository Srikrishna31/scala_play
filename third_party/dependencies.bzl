load("//third_party/akka:akka.bzl", "load_akka")
load("//third_party/beautiful_scala:beautiful_scala.bzl", "load_beautiful_scala")
load("//third_party/javax_inject:javax_inject.bzl", "load_javax_inject")
load("//third_party/joda_time:joda_time.bzl", "load_joda_time")
load("//third_party/play_framework:play_framework.bzl", "load_play_framework")
load("//third_party/scala_js:scala_js.bzl", "load_scala_js")
load("//third_party/scalaz:scalaz.bzl", "load_scalaz")

def load_deps():
    load_akka()
    load_beautiful_scala()
    load_javax_inject()
    load_joda_time()
    load_play_framework()
    load_scala_js()
    load_scalaz()
