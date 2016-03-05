---
layout: news
title: 'Layering: add hook to allow implementations to block string compilation by domenic · Pull Request #451 · tc39/ecma262'
item-url: 'https://github.com/tc39/ecma262/pull/451'
date: '2016-03-05T10:41:20+00:00'
tags:
  - ECMAScript
  - CSP
  - spec
  - issue
---
This pull request add `HostEnsureCanCompileStrings`  which is implementation-defined abstract operation.
In other word, it is abstract operation for CSP hook.

CSP prevent `eval`ing code.
So, `HostEnsureCanCompileStrings` return `false` by implemntation, then the code should not `eval`ed.

This should more closely match implementations.
