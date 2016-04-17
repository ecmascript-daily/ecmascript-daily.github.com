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

If you interstend in the specification bug?, please follow  these issues:

- [extends null · Issue #543 · tc39/ecma262](https://github.com/tc39/ecma262/issues/543 "extends null · Issue #543 · tc39/ecma262")
- [constructor-super - super() must be called even if the class extends null · Issue #5449 · eslint/eslint](https://github.com/eslint/eslint/issues/5449 "constructor-super - super() must be called even if the class extends null · Issue #5449 · eslint/eslint")


