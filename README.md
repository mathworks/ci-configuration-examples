| **Azure<sup>&reg;</sup>&nbsp;DevOps** | **CircleCI<sup>&reg;</sup>** | **GitHub<sup>&reg;</sup>&nbsp;Actions** |  **GitLab<sup>&reg;</sup>&nbsp;CI/CD** | 
|:---------------------------|:-----------------:|:----------------------------:|:--------------------------:|
| [![Build Status](https://dev.azure.com/iat-ci/ci-configuration-examples/_apis/build/status/mathworks.ci-configuration-examples)](https://dev.azure.com/iat-ci/ci-configuration-examples/_build) <br> ![Azure DevOps Coverage](https://img.shields.io/azure-devops/coverage/iat-ci/ci-configuration-examples/38) | [![CircleCI](https://circleci.com/gh/mathworks/ci-configuration-examples.svg?style=svg)](https://app.circleci.com/pipelines/github/mathworks/ci-configuration-examples) <br><br> | [![MATLAB](https://github.com/mathworks/ci-configuration-examples/actions/workflows/ci.yml/badge.svg)](https://github.com/mathworks/ci-configuration-examples/actions/workflows/ci.yml) <br><br> | [![GitLab CI/CD](https://gitlab.com/mathworks/ci-configuration-examples/badges/main/pipeline.svg)](https://gitlab.com/mathworks/ci-configuration-examples/-/pipelines) <br><br> |


# Continuous Integration (CI) configuration examples for MATLAB<sup>&reg;</sup>

Are you interested in automating your testing with CI?

Not sure how to connect MATLAB with CI systems?

We've got you covered!

This repository makes it easy to run your MATLAB tests on some of the most common CI platforms. The configuration files take care of setting up MATLAB to work with the CI system and automatically executing your MATLAB tests.

For advanced workflows, use the [`advanced-ci-configuration-examples`](https://github.com/mathworks/advanced-ci-configuration-examples) repository instead.

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
| Badges | [![Build Status](https://dev.azure.com/iat-ci/ci-configuration-examples/_apis/build/status/mathworks.ci-configuration-examples)](https://dev.azure.com/iat-ci/ci-configuration-examples/_build) <br> ![Azure DevOps Coverage](https://img.shields.io/azure-devops/coverage/iat-ci/ci-configuration-examples/38) |
| Badge Code | \[\!\[Build Status](https[]()://dev.azure.com/***AZURE_DEVOPS_ORG***/***AZURE_DEVOPS_PROJECT_NAME***/_apis/build/status/***GITHUB_USERNAME***.***GITHUB_REPO_NAME***)](https[]()://dev.azure.com/***AZURE_DEVOPS_ORG***/***AZURE_DEVOPS_PROJECT_NAME***/_build) <br><br> \!\[Azure DevOps Coverage](https[]()://img.shields.io/azure-devops/coverage/***AZURE_DEVOPS_ORG***/***AZURE_DEVOPS_PROJECT_NAME***/***AZURE_DEVOPS_DEFINITION_ID***) |
| Badge Help | [Blog with helpful information for setting up Azure DevOps badges](https://gregorsuttie.com/2019/03/20/azure-devops-add-your-build-status-badges-to-your-wiki/) |

<br>

| **CircleCI** |  |
|:------------------|:-|
| Badge | [![CircleCI](https://circleci.com/gh/mathworks/ci-configuration-examples.svg?style=svg)](https://circleci.com/gh/mathworks/ci-configuration-examples) |
| Badge Code | \[\!\[CircleCI](https[]()://circleci.com/***SOURCE_CONTROL_SYSTEM***/***GITHUB_USERNAME***/***GITHUB_REPO_NAME***.svg?style=svg)](https[]()://circleci.com/***SOURCE_CONTROL_SYSTEM***/***GITHUB_USERNAME***/***GITHUB_REPO_NAME***) |
| Badge Help | [CircleCI documentation for setting up badges](https://circleci.com/docs/guides/integration/status-badges/) |

<br>

| **GitHub&nbsp;Actions** |  |
|:-----------------------------|:-|
| Badge | [![MATLAB](https://github.com/mathworks/ci-configuration-examples/actions/workflows/ci.yml/badge.svg)](https://github.com/mathworks/ci-configuration-examples/actions/workflows/ci.yml) |
| Badge Code | \[\!\[MATLAB](https[]()://github.com/***GITHUB_USERNAME***/***GITHUB_REPO_NAME***/actions/workflows/ci.yml/badge.svg)](https[]()://github.com/***GITHUB_USERNAME***/***GITHUB_REPO_NAME***/actions/workflows/ci.yml) |
| Badge Help | [GitHub Actions documentation for setting up badges](https://docs.github.com/en/actions/managing-workflow-runs/adding-a-workflow-status-badge) |

<br>

| **GitLab&nbsp;CI/CD** |  |
|:--------------------------|:-|
| Badge | [![GitLab CI/CD](https://gitlab.com/mathworks/ci-configuration-examples/badges/main/pipeline.svg)](https://gitlab.com/mathworks/ci-configuration-examples/-/pipelines) |
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
* Azure&reg; DevOps
* CircleCI&reg;
* GitHub&reg; Actions
* Jenkins&reg;
* GitLab&reg; CI/CD

<br>


## About the code
The primary goal of this repository is to provide a set of configuration files as templates that illustrate how to run MATLAB on various CI platforms (e.g., Azure DevOps, CircleCI, GitHub Actions, Jenkins).

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
| [`azure-pipelines.yml`](azure-pipelines.yml) | The [`azure-pipelines.yml`](azure-pipelines.yml) file defines the pipeline that runs on [Azure DevOps](https://marketplace.visualstudio.com/items?itemName=MathWorks.matlab-azure-devops-extension). |
| [`.circleci/config.yml`](.circleci/config.yml) | The [`config.yml`](.circleci/config.yml) file defines the pipeline that runs on [CircleCI](https://circleci.com/orbs/registry/orb/mathworks/matlab) |
| [`.github/workflows/ci.yml`](.github/workflows/ci.yml) | The [`ci.yml`](.github/workflows/ci.yml) file defines the pipeline that runs on [GitHub Actions](https://github.com/matlab-actions/overview) |
| [`Jenkinsfile`](Jenkinsfile) | The [`Jenkinsfile`](Jenkinsfile) file defines the pipeline that runs on [Jenkins](https://plugins.jenkins.io/matlab/) |
| [`.gitlab-ci.yml`](.gitlab-ci.yml) | The [`.gitlab-ci.yml`](.gitlab-ci.yml) file defines the pipeline that runs on [GitLab CI/CD](https://docs.gitlab.com/ee/ci/) |

<br>


## Licensing
Product licensing for your pipeline depends on your project visibility as well as the types of products the pipeline uses:

- Public project — The CI integration for MATLAB automatically licenses all products for you, except for transformation products, such as MATLAB Coder&trade; and MATLAB Compiler&trade;.
- Private project — The CI integration does not automatically license any products for you. 

To license products that are not automatically licensed, you can request a [MATLAB batch licensing token](https://github.com/mathworks-ref-arch/matlab-dockerfile/blob/main/alternates/non-interactive/MATLAB-BATCH.md#matlab-batch-licensing-token) by submitting the [MATLAB Batch Licensing Pilot](https://www.mathworks.com/support/batch-tokens.html) form. Batch licensing tokens are strings that enable MATLAB to start in noninteractive environments.

<br>


## See Also
- [Advanced Continuous Integration (CI) configuration examples for MATLAB](https://github.com/mathworks/advanced-ci-configuration-examples)
- [Continuous Integration with MATLAB and Simulink](https://www.mathworks.com/solutions/continuous-integration.html)

<br>


## Feedback and Support
If you encounter a product licensing issue, consider requesting a MATLAB batch licensing token to use in your pipeline. For more information, see [Licensing](#licensing).

If you have an enhancement request or other feedback, create an issue on the [Issues](https://github.com/mathworks/ci-configuration-examples/issues) page.

For support, contact [MathWorks Technical Support](https://www.mathworks.com/support/contact_us.html).
