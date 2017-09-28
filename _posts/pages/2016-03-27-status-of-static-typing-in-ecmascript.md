---
title: "Status of Static Typing in ECMAScript"
author: azu
layout: post
permalink: /pages/status-of-static-typing-in-ecmascript/
date : 2017-03-23T18:24
category: ECMAScript
tags:
    - ECMAScript
    - Proposal
    - Typing

---

## Status: as of **2017-03-23**

| Status | Name                                                                                                                        |                                                                                     Description                                                                                     | Recent Changes                                                                                                                                                                                                                                   |
|--------|-----------------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| NaN    | [Typed Objects](https://github.com/dslomov/typed-objects-es7)                                                               | > All top-level names are defined in a typed objects module. See also [Typed Objects Explainer](https://github.com/nikomatsakis/typed-objects-explainer/ "Typed Objects Explainer") | Out of date. :link:[Typed Objects information in proposal table is out of date · Issue #223 · tc39/ecma262](https://github.com/tc39/ecma262/issues/223 "Typed Objects information in proposal table is out of date · Issue #223 · tc39/ecma262") |
| NaN    | [SoundScript](https://developers.google.com/v8/experiments#strong-mode "SoundScript")                                       | > We want to try implementing an optional type system for JavaScript, directly in the VM.                                                                                           | V8 will remove support for strong mode. :link: [An update on strong mode ](https://groups.google.com/forum/#!msg/strengthen-js/ojj3TDxbHpQ/5ENNAiUzEgAJ) |
| NaN    | [Type and Type Annotations](https://github.com/tc39/tc39-notes/blob/master/es6/2014-09/sept-25.md#types "Type Annotations") | > Reserve syntax used by TypeScript, Flow, etc. for some form of annotation by [Jonathan Turner](https://github.com/jonathandturner)                                                | Jonathan Turner leave Microsoft. :link: [Off to new adventures](http://www.jonathanturner.org/2015/10/off-to-new-adventures.html "Off to new adventures")                                                                                        |
| NaN    | [Optional Static Typing](https://github.com/sirisian/ecmascript-types "Optional Static Typing")                             | [@sirisian](https://github.com/sirisian "sirisian")'s proposal                                                                                                                      | Out of date?                                                                                                                                                                                                                                     |

## Statement

Brian Terlson who is editor of ECMAScript said that 

> Speaking as someone who proposed types for JavaScript in 2014: I do not believe types are in the cards for the near future. This is an extremely complex problem to get right from a standards perspective. Just adopting TypeScript as the standard would of course be great for TypeScript users, but there are other typed JS supersets with pretty significant usage including closure compiler and flow. These tools all behave differently and it's not even clear that there's a common subset to work from (I don't think there is in any appreciable sense). I'm not entirely sure what a standard for types looks like, and I and others will continue to investigate this as it could be very beneficial, but don't expect anything near term.
> -- https://hashnode.com/ama/with-brian-terlson-cj6vu9vjv01nmo1wu8vmtt1x9#cj6vuspfq01oso1wuhjo5zvd6

## Other Works

- Microsoft develop [TypeScript](http://www.typescriptlang.org/ "TypeScript")
- Facebook develop [Flow](http://flowtype.org/ "Flow") 

## Further reading

- [tc39/ecma262: Status, process, and documents for ECMA262](https://github.com/tc39/ecma262 "tc39/ecma262: Status, process, and documents for ECMA262")
- [The TC39 Process](https://tc39.github.io/process-document/ "The TC39 Process")
- [Withdrawn Proposals of ecma262](https://github.com/tc39/ecma262/blob/master/withdrawn-proposals.md "Withdrawn Proposals")
- [strawman:trademarks [ES Wiki]](http://wiki.ecmascript.org/doku.php?id=strawman:trademarks "strawman:trademarks [ES Wiki]")

## Notes

*Status: NaN* is not official verbiage.

TC39 list up [Withdrawn Proposals](https://github.com/tc39/ecma262/blob/master/withdrawn-proposals.md "Withdrawn Proposals").
