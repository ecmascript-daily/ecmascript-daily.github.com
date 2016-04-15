---
layout: news
title: 'Response to the proposal to add explicit tail call syntax to ECMAScript · Issue #535 · tc39/ecma262'
item-url: 'https://github.com/tc39/ecma262/issues/535'
date: '2016-04-15T17:56:16+00:00'
tags:
  - ECMAScript
  - issue
related:
  - title: 'tc39/proposal-ptc-syntax: Discussion and specification for an explicit syntactic opt-in for Tail Calls.'
    url: 'https://github.com/tc39/proposal-ptc-syntax'
---
TC39 talking about removing Proper Tail Calls (PTC).
JavaScriptCore team against PTC proposal.

> Given that tail calls are currently part of the ES6 and draft ES7 specification, a compliant implementation should implement tail calls as described in those specifications. Compliance with any proposed changes would not occur for almost two years since the earliest that any proposed tail call changes could be adopted would be for the ES2017 (ES8?) specification. In the mean time web pages and Javascript applications will be created that are susceptible to future breakage. 
> -- https://github.com/tc39/ecma262/issues/535#issue-147599667

It is hard that testing the feature of current PTC proposal.

----

> That difference between PTC and TCO is that PTC is required (and observable) semantics.
> -- https://github.com/tc39/ecma262/issues/535#issuecomment-209155496

@rossberg-chromium said that

> I don't see the interop issue or any complication with feature testing if we replace PTC with STC -- quite the opposite, in fact. The only way we could practically get into a situation is if some browser shipped a semantics before we have resolved this discussion. That's why Chrome has pulled PTC from v51, although it was ready. 
> -- https://github.com/tc39/ecma262/issues/535#issuecomment-209495142

Note:

- Current tail call spec define PTC-dependent algorithm.
- If the algorithm is changed, it may break the web.
