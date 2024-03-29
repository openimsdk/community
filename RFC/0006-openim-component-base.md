# [RFC #0006](https://github.com/OpenIMSDK/community/edit/main/RFC/0006-openim-component-base.md) Introduction of `component-base` Repository

<!--  🤖 design template: https://github.com/OpenIMSDK/community/blob/main/0000-template.md  ⚠️ After design completion, please submit a PR to https://github.com/OpenIMSDK/community/tree/main/RFC according to the specification. -->

## Meta

- Name: Introduction of `component-base` Repository
- Start Date: 2023-08-25
- Author(s): @cubxxw
- Status: Draft
- RFC Pull Request: https://github.com/OpenIMSDK/community/edit/main/RFC/0006-openim-component-base.md
- OpenIMSDK Pull Request: (leave blank)
- OpenIMSDK Issue: https://github.com/OpenIMSDK/Open-IM-Server/issues/955
- Supersedes: N/A

## 📇Topics

- [Meta](#meta)
- [Summary](#summary)
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

Proposal to introduce the `component-base` repository, a centralized hub to house common tools and shared code, aimed to enhance code reusability and component coherence, inspired by Kubernetes's `component-base`.

## Motivation

- Current repositories like chat, core, and server share multiple common tools, but dependencies aren't clearly isolated.
- A clear, independent repository helps external contributors or platforms to leverage OpenIMSDK's tools effortlessly.
- Achieve similar component structure like Kubernetes to maintain a modular and scalable codebase.

## What it is

`component-base` is a repository designed to contain shared tools and utilities used across OpenIMSDK projects. This will include, but isn't limited to:

- ComponentConfig implementations
- Flag and command handling
- HTTPS serving
- Delegated authn/z
- Logging.

## How it Works

Existing shared tools and code from repositories like chat, core, and server will be migrated to `component-base`. This repository will not provide compatibility guarantees initially but will align with OpenIMSDK's branches for compatibility.

## Migration

Transition involves:

1. Identifying common tools/code from the respective repositories.
2. Refactoring and migrating them to `component-base`.
3. Adjusting dependencies in the original repositories to now point to `component-base`.

## Drawbacks

- Initial overhead due to refactoring.
- Potential for issues during the migration phase.

## Alternatives

- Maintain the current structure but ensure stricter guidelines for code sharing.
- Create separate utility repositories for each original repository instead of a single shared one.

## Prior Art

Kubernetes's `component-base` repository serves a similar purpose. They created it to have a unified, consistent base for components, promoting shared utilities and configurations.

## Unresolved Questions

- What might be the challenges in the migration phase?
- How do we ensure minimal disruption during the transition?

## Spec. Changes (OPTIONAL)

No specification changes as of now.

## History

- 2023-08-25: Initial draft proposed by @cubxxw
