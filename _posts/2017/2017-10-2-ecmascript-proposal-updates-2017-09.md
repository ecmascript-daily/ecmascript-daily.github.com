---
title: "ECMAScript proposal updates @ 2017-09"
author: azu
layout: news
date : '2017-10-02T10:37'
category: ECMAScript
tags:
    - ECMASript
    - Proposal
    - spec


---

The changes of proposal's status @ [60th meeting of Ecma TC39](https://github.com/tc39/agendas/blob/master/2017/09.md "60th meeting of Ecma TC39")


| Proposal                                  | Stage                                    |
| ---------------------------------------- | ---------------------------------------- |
| [Object Shorthand Improvements][object-shorthand-improvements] | NaN -> 0                                 |
| [`Builtins.typeOf()` and `Builtins.is()`][is-types] | NaN -> 0                                 |
| [`ArrayBuffer.transfer`][buffer-transfer] | NaN -> 0                                 |
| [Extensible numeric literals][extensible-literals] | 0 -> 1                                   |
| [First-Class Protocols][protocols](previous name: interface) | 0 -> 1                                   |
| [JSON superset][json-superset]           | 0 -> 1                                   |
| [Nullary coalescing operator][nullary-coalescing] | 0 -> 1                                   |
| [Partial application][partial-application] | 0 -> 1                                   |
| [Array.prototype.flat{Map,ten}][flat]    | 1 - > 2                                  |
| [Throw expressions][throw-expressions]   | 1 -> 2                                   |
| [`String#matchAll`][matchall]            | 1 -> 2                                   |
| [`import.meta`][import-meta]             | 2 -> 3                                   |
| [`export * as ns from "mod";` statements][export-ns-from] | 2 -> [Spec PR](https://github.com/tc39/ecma262/pull/1005) |

**Notes**:

Pursue [`export * as ns from "mod";` statements][export-ns-from] as a needs-consensus PR at [July 27, 2017 Meeting Notes](http://tc39.github.io/tc39-notes/2017-07_jul-27.html#export-ns-from "July 27, 2017 Meeting Notes").

### Other proposal's staus 

- [tc39/proposals: Tracking ECMAScript Proposals](https://github.com/tc39/proposals "tc39/proposals: Tracking ECMAScript Proposals")

### Related service

- [EcmaScript.in | Mirror of ES Spec updates](http://ecmascript.in/ "EcmaScript.in | Mirror of ES Spec updates")
- [bevacqua/prop-tc39: Scraping microservice for TC39 proposals 😸](https://github.com/bevacqua/prop-tc39 "bevacqua/prop-tc39: Scraping microservice for TC39 proposals 😸")



[array-includes]: https://github.com/tc39/Array.prototype.includes
[array-includes-notes]: https://github.com/rwaldron/tc39-notes/blob/master/es7/2015-11/nov-17.md#arrayprototypeincludes
[exponentiation]: https://github.com/rwaldron/exponentiation-operator
[exponentiation-notes]: https://github.com/rwaldron/tc39-notes/blob/master/es7/2016-01/2016-01-28.md#5xviii-exponentiation-operator-rw
[object-values-entries]: https://github.com/tc39/proposal-object-values-entries
[object-values-entries-notes]: https://github.com/rwaldron/tc39-notes/blob/master/es7/2016-03/march-29.md#objectvalues--objectentries
[string-padding]: https://github.com/tc39/proposal-string-pad-start-end
[string-padding-notes]: https://github.com/rwaldron/tc39-notes/blob/master/es7/2016-05/may-25.md#stringprototypepadstartend-jhd
[object-gopds]: https://github.com/ljharb/proposal-object-getownpropertydescriptors
[object-gopds-notes]: https://github.com/rwaldron/tc39-notes/blob/master/es7/2016-05/may-25.md#objectgetownpropertydescriptors-jhd
[function-commas]: https://github.com/tc39/proposal-trailing-function-commas
[function-commas-notes]: https://github.com/rwaldron/tc39-notes/blob/master/es7/2016-07/jul-26.md#9ie-trailing-commas-in-functions
[async-await]: https://github.com/tc39/ecmascript-asyncawait
[async-await-notes]: https://github.com/rwaldron/tc39-notes/blob/master/es7/2016-07/jul-28.md#10iv-async-functions
[atomics]: https://github.com/tc39/ecmascript_sharedmem
[atomics-notes]: https://github.com/rwaldron/tc39-notes/blob/master/es7/2017-01/jan-24.md#13if-seeking-stage-4-for-sharedarraybuffer
[template-literal-lift]: https://github.com/tc39/proposal-template-literal-revision
[template-literal-lift-notes]: https://github.com/rwaldron/tc39-notes/blob/master/es8/2017-03/mar-21.md#10ia-template-literal-updates
[metaprops]: https://github.com/allenwb/ESideas/blob/master/ES7MetaProps.md
[cancel-api]: https://github.com/tc39/proposal-cancellation
[construct]: https://github.com/jasnell/proposal-construct
[defensible-classes]: http://wiki.ecmascript.org/doku.php?id=strawman:defensible_classes
[bind-syntax]: https://github.com/zenparsing/es-function-bind
[func-expr-decorators]: https://goo.gl/8MmCMG
[is-types]: https://github.com/jasnell/proposal-istypes
[method-param-decorators]: https://goo.gl/r1XT9b
[nested-imports]: https://github.com/tc39/ecma262/pull/646
[icu]: https://github.com/tc39/tc39-notes/blob/master/es8/2017-05/may-23.md#normative-icu-reference
[ortho]: https://github.com/erights/Orthogonal-Classes
[matching]: https://github.com/tc39/proposal-pattern-matching
[is-callable-is-constructor]: https://github.com/caitp/TC39-Proposals/blob/master/tc39-reflect-isconstructor-iscallable.md
[relationships]: http://wiki.ecmascript.org/doku.php?id=strawman:relationships
[string-at]: https://github.com/mathiasbynens/String.prototype.at
[clone]: https://github.com/dslomov-chromium/ecmascript-structured-clone
[url]: https://github.com/jasnell/proposal-url
[zones]: https://github.com/domenic/zones
[zones-spec]: https://domenic.github.io/zones/
[shallow-equal]: https://github.com/sebmarkbage/ecmascript-shallow-equal
[object-shorthand-improvements]: https://github.com/rbuckton/proposal-shorthand-improvements
[is-types]: https://github.com/jasnell/proposal-istypes
[buffer-transfer]: https://gist.github.com/lukewagner/2735af7eea411e18cf20
[export-ns-from]: https://github.com/tc39/proposal-export-ns-from
