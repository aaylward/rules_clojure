load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def rules_clojure_dependencies():
    jvm_maven_import_external(
        name = "org_clojure",
        artifact = "org.clojure:clojure:1.11.1",
        artifact_sha256 = "2381b6e9423ab465151455944903d13a56243d6006b9194afc1bf4f8710cb4de",
        server_urls = ["https://repo1.maven.org/maven2/"],
    )

    jvm_maven_import_external(
        name = "org_clojure_spec_alpha",
        artifact = "org.clojure:spec.alpha:0.3.218",
        artifact_sha256 = "67ec898eb55c66a957a55279dd85d1376bb994bd87668b2b0de1eb3b97e8aae0",
        server_urls = ["https://repo1.maven.org/maven2/"],
    )

    jvm_maven_import_external(
        name = "org_clojure_core_specs_alpha",
        artifact = "org.clojure:core.specs.alpha:0.2.62",
        artifact_sha256 = "06eea8c070bbe45c158567e443439681bc8c46e9123414f81bfa32ba42d6cbc8",
        server_urls = ["https://repo1.maven.org/maven2/"],
    )

def rules_clojure_toolchains():
    native.register_toolchains("@rules_clojure//:clojure_toolchain")
