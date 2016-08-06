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
ECMAScript allow `for(var i in object){}` for backward compatibilty.

```
for ( var BindingIdentifier Initializer in Expression) Statement
```

