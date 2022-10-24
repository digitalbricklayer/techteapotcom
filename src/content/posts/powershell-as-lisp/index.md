---
title: "Powershell as Lisp"
date: "2008-08-12T15:47:19+00:00"
aliases: [/powershell-as-lisp/]
---

One of the interesting things about Lisp is the ability to use macros to effectively create your own language. Instead of using Lisp to solve your problem, write a language in which your problem can be solved and then solve it using your own mini-language.

When I heard of the [new features in Powershell v2](http://blogs.msdn.com/powershell/archive/2007/11/06/what-s-new-in-ctp-of-powershell-2-0.aspx), the one that stood out for me was the ease with which you can create cmdlets using the Powershell scripting language rather than being forced to use C# or VB.NET.

One side effect of easing the ability to create cmdlets is that building your own mini-language will become very easy because you'll have the whole .NET library at your disposal and you'll also be able to utilise all other cmdlets and providers as well.
