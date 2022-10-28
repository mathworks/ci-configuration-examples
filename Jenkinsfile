#!/usr/bin/env groovy
pipeline {
  agent any
  stages {
    stage('Run MATLAB Tests') {
      steps {
        runMATLABTests(
          sourceFolder: code
        )
      }
    }
  }
}
