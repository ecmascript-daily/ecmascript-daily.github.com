---
layout: news
title: '[ES2016] Require Unicode 8.0.0 · Pull Request #300 · tc39/ecma262'
item-url: 'https://github.com/tc39/ecma262/pull/300'
date: '2016-03-28T01:24:17+00:00'
tags:
  - ECMAScript
  - spec
  - 'ES2016'
  - Unicode
---
ES2016 use Unicode 8.0.0 and remove an additional category.

```diff
-    <p>ECMAScript implementations must recognize as |WhiteSpace| code points listed in the &ldquo;Separator, space&rdquo; (Zs) category by Unicode 5.1. ECMAScript implementations may also recognize as |WhiteSpace| additional category Zs code points from subsequent editions of the Unicode Standard.</p>
+    <p>ECMAScript implementations must recognize as |WhiteSpace| code points listed in the &ldquo;Separator, space&rdquo; (Zs) category.</p>
```

It means that  ES2016 make `U+180E` out of whitepace.

```js
eval("1\u180E===1"); // throw exception in ES2016
// SyntaxError: illegal character in ES2016
// `true` in ES2015
```

- [13004-vowel-sep-change.pdf](http://www.unicode.org/L2/L2013/13004-vowel-sep-change.pdf "13004-vowel-sep-change.pdf")
- [tc39-notes/2016-01-26.md at master · rwaldron/tc39-notes](https://github.com/rwaldron/tc39-notes/blob/master/es7/2016-01/2016-01-26.md#unicode-fix-httpsgithubcomtc39ecma262pull300-de "tc39-notes/2016-01-26.md at master · rwaldron/tc39-notes")

This change has included in [ES2016 Draft 2016-02-15](https://github.com/tc39/ecma262/releases/tag/es2016-draft-20160215 "ES2016 Draft 2016-02-15").

## Related items

<blockquote class="twitter-tweet" data-conversation="none" data-lang="en"><p lang="en" dir="ltr"><a href="https://twitter.com/BrendanEich">@BrendanEich</a> <a href="https://twitter.com/jasvir">@jasvir</a> <a href="https://twitter.com/awbjs">@awbjs</a> <a href="https://twitter.com/fugueish">@fugueish</a> <a href="https://twitter.com/unicode">@unicode</a> <a href="https://twitter.com/bterlson">@bterlson</a> So why Chrome/Firefox/nodeJS all eval(&quot;1 === \u180E 1&quot;) true when specs say no? <br>🤔</p>&mdash; UniqueOde⁰Consortium (@FakeUnicode) <a href="https://twitter.com/FakeUnicode/status/713929097965993985">March 27, 2016</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" data-conversation="none" data-cards="hidden" data-partner="tweetdeck"><p lang="en" dir="ltr"><a href="https://twitter.com/FakeUnicode">@FakeUnicode</a> recent Unicode spec change<br> Note all browser updated yet<a href="https://t.co/6h3KwqRvon">https://t.co/6h3KwqRvon</a></p>&mdash; Allen Wirfs-Brock (@awbjs) <a href="https://twitter.com/awbjs/status/713929024259510272">March 27, 2016</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

@mathiasbynens's [regexpu](https://github.com/mathiasbynens/regexpu "regexpu") library already followed this change.

- [Only use Unicode v8.0.0 for whitespace · mathiasbynens/regexpu-fixtures@b3f7ff4](https://github.com/mathiasbynens/regexpu-fixtures/commit/b3f7ff4d0bf2ff2eb68581ac959b9a987974e192 "Only use Unicode v8.0.0 for whitespace · mathiasbynens/regexpu-fixtures@b3f7ff4")
