---
title: "Where does a failure manifest itself first"
date: "2014-03-14T10:38:16+00:00"
categories: ["Network Monitoring"]
tags: []
---

A network monitoring tool periodically makes a request to a system end point and records the result in a database of some kind.

Whether the polling interval is every few seconds, one minute or ten minutes or longer there is an awful lot of time when the network monitor has nothing meaningful to say about the state of the end point.

The network monitor is unlikely to be the first system to spot a problem. If the network monitor won't be the first to spot a problem, what will?

In our systems, the first place <a href="http://techteapot.com/oodles-disk-space-just-right-place/">where a problem will manifest itself</a> is in a log of some kind. Be that a text based log or something like Windows event log.

If your website returns s 5XX status code, then your log file will record the fault long before your network monitor will make a request that returns a 5XX code.

What time difference am I talking here?

Depends a lot on how often you poll the end point. If you are polling every minute or faster then the difference is likely to be pretty insignificant. If you are polling every five minutes then the difference could potentially be significant.

But it isn't just that you will be informed more quickly by going to the source of the failure, you will also get better information.

Monitoring an end point will only tell you so much: whether it is working  and the response time and maybe, if you're lucky, a response code.

In the case of our logs when a 5XX status code is returned, we'll probably get the full exception message plus stack trace. Altogether a lot more useful.

tl;dr monitor your primary sources, don't rely on secondary sources.
