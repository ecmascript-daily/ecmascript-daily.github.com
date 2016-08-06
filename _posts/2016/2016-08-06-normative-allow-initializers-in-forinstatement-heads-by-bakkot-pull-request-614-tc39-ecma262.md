---
layout: news
title: >-
  Normative: Allow initializers in ForInStatement heads by bakkot · Pull Request
  #614 · tc39/ecma262
item-url: 'https://github.com/tc39/ecma262/pull/614'
date: '2016-08-06T04:36:43Z'
tags:
  - ECMAScript
  - spec
  - issue
---
ECMAScript allow `for(var a = b in object){}` in non-strict mode for backward compatibilty.

```
for ( var BindingIdentifier Initializer in Expression) Statement
```

- [9.i.a Reintroduce for-in-initializer](https://github.com/rwaldron/tc39-notes/blob/master/es7/2016-07/jul-26.md#9ia-reintroduce-for-in-initializer "9.i.a Reintroduce for-in-initializer")
