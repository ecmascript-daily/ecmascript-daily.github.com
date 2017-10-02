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
| [`Builtins.typeOf()` and `Builtins.is()`][is-types]  | NaN -> 0                                 |
| [`ArrayBuffer.transfer`][buffer-transfer] | NaN -> 0                                 |
| [Extensible numeric literals][extensible-literals] | 0 -> 1                                   |
| [First-Class Protocols][protocols](previous name: interface) | 0 -> 1                                   |
| [JSON superset][json-superset]           | 0 -> 1                                   |
| [Nullary coalescing operator][nullary-coalescing] | 0 -> 1                                   |
| [Partial application][partial-application] | 0 -> 1                                   |
| [Array.prototype.flat{Map,ten}][flat]    | 1 -> 2                                  |
| [Throw expressions][throw-expressions]   | 1 -> 2                                   |
| [`String#matchAll`][matchall]            | 1 -> 2                                   |
| [`import.meta`][import-meta]             | 2 -> 3                                   |
| [`export * as ns from "mod";` statements][export-ns-from] | 2 -> [Spec PR](https://github.com/tc39/ecma262/pull/1005) |

**Notes**:

Pursue [`export * as ns from "mod";` statements][export-ns-from] as a needs-consensus PR at [July 27, 2017 Meeting Notes](http://tc39.github.io/tc39-notes/2017-07_jul-27.html#export-ns-from "July 27, 2017 Meeting Notes").

### Babel

- [Sept 2017 · Issue #28 · babel/proposals](https://github.com/babel/proposals/issues/28 "Sept 2017 · Issue #28 · babel/proposals")

### Other proposal's status 

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

[function-to-string]: https://github.com/tc39/Function-prototype-toString-revision
[global]: https://github.com/tc39/proposal-global
[object-rest-spread]: https://github.com/tc39/proposal-object-rest-spread
[async-iteration]: https://github.com/tc39/proposal-async-iteration
[dynamic-import]: https://github.com/tc39/proposal-dynamic-import
[lookbehind]: https://github.com/tc39/proposal-regexp-lookbehind
[unicode-escapes]: https://github.com/tc39/proposal-regexp-unicode-property-escapes
[named-groups]: https://github.com/tc39/proposal-regexp-named-groups
[dot-all]: https://github.com/tc39/proposal-regexp-dotall-flag
[regexp-legacy]: https://github.com/tc39/proposal-regexp-legacy-features
[finally]: https://github.com/tc39/proposal-promise-finally
[bigint]: https://github.com/tc39/proposal-bigint
[class-fields]: https://github.com/tc39/proposal-class-fields
[optional-catch]: https://github.com/tc39/proposal-optional-catch-binding
[function-sent]: https://github.com/allenwb/ESideas/blob/master/Generator%20metaproperty.md
[trims]: https://github.com/sebmarkbage/ecmascript-string-left-right-trim
[decorators]: http://github.com/tc39/proposal-decorators
[intl-segmenter]: https://github.com/tc39/proposal-intl-segmenter
[import-meta]: https://github.com/tc39/proposal-import-meta
[relative-time]: https://github.com/tc39/proposal-intl-relative-time
[numeric_separators]: https://github.com/samuelgoto/proposal-numeric-separator
[private-methods]: https://github.com/littledan/proposal-private-methods
[unified-class]: https://github.com/littledan/proposal-unified-class-features
[date-parse]: https://github.com/mrrrgn/proposal-date-time-string-format
[export-from]: https://github.com/tc39/proposal-export-default-from
[observable]: https://github.com/tc39/proposal-observable
[matchall]: https://github.com/tc39/String.prototype.matchAll
[weakrefs]: https://github.com/tc39/proposal-weakrefs
[frozen-realms]: https://github.com/FUDCo/frozen-realms
[more-math]: https://github.com/rwaldron/proposal-math-extensions
[collection-of-from]: https://github.com/leobalter/proposal-setmap-offrom
[try]: https://github.com/ljharb/proposal-promise-try
[chaining]: https://github.com/tc39/proposal-optional-chaining
[signbit]: http://jfbastien.github.io/papers/Math.signbit.html
[stacks]: https://github.com/ljharb/proposal-error-stacks
[do]: https://github.com/tc39/proposal-do-expressions
[realms]: https://github.com/caridy/proposal-realms
[temporal]: https://github.com/maggiepint/proposal-temporal
[float16s]: https://docs.google.com/presentation/d/1Ta_IbravBUOvu7LUhlN49SvLU-8G8bIQnsS08P3Z4vY/edit?usp=sharing
[nonblocking]: https://github.com/tc39/proposal-atomics-wait-async
[symbol-description]: https://github.com/tc39/proposal-Symbol-description
[flat]: https://github.com/tc39/proposal-flatMap
[throw-expressions]: https://github.com/rbuckton/proposal-throw-expressions
[binary-ast]: https://github.com/syg/ecmascript-binary-ast
[pipeline]: https://github.com/tc39/proposal-pipeline-operator
[extensible-literals]: https://github.com/littledan/proposal-extensible-numeric-literals
[protocols]: https://github.com/michaelficarra/proposal-first-class-protocols
[json-superset]: https://github.com/tc39/proposal-json-superset
[nullary-coalescing]: https://github.com/gisenberg/proposal-nullary-coalescing
[partial-application]: https://github.com/rbuckton/proposal-partial-application
