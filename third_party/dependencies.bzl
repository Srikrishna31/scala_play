load("//third_party/akka:akka.bzl", "load_akka")
load("//third_party/beautiful_scala:beautiful_scala.bzl", "load_beautiful_scala")
load("//third_party/guice:guice.bzl", "load_guice")
load("//third_party/javax_inject:javax_inject.bzl", "load_javax_inject")
load("//third_party/joda_time:joda_time.bzl", "load_joda_time")
load("//third_party/play_framework:play_framework.bzl", "load_play_framework", "load_play_framework1")
load("//third_party/reactivestreams:reactivestreams.bzl", "load_reactivestreams")
load("//third_party/scala_js:scala_js.bzl", "load_scala_js")
load("//third_party/scala_guice:scala_guice.bzl", "load_scala_guice")
load("//third_party/scala_parser_combinator:scala_parser_combinator.bzl", "load_scalaparsercombinator")
load("//third_party/scala_xml:scala_xml.bzl", "load_scalaxml")
load("//third_party/scalaz:scalaz.bzl", "load_scalaz")
load("//third_party/slf4j:slf4j.bzl", "load_slf4j")
load("//third_party/slick:slick.bzl", "load_slick")
load("//third_party/sslconfig:sslconfig.bzl", "load_sslconfig")

def load_deps():
    load_akka()
    load_beautiful_scala()
    load_guice()
    load_javax_inject()
    load_joda_time()
    load_play_framework()
    load_play_framework1()
    load_reactivestreams()
    load_scala_js()
    load_scala_guice()
    load_scalaparsercombinator()
    load_scalaxml()
    load_scalaz()
    load_slf4j()
    load_slick()
    load_sslconfig()
