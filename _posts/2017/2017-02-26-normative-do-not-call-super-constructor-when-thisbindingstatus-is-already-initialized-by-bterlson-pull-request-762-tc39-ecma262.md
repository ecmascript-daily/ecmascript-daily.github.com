---
layout: news
title: >-
  Normative: do not call super constructor when ThisBindingStatus is already
  initialized by bterlson · Pull Request #762 · tc39/ecma262
item-url: 'https://github.com/tc39/ecma262/pull/762'
date: '2017-02-26T13:30:32Z'
tags:
  - ECMAScript
  - spec
  - issue
related:
  - title: evil-ctor.js
    url: 'https://gist.github.com/bakkot/66b515f402b8cdbf3e405f8509ad3525'
  - title: >-
      AWB: I would be happy with that but part of my grand compromise on how we
      figured this out in the last two weeks of ES2015, included this error.
    url: >-
      https://github.com/littledan/tc39-notes/blob/master/es7/2017-01/jan-24.md#discussing-not-calling-super-multiple-times
---
Make `super();super();` throwing error.
