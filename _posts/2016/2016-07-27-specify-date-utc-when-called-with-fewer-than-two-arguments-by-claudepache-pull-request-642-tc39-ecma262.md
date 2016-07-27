---
layout: news
title: 'Specify Date.UTC when called with fewer than two arguments by claudepache · Pull Request #642 · tc39/ecma262'
item-url: 'https://github.com/tc39/ecma262/pull/642'
date: '2016-07-27T05:34:09+00:00'
tags:
  - ECMAScript
  - issue
related:
  - title: 'Brian Terlson on Twitter: &#34;Date.UTC() should return NaN (no longer implementation defined). Semantics for Date.UTC(n) up for debate on Thursday. (3/5)&#34;'
    url: 'https://twitter.com/bterlson/status/758054480772419584'
---
Currently, the behavior of `Date.UTC()` with < 2 arguments is implementation-dependent.
This PR define the behavior that should return `NaN`.


