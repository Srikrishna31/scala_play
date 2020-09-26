load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def load_google_protobuff():
    protobuf_version = "3.11.3"

    protobuf_version_sha256 = "cf754718b0aa945b00550ed7962ddc167167bd922b842199eeb6505e6f344852"

    http_archive(
        name = "com_google_protobuf",
        sha256 = protobuf_version_sha256,
        strip_prefix = "protobuf-%s" % protobuf_version,
        url = "https://github.com/protocolbuffers/protobuf/archive/v%s.tar.gz" % protobuf_version,
    )
