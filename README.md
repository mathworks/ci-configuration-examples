| **Azure<sup>&reg;</sup>&nbsp;DevOps** | **CircleCI<sup>&reg;</sup>** | **GitHub<sup>&reg;</sup>&nbsp;Actions** | **Travis&nbsp;CI&trade;** | 
|:---------------------------|:-----------------:|:----------------------------:|:--------------------------:|
| [![Build Status](https://dev.azure.com/iat-ci/ci-configuration-examples/_apis/build/status/mathworks.ci-configuration-examples)](https://dev.azure.com/iat-ci/ci-configuration-examples/_build) <br> ![Azure DevOps Coverage](https://img.shields.io/azure-devops/coverage/iat-ci/ci-configuration-examples/36) | [![CircleCI](https://circleci.com/gh/mathworks/ci-configuration-examples.svg?style=svg)](https://circleci.com/gh/mathworks/ci-configuration-examples) <br><br> | [![MATLAB](https://github.com/mathworks/ci-configuration-examples/actions/workflows/ci.yml/badge.svg)](https://github.com/mathworks/ci-configuration-examples/actions/workflows/ci.yml) <br><br> | [![Build Status](https://app.travis-ci.com/mathworks/ci-configuration-examples.svg)](https://app.travis-ci.com/mathworks/ci-configuration-examples) <br><br> |


# Continuous Integration (CI) configuration examples for MATLAB<sup>&reg;</sup>

Are you interested in automating your testing with CI?

Not sure how to connect MATLAB with CI systems?

We've got you covered!

This repository makes it easy to run your MATLAB tests on some of the most common CI platforms. The configuration files take care of setting up MATLAB to work with the CI system and automatically executing your MATLAB tests.

<br>


## Getting started
### <u>Quick start guide</u>
Here's how to quickly get this repository running on a CI system:
1. Fork the repository to your own GitHub account
2. Go to one of the supported CI platforms and install the available MATLAB CI plugin ***Note:*** GitHub Actions does not require this step
3. Create a new CI job using your forked repository
4. Enjoy using CI with MATLAB!

That's really it!

To use your MATLAB code or Simulink<sup>&reg;</sup> models with this repository, simply replace the existing code and tests in "code" and "tests" with your own code and tests. There's no need to modify any of the CI configuration files because they are all completely agnostic of the MATLAB code being used.

***Notes:***
* In most cases, the configuration files will automatically get picked up by the CI platform during step 3, but some platforms may require you to specify which file to use
* The default branch for this repository is "main"

<br>


### <u>Step-by-step getting started guide for GitHub Actions</u>
Our Continuous Integration with MATLAB and GitHub Actions Workshop provides a step-by-step guide for getting started with GitHub Actions.
* https://github.com/mathworks/ci-with-matlab-and-github-actions-workshop


<br>


## Badges

Badges look really great, but they're not always easy to set up. Take a look at the badges, badge code, and reference links below to get started with badges for your repository.

<br>

| **Azure&nbsp;DevOps** |  |
|:---------------------------|:-|
| Badges | [![Build Status](https://dev.azure.com/iat-ci/ci-configuration-examples/_apis/build/status/mathworks.ci-configuration-examples)](https://dev.azure.com/iat-ci/ci-configuration-examples/_build) <br> ![Azure DevOps Coverage](https://img.shields.io/azure-devops/coverage/iat-ci/ci-configuration-examples/36) |
| Badge Code | \[\!\[Build Status](https[]()://dev.azure.com/***AZURE_DEVOPS_ORG***/***AZURE_DEVOPS_PROJECT_NAME***/_apis/build/status/***GITHUB_USERNAME***.***GITHUB_REPO_NAME***)](https[]()://dev.azure.com/***AZURE_DEVOPS_ORG***/***AZURE_DEVOPS_PROJECT_NAME***/_build) <br><br> \!\[Azure DevOps Coverage](https[]()://img.shields.io/azure-devops/coverage/***AZURE_DEVOPS_ORG***/***AZURE_DEVOPS_PROJECT_NAME***/***AZURE_DEVOPS_DEFINITION_ID***) |
| Badge Help | [Blog with helpful information for setting up Azure DevOps badges](https://gregorsuttie.com/2019/03/20/azure-devops-add-your-build-status-badges-to-your-wiki/) |

<br>

| **CircleCI** |  |
|:------------------|:-|
| Badge | [![CircleCI](https://circleci.com/gh/mathworks/ci-configuration-examples.svg?style=svg)](https://circleci.com/gh/mathworks/ci-configuration-examples) |
| Badge Code | \[\!\[CircleCI](https[]()://circleci.com/***SOURCE_CONTROL_SYSTEM***/***GITHUB_USERNAME***/***GITHUB_REPO_NAME***.svg?style=svg)](https[]()://circleci.com/***SOURCE_CONTROL_SYSTEM***/***GITHUB_USERNAME***/***GITHUB_REPO_NAME***) |
| Badge Help | [CircleCI documentation for setting up badges](https://circleci.com/docs/2.0/status-badges "CircleCI documentation for setting up badges") |

<br>

| **GitHub&nbsp;Actions** |  |
|:-----------------------------|:-|
| Badge | [![MATLAB](https://github.com/mathworks/ci-configuration-examples/actions/workflows/ci.yml/badge.svg)](https://github.com/mathworks/ci-configuration-examples/actions/workflows/ci.yml) |
| Badge Code | \[\!\[MATLAB](https[]()://github.com/***GITHUB_USERNAME***/***GITHUB_REPO_NAME***/actions/workflows/ci.yml/badge.svg)](https[]()://github.com/***GITHUB_USERNAME***/***GITHUB_REPO_NAME***/actions/workflows/ci.yml) |
| Badge Help | [GitHub Actions documentation for setting up badges](https://docs.github.com/en/actions/managing-workflow-runs/adding-a-workflow-status-badge) |

<br>

| **Travis&nbsp;CI** |  |
|:--------------------------|:-|
| Badge | [![Build Status](https://app.travis-ci.com/mathworks/ci-configuration-examples.svg)](https://app.travis-ci.com/mathworks/ci-configuration-examples) |
| Badge Code | \[\!\[Build Status](https[]()://app.travis-ci.com/***GITHUB_USERNAME***/***GITHUB_REPO_NAME***.svg)](https[]()://app.travis-ci.com/***GITHUB_USERNAME***/***GITHUB_REPO_NAME***) |
| Badge Help | [Travis CI documentation for setting up badges](https://docs.travis-ci.com/user/status-images/ "Travis CI documentation for setting up badges") |

<br>

| **GitLab&nbsp;CI/CD** |  |
|:--------------------------|:-|
| Badge Code | \[\!\[Pipeline Status](https[]()://gitlab.com/***GITLAB_PROJECT_PATH***/badges/***DEFAULT_BRANCH_NAME***/pipeline.svg)](https[]()://gitlab.com/***GITLAB_PROJECT_PATH***) |
| Badge Help | [GitLab CI/CD documentation for setting up badges](https://docs.gitlab.com/ee/user/project/badges.html "GitLab CI/CD documentation for setting up badges") |

<br>

**How to use the Badge Code:**
1. Copy-paste the badge code into your README.md file
    * The badge code you copy should start with "`[!`" and not "`\[\!`"
2. Replace all ***BOLD+ITALIC*** names with your specific credentials/names
    * Replace ***GITHUB_ORG*** with your GitHub organization name (usually your GitHub username)
    * Replace ***GITHUB_REPO_NAME*** with the name of your GitHub repository
    * Replace ***SOURCE_CONTROL_SYSTEM*** with the name of the source control system you are pointing to (gh = GitHub, bb = BitBucket)
    * Replace ***AZURE_DEVOPS_ORG*** with the name of your Azure DevOps organization name (usually your Azure DevOps username)
    * Replace ***AZURE_DEVOPS_PROJECT_NAME*** with the name of the Azure DevOps project that will run the CI job
    * Replace ***AZURE_DEVOPS_DEFINITION_ID*** with the definition ID for your Azure DevOps pipeline
      * To find the definition ID for your Azure DevOps pipeline, you must:
        * go to your Azure DevOps project
        * select "Pipelines" from the left-side navigation menu
        * select the pipeline you want to get coverage for
        * look at the end of the resulting URL for the number in "definitionId=###"
    * Replace ***GITLAB_PROJECT_PATH*** with the path of your GitLab project
    * Replace ***DEFAULT_BRANCH_NAME*** with the repository branch name you want to get the pipeline status from

<br>
<br>


## Supported CI platforms
* Azure DevOps
* CircleCI
* GitHub Actions
* Jenkins&trade;
* Travis CI
* GitLab CI/CD

<br>


## About the code
The primary goal of this repository is to provide a set of configuration files as templates that illustrate how to run MATLAB on various CI platforms (e.g., Azure DevOps, CircleCI, GitHub Actions, Jenkins, Travis CI).

Each of these pipeline definitions does four things:

1. Install the latest MATLAB release on a Linux<sup>&reg;</sup>-based build agent
2. Run all MATLAB tests in the root of your repository, including its subfolders
3. Produce a test results report (if necessary)
4. Produce a code coverage report in Cobertura XML format for the source folder
   * Currently, only Azure DevOps supports code coverage directly
   * To see an example of using [Codecov](https://about.codecov.io/) to show coverage results, please refer to [https://github.com/mathworks/matlab-codecov-example](https://github.com/mathworks/matlab-codecov-example)

The example MATLAB code example `dayofyear.m` is a simple function takes a date string `"mm/dd/yyyy"` and returns the day-of-year number.

Notes:
* MATLAB already includes a day-of-year calculation using `day(d,"dayofyear")`, where `d` is a datetime object. This code is only used as an example since it is a concept that is familiar to most people.
* The code coverage is intentionally set below 100% to show how missing coverage looks with badges. Uncomment the last test in `TestExamples.m` to increase the coverage to 100%.

There are 2 test classes provided:
1. TestExamples.m - A simple set of equality and negative tests
2. ParameterizedTestExamples.m - A set of 12 equality tests set up using the parameterized test format

The repository includes these files:

| **File Path**              | **Description** |
|:---------------------------|:----------------|
| [`code/dayofyear.m`](code/dayofyear.m) | The [`dayofyear`](code/dayofyear.m) function returns the day-of-year number for a given date string "mm/dd/yyyy" |
| [`tests/TestExamples.m`](tests/TestExamples.m) | The [`TestExamples`](tests/TestExamples.m) class provides a few equality and negative tests for the [`dayofyear`](code/dayofyear.m) function |
| [`tests/ParameterizedTestExample.m`](tests/ParameterizedTestExample.m) | The [`ParameterizedTestExample`](tests/ParameterizedTestExample.m) class provides 12 tests for the [`dayofyear`](code/dayofyear.m) function using the parameterized test format |
| [`azure-pipelines.yml`](###Azure-DevOps) | The [`azure-pipelines.yml`](azure-pipelines.yml) file defines the pipeline that runs on [Azure DevOps](https://marketplace.visualstudio.com/items?itemName=MathWorks.matlab-azure-devops-extension). |
| [`.circleci/config.yml`](###CircleCI) | The [`config.yml`](.circleci/config.yml) file defines the pipeline that runs on [CircleCI](https://circleci.com/orbs/registry/orb/mathworks/matlab) |
| [`.github/workflows/ci.yml`](###GitHub-Actions) | The [`ci.yml`](.github/workflows/ci.yml) file defines the pipeline that runs on [GitHub Actions](https://github.com/matlab-actions/overview) |
| [`Jenkinsfile`](###Jenkins) | The [`Jenkinsfile`](Jenkinsfile) file defines the pipeline that runs on [Jenkins](https://plugins.jenkins.io/matlab/) |
| [`.travis.yml`](###Travis-CI) | The [`.travis.yml`](.travis.yml) file defines the pipeline that runs on [Travis CI](https://docs.travis-ci.com/user/languages/matlab/) |
| [`.gitlab-ci.yml`](###GitLab-CI/CD) | The [`.gitlab-ci.yml`](.gitlab-ci.yml) file defines the pipeline that runs on [GitLab CI/CD](https://docs.gitlab.com/ee/ci/) |

<br>


## CI configuration files

### Azure DevOps
```yml
pool:
  vmImage: ubuntu-latest
steps:
  - task: InstallMATLAB@0
  - task: RunMATLABTests@0
    inputs:
      sourceFolder: code
      codeCoverageCobertura: code-coverage/coverage.xml
      testResultsJUnit: test-results/results.xml
  - task: PublishTestResults@2
    inputs:
      testResultsFormat: 'JUnit'
      testResultsFiles: 'test-results/results.xml'
  - task: PublishCodeCoverageResults@1
    inputs:
      codeCoverageTool: 'Cobertura'
      summaryFileLocation: 'code-coverage/coverage.xml'
      pathToSources: 'code/'

  # As an alternative to RunMATLABTests, you can use RunMATLABCommand to execute a MATLAB script, function, or statement.
  # - task: RunMATLABCommand@0
  #   inputs:
  #     command: addpath('code'); results = runtests('IncludeSubfolders', true); assertSuccess(results);
```

<br>

### CircleCI
```yml
version: 2.1
orbs:
  matlab: mathworks/matlab@0
jobs:
  build:
    machine:
      image: ubuntu-2004:202201-02
    steps:
      - checkout
      - matlab/install
      - matlab/run-tests:
          source-folder: code

      # As an alternative to run-tests, you can use run-command to execute a MATLAB script, function, or statement.
      # - matlab/run-command:
      #     command: addpath('code'); results = runtests('IncludeSubfolders', true); assertSuccess(results);
```

<br>

### GitHub Actions
```yml
# This is a basic workflow to help you get started with MATLAB Actions

name: MATLAB Build

# Controls when the action will run. 
on:
  # Triggers the workflow on push or pull request events but only for the main branch
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

jobs:
  # This workflow contains a single job called "build"
  build:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
      # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
      - uses: actions/checkout@v3
      
      # Sets up MATLAB on the GitHub Actions runner
      - name: Setup MATLAB
        uses: matlab-actions/setup-matlab@v1

      # Runs a set of commands using the runners shell
      - name: Run all tests
        uses: matlab-actions/run-tests@v1
        with:
          source-folder: code

      # As an alternative to run-tests, you can use run-command to execute a MATLAB script, function, or statement.
      #- name: Run all tests
      #  uses: matlab-actions/run-command@v1
      #  with:
      #    command: addpath('code'); results = runtests('IncludeSubfolders', true); assertSuccess(results);
```

<br>

### Jenkins
```groovy
pipeline {
  agent any
  stages {
    stage('Run MATLAB Tests') {
      steps {
        runMATLABTests(
          sourceFolder: 'code'
        )

        // As an alternative to runMATLABTests, you can use runMATLABCommand to execute a MATLAB script, function, or statement.
        // runMATLABCommand "addpath('code'); results = runtests('IncludeSubfolders', true); assertSuccess(results);"
      }
    }
  }
}
```

<br>

### Travis CI
```yml
language: matlab
script: matlab -batch "addpath('code'); results = runtests('IncludeSubfolders', true); assertSuccess(results);"
```
<br>

### GitLab CI/CD
```yml
stages:         
  - matlab-test

matlab-test:       
  stage: matlab-test
  script:
    - matlab -batch "addpath('code'); results = runtests('IncludeSubfolders', true); assertSuccess(results);"
```
<br>


## Caveats
* MATLAB builds on Travis CI are available only for public projects.
* MATLAB builds on Azure DevOps, CircleCI, and GitHub Actions that use CI service-hosted agents are also available only for public projects. However, these integrations can also be used in private projects that leverage self-hosted runners/agents.

<br>


## Links
- [Continuous Integration with MATLAB and Simulink](https://www.mathworks.com/solutions/continuous-integration.html)

<br>


## Contact Us
If you have any questions or suggestions, please contact MathWorks at [continuous-integration@mathworks.com](mailto:continuous-integration@mathworks.com).
