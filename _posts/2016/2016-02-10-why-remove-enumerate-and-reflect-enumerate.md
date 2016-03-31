---
layout: news
title: 'Why Remove Proxy [[Enumerate]] and Reflect.enumerate?'
item-url: 'https://github.com/tc39/ecma262/pull/367'
date: '2016-02-10T15:44:11+00:00'
tags:
  - ECMAScript
  - spec
related:
  - title: '[[Enumerate]] and for-in on proxies can produce non-string keys · Issue #160 · tc39/ecma262'
    url: 'https://github.com/tc39/ecma262/issues/160'
---

> BT: issue with proxy enumerate trap and for-in, where iimplementations are prevented from pre-populating the list of keys in the object, because the iterator causes observable affects. Which means the iterate must be pulled for every iteration. Last meeting we thought it would be ok if the enumerate trap exhausts the iterator, we thought that would solve the problem. The issue was, now their is an observable difference between an object and proxy of that object, mainly due to delete.

via [5.xix Proxy Enumerate - revisit decision to exhaust iterator](https://github.com/rwaldron/tc39-notes/blob/master/es7/2016-01/2016-01-28.md#5xix-proxy-enumerate---revisit-decision-to-exhaust-iterator "5.xix Proxy Enumerate - revisit decision to exhaust iterator")

and

> Moved ordinary [[Enumerate]] section to end of 13.7.5 for-in, renamed to EnumerateObjectProperties.   
> -- https://github.com/tc39/ecma262/pull/367

Polyfill of `EnumerateObjectProperties`:

```js
function* EnumerateObjectProperties(obj) {
  let visited = new Set;
  for (let key of Reflect.ownKeys(obj)) {
    if (typeof key === "string") {
      let desc = Reflect.getOwnPropertyDescriptor(obj, key);
      if (desc) {
        visited.add(key);
        if (desc.enumerable) yield key;
      }
    }
  }
  let proto = Reflect.getPrototypeOf(obj)
  if (proto === null) return;
  for (let protoName of EnumerateObjectProperties(proto)) {
    if (!visited.has(protoName)) yield protoName;
  }
}
```
