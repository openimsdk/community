# [RFC #0001] OpenIMSDK cicd robot machine proposal

## Meta #0001

+ Name: OpenIMSDK cicd robot machine proposal
+ Start Date: 2023-05-13
+ Author(s): @cubxxw
+ Status: Draft
+ RFC Pull Request: (leave blank)
+ OpenIMSDK Pull Request: (leave blank)
+ OpenIMSDK Issue: (leave blank)
+ Supersedes: N/A


## 📇Topics

- [\[RFC #0001\] OpenIMSDK cicd robot machine proposal](#0001-openimsdk-cicd-robot-machine-proposal.md
  - [Meta](#meta)
  - [📇Topics](#topics)
  - [Summary](#summary)
  - [Definitions](#definitions)
  - [Motivation](#motivation)
  - [What it is](#what-it-is)
  - [How it Works](#how-it-works)
  - [Migration](#migration)
  - [Drawbacks](#drawbacks)
  - [Alternatives](#alternatives)
  - [Prior Art](#prior-art)
  - [Unresolved Questions](#unresolved-questions)
  - [Spec. Changes (OPTIONAL)](#spec-changes-optional)
  - [History](#history)


## Summary

The OpenIMSDK cicd machine is an automated system that performs continuous integration and deployment for OpenIMSDK projects. It streamlines the development process and ensures high quality code by running automated tests, code quality checks, and deployment pipelines.

## Definitions

+ Continuous integration (CI): the practice of automatically building and testing code changes on a frequent basis.
+ Continuous deployment (CD): the practice of automatically deploying code changes to production environments after they pass automated tests.

## Motivation

+ Improve development efficiency by automating repetitive tasks such as testing and deployment.
+ Reduce the risk of human error by automating tasks that can be prone to mistakes.
+ Ensure consistent code quality by enforcing automated checks.
+ Facilitate collaboration by providing a central location for code review and feedback.

## What it is

The OpenIMSDK cicd machine is a combination of multiple tools and services that work together to automate the development process. It includes:

+ A version control system (VCS) for storing code, such as GitHub.
+ A continuous integration (CI) server, such as Jenkins or CircleCI, to build and test the code on every commit.
+ A container registry, such as Docker Hub, to store built images.
+ A continuous deployment (CD) system, such as Kubernetes, to deploy new code changes to production environments.
+ Configuration management tools, such as Ansible or Chef, to manage the deployment of infrastructure and application dependencies.

## How it Works

The OpenIMSDK cicd machine works as follows:

1. Developers create feature branches in the VCS and make changes to the code.
2. Developers push their changes to the VCS, triggering a webhook that starts the CI process.
3. The CI server pulls the latest code changes, builds the application, and runs automated tests and code quality checks.
4. After the tests have passed, the CI server deploys the updated application to the staging environment for manual testing. Once the application passes manual testing, it is deployed to the production environment.
5. To automate this process, we propose the creation of an OpenIMSDK CICD bot. The bot will be responsible for automating the build, test, and deployment process of OpenIMSDK.

The OpenIMSDK CICD bot will integrate with the Git repository hosting the OpenIMSDK source code. It will monitor for changes to the repository and trigger the 'make init' command using the 'init_config.json' to perform initialization tasks automatically.

The bot will also be responsible for deploying the updated application to the staging and production environments. Deployment to the staging environment will happen automatically after the tests have passed. Deployment to the production environment will require manual approval from a designated team member.


## Migration

The OpenIMSDK CICD bot will require changes to the existing build and deployment process to include the 'make init' command and utilize the 'init_config.json' file. The existing build scripts and deployment configurations will need to be updated to work with the bot and ensure proper integration with the initialization process.

Existing OpenIMSDK developers will need to be trained on the new CICD process and the use of Kubernetes.

## Drawbacks

The OpenIMSDK CICD bot will require additional infrastructure to support. This includes setting up and managing the Kubernetes clusters and configuring the bot.

## Alternatives

Alternatives to the OpenIMSDK CICD bot include using an existing CICD service such as Jenkins or Travis CI. However, using an existing service may not provide the necessary customization and control required for the OpenIMSDK build and deployment process.

## Prior Art

Similar CICD bots have been developed for other projects, such as the Kubernetes project's Prow bot.

+ [https://docs.prow.k8s.io/docs/overview/](https://docs.prow.k8s.io/docs/overview/)
+ [https://github.com/kubernetes/test-infra/blob/master/prow/cron/cron.go](https://github.com/kubernetes/test-infra/blob/master/prow/cron/cron.go)

## Unresolved Questions

+ What additional features could be added to the OpenIMSDK CICD bot?
+ What is the impact of the bot on the development workflow?
+ How can we ensure the security of the deployment process?
