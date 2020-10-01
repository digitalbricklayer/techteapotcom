---
title: "Wordpress Bad Behavior hack scare"
date: "2007-12-06T12:06:34+00:00"
categories: [General]
tags: []
aliases: [/wordpress-bad-behavior-hack-scare/]
---

<a href="/images/uploads/2007/12/bad-behaviour-bug1.jpg" title="Bad Behavior wordpress plug-in error message"><img src="/images/uploads/2007/12/bad-behaviour-bug1.jpg" alt="Bad Behavior wordpress plug-in error message" height="75%" width="75%" /></a>

One of my pet hates is coming into the office only to be presented with a nice problem on the website. This morning I tried to log into <a href="{{< ref "/" >}}">this website</a> and saw the screenshot above.

All sorts of things went through my mind. Have we been hacked? Fortunately not. :)

The explanation was much simpler. The <a href="http://www.bad-behavior.ioerror.us/">Bad Behavior Wordpress plug-in</a> we use to keep the internet wild west at bay decided to issue permanent false positives. So, anybody trying to log into the blog would have been given the same error.

Happily the blog itself was still working fine...just the admin system was affected.

The Bad Behavior plug-in author very quickly patched the problem. So all we had to do was install the patch and everything was back to normal. Phew! ;)

All software has problems/bugs, what <em>really</em> counts is how diligently the authors diagnose then fix the problem.
