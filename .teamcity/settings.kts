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
            param("sourceFolders", "code")
            param("MatlabPathKey", """C:\Program Files\MATLAB\R2024a""")
        }
    }

})