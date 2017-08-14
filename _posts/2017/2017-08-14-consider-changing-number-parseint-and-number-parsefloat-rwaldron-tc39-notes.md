---
layout: news
title: Consider changing Number.parseInt and Number.parseFloat · rwaldron/tc39-notes
item-url: >-
  https://github.com/rwaldron/tc39-notes/blob/master/es8/2017-07/jul-26.md#13iib-consider-changing-numberparseint-and-numberparsefloat
date: '2017-08-14T07:01:43Z'
tags:
  - ECMAScript
  - issue
---
Brendan Eich consider changing `Number.parseInt` and `Number.parseFloat` to avoid converting undefined, null, and NaN to string, returning NaN for those three input values.
