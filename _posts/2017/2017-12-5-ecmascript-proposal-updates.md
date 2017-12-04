---
title: "ECMAScript proposal updates @ 2017-011"
author: azu
layout: news
date : '2017-12-05T01:28'
category: ECMAScript
tags:
    - ECMAScript
    - Proposal
    - spec

---


The changes of proposal's status @ [61st meeting of Ecma TC39](https://github.com/tc39/agendas/blob/master/2017/11.md "61st meeting of Ecma TC39").

## New Proposals

| Proposal                                                                                                             | Stage |
| -------------------------------------------------------------------------------------------------------------------- | ----- |
| [Nullish coalescing Operator](https://github.com/tc39/proposal-nullish-coalescing)                                   | 1     |
| [`InterpreterDirective`](https://gist.github.com/bmeck/59cf8c16959eccffd8b7e9828826a842)                             | 1     |
| [`String.prototype.replaceAll`](https://github.com/psmarshall/string-replace-all-proposal)                           | 1     |
| [`String.prototype.codePoints`](https://github.com/RReverser/string-prototype-codepoints)                            | 1     |
| [Distinguishing literal strings](https://github.com/mikewest/tc39-proposal-literals)                                 | 1     |
| [`Object.freeze` + `Object.seal` syntax](https://github.com/keithamus/object-freeze-seal-syntax)                     | 1     |
| [Block Params](https://github.com/samuelgoto/proposal-block-params)                                                  | 1     |
| [Decimal](https://docs.google.com/presentation/d/1jPsw7EGsS6BW59_BDRu9o0o3UwSXQeUhi38QG55ZoPI/edit?pli=1#slide=id.p) | 0     |

## Updated Proposals

| Proposal                                                                                | From  | To    |
| --------------------------------------------------------------------------------------- | ----- | ----- |
| [`Array.prototype.{flatMap,flatten}`](https://github.com/tc39/proposal-flatMap)         | 2     | 3     |
| [Numeric separators](https://github.com/tc39/proposal-numeric-separator)                | 2     | 3     |
| [Class Static Fields (Public & Private)](https://github.com/tc39/proposal-class-fields) | 3     | 2     |
| [Class Public Instance Fields & Private Instance Fields & Methods](https://github.com/tc39/proposal-class-fields) | 3     | 3     |
| [`Atomics.waitAsync`](https://github.com/tc39/proposal-atomics-wait-async)              | 1     | 2     |
| [JSON superset](https://github.com/tc39/proposal-json-superset)                         | 1     | 2     |

**Notes**

[Class Static Fields (Public & Private)](https://github.com/tc39/proposal-class-fields): 3 to 2.

> Class fields and private methods will be merged, and split.
> 
> Class instance fields (public and private), and private instance methods are now one proposal, and at Stage 3.
>
> Class static fields (public and private), and private static methods are now a second proposal, and at Stage 2.
> 
> -- https://github.com/babel/proposals/issues/34#issuecomment-348354981

Currently, `Class Public Instance Fields & Private Instance Fields & Methods` and `Class Static Fields (Public & Private)` refer to [same repository](https://github.com/tc39/proposal-class-fields).

### Babel

- [Nov 2017 · Issue #34 · babel/proposals](https://github.com/babel/proposals/issues/34 "Nov 2017 · Issue #34 · babel/proposals")
- [babel/proposals: Tracking the status of Babel's implementation of TC39 proposals](https://github.com/babel/proposals "babel/proposals: Tracking the status of Babel&#39;s implementation of TC39 proposals")

### Other proposal's status 

- [tc39/proposals: Tracking ECMAScript Proposals](https://github.com/tc39/proposals "tc39/proposals: Tracking ECMAScript Proposals")

### Related service

- [EcmaScript.in](http://ecmascript.in/)
- [bevacqua/prop-tc39: Scraping microservice for TC39 proposals 😸](https://github.com/bevacqua/prop-tc39 "bevacqua/prop-tc39: Scraping microservice for TC39 proposals 😸")
