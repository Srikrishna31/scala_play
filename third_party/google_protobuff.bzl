load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def load_google_protobuff():
    protobuf_version = "3.14.0"

    protobuf_version_sha256 = "d0f5f605d0d656007ce6c8b5a82df3037e1d8fe8b121ed42e536f569dec16113"

    http_archive(
        name = "com_google_protobuf",
        sha256 = protobuf_version_sha256,
        strip_prefix = "protobuf-%s" % protobuf_version,
        url = "https://github.com/protocolbuffers/protobuf/archive/v%s.tar.gz" % protobuf_version,
    )
