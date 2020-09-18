load("//third_party/beautiful_scala:beautiful_scala.bzl", "load_beautiful_scala")
load("//third_party/joda_time:joda_time.bzl", "load_joda_time")
load("//third_party/play_framework:play_framework.bzl", "load_play")
load("//third_party/scala_js:scala_js.bzl", "load_scala_js")
load("//third_party/scalaz:scalaz.bzl", "load_scalaz")

def load_deps():
    load_beautiful_scala()
    load_joda_time()
    load_play()
    load_scala_js()
    load_scalaz()
