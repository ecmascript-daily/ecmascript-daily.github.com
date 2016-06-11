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

Edit: Add private thread capture on TC39.

- [https://github.com/tc39/ecma262/files/209297/Should.we.get.rid.of.the.enumerate.trap.and.Reflect.enumerate.Issue.1.tc39-Reflector.pdf](https://github.com/tc39/ecma262/files/209297/Should.we.get.rid.of.the.enumerate.trap.and.Reflect.enumerate.Issue.1.tc39-Reflector.pdf)

<blockquote class="twitter-tweet" data-partner="tweetdeck"><p lang="en" dir="ltr"><a href="https://twitter.com/slicknet">@slicknet</a> <a href="https://twitter.com/bterlson">@bterlson</a> <br>You can see the formerly private thread at <a href="https://t.co/vsUTb3RkkE">https://t.co/vsUTb3RkkE</a></p>&mdash; Allen Wirfs-Brock (@awbjs) <a href="https://twitter.com/awbjs/status/718197123942973440">April 7, 2016</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

## Realated 

- [[[Enumerate]] and for-in on proxies can produce non-string keys · Issue #160 · tc39/ecma262](https://github.com/tc39/ecma262/issues/160)
- [Proxy [[Enumerate]] overconstrains implementations · Issue #161 · tc39/ecma262](https://github.com/tc39/ecma262/issues/161)
