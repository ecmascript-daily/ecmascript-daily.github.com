---
layout: news
title: 'Normalize TypedArray, ArrayBuffer and DataView constructors by leobalter · Pull Request #410 · tc39/ecma262'
item-url: 'https://github.com/tc39/ecma262/pull/410#issuecomment-208589878'
date: '2016-04-17T10:42:54+00:00'
tags:
  - ECMAScript
  - spec
  - issue
---
@leobalter collect data that is the result of `ArrayBuffer("some non-number")`.

This issue/PR is come from the data that current implementation and spec are incompatible.

- [ArrayBuffer() & ArrayBuffer("some non-number") doesn't match implementations · Issue #265 · tc39/ecma262](https://github.com/tc39/ecma262/issues/265 "ArrayBuffer() &amp; ArrayBuffer(&#34;some non-number&#34;) doesn&#39;t match implementations · Issue #265 · tc39/ecma262")

