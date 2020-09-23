# Overview
This project explores web development with Scala Play and Bazel as the build system. The idea is to create a simple REST API, which can act as a starting project for anyone wishing to go down the Bazel path. 

# Prerequisites:
Bazel - It is the only prerequisite for setting up this project. Please refer to this page for instructions about
setting up bazel for specific platforms: https://docs.bazel.build/versions/master/install.html

# Setting up scala with bazel
This project sets up the scala development environment with bazel build system.
It follows the instructions mentioned here: https://scalac.io/set-up-bazel-build-tool-for-scala-project/
It depends on rules_scala: https://github.com/bazelbuild/rules_scala.

# Updating Scala Compiler:
This needs three libraries:
- scala compiler : https://repo1.maven.org/maven2/org/scala-lang/scala-compiler/
- scala library : https://repo1.maven.org/maven2/org/scala-lang/scala-library/
- scala reflect : https://repo1.maven.org/maven2/org/scala-lang/scala-reflect/

Navigate to maven repo for each, goto appropriate version, and download the jar, and find its sha256sum, and
paste it in the scala_repositories method.
Note: if the rules_scala doesn't have the scala compiler version, it will create an error in the build. 
