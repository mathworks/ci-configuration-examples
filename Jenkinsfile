pipeline {
  agent any
  stages {
    stage('Run MATLAB Tests') {
      steps {
        // As an alternative to runMATLABTests, you can use runMATLABCommand to execute a MATLAB script, function, or statement. aaaa
        runMATLABCommand "addpath('code'); results = runtests('IncludeSubfolders', true); assertSuccess(results);"
      }
    }
  }
}
