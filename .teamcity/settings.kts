package _Self.buildTypes

import jetbrains.buildServer.configs.kotlin.v2018_2.*
import jetbrains.buildServer.configs.kotlin.v2018_2.buildFeatures.perfmon
import jetbrains.buildServer.configs.kotlin.v2018_2.triggers.vcs

object Build : BuildType({
    name = "Build"

    vcs {
        root(DslContext.settingsRoot)
    }

    steps {
        step {
            name = "Run MATLAB tests"
            type = "matlabTestRunner"
            param("logLoggingLevel", "Terse")
            param("pdfTestArtifact", "artifacts/testResults.pdf")
            param("sourceFolders", "code")
            param("runTestParallel", "true")
            param("filterTestFolderByName", "tests")
            param("logOutputDetail", "None")
            param("strict", "true")
            param("tapTestArtifact", "artifacts/tspResults.tap")
            param("MatlabPathKey", """C:\Program Files\MATLAB\R2024a""")
        }
    }

    triggers {
        vcs {
        }
    }

    features {
        perfmon {
        }
    }

})