load("//third_party/joda_time:joda_time.bzl", "load_joda_time")
load("//third_party/play_framework:play_framework.bzl", "load_play")

def load_deps():
    load_joda_time()
    load_play()
