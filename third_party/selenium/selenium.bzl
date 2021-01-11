load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")
load("//third_party:java_deps.bzl", "add_java_dependencies")

MAVEN_LINK = "https://repo1.maven.org/maven2/org/"
deps = (
    ("selenium-api", MAVEN_LINK + "seleniumhq/selenium/selenium-api/3.141.59/selenium-api-3.141.59.jar", "8bfd5a736eccfc08866301ffc9b7f529e55976355c5799bed8392486df64dee5"),
    ("selenium-chrome-driver", MAVEN_LINK + "seleniumhq/selenium/selenium-chrome-driver/3.141.59/selenium-chrome-driver-3.141.59.jar", ""),
    ("selenium-core", MAVEN_LINK + "openqa/selenium/core/selenium-core/1.0-20080914.225453/selenium-core-1.0-20080914.225453.jar", ""),
    ("selenium-edge-driver", MAVEN_LINK + "seleniumhq/selenium/selenium-edge-driver/3.141.59/selenium-edge-driver-3.141.59.jar", "73b2dbcf5715838a31b577dd29f1a90813105375b38d6f72c59b17cd118aaa75"),
    ("selenium-firefox-driver", MAVEN_LINK + "seleniumhq/selenium/selenium-firefox-driver/3.141.59/selenium-firefox-driver-3.141.59.jar", "3e6edcb1e96a207bf98865cf4a56f0e1e2ffc478da2cf056644aec1c89c51fea"),
    ("selenium-htmldriver", MAVEN_LINK + "seleniumhq/selenium/selenium-htmlunit-driver/2.52.0/selenium-htmlunit-driver-2.52.0.jar", "ed64dcfff3371de093a95664ee82516836524be58d5d164e296a69ddc1818e33"),
    ("selenium-ie-driver", MAVEN_LINK + "seleniumhq/selenium/selenium-ie-driver/3.141.59/selenium-ie-driver-3.141.59.jar", "8b719a285a9404099a7ae310a849bc43aceed020b9571a6c8c80d096fcd455b2"),
    ("selenium-java", MAVEN_LINK + "seleniumhq/selenium/selenium-java/3.141.59/selenium-java-3.141.59.jar", "30e1912664e7d30183bc7968cff910bd637ce407e7558c0b6db79928d1d3290a"),
    ("selenium-remote-driver", MAVEN_LINK + "seleniumhq/selenium/selenium-remote-driver/3.141.59/selenium-remote-driver-3.141.59.jar", "9829fe57adf36743d785d0c2e7db504ba3ba0a3aacac652b8867cc854d2dfc45"),
    ("selenium-safari-driver", MAVEN_LINK + "seleniumhq/selenium/selenium-safari-driver/3.141.59/selenium-safari-driver-3.141.59.jar", "5c1a63252c86f353a2025e37144f9c60f20c1bbab16c8f8454f99ff271604806"),
)

def load_selenium():
    add_java_dependencies(deps)
