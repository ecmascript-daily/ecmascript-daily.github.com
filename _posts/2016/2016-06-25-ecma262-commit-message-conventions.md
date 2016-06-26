---
title: "tc39/ecma262 commit message conventions"
author: azu
layout: post
date : 2016-06-25T18:16
category: ECMAScript
tags:
    - ECMAScript
    - Git

---

[tc39/ecma262](https://github.com/tc39/ecma262/commits/master "tc39/ecma262") has a commit message convetions.

This article describe the convetions.

| Prefix     	| Description                         	| Example                                                                                                                                                    	|
|------------	|-------------------------------------	|------------------------------------------------------------------------------------------------------------------------------------------------------------	|
| Normative: 	| Nortable change and Add new feature 	| [Normative: Require Unicode 8.0.0 #300](https://github.com/tc39/ecma262/pull/300)                                                                          	|
|            	|                                     	| [Normative: Add Exponentiation Operator](https://github.com/tc39/ecma262/commit/28bdf0798662bcb8efb11c4070f8a981a496ccc1)                                  	|
| Layering:  	| Layering ECMAScript and Other(DOM)  	| [Layering: fix unhandled rejection tracking in PerformPromiseThen](https://github.com/tc39/ecma262/commit/2d3a8a2a7b87a69ad479c8edc4d7f147cd0c1c3b)        	|
|            	|                                     	| [Layering: add hook to allow implementations to block string,compilation](https://github.com/tc39/ecma262/commit/a34229a73bf64da67a001ee38273428c73de831f) 	|
| Editorial: 	| Fix and Refactoring                 	| [Editorial: fix typo in assert (uninitialized->initialized)](https://github.com/tc39/ecma262/commit/ae020983ea79701d7de35819b456e686c9bc4792)              	|
|            	|                                     	| [Editorial: Assert normal completion value](https://github.com/tc39/ecma262/commit/b58987220aede17bd11deb46e50ad332c113c614)                               	|
| Meta:      	| Meta                                	| [Meta: Make minor improvements in `auto-deploy.sh`](https://github.com/tc39/ecma262/commit/d58637b61f3d0ff8ae748ee31749a6e820e3d8e3)                       	|


## Tips

If you want to know about Nortable change between ES2015 and ES2016, you can get following way:

```shell-session
$ git clone https://github.com/tc39/ecma262.git
$ cd ecma262
$ git log --grep "Normative:" es2016-draft-1...es2016-draft-20160215

commit d96e60a99a40fab2de0df329b3e5445ac27b8a8e
Author: Brian Terlson <brian.terlson@microsoft.com>
Date:   Fri Feb 5 13:00:13 2016 -0800

    Normative: Remove [[Enumerate]] and associated reflective capabilities
    
    Summary of changes:
    
    * 6.1.7.2 Removed [[Enumerate]] from the table and list of invariants
    * 9.5 Proxy Object Internal Methods and Interal Slots, [[Enumerate]] table entry removed.
    * 9.4.6.1.1 Module Namespace Object [[Enumerate]] moved to 26.3.2 module namespace object [ @@iterator ]
    * 9.5.11 Proxy [[Enumerate]] deleted
    * Moved ordinary [[Enumerate]] section to end of 13.7.5 for-in, renamed to EnumerateObjectProperties.
      * Add an assert to step 1 to signal callers we expect they'll only pass objects
      * Updated informative definition of EnumerateObjectProperties
    * 13.7.5.12 for-in head evaluation calls EnumerateObjectProperties(_obj_) instead of _obj_.[[Enumerate]]
    * EnumerableOwnNames: the _names_ are always ordered the same as EnumerateObjectProperties (since we don't have to worry about this not being enforceable with proxies anymore)
    * 26.1.5 Reflect.enumerate deleted
    
    Fixes #367.

commit 24dad16327b7cbbdf67805e45e58c54abe558f63
Author: Dan Ehrenberg <littledan@chromium.org>
Date:   Tue Jan 19 13:28:05 2016 -0800

    Normative: Require Unicode 8.0.0
    
    Interpretation of some basic things like whitespace changed after
    Unicode 5.1. This patch requires the latest Unicode standard.

commit 89fbe7fe9ab3812844907cacf848bfd2933c8082
Author: Claude Pache <claude.pache@gmail.com>
Date:   Wed Jan 27 16:28:57 2016 +0100

    Normative: Proxy [[SetPrototypeOf]]: avoid useless checks when the trap returns false
    
    Fixes #331.

commit 1e715656f727399d7ae8f622bcdb271aa5fe2a52
Author: Brian Terlson <brian.terlson@microsoft.com>
Date:   Fri Feb 5 17:09:23 2016 -0800

    Normative: properly close iterator in Array.from

commit 28bdf0798662bcb8efb11c4070f8a981a496ccc1
Author: Rick Waldron <waldron.rick@gmail.com>
Date:   Fri Jan 22 12:15:28 2016 -0500

    Normative: Add Exponentiation Operator
    
    Fixes #318.

commit 412bd513d3e720c41d4af27695cc6835f6c1d569
Author: André Bargull <andre.bargull@gmail.com>
Date:   Wed Feb 3 18:38:19 2016 +0100

    Normative: Throw TypeError in Array.from when index exceeds MAX_SAFE_INTEGER
    
    Fixes #352

commit 2c1854e942b62cabae2812a2fce3536169fa0e2f
Author: André Bargull <andre.bargull@gmail.com>
Date:   Fri Jan 22 18:52:00 2016 +0100

    Normative: Specify which early error rules are updated for duplicate __proto__ properties
    
    Fixes https://bugs.ecmascript.org/show_bug.cgi?id=4539
    
    Fixes #317

commit 15ad1386d7a44232e67aee66332994fe594e5364
Author: André Bargull <andre.bargull@gmail.com>
Date:   Wed Feb 3 18:39:22 2016 +0100

    Normative: Add +0 to Array.prototype.indexOf to convert negative zero to positive zero
    
    Fixes https://bugs.ecmascript.org/show_bug.cgi?id=4545
    
    Closes #316

commit 31593103e9db9bcfc4742864d0d33f9fa8b566c7
Author: André Bargull <andre.bargull@gmail.com>
Date:   Fri Jan 22 18:51:06 2016 +0100

    Normative: Use Abstract Relational Comparison to compare string values in SortCompare
    
    Fixes https://bugs.ecmascript.org/show_bug.cgi?id=4330
    Fixes #315

commit 935dad4283d045bc09c67a259279772d01b3d33d
Author: Dan Ehrenberg <littledan@chromium.org>
Date:   Thu Jan 21 15:31:57 2016 -0800

    Normative: Make Object.prototype an Immutable Prototype Exotic Object
    
    This patch builds a mechanism to fix the Proxy security issue documented
    in bug #272 by locking down the prototype chain of the global object, as
    Firefox has experimented with. Although the global object is provided by
    the embedding environment, many embedding environments will include Object
    in the prototype chain; preventing modification of Object.prototype
    addresses the issue by making it impossible to insert a Proxy in that part
    of the prototype chain of the global object. Embedding environments that
    want to prohibit a Proxy from being in the proto chain of their global
    object can make their global object and associated proto chain Immutable
    Prototype exotic objects.
    
    Fixes #308. Fixes #272. This commit includes changes on top of the commit
    in #308 based on the discussion therein.

commit fbdfda6f2a613f3c4813d4b34e32f5c5134cf921
Author: André Bargull <andre.bargull@gmail.com>
Date:   Wed Jan 20 19:11:10 2016 +0100

    Normative: Annex B Regular Expressions updates to match web reality
    
    Fixed:
    - Removed invalid respecification of the PatternCharacter production (B.1.4 shouldn't affect Unicode RegExp)
    
    Changes:
    - Added InvalidBracedQuantifier to reject `/{1}/` (previously allowed through ExtendedTerm -> Atom -> PatternCharacter)
    - Added ExtendedPatternCharacter to allow forms like `/{*/`, `/}*/` `/]/`
    - ExtendedPatternCharacter also handles `/\c%/` by removing the `\` restriction (`/\c%/` is equivalent to writing `/\\c%/`)
    - Added support for `/[\c_]/` and `/[\c1]/` to ClassEscape (the extended forms `\c_` and `\c<decimal digit>` are only valid in CharacterClass)
    - Changed "ClassEscape :: [~U] DecimalEscape" to allow `/[\8]/` by adding the restriction "but only if the integer value of DecimalEscape is 0" [1]
    - Character ranges which start or end with a non-single element CharSet are now handled in a more web-conform way [2, 3]
    - Merged Term and ExtendedTerm to avoid adding redundant semantics for ExtendedTerm
    - Re-ordered some production rules for clarity and to match 21.2.1
    
    [1] This change does not match JavaScriptCore (`/[\8]/.test('\\') == true` in JSC), but also see AtomEscape for the other case where `\8` is handled differently (`/\8/.test('8') == false` in JSC).
    [2] `' -a'.split('').map(s => /[\s-a]/.test(s)) == [true, true, true]` in all major browsers. The previous Annex B semantics made `/[\s-t]/` equivalent to `/[s-t]/`.
    [3] This change does not match Chakra (`/[\s-a-c]/.test('b') == true` in Chakra).

commit 788a2eb4c5419e116b17a4cdc8b2f345e0578261
Author: André Bargull <andre.bargull@gmail.com>
Date:   Mon Dec 21 18:18:17 2015 +0100

    Normative: Don't recurse in typed array constructor
    
    The recursion when constructing a subclass of a TypedArray when passing
    an array as a parameter was mistakenly added. This reverts this mistaken
    change. Closes #269.

commit 5512445d776b006c484c25c27d795f0f5033b58c
Author: Jordan Harband <ljharb@gmail.com>
Date:   Fri Dec 18 09:03:51 2015 -0800

    Normative: Change default function length value to not include optional arguments.
    
    Fixes #264.
    
     - A few legacy methods that have deviating lengths are documented explicitly.
     - Any unneeded explicit lengths are removed.
     - Needed legacy explicit lengths are added.
     - Spacing inside optional argument brackets is made consistent
     - Fixed a bug with a `DataView` note having the wrong argument name
    
    The DataView prototype get/set methods have inconsistent lengths across all browsers, so rather than select one of them as legacy, I decided to let them fall into the default category, which hopefully implementations will align with. Here are the changes:
     - DataView.prototype.getFloat32 (sometimes 0 or 2, now 1)
     - DataView.prototype.getFloat64 (sometimes 0 or 2, now 1)
     - DataView.prototype.getInt16 (sometimes 0 or 2, now 1)
     - DataView.prototype.getInt32 (sometimes 0 or 2, now 1)
     - DataView.prototype.getUint16 (sometimes 0 or 2, now 1)
     - DataView.prototype.getUint32 (sometimes 0 or 2, now 1)
     - DataView.prototype.setFloat32 (sometimes 0 or 3, now 2)
     - DataView.prototype.setFloat64 (sometimes 0 or 3, now 2)
     - DataView.prototype.setInt16 (sometimes 0 or 3, now 2)
     - DataView.prototype.setInt32 (sometimes 0 or 3, now 2)
     - DataView.prototype.setUint16 (sometimes 0 or 3, now 2)
     - DataView.prototype.setUint32 (sometimes 0 or 3, now 2)
    
    Note that the "int 8" methods had no optional arguments, and thus were always 1 or 2 - this brings all the DataView get and set methods into alignment with 1 for get, and 2 for set - since they all have the same number of required arguments respectively.

commit 7c680e10ac00a53521ed75669ec7a06af878e95b
Author: Dan Ehrenberg <littledan@chromium.org>
Date:   Wed Nov 25 12:28:32 2015 -0800

    Normative: Improve TypedArray constructor/Proxy interaction
    
    This patch changes the specification text for constructing TypedArrays
    to skip traversing the prototype chain to find the TypedArray-related
    internal slots, and instead implement the behavior in the individual
    _TypedArray_() constructors. Additionally, methods which used to
    allocate TypedArrays as outputs directly will now call the species
    constructor, since the previous direct construction also depended on
    the prototype chain walk. Fixes #163.

commit 889135045b0789dcc702e55396e32732ffe6bbbc
Author: Brian Terlson <brian.terlson@microsoft.com>
Date:   Tue Dec 8 15:31:59 2015 -0800

    Normative: Clarify ordering constraint in EnumerableOwnNames
    
    Previously, the ordering constraint applied to objects including those
    which use an exotic [[Enumerate]] trap such as proxy objects.
    
    Fixes #205.

commit c8102ed792df46aa0b90635dcf9eb5ae90847a1f
Author: Domenic Denicola <d@domenic.me>
Date:   Fri Nov 20 17:04:41 2015 -0800

    Normative: Add Array/%TypedArray%.prototype.includes

commit 3b582aff7d50e94bf34c0755e8b66579e9ab3e05
Author: Domenic Denicola <d@domenic.me>
Date:   Fri Nov 20 16:34:41 2015 -0800

    Normative: Remove use of @@species from Promise.all/race
    
    Fixes #151, per November 2015 TC39 meeting.

commit a524713c908da968f5bf36fa820ce6673a261d38
Author: Brian Terlson <brian.terlson@microsoft.com>
Date:   Fri Nov 13 10:05:54 2015 -0800

    Normative: RegExp.prototype.[[@@split]] coerces limit using ToUint32
    
    This reverts this method to ES5 semantics. Fixes #92.

commit 15b0db41edd0e519e94668bf13765fe458840766
Author: André Bargull <andre.bargull@gmail.com>
Date:   Wed Nov 11 17:33:39 2015 +0100

    Normative: Add early error for functions with non-simple parameter list and use-strict
    
    Add early error restriction if a function with a non-simple parameter list
    contains a "use strict" directive.
    
    Per resolution from July 29 2015:
    - https://github.com/tc39/tc39-notes/blob/master/es7/2015-07/july-29.md#611-the-scope-of-use-strict-with-respect-to-destructuring-in-parameter-lists
    - https://github.com/tc39/tc39-notes/blob/master/es7/2015-07/july-29.md#revisit-611-the-scope-of-use-strict-with-respect-to-destructuring-in-parameter-lists

commit d322357e6be95bc4bd3e03f5944a736aac55fa50
Author: André Bargull <andre.bargull@gmail.com>
Date:   Wed Nov 11 17:35:17 2015 +0100

    Normative: Allow BindingPattern in BindingRestElement
    
    Add parser production `BindingRestElement : ... BindingPattern` per resolution from July 28 2015:
    - https://github.com/tc39/tc39-notes/blob/master/es7/2015-07/july-28.md#66-bindingrestelement-should-allow-a-bindingpattern-ala-assignmentrestelement

commit bddde2330989a5a8daf26b37963f668bb3382371
Author: André Bargull <andre.bargull@gmail.com>
Date:   Wed Nov 11 17:33:09 2015 +0100

    Normative: Remove [[Construct]] from generators
    
    Remove [[Construct]] from generators per resolutions from July 28-29 2015:
    - https://github.com/tc39/tc39-notes/blob/master/es7/2015-07/july-28.md#67-new--generatorfunction
    - https://github.com/tc39/tc39-notes/blob/master/es7/2015-07/july-29.md#revisit-67-new--generatorfunction
    
    Also: Change 'functionKind' argument of FunctionAllocate() to a required argument, no caller uses the optional form.

commit 063ca7b083d9a4c677c3cdb402496436d4d7abaf
Author: André Bargull <andre.bargull@gmail.com>
Date:   Mon Nov 9 17:31:57 2015 +0100

    Normative: Add EvalDeclarationInstantiation B.3.3 extension to B.3.5

commit 1b2ecf488942afa30547a8916eead2c10bac83f4
Author: André Bargull <andre.bargull@gmail.com>
Date:   Wed Nov 11 17:24:24 2015 +0100

    Normative: Allow early ReferenceErrors in Function and eval calls
    
    Fixes https://bugs.ecmascript.org/show_bug.cgi?id=4510.

commit 02e46aba2f9f5daf484d2811d0c5c67f81c6ed23
Author: Brian Terlson <brian.terlson@microsoft.com>
Date:   Tue Nov 10 11:17:21 2015 -0800

    Normative: Tighten Annex B.3.5 catch parameter remedy
    
    Previously, var declarations in a catch block were allowed to redeclare
    bindings from the catch parameter. This change tightens this to disallow
    redeclaration of catch parameters defined using destructuring.
    
    Fixes #150.

commit 6844342f1815db6de559a38c3abf52d74283fdfc
Author: André Bargull <andre.bargull@gmail.com>
Date:   Fri Nov 6 18:38:07 2015 +0100

    Normative: Fix multiple issues in GDI and EDI
    
    GDI:
    1. The declaredVarNames list must not be changed, because it is used to install the global var names (step 18).
    2. Check declaredFunctionNames to avoid installing a global function binding multiple times.
    
    EDI:
    1. Apply the changes from GDI for consistency.
    2. Don't create a global function binding if a global lexical binding is present.
    3. Check for existing var-bindings before calling CreateMutableBinding.
    4. Set the deletable flag to true for CreateMutableBinding.

commit 8e82cfbe529623d891b38ca4770e5169dc24857f
Author: André Bargull <andre.bargull@gmail.com>
Date:   Tue Nov 3 19:03:50 2015 +0100

    Normative: Add missing ToUint32 to ArrayAccumulation and Array Evaluation
    
    Fixes https://bugs.ecmascript.org/show_bug.cgi?id=4474

commit 0e423efee01045a5ca53f6c7e5b6abdd037fdb40
Author: André Bargull <andre.bargull@gmail.com>
Date:   Tue Nov 3 19:05:25 2015 +0100

    Normative: Add invariant for [[IsExtensible]]
    
    Fixes https://bugs.ecmascript.org/show_bug.cgi?id=4538

commit c2b36f49949aae8830d0c57053a24b97728bc623
Author: André Bargull <andre.bargull@gmail.com>
Date:   Thu Oct 29 18:02:43 2015 +0100

    Normative: Add TypedArray.prototype.toLocaleString to 16.1
    
    Fixes https://bugs.ecmascript.org/show_bug.cgi?id=4505

commit 5c1984334d6d42538527bd022e68bfbfee5cb652
Author: André Bargull <andre.bargull@gmail.com>
Date:   Thu Oct 29 18:02:30 2015 +0100

    Normative: Remove B.3.1 from list of non-strict extensions
    
    Fixes https://bugs.ecmascript.org/show_bug.cgi?id=4504

commit cdab871bed5cc5c9ba43dd3e403a5285df898d23
Author: André Bargull <andre.bargull@gmail.com>
Date:   Thu Oct 29 18:02:22 2015 +0100

    Normative: Add missing super restrictions for GeneratorDeclaration
    
    HasDirectSuper for GeneratorDeclaration/Expression has been removed, SuperCall
    is now handled explicitly in 14.4.1 to mirror the early error restrictions for
    FunctionDeclaration/Expression.
    
    Fixes https://bugs.ecmascript.org/show_bug.cgi?id=4494
    Fixes https://bugs.ecmascript.org/show_bug.cgi?id=4420

commit 08b4756747f9c967058239df627da544412740a6
Author: André Bargull <andre.bargull@gmail.com>
Date:   Thu Oct 29 18:02:01 2015 +0100

    Normative: Truncate lastIndex to string length in RegExp.prototype[@@split]
    
    Fixes https://bugs.ecmascript.org/show_bug.cgi?id=4434

commit efbfc88a9668cb8750422978299072406166582e
Author: André Bargull <andre.bargull@gmail.com>
Date:   Thu Oct 29 18:01:51 2015 +0100

    Normative: Apply B.3.3 to non-top level function declarations
    
    Fixes https://bugs.ecmascript.org/show_bug.cgi?id=4427

commit 4f4a37a211ed44aeffb31cc3dcbe56096c949154
Author: Brian Terlson <brian.terlson@gmail.com>
Date:   Wed Oct 28 16:41:25 2015 -0700

    Normative: Date.parse treats date-only no offset as UTC
    
    Previously, date-time forms without offsets were specified as local time and date-only forms were unspecified. This clarifies the web-reality semantics of interpreting date-only forms without offsets as UTC time.

commit 9c1a3bd7928c35f8ea07d8c2887f3a9ff03d7020
Author: Mathias Bynens <mathias@qiwi.be>
Date:   Mon Oct 26 23:11:07 2015 +0100

    Normative: Define 21.2.2.2 behavior when `index >= str.length`
    
    Fixes https://github.com/tc39/ecma262/issues/128#issuecomment-151277006.

commit 1afb8e619087d25aea41c29f8737e5d7ce0b2ca1
Author: André Bargull <andre.bargull@gmail.com>
Date:   Mon Oct 26 18:50:39 2015 +0100

    Normative: Update arguments property before removing the mapping
    
    Fixes https://bugs.ecmascript.org/show_bug.cgi?id=4371

commit 2d1ed20db778e8f69f66ba76b351b9322fd38495
Author: André Bargull <andre.bargull@gmail.com>
Date:   Mon Oct 26 18:49:17 2015 +0100

    Normative: Prevent storing -0 in [[ByteOffset]]
    
    Fixes https://bugs.ecmascript.org/show_bug.cgi?id=4544

commit 4f875fe96dcbd5e6363dd3d5b510cd5109199f5b
Author: André Bargull <andre.bargull@gmail.com>
Date:   Mon Oct 26 18:48:50 2015 +0100

    Normative: Add missing ToNumber in SetViewValue
    
    Fixes https://bugs.ecmascript.org/show_bug.cgi?id=4536

commit 9a2162e74b4c4ffd128924993ad0cfc467011fc4
Author: André Bargull <andre.bargull@gmail.com>
Date:   Mon Oct 26 18:48:17 2015 +0100

    Normative: Define length of Proxy revocation function
    
    Fixes https://bugs.ecmascript.org/show_bug.cgi?id=4523

commit 761e3fad1d3a0eafd0e03a24b48fe6b6b9baf3b9
Author: André Bargull <andre.bargull@gmail.com>
Date:   Mon Oct 26 18:45:40 2015 +0100

    Normative: Add missing PrepareForTailCall in Function.prototype.apply
    
    Fixes https://bugs.ecmascript.org/show_bug.cgi?id=4511

commit 2be6968715946a4763f6ca8633e311ab7ce63577
Author: André Bargull <andre.bargull@gmail.com>
Date:   Mon Oct 26 18:45:08 2015 +0100

    Normative: Restore TypeError exception in EvalDeclarationInstantiation
    
    Fixes https://bugs.ecmascript.org/show_bug.cgi?id=4506

commit fd23a3daac66af700baf52cf8161b24b9f49deed
Author: André Bargull <andre.bargull@gmail.com>
Date:   Mon Oct 26 18:44:05 2015 +0100

    Normative: Track duplicate var-declarations in ModuleDeclarationInstantiation
    
    Fixes https://bugs.ecmascript.org/show_bug.cgi?id=4501

commit 8f07b7403c37619219ddd62109d882767f03db8f
Author: Andreas Rossberg <rossberg@chromium.org>
Date:   Fri Oct 23 15:12:29 2015 +0200

    Normative: Fix oversights in ES6 completion reform
    
    ES6 Completion reform missed cases for `if` and `with`. Also fixes incorrect usage
    of completion values in a couple of cases. Addresses the following bug reports:
    
    https://bugs.ecmascript.org/show_bug.cgi?id=4540
    https://bugs.ecmascript.org/show_bug.cgi?id=4541

commit 3a3a183d25212ed5a1e05c0b3da9fe7b0d6cf98d
Author: Brian Terlson <brian.terlson@microsoft.com>
Date:   Fri Oct 16 16:44:56 2015 -0700

    Normative: add normal completions to GDI/EDI web compat semantics

commit 8582e812cd7f6d4aa15890e2a65800fe4785e8c7
Author: Brian Terlson <brian.terlson@microsoft.com>
Date:   Wed Oct 7 14:43:30 2015 -0700

    Normative: Implement EDI and GDI web compat semantics.
```
