import jetbrains.buildServer.configs.kotlin.*
import jetbrains.buildServer.configs.kotlin.buildFeatures.perfmon
import jetbrains.buildServer.configs.kotlin.triggers.vcs


/*
The settings script is an entry point for defining a TeamCity
project hierarchy. The script should contain a single call to the
project() function with a Project instance or an init function as
an argument.

VcsRoots, BuildTypes, Templates, and subprojects can be
registered inside the project using the vcsRoot(), buildType(),
template(), and subProject() methods respectively.

To debug settings scripts in command-line, run the

    mvnDebug org.jetbrains.teamcity:teamcity-configs-maven-plugin:generate

command and attach your debugger to the port 8000.

To debug in IntelliJ Idea, open the 'Maven Projects' tool window (View
-> Tool Windows -> Maven Projects), find the generate task node
(Plugins -> teamcity-configs -> teamcity-configs:generate), the
'Debug' option is available in the context menu for the task.
*/

version = "2023.11"

project {

    buildType(Build)
}

object Build : BuildType({
    name = "Build1"

    vcs {
        root(DslContext.settingsRoot)
    }

    steps {
        step {
            id = "matlabTestRunner"
            type = "matlabTestRunner"
            param("logLoggingLevel", "Default")
            param("pdfTestArtifact", "results/testResult.pdf")
            param("sourceFolders", "code")
            param("filterTestFolderByName", "tests")
            param("logOutputDetail", "Default")
            param("MatlabPathKey", """C:\Program Files\MATLAB\R2023b""")
        }
        step {
            id = "matlabCommandRunner"
            type = "matlabCommandRunner"
            param("matlabCommand", "disp('Hello Kotlin to CI dev team ')")
            param("MatlabPathKey", """C:\Program Files\MATLAB\R2023b""")
        }
    }

    triggers {
        vcs {
            perCheckinTriggering = true
            enableQueueOptimization = false
        }
    }

})
