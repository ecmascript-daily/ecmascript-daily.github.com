---
layout: news
title: Is "class C extends null" derived?
item-url: 'https://github.com/tc39/ecma262/issues/543'
date: '2016-04-17T10:20:47+00:00'
tags:
  - ECMAScript
  - issue
  - spec
---
`extends null` is "derived" in ES2015.

```js
class C extends null {
}
```

    Constructor kind: derived
    Prototype of C: Function.prototype
    Prototype of C.prototype: null

via [15. Classes - Exploring ES6](http://exploringjs.com/es6/ch_classes.html "15. Classes")


But, @allenwb said:

> I think it is a specification bug that extend null classes were marked as "derived"  
> -- [https://github.com/tc39/ecma262/issues/543#issuecomment-210191577](https://github.com/tc39/ecma262/issues/543#issuecomment-210191577)

----

Edit(2016-04-20): ECMAScript spec is fixed.

- [Normative: Set this appropriately for class extends null · tc39/ecma262@98c67f2](https://github.com/tc39/ecma262/commit/98c67f2c2696652005ab7fb7284fe8b4661a5dbf "Normative: Set this appropriately for class extends null · tc39/ecma262@98c67f2")
- [Normative: Use proper default constructor with class extends null · tc39/ecma262@a35f0f3](https://github.com/tc39/ecma262/commit/a35f0f3b8ac53bbfa019bd35989c4027ce4976e4 "Normative: Use proper default constructor with class extends null · tc39/ecma262@a35f0f3")

----

If you interstend in the specification bug, please follow  these issues:

- [extends null · Issue #543 · tc39/ecma262](https://github.com/tc39/ecma262/issues/543 "extends null · Issue #543 · tc39/ecma262")
- [constructor-super - super() must be called even if the class extends null · Issue #5449 · eslint/eslint](https://github.com/eslint/eslint/issues/5449 "constructor-super - super() must be called even if the class extends null · Issue #5449 · eslint/eslint")


