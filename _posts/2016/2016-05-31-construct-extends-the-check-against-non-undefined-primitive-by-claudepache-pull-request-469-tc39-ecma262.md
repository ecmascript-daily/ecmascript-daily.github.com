---
layout: news
title: >-
  [[Construct]]: extends the check against non-undefined primitive by
  claudepache · Pull Request #469 · tc39/ecma262
item-url: 'https://github.com/tc39/ecma262/pull/469#issuecomment-221006335'
date: '2016-05-31T14:25:34Z'
tags:
  - ECMAScript
  - proposal
  - issue
related:
  - title: ES Discuss - Notes 2016-05-23
    url: 'https://esdiscuss.org/notes/2016-05-23'
---
This issue related with primitive values from class constructors.

```js
class MyClass {
	constructor() { return 42 } 
}
new MyClass();// `TypeError`
```

should throw `TypeError`.

TC39 discuss about this and accepting this PR.
