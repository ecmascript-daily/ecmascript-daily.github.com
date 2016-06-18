---
layout: news
title: 'Definitive decision for Test262 console runner · Issue #647 · tc39/test262'
item-url: 'https://github.com/tc39/test262/issues/647'
date: '2016-06-18T13:28:09Z'
tags:
  - ECMAScript
  - testing
  - node.js
  - python
---
test262 will move exist test harness(Python-based) to other organization.

This change is confirmed by [last meetings](https://github.com/rwaldron/tc39-notes/blob/master/es7/2016-05/may-25.md#definitive-decision-for-test262-python-runner-mike-pennisi).

Move Python-based test harness to [test262-utils/test262-harness-py: A Python-based harness for executing Test262](https://github.com/test262-utils/test262-harness-py "test262-utils/test262-harness-py: A Python-based harness for executing Test262").

> The decision at TC39, driven by @bterlson , was that the test runner is out of scope and deleted from the test262 repository. Projects like V8 and Spidermoney can collaborate on the test runner elsewhere if they wish.  
> -- https://github.com/tc39/test262/issues/647#issuecomment-222548160

## Related

- [bterlson/test262-harness: Experimental harness for test262](https://github.com/bterlson/test262-harness "bterlson/test262-harness: Experimental harness for test262")



