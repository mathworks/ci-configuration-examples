# Continuous Integration (CI) configuration examples for MATLAB&reg;

Are you interested in automating your testing with CI?

Not sure how to connect MATLAB with CI systems?

We've got you covered!

This repository makes it easy to run your MATLAB tests on some of the most common CI platforms. The configuration files take care of setting up MATLAB to work with the CI system and automatically executing your MATLAB tests.

Take a look at the "Quick Start Guide" below to get started!

<br>


## Quick start guide
Here's how to quickly get this repository running on a CI system:
1. Fork the repository to your own GitHub account
2. Go to one of the supported CI platforms and install the available MATLAB CI plugin.  
***Note:*** GitHub Actions does not require this step.
3. Create a new CI job using your forked repository.  
4. Enjoy using CI with MATLAB!

That's really it!

To use your MATLAB code or Simulink&reg; models with this repository, simply replace the existing code and tests in "code" and "tests" with your own code and tests. There's no need to modify any of the CI configuration files because they are all completely agnostic of the MATLAB code being used.

***Note:*** In most cases, the configuration files will automatically get picked up by the CI platform during step 3, but some platforms may require you to specify which file to use.

<br>


## Badges

Badges look really great, but they're not always easy to set up. Take a look at the badges and reference links below to get started with badges for your repository.

<br>

