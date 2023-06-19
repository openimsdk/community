# [RFC OpenIMSDK/Open-IM-Server#2] OpenIM Custom Service Proposal

## Meta
[meta]: #meta
- Name: openIM custom service proposal
- Start Date: 2023-06-08
- Author: IRONICBo
- Status: Draft
- RFC Pull Request:
- OpenIMSDK Pull Request:
- OpenIMSDK Issue:
- Supersedes:

## Topics

- [\[RFC OpenIMSDK/Open-IM-Server#2\] OpenIM Custom Service Proposal](#rfc-0002-openim-custom-service-proposal)

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

    

## Summary
[summary]: #summary

OpenIM-based open source online customer service system: Online customer service system is one of the important means for many enterprises to provide services and support to their customers. This project intends to develop an online customer service system based on the open source OpenIM instant messaging system, and introduce a large model to build a local knowledge base Q&A Bot. The system will provide online customer service, after-the-fact callback, customer management and other functions to help enterprises improve customer service quality and efficiency.

## Definitions
[definitions]: #definitions

- Custom service: A customer service system is a software platform that helps businesses efficiently manage and resolve customer inquiries and issues.
- LangChain: LangChain is a framework for developing applications powered by language models.
- ChatGLM: ChatGLM-6B is an open source, bilingual conversational language model based on the General Language Model (GLM) architecture with 6.2 billion parameters.  (with a minimum of 6GB of video memory at the INT4 quantization level).

## Motivation
[motivation]: #motivation

- Provide reliable customer service customer dialogue system through OpenIM.
- Access to Slack and Web for users to execute tests immediately.
- Provides a large language model deployment based on a local knowledge base that can help developers or users quickly locate content.
- Facilitate secondary development and access to richer features.

## What it is
[what-it-is]: #what-it-is

This provides a high level overview of the feature.

- Define any new terminology.
- Define the target persona: OpenIMSDK author, OpenIMSDK user, platform operator, platform implementor, and/or project contributor.
- Explaining the feature largely in terms of examples.
- If applicable, provide sample error messages, deprecation warnings, or migration guidance.
- If applicable, describe the differences between teaching this to existing users and new users.

## How it Works
[how-it-works]: #how-it-works

The project includes login, user management, session management, platform access management, and local knowledge base management.

### Login Module

- Login with Email & Password
- Reset password using email

### User module

#### User Roles

- Administrator - personal information management, team information management, customer service management, report data, platform interface, system information view, Bot management
- General customer service - personal information management, system information view
- User - anonymous or platform-docked information

#### Administrator role

1. **Personal information management**

- Set avatar, nickname, bound email, cell phone number, login password

2. **Team information management**

- Set team name, set team contact, set team contact number

3. **Customer Service Management**

- Set customer service name and email address, set initial password and send to customer service email address

4. **Report data**

- Conversation statistics
  - Including conversation information statistics, satisfaction, processing time
  - Conversation record list
- Customer service work statistics
  - Customer service information list, including online time, average rating, number of conversations, total words of conversation
- Different platform access statistics
  - The number of visits, the number of visitors, the number of conversations

5. **Platform docking**

- Slack platform docking settings
- H5 docking settings

6. **System information view**

- View repository, OpenIM repository, manual
- View online member list
- View personal conversation data

7. **Bot Management**

- Set up special customer service - ChatGLM & langChain

#### Customer service roles

1. **Personal information management**

- Set avatar, nickname, bound mailbox, cell phone number, login password

2. **System information view**

- View repository, OpenIM repository, user manual
- View online member list
- View personal conversation data

#### User role

- Anonymous questioner on the site or slack

### Sessions module

#### Historical session lookup

- View information about sessions that have ended.

#### Active session query

- Query information about sessions that have been accessed

#### Session Manager

- Session transfer, assign to other customer service
- Proactively end a session

### Platform access module

#### H5

- Generate anonymous users using local IP
- Assign customer service according to rotation policy

#### Slack

- Generate anonymous users using accounts in slack
- Assign customer service based on rotation policy

### Local knowledge base module

#### LangChain & ChatGLM model deployment

- Package python images using Docker and complete model inference calls using HTTP/RPC
- Split/aggregate markdown files using scripts/API



## Migration

[migration]: #migration

Front-end, back-end and AI work needs to be done in the new repository.

## Drawbacks
[drawbacks]: #drawbacks

If you need to use a large language model with a local knowledge base, you may need a certain GPU footprint.

## Alternatives
[alternatives]: #alternatives

If you can't use the local AI model, try turning off this feature or accessing other service providers such as ChatGPT, Claude, etc.

## Prior Art
[prior-art]: #prior-art

There is now work by others that can be used as a reference for implementation.

- https://github.com/papercups-io/papercups.git
- https://github.com/THUDM/ChatGLM-6B
- https://www.easychat.cc/

## Unresolved Questions
[unresolved-questions]: #unresolved-questions

- How can I simplify the process of deployment?
- How to reduce the CPU/GPU resource usage?

