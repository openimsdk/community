# Design of OpenIM Log Package Zap

## Introduction

Add an X-Request-ID field to all logs for a given HTTP request.

- Fatal handlers: logrus allows one or more handlers to be registered, which are called when a fatal level log occurs. This feature is useful when our program needs to be gracefully shut down.

## Disadvantages

- Low execution efficiency, especially in high-concurrency scenarios
- Does not support log rotation

Based on the above advantages and disadvantages, I propose the following solution:

- Use `zap` as the log package for OpenIM 
- `zap` is a high-performance, low-latency log package that supports log rotation and multiple output formats
- `zap` is similar to `logrus`, easy to use and learn, and provides multiple log levels

By using `zap`, OpenIM will obtain better performance and more complete logging functions.

Many excellent open source projects use `zap` as their log package, such as Kubernetes, etcd, and CockroachDB, as well as the k8s-iam project I am preparing in the future. Therefore, using `zap` as the log package for OpenIM is also a good choice.

## Why choose zap

Zap log package can be well compatible with glog. The encapsulation background is that when developing OpenIM , we found that glog was used extensively in the Kubernetes source code, and the log package needed to be compatible with glog.

## Why choose /pkg/log directory

Migrate the log package to the `pkg/log` directory instead of [pkg](https://github.com/OpenIMSDK/Open-IM-Server/tree/70df36152d3d6bebbb3c89ab26a76c381507eb20/pkg)/[common](https://github.com/OpenIMSDK/Open-IM-Server/tree/70df36152d3d6bebbb3c89ab26a76c381507eb20/pkg/common)
/log.

- The first one, the `log` package belongs to the OpenIM project, and there are customization development contents;
- The second one, the `log` package has complete and mature functions, and external projects can also use it.

## Basic encapsulated log package support functions

- Basic functions: support basic log information, support different log levels, support custom configuration, support output to standard output and files.
- Advanced functions: support multiple log formats, can output by level, support structured logs, support log rotation, and have Hook capability.
- Optional functions: support color output, compatible with the standard library log package, and support output to different locations.

## Test repository
+ [https://github.com/kubecub/log](https://github.com/kubecub/log)
