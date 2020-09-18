# Setting up scala with bazel
This project sets up the scala development environment with bazel build system.
It follows the instructions mentioned here: https://scalac.io/set-up-bazel-build-tool-for-scala-project/

# Prerequisites:
Bazel - It is the only prerequisite for setting up this project. Please refer to this page for instructions about
setting up bazel for specific platforms: https://docs.bazel.build/versions/2.1.0/install.html

# Updating Scala Compiler:
This needs three libraries:
- scala compiler : https://repo1.maven.org/maven2/org/scala-lang/scala-compiler/
- scala library : https://repo1.maven.org/maven2/org/scala-lang/scala-library/
- scala reflect : https://repo1.maven.org/maven2/org/scala-lang/scala-reflect/
Navigate to maven repo for each, goto appropriate version, and download the jar, and find its sha256sum, and
paste it in the scala_repositories method.
Note: if the rules_scala doesn't have the scala compiler version, it will create an error in the build. 