| **Azure&reg;&nbsp;DevOps** ||
|:-|:-|
| Badges <br> (static&nbsp;examples) | ![Azure DevOps Build Status](https://img.shields.io/badge/Azure%20Pipelines-succeeded-brightgreen?logo=azurepipelines) <br> ![Azure DevOps Coverage](https://img.shields.io/badge/coverage-80%25-yellowgreen) |
| Badge Code | \[\!\[Azure DevOps Build Status](https[]()://dev.azure.com/***CI_USERNAME***/***CI_JOB_NAME_HTML***/_apis/build/status/***GITHUB_USERNAME***.***GITHUB_REPO_NAME***?branchName=main)](https[]()://dev.azure.com/***CI_USERNAME***/***CI_JOB_NAME***/_build/latest?definitionId=1&branchName=main) <br><br> \!\[Azure DevOps Coverage](https[]()://img.shields.io/azure-devops/coverage/***CI_USERNAME***/***CI_JOB_NAME_HTML***/1/main) |
| Badge Help | [Blog with helpful information for setting up Azure DevOps badges](https://gregorsuttie.com/2019/03/20/azure-devops-add-your-build-status-badges-to-your-wiki/) |

<br>

| **CircleCI&reg;** ||
|:-|:-|
| Badges <br> (static&nbsp;examples) | ![CircleCI Build Badge](https://img.shields.io/badge/circleci-passing-brightgreen?logo=circleci) |
| Badge Code | \[\!\[CircleCI Build Badge](https[]()://circleci.com/gh/***CI_USERNAME***/***CI_JOB_NAME***.svg?style=shield)](https[]()://circleci.com/gh/***CI_USERNAME***/***CI_JOB_NAME***) |
| Badge Help | [CircleCI documentation for setting up badges](https://circleci.com/docs/2.0/status-badges/#generating-a-status-badge "CircleCI documentation for setting up badges") |

<br>

| **GitHub&reg;&nbsp;Actions** ||
|:-|:-|
| Badges <br> (static&nbsp;examples) | ![MATLAB](https://img.shields.io/badge/MATLAB%20Tests-passing-brightgreen?logo=github) |
| Badge Code | \[\!\[MATLAB](https[]()://github.com/***GITHUB_USERNAME***/***GITHUB_REPO_NAME***/workflows/***GITHUB_WORKFLOW_NAME***/badge.svg)](https[]()://github.com/***GITHUB_USERNAME***/***GITHUB_REPO_NAME***/actions?query=workflow%3A***GITHUB_WORKFLOW_NAME***) |
| Badge Help | [GitHub Actions documentation for setting up badges](https://docs.github.com/en/actions/managing-workflow-runs/adding-a-workflow-status-badge) |

<br>

| **Travis&nbsp;CI&trade;** ||
|:-|:-|
| Badges <br> (static&nbsp;examples) | ![Travis CI Build Status](https://img.shields.io/badge/build-passing-brightgreen) |
| Badge Code | \[\!\[Travis CI Build Status](https[]()://travis-ci.com/***CI_USERNAME***/***CI_JOB_NAME***.svg?branch=main)](https[]()://travis-ci.com/***CI_USERNAME***/***CI_JOB_NAME***) |
| Badge Help | [Travis CI documentation for setting up badges](https://docs.travis-ci.com/user/status-images/ "Travis CI documentation for setting up badges") |

<br>

**How to use the Badge Code:**
1. Copy-paste the badge code into your README.md file
    * The badge code you copy should start with "`[!`" and not "`\[\!`"
2. Replace all ***BOLD+ITALIC*** names with your specific credentials/names
    * Replace ***CI_USERNAME*** with your username on the respective CI platform
    * Replace ***CI_JOB_NAME*** with the name of the CI job on the respective CI platform (this may contain HTML encodings for characters like spaces)
    * Replace ***GITHUB_WORKFLOW_NAME*** with the name of the workflow on GitHub Actions
      * Make sure to double-check this name with what is listed on the Actions page of your GitHub repository because GitHub automatically replaces some characters in the workflow name, such as replacing spaces with dashes
    * Replace ***GITHUB_USERNAME*** with your GitHub username
    * Replace ***GITHUB_REPO_NAME*** with the name of your GitHub repository that the CI job is using

<br>

**Static Badge Notes**
* The example static badges may look slightly different than the badges directly provided by the various CI platforms

<br>
<br>


## Supported CI platforms
* Azure DevOps
* CircleCI
* GitHub Actions
* Jenkins&trade;
* Travis CI

<br>


## About the code
The primary goal of this repository is to provide a set of configuration files as templates that illustrate how to run MATLAB on various CI platforms (e.g., Azure DevOps, CircleCI, GitHub Actions, Jenkins, Travis CI).

Each of these pipeline definitions does four things:

1. Install the latest MATLAB release on a Linux&reg;-based build agent
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
|----------------------------|-----------------|
| [`code/dayofyear.m`](code/dayofyear.m) | The [`dayofyear`](code/dayofyear.m) function returns the day-of-year number for a given date string "mm/dd/yyyy" |
| [`tests/TestExamples.m`](tests/TestExamples.m) | The [`TestExamples`](tests/TestExamples.m) class provides a few equality and negative tests for the [`dayofyear`](code/dayofyear.m) function |
| [`tests/ParameterizedTestExample.m`](tests/ParameterizedTestExample.m) | The [`ParameterizedTestExample`](tests/ParameterizedTestExample.m) class provides 12 tests for the [`dayofyear`](code/dayofyear.m) function using the parameterized test format |
| [`azure-pipelines.yml`](###Azure-DevOps) | The [`azure-pipelines.yml`](azure-pipelines.yml) file defines the pipeline that runs on [Azure DevOps](https://marketplace.visualstudio.com/items?itemName=MathWorks.matlab-azure-devops-extension). |
| [`.circleci/config.yml`](###CircleCI) | The [`config.yml`](.circleci/config.yml) file defines the pipeline that runs on [CircleCI](https://circleci.com/orbs/registry/orb/mathworks/matlab) |
| [`.github/workflows/ci.yml`](###GitHub-Actions) | The [`ci.yml`](.github/workflows/ci.yml) file defines the pipeline that runs on [GitHub Actions](https://github.com/matlab-actions/overview) |
| [`Jenkinsfile`](###Jenkins) | The [`Jenkinsfile`](Jenkinsfile) file defines the pipeline that runs on [Jenkins](https://plugins.jenkins.io/matlab/) |
| [`.travis.yml`](###Travis-CI) | The [`.travis.yml`](.travis.yml) file defines the pipeline that runs on [Travis CI](https://docs.travis-ci.com/user/languages/matlab/) |

<br>


## CI configuration files

### Azure DevOps
```yml
pool:
  vmImage: Ubuntu 16.04
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
  codecov: codecov/codecov@1
jobs:
  build:
    machine:
      image: ubuntu-1604:201903-01
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

name: MATLAB

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
      - uses: actions/checkout@v2
      
      # Sets up MATLAB on the GitHub Actions runner
      - name: Setup MATLAB
        uses: matlab-actions/setup-matlab@v0

      # Runs a set of commands using the runners shell
      - name: Run all tests
        uses: matlab-actions/run-tests@v0
        with:
          source-folder: code

      # As an alternative to run-tests, you can use run-command to execute a MATLAB script, function, or statement.
      #- name: Run all tests
      #  uses: matlab-actions/run-command@v0
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


## Caveats
* MATLAB builds on Travis CI are available only for public projects.
* MATLAB builds on Azure DevOps, CircleCI, and GitHub Actions that use CI service-hosted agents are also available only for public projects. However, these integrations can also be used in private projects that leverage self-hosted runners/agents.

<br>


## Links
- [Continuous Integration with MATLAB and Simulink](https://www.mathworks.com/solutions/continuous-integration.html)

<br>


## Contact Us
If you have any questions or suggestions, please contact MathWorks at [continuous-integration@mathworks.com](mailto:continuous-integration@mathworks.com).
