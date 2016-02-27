---
layout: news
title: 'Editorial: Start all fields and slots with an uppercase code point · tc39/ecma262@a2f6bfd'
item-url: 'https://github.com/tc39/ecma262/commit/a2f6bfd7c547a306f428f9ecde9baf5fe04f2c8f'
date: '2016-02-27T06:58:57+00:00'
tags:
  - ECMAScript
  - spec
---
Make Realm's field records start with an uppercase.

```diff
@@ -2603,7 +2603,7 @@
           </tbody>
         </table>
       </emu-table>
-      <p>The term &ldquo;<dfn>abrupt completion</dfn>&rdquo; refers to any completion with a [[type]] value other than ~normal~.</p>
+      <p>The term &ldquo;<dfn>abrupt completion</dfn>&rdquo; refers to any completion with a [[Type]] value other than ~normal~.</p>

       <!-- es6num="6.2.2.1" -->
       <emu-clause id="sec-normalcompletion" aoid="NormalCompletion">
@@ -2614,14 +2614,14 @@
         </emu-alg>
         <p>Is a shorthand that is defined as follows:</p>
         <emu-alg>
-          1. Return Completion{[[type]]: ~normal~, [[value]]: _argument_, [[target]]:~empty~}.
+          1. Return Completion{[[Type]]: ~normal~, [[Value]]: _argument_, [[Target]]:~empty~}.
...
```

This changes come from:

- [Make Realm's field records start with an uppercase code point · Issue #393 · tc39/ecma262](https://github.com/tc39/ecma262/issues/393 "Make Realm&#39;s field records start with an uppercase code point · Issue #393 · tc39/ecma262")
- [Define security around Window, WindowProxy, and Location properly by annevk · Pull Request #638 · whatwg/html](https://github.com/whatwg/html/pull/638#issuecomment-185094413 "Define security around Window, WindowProxy, and Location properly by annevk · Pull Request #638 · whatwg/html")

## The motivation of the change

@annevk said

> The reason I'm raising this by the way is whatwg/html#638 where HTML introduces its own set of internal slots and fields. I suspect that eventually we'll revamp IDL and it'll become relevant there too.  
> -- https://github.com/tc39/ecma262/issues/393#issuecomment-185080998

## Notes

[ECMA-402](https://tc39.github.io/ecma402/ "ECMA-402") use lower-case.

Example is `[[availableLocales]]`.

Does ECMA-402 follow this change?